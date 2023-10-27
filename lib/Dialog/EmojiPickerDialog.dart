import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
/// A dialog that displays a grid of emojis that can be selected and added to a [TextField].
///
/// This dialog takes a [Map] of web emojis and a [TextEditingController] as input.
/// It displays a search bar that filters the emojis based on the user's input.
/// The filtered emojis are displayed in a grid using [GridView.builder].
/// Each emoji is represented by an [EmojiItem] widget that displays the emoji image and text.
/// When an emoji is tapped, its text is added to the [TextField] using the [TextEditingController].
class EmojiPickerDialog extends StatefulWidget {
  final Map<String, String> webEmoji;
  final TextEditingController textEditingController;

  const EmojiPickerDialog({
    Key? key,
    required this.webEmoji,
    required this.textEditingController,
  }) : super(key: key);

  @override
  EmojiPickerDialogState createState() => EmojiPickerDialogState();
}

class EmojiPickerDialogState extends State<EmojiPickerDialog> {
  String filter = '';
  String selectedGroup = '';

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final double itemWidth = size.width / 4;

    // 1. 获取分组列表
    var groups = <String>{};
    widget.webEmoji.keys.forEach((key) {
      //如果没有_则单独一组
      if (!key.contains('_')) {
        return;
      }
      var groupName = key.split('_')[0].replaceAll('[', '');
      //替换[为空
      groups.add(groupName);
    });
    var groupList = groups.toList();

    // 2. 获取过滤后的表情包
    var filteredEmojis = widget.webEmoji.entries.where((entry) {
      var groupName = entry.key.split('_')[0].replaceAll('[', '');
      if (filter.isEmpty && selectedGroup.isEmpty) {
        return true;
      } else if (filter.isNotEmpty && selectedGroup.isNotEmpty) {
        return groupName == selectedGroup && entry.key.contains(filter);
      } else if (filter.isNotEmpty) {
        return entry.key.contains(filter);
      } else {
        return groupName == selectedGroup;
      }
    }).toList();

    return Dialog(
      child: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                '表情包',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16.0),
              TextField(
                onChanged: (value) {
                  setState(() {
                    filter = value;
                  });
                },
                decoration: const InputDecoration(
                  labelText: "搜索表情",
                  prefixIcon: Icon(Icons.search),
                ),
              ),
              const SizedBox(height: 16.0),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    const SizedBox(width: 16.0),
                    ChoiceChip(
                      label: const Text('全部'),
                      selected: selectedGroup.isEmpty,
                      onSelected: (selected) {
                        setState(() {
                          selectedGroup = '';
                        });
                      },
                    ),
                    const SizedBox(width: 8.0),
                    ...groupList.map((group) => ChoiceChip(
                      label: Text(group),
                      selected: selectedGroup == group,
                      onSelected: (selected) {
                        setState(() {
                          selectedGroup = group;
                        });
                      },
                    )),
                  ],
                ),
              ),
              const SizedBox(height: 16.0),
              GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: (size.width / itemWidth).round(),
                  childAspectRatio: 1,
                ),
                itemCount: filteredEmojis.length,
                itemBuilder: (context, index) {
                  String emojiText = filteredEmojis[index].key;
                  String emojiImageUrl = filteredEmojis[index].value;
                  return EmojiItem(
                    text: emojiText,
                    imageUrl: emojiImageUrl,
                    onTap: () {
                      widget.textEditingController.text += emojiText;
                    },
                  );
                },
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class EmojiItem extends StatelessWidget {
  final String text;
  final String imageUrl;
  final Function()? onTap;

  const EmojiItem({
    Key? key,
    required this.text,
    required this.imageUrl,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.all(3.0),
        child: Column(
          children: [
            CachedNetworkImage(
              imageUrl: imageUrl,
              width: MediaQuery.of(context).size.width / 20,
              height: MediaQuery.of(context).size.width / 10,
              placeholder: (context, url) => const CircularProgressIndicator(),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
            const SizedBox(height: 8.0),
          ],
        ),
      ),
    );
  }
}
