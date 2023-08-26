import 'package:flutter/material.dart';
import 'package:louvo/components/login_screen.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  Color purpleLight = Color.fromARGB(255, 211, 169, 247);
  Color purpleDark = Color.fromARGB(255, 156, 119, 208);
  Color purpleDarkBorder = Color.fromARGB(255, 156, 119, 208);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
              height: MediaQuery.of(context).size.height,
              color: Color.fromARGB(255, 252, 248, 255),
              child:Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,       
                  children: [
                    Text(
                      "Create an Account",
                      style: TextStyle(
                        fontSize: 36,
                        color: purpleDark
                        ),
                    ),
                    SizedBox(height: 15),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30,vertical: 20),
                      child: Column(
                        children: [
                          TextField(
                                decoration: InputDecoration(
                                hintText: "Full Name",
                                hintStyle: TextStyle(color: Colors.grey, fontSize: 18),
                                prefixIcon: Icon(Icons.account_circle_outlined, color: Colors.black87,),
                              ),
                            ),
                          SizedBox(height: 15), 
                          TextField(
                                decoration: InputDecoration(
                                hintText: "Username",
                                hintStyle: TextStyle(color: Colors.grey, fontSize: 18),
                                prefixIcon: Icon(Icons.account_circle_outlined, color: Colors.black87,),
                              ),
                            ),
                          SizedBox(height: 15),
                          
                          TextField(
                                decoration: InputDecoration(
                                hintText: "Telephone",
                                hintStyle: TextStyle(color: Colors.grey, fontSize: 18),
                                prefixIcon: Icon(Icons.phone, color: Colors.black87,),
                              ),
                            ),
                          SizedBox(height: 10),

                          TextField(
                              decoration: InputDecoration(
                                hintText: "Email",
                                hintStyle: TextStyle(color: Colors.grey, fontSize: 18),
                                prefixIcon: Icon(Icons.mail, color: Colors.black87,),
                              ),
                            ),

                          SizedBox(height: 15),

                          TextField(
                              decoration: InputDecoration(
                                hintText: "Password",
                                hintStyle: TextStyle(color: Colors.grey, fontSize: 18),
                                prefixIcon: Icon(Icons.lock, color: Colors.black87,),
                              ),
                            ),
                          SizedBox(height: 15),

                          TextField(
                              decoration: InputDecoration(
                                hintText: "Confirm Password",
                                hintStyle: TextStyle(color: Colors.grey, fontSize: 18),
                                prefixIcon: Icon(Icons.lock, color: Colors.black87,),
                              ),
                            ),
                          SizedBox(height: 20), 

                          Padding(
                            padding: EdgeInsets.symmetric(horizontal:20),
                            child:ElevatedButton(
                              onPressed: () {

                              },
                              style: ElevatedButton.styleFrom(
                                primary: purpleDark, 
                                onPrimary: Colors.white, 
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10), 
                                ),
                                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15), 
                                minimumSize: Size(double.infinity, 0),
                              ),
                              child: Text(
                                "Register",
                                style: TextStyle(fontSize: 18),
                              ),
                            ),
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Already have an account?",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: const Color.fromARGB(255, 161, 161, 161),
                                ),
                              ),
                              TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => LoginPage()),
                                  );
                                },
                                child: Text(
                                  "Login",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: purpleDark,
                                  ),
                                ),
                              ),
                            ],
                          )
    
                        ],
                      ),
                    )              
                  ],               
            ),         
        ),
      ),
    );
  }
}
