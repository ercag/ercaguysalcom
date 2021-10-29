import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class Contact extends StatefulWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  _ContactState createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  List<ContactModel> contactList = [];

  @override
  void initState() {
    super.initState();
    contactList.clear();
    contactList.addAll({
      ContactModel("GitHub", "https://github.com/ercag",
          Image.asset('assets/images/GitHub-Mark-120px-plus.png')),
      ContactModel(
          "Pub.Dev",
          "https://pub.dev/publishers/ercaguysal.com/packages",
          Image.asset('assets/images/pubdev.png')),
      ContactModel("Medium", "https://medium.com/@ercaguysal",
          Image.asset('assets/images/medium.png')),
      ContactModel("Gmail", "mailto:ercaguysal@gmail.com",
          Image.asset('assets/images/gmail.png')),
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width / 2,
        child: Row(
            children: contactList
                .map<Widget>((e) => Expanded(
                    child: Card(
                        color: Colors.transparent,
                        child: Container(
                            decoration: const BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      color: Color.fromARGB(100, 191, 186, 176),
                                      blurRadius: 1,
                                      spreadRadius: 1)
                                ],
                                gradient: LinearGradient(
                                  tileMode: TileMode.mirror,
                                  begin: Alignment.topRight,
                                  end: Alignment.bottomLeft,
                                  colors: [
                                    Color.fromARGB(255, 171, 183, 91),
                                    Color.fromARGB(255, 168, 183, 72),
                                  ],
                                  stops: [
                                    0,
                                    1,
                                  ],
                                )),
                            child: InkWell(
                                onTap: () {
                                  launch(e.contactUrl);
                                },
                                child: ListTile(
                                  mouseCursor: MouseCursor.defer,
                                  title: Text(e.contactName,
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w300)),
                                  trailing:
                                      SizedBox(width: 32, child: e.contactIcon),
                                ))))))
                .toList()));
  }
}

class ContactModel {
  String contactName;
  String contactUrl;
  Image contactIcon;
  ContactModel(this.contactName, this.contactUrl, this.contactIcon);
}
