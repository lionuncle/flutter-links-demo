import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../../data/model/social_media_link_model.dart';

class LinkTab extends StatefulWidget {
  const LinkTab({super.key});

  @override
  State<LinkTab> createState() => _LinkTabState();
}

class _LinkTabState extends State<LinkTab> {

  late Box<SocialMediaLink> _box;

  @override
  void initState() {
    super.initState();
    _box = Hive.box<SocialMediaLink>('social_media_links');
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: _box.listenable(),
      builder: (context, Box<SocialMediaLink> box, _) {
        return ListView(
          children: [
            ListTile(
              title: Text(_getTitle(box.get('link1'))),
              subtitle: Text(box.get('link1')?.link ?? ''),
            ),
            ListTile(
              title: Text(_getTitle(box.get('link2'))),
              subtitle: Text(box.get('link2')?.link ?? ''),
            ),
            ListTile(
              title: Text(_getTitle(box.get('link3'))),
              subtitle: Text(box.get('link3')?.link ?? ''),
            ),
          ],
        );
      },
    );
  }

  String _getTitle(SocialMediaLink? socialMediaLink) {
    if (socialMediaLink != null) {
      return socialMediaLink.title;
    }
    else {
      return '';
    }
  }
}
