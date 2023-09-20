import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class EmojiPickerDialog extends StatelessWidget {
  final Map<String, String> web_emoji;
  final TextEditingController textEditingController ;

  const EmojiPickerDialog({required this.web_emoji,required this.textEditingController});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final double itemWidth = size.width / 3;

    return Dialog(
      child: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                '表情包',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16.0),
              GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: (size.width / itemWidth).round(),
                  childAspectRatio: 1,
                ),
                itemCount: web_emoji.length,
                itemBuilder: (context, index) {
                  String emojiText = web_emoji.keys.elementAt(index);
                  String emojiImageUrl = web_emoji.values.elementAt(index);
                  return EmojiItem(
                    text: emojiText,
                    imageUrl: emojiImageUrl,
                    onTap: () {
                      textEditingController.text += emojiText;
                    },
                  );
                },
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
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
    required this.text,
    required this.imageUrl,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.all(3.0),
        child: Column(
          children: [
            CachedNetworkImage(
              imageUrl: imageUrl,
              width: MediaQuery.of(context).size.width / 6,
              height: MediaQuery.of(context).size.width / 6,
              placeholder: (context, url) => CircularProgressIndicator(),
              errorWidget: (context, url, error) => Icon(Icons.error),
            ),
            SizedBox(height: 8.0),
          ],
        ),
      ),
    );
  }
}