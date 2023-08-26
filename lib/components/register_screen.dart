import 'package:flutter/material.dart';
import 'package:louvo/components/login_screen.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}
  String _fullNameError = '';
  String _usernameError = '';
  String _passwordError = '';
  String _confirmPasswordError = '';
  String _phoneNumberError = '';
  String _emailError = '';

  String _fullNameValidation = '';
  String _usernameValidation = '';
  String _passwordValidation = '';
  String _emailValidation = '';
  String _confirmPasswordValidation = '';
  String _phoneNumberValidation = '';

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

  String _validatePhoneNumber(String input) {
    if (input.length == 0) {
      return 'PhoneNumbe cannot be empty';
    }
    if(input.length != 10){
      return 'PhoneNumber format incorrect';
    }
    return '';
  }
  String _validateConfirmPassword(String input) {
    if (input.length == 0) {
      return 'Confirm Password cannot be empty';
    }
    if(input.length < 8 || input.length > 12){
      return 'Confirm Password format incorrect';
    }
    return '';
  }

  String _validateFullName(String input) {
    if (input.length == 0) {
      return 'Full Name cannot be empty';
    }
    if(input.length < 5 || input.length > 12){
      return 'Full Name format incorrect';
    }
    return '';
  }

  String _validateEmail(String input) {
    if (input.length == 0) {
      return 'Email cannot be empty';
    }
    if (!input.contains('@')) {
      return 'Email must contain "@" symbol';
    }
    return '';
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
                                errorText: _fullNameError == '' ? null : _fullNameError,
                              ),
                              onChanged: (value) {
                                setState(() {
                                  _fullNameValidation = value;
                                });
                              },
                            ),
                          SizedBox(height: 15), 
                          TextField(
                                decoration: InputDecoration(
                                hintText: "Username",
                                hintStyle: TextStyle(color: Colors.grey, fontSize: 18),
                                prefixIcon: Icon(Icons.account_circle_outlined, color: Colors.black87,),
                                errorText: _usernameError == '' ? null : _usernameError,
                              ),
                              onChanged: (value) {
                                setState(() {
                                  _usernameValidation = value;
                                });
                              },
                              
                            ),
                          SizedBox(height: 15),
                          
                          TextField(
                            decoration: InputDecoration(
                              hintText: "Phone Number",
                              hintStyle: TextStyle(color: Colors.grey, fontSize: 18),
                              prefixIcon: Icon(Icons.phone, color: Colors.black87,),
                              errorText: _phoneNumberError == '' ? null : _phoneNumberError,
                            ),
                            onChanged: (value) {
                              setState(() {
                                _phoneNumberValidation = value;
                              });
                            },
                          ),
                          SizedBox(height: 10),

                          TextField(
                              decoration: InputDecoration(
                                hintText: "Email",
                                hintStyle: TextStyle(color: Colors.grey, fontSize: 18),
                                prefixIcon: Icon(Icons.mail, color: Colors.black87,),
                                errorText: _emailError == '' ? null : _emailError,
                              ),
                              onChanged: (value) {
                                setState(() {
                                  _emailValidation = value;
                                });
                              },
                            ),

                          SizedBox(height: 15),

                          TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                hintText: "Password",
                                hintStyle: TextStyle(color: Colors.grey, fontSize: 18),
                                prefixIcon: Icon(Icons.lock, color: Colors.black87,),
                                errorText: _passwordError == '' ? null : _passwordError,
                              ),
                              onChanged: (value) {
                                setState(() {
                                  _passwordValidation = value;
                                });
                              },
                              
                            ),
                          SizedBox(height: 15),

                          TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                hintText: "Confirm Password",
                                hintStyle: TextStyle(color: Colors.grey, fontSize: 18),
                                prefixIcon: Icon(Icons.lock, color: Colors.black87,),
                                errorText: _confirmPasswordError == '' ? null : _confirmPasswordError,
                              ),
                              onChanged: (value) {
                                setState(() {
                                  _confirmPasswordValidation = value;
                                });
                              },
                            ),
                          SizedBox(height: 20), 

                          Padding(
                            padding: EdgeInsets.symmetric(horizontal:20),
                            child:ElevatedButton(
                              onPressed: () {
                                _fullNameError=_validateUsername(_fullNameValidation);
                                _usernameError=_validateUsername(_usernameValidation);
                                _passwordError= _validatePassword(_passwordValidation);
                                _confirmPasswordError= _validatePassword(_confirmPasswordValidation);
                                _emailError=_validateUsername( _emailValidation);
                                _phoneNumberError= _validatePassword(_phoneNumberValidation);
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
