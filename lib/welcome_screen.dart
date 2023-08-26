import 'package:flutter/material.dart';
import 'package:louvo/components/login_screen.dart';
import 'package:louvo/components/register_screen.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  Color purpleLight = Color.fromARGB(255, 201, 163, 234);
  Color purpleDark = Color.fromARGB(255, 156, 119, 208);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 252, 248, 255),
      body: SafeArea(
        child: Stack(
          children: [
            Center(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 0),
                    child:Container(
                      child:Image.asset(
                        'assets/images/WelcomeScreen.png',
                        height: MediaQuery.of(context).size.height/1.65,
                      ),
                    )
                  ),
                  Text(
                    "Get Started",
                    style: TextStyle(
                      fontSize: 28,
                      color: purpleDark,
                      fontWeight: FontWeight.bold
                      ),
                  ),
                  Text(
                    "Get on board with Luovo",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black54,
                      ),
                  ),
                  SizedBox(height:10),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical:0),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(8),
                          child:ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => LoginPage()),
                                );
                            },
                            style: ElevatedButton.styleFrom(
                              primary: purpleDark, 
                              onPrimary: Colors.white, 
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10), 
                              ),
                              padding: EdgeInsets.symmetric(vertical: 20), 
                              minimumSize: Size(double.infinity, 0),
                            ),
                            child: Text(
                              "LOGIN",
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                        ),

                        Container(
                          padding: EdgeInsets.all(8),
                          child:ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => RegisterPage()),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              primary: purpleLight, 
                              onPrimary: Colors.white, 
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10), 

                              ),
                              padding: EdgeInsets.symmetric(vertical: 20), 
                              minimumSize: Size(double.infinity, 0),
                            ),
                            child: Text(
                              "REGISTER",
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                        ),
                       
                      ],
                    ),
                  )              
                ],
                
              ),

            ),
          ],
        ),
      ),
    );
  }
}
