import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Turnero TAIE",
    theme: ThemeData(primaryColor: Colors.blue),
    home: const HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 39, 52, 119),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.all(10.0),
                width: 500,
                height: 70,
                child: Center(
                  child: Text('Tutorias TAIE',
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .copyWith(color: Colors.white)),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10.0),
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: IconButton(
                  icon: Image.network(
                      'https://cdn-icons-png.flaticon.com/512/2991/2991148.png'),
                  onPressed: () {
                    print('Google logo button pressed');
                  },
                ),
              )
            ],
          ),
        ));
  }
}
