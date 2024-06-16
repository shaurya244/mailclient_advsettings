import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class AdvancedSetting extends StatefulWidget {
  const AdvancedSetting({super.key});

  @override
  State<AdvancedSetting> createState() => _AdvancedSettingState();
}

class _AdvancedSettingState extends State<AdvancedSetting> {
  static const _storage= FlutterSecureStorage();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Advance Setting',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
            ),
            IconButton(onPressed: () async {
              print(await _storage.read(key: 'Imap'));

            }, icon: Icon(Icons.check_circle))
          ],
        ),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(25, 5, 5, 5),
              child: Text(
                'IMAP',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(25, 5, 5, 0),
              child: Text('Hostname'),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 5),
              child: TextField(),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(25, 5, 5, 0),
              child: Text('Port'),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 5),
              child: TextField(),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(25, 5, 5, 0),
              child: Text('Username'),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 5),
              child: TextField(),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(25, 5, 5, 5),
              child: Text(
                'SMTP',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(25, 5, 5, 0),
              child: Text('Hostname'),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 5),
              child: TextField(),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(25, 5, 5, 0),
              child: Text('Port'),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 5),
              child: TextField(),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(25, 5, 5, 0),
              child: Text('Username'),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 5),
              child: TextField(),
            ),
          ],
        ),
      ),
    );
  }
}
