import 'package:flutter/material.dart';
import 'register_page.dart';
import 'package:practice/calculator_page.dart';
import 'custom_input_fiels.dart';
import 'Widgets/widget_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void _showSnackBar(String message, Color color) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: color,
        duration: const Duration(seconds: 1),
      ),
    );
  }

  var statusLogin = "Status Login.";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Login Page",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
      ),
      body: Container(
        margin: EdgeInsets.only(top: 20, left: 15, right: 15, bottom: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "XCure",
              style: TextStyle(
                fontSize: 30,
                color: Colors.blueAccent,
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(child: Image.asset('asset/windows.png', width: 140)),
            Container( margin: EdgeInsets.only(bottom: 15), child: CustomInputField(label: "Username", controller: usernameController,)),
            CustomInputField(label: "Password", controller: passwordController, obscureText: true,),
            // Container(
            //   margin: EdgeInsets.only(top: 20),
            //   child: Center(
            //     child: SizedBox(
            //       width: double.infinity,
            //       child: ElevatedButton(
            //         onPressed: () {
            //           if (usernameController.text == 'admin' &&
            //               passwordController.text == 'admin') {
            //             // _showSnackBar('Login successful!', Colors.green);
            //             // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const HomePage()));
            //             setState(() {
            //               statusLogin = "Login succesful!";
            //               print(statusLogin);
            //               Navigator.push(
            //                 context,
            //                 MaterialPageRoute(
            //                   builder: (context) => const CalculatorPage(),
            //                 ),
            //               );
            //             });
            //           } else {
            //             // _showSnackBar('Invalid username or password.', Colors.red);
            //             setState(() {
            //               statusLogin = "Invalid username or password.";
            //               print(statusLogin);
            //             });
            //           }
            //         },
            //         child: Text("Login"),
            //       ),
            //     ),
            //   ),
            // ),
            
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Center(
                child: SizedBox(
                  width: double.infinity,
                  child: CustomButton(
                    text: "Login",
                    textcolor: Colors.black, onPressed: () { 
                      if (usernameController.text == 'admin' && passwordController.text == 'admin') {
                        // _showSnackBar('Login successful!', Colors.green);
                        // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const HomePage()));
                        setState(() {
                          statusLogin = "Login succesful!";
                          print(statusLogin);
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const CalculatorPage(),
                            ),
                          );
                        });
                      } else {
                        // _showSnackBar('Invalid username or password.', Colors.red);
                        setState(() {
                          statusLogin = "Invalid username or password.";
                          print(statusLogin);
                        });
                      }},
                  ),
                ),
              ),
            ),

            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const RegisterPage()),
                );
              },
              child: Text("You not have an account? Sign in"),
            ),
            Text(statusLogin),
          ],
        ),
      ),
    );
  }
}
