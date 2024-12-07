import 'package:flutter/material.dart';
import '../widgets/bottom_nav_bar.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tentang Saya'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Muh. Ryan Ardiansyah',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text('Backend Developer'),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  '/second',
                  arguments: {'from': 'First Screen'},
                );
              },
              child: Text('View My Projects'),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
