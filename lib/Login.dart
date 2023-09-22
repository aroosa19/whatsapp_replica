import 'package:flutter/material.dart';
import 'package:my_first_app/WhatsApp.dart';
import 'package:readmore/readmore.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child:Text('My App Login Page')),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: ReadMoreText(
                'Welcome to My first Flutter Project!!! I have implemented Splash Screen, Designed Login Page along with a Whatsapp UI design page and compiled these three screens using Navigation.',
                trimLines: 2,
                colorClickableText: Colors.black87,
                trimMode: TrimMode.Line,
                trimCollapsedText: 'Show more',
                trimExpandedText: 'Show less',
                moreStyle: TextStyle(color:Colors.black,fontSize: 14,
                    fontWeight: FontWeight.bold),
                style: TextStyle(color: Colors.teal),
              ),
            ),
            const Center(
              child:Text(
                'Login Page',
                style: TextStyle(fontSize: 20),
              ),
            ),
            const SizedBox(height: 20),
            const Padding(
              padding:  EdgeInsets.all(8.0),
              child:  TextField(
                decoration: InputDecoration(
                  labelText: 'Username',
                ),
              ),
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                obscureText: false,
                decoration: InputDecoration(
                  labelText: 'Add Phone Number',
                ),
              ),
            ),
            const SizedBox(
                height: 30
            ),
            ElevatedButton(
              onPressed: () {
                // Navigate to the next page
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => const HomeScreen()),
                );
              },
              child: const Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
