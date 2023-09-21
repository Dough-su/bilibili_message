import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
/// A page that displays an about dialog with information about the application.
/// 
/// This page displays an [AboutDialog] with the application name, version, and legal information.
/// It also includes two [TextButton]s for external links to a donation page and an update link.
/// 
/// The [launchUrl] function is used to launch the external links.
class AboutDialogPage extends StatelessWidget {
  const AboutDialogPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AboutDialog(
      applicationName: 'eoe私信',
      applicationVersion: '2.0.0',
      applicationLegalese: '本项目仅供学习交流使用，不得用于商业用途，否则后果自负，更新地址密码为9arm',
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextButton(
              child: const Text('爱发电'),
              onPressed: () {
                launchUrl(Uri.parse('https://afdian.net/a/ccguojuan'));
              },
            ),
            TextButton(
              child: const Text('更新地址'),
              onPressed: () {
                launchUrl(Uri.parse(
                    'https://wwai.lanzouj.com/b02r4awja?password=9arm'));
              },
            ),
          ],
        ),
      ],
    );
  }
}

/// Launches the given [Uri] in the default browser.
/// 
/// This function uses the [canLaunchUrl] function to check if the given [Uri] can be launched,
/// and then launches the [Uri] using the [launchUrl] function.
/// 
/// Throws an error if the [Uri] cannot be launched.
Future<void> launchUrl(Uri uri) async {
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri);
  } else {
    throw 'Could not launch $uri';
  }
}
