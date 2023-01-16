import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LoginScreen(),
    );
  }
}
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}



class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children:  [
           const Text('MyApp Title', style: TextStyle(
            color: Colors.black,
            fontSize: 28.0,
            fontWeight: FontWeight.bold,
          ),
          ),
         const Text('Login Your App',style: TextStyle(
            color: Colors.black,
            fontSize: 44.0,
            fontWeight: FontWeight.bold
          ),
          ),
         const SizedBox(height: 44.0),
         const TextField(
            keyboardType: TextInputType.emailAddress,
            decoration:  InputDecoration(
              hintText: "User Email",
              prefixIcon: Icon(Icons.mail,
              color: Colors.black,
               ),

            ),
          ),
           const SizedBox(height: 26.0,),
           const TextField(
            obscureText: true,
            decoration:  InputDecoration(
              hintText: "Password",
              prefixIcon: Icon(Icons.lock_open,
              color: Colors.black,
               ),
            ),
          ),
         const  SizedBox(height: 8.0,),
        const   Text('Dont remember ur password?', style: TextStyle(
            color: Colors.blue,
          ),
          ),
         const  SizedBox(height: 88.0,),
          Container(
            width: double.infinity,
            child: RawMaterialButton(
              fillColor: Color(0xFF0069FE),
              elevation: 0.0,
              padding: EdgeInsets.symmetric(vertical: 20.0),

              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0)
                ),
              onPressed: (){}, 
              child: Text("Login", style: TextStyle(
                color: Colors.white,
                fontSize: 20.0
              ),
              ),

            ),
          ),
        ],
      ),
      );

       
  }
}