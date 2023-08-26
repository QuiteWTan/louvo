import 'package:flutter/material.dart';
import 'package:louvo/components/register_screen.dart';
import 'package:wc_form_validators/wc_form_validators.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  Color purpleLight = Color.fromARGB(255, 223, 186, 255);
  Color purpleDark = Color.fromARGB(255, 156, 119, 208);
  String _UsernameError = '';
  String _PasswordError = '';
  String _usernameValidation = '';
  String _passwordValidation = '';
  
  String _validatePassword(String input) {
    if (input.length == 0) {
      return 'Password cannot be empty';
    }
    if(input.length < 8 || input.length > 12){
      return 'Password format incorrect';
    }
    return '';
  }

  String _validateUsername(String input) {
    if (input.length == 0) {
      return 'Username cannot be empty';
    }
    if(input.length < 5 || input.length > 10){
      return 'Username format incorrect';
    }
    return '';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              color: Color.fromARGB(255, 252, 248, 255), // Replace with your desired background color
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 15),
                  Text(
                    "LOUVO",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 32,
                      color: purpleDark,
                    ),
                  ),
                  Image.asset(
                    'assets/images/LoginImage.png',
                    height:MediaQuery.of(context).size.height/3.5
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width/1.5,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children:[
                        Text(
                        "Fill your registered information to login to LOUVO",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black45,
                          
                        ),
                      ),
                    ]
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(30),
                    child: Column(
                      children: [
                        TextField(
                          decoration: InputDecoration(
                            hintText: "Username",
                            hintStyle: TextStyle(color: Colors.grey, fontSize: 18),
                            prefixIcon: Icon(Icons.mail, color: Colors.black87,),
                            errorText: _UsernameError == '' ? null : _UsernameError,
                          ),
                          onChanged: (value) {
                            setState(() {
                              _usernameValidation = value;
                            });
                          },
                        ),
                        SizedBox(height: 10),
                        TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: "Password",
                            hintStyle: TextStyle(color: Colors.grey, fontSize: 18),
                            prefixIcon: Icon(Icons.lock, color: Colors.black87,),
                            errorText: _PasswordError == '' ?  null : _PasswordError,
                          ),
                          onChanged: (value) {
                            setState(() {
                              _passwordValidation = value;
                            });
                          },
                        ),


                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5),
                          child: Align(
                            alignment: AlignmentDirectional.centerStart,
                            child: TextButton(
                              onPressed: () {
                                  
                              },
                              child: Text(
                                "forgot password?",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: const Color.fromARGB(255, 161, 161, 161),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height:5),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal:10),
                          child:ElevatedButton(
                            onPressed: () {
                              _UsernameError=_validateUsername(_usernameValidation);
                              _PasswordError= _validatePassword(_passwordValidation);
                            },
                            style: ElevatedButton.styleFrom(
                              primary: purpleDark, 
                              onPrimary: Colors.white, 
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10), 
                              ),
                              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15), 
                              minimumSize: Size(double.infinity, 0),
                            ),
                            child: Text(
                              "LOGIN",
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Don't have an account?",
                              style: TextStyle(
                                fontSize: 16,
                                color: const Color.fromARGB(255, 161, 161, 161),
                              )
                            ),
                            TextButton(
                              onPressed: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => RegisterPage()),
                                );
                              },
                              child: Text(
                                "Register",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: purpleDark,
                                ),
                              ),
                            )

                          ],
                        )   
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
