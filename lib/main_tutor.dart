import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainTutorPage extends StatelessWidget {
  final String tutorName;

  MainTutorPage({required this.tutorName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 60,
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 16.0, left: 20),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'Bienvenido, \n',
                            style: GoogleFonts.lato(
                              textStyle: const TextStyle(
                                color: Color(0xFF37364A),
                                fontSize: 32,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ),
                          TextSpan(
                            text: tutorName,
                            style: GoogleFonts.lato(
                              textStyle: const TextStyle(
                                color: Color(0xFF37364A),
                                fontSize: 32,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const CircleAvatar(
                  backgroundImage: NetworkImage(
                    'https://lh3.googleusercontent.com/a/AGNmyxYoRzDPDXIxgQXC4rdAjo_5QxkxHmqBxOno5PO2MhU=s96-c-rg-br100',
                  ),
                  radius: 16,
                ),
                SizedBox(
                  width: 25,
                )
              ],
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView(
                  children: [
                    const ListTile(
                      title: Text('Item 1'),
                    ),
                    const ListTile(
                      title: Text('Item 2'),
                    ),
                    const ListTile(
                      title: Text('Item 3'),
                    ),
                    IconButton(
                      icon: Icon(Icons.arrow_back),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
