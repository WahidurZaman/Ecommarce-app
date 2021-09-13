import 'package:ecommarce/Component/colors.dart';
import 'package:ecommarce/Screen/loginpage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';



class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {




  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: LightColors.kLightYellow,
      body: Form(
        key: _registerFormKey,

        
        
          child: ListView(
            
            children: <Widget>[
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.symmetric(vertical: 80),
                child: Text(
                  "REGISTER",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF2661FA),
                    fontSize: 36
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
        
              
        
               Container(
                
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(horizontal: 40),
                child: TextFormField(
        
                 controller: firstnameController,
                   
        
                  decoration: InputDecoration(
                    labelText: "First Name",
                    prefixIcon: Icon(Icons.person),
                  ),
        
                  
                  
        
                ),
              ),
        
        
              SizedBox(height: size.height * 0.01),
        
                Container(
                
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(horizontal: 40),
                child: TextFormField(
        
                 controller: lastnameController,
                    
        
                  decoration: InputDecoration(
                    labelText: "Last Name",
                    prefixIcon: Icon(Icons.person),
                  ),
        
                  
                  
        
                ),
              ),
        
             
        
              SizedBox(height: size.height * 0.01),
        
              Container(
                
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(horizontal: 40),
                child: TextFormField(
        
                  controller: emailController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please Enter Email';
                      } else if (!value.contains('@')) {
                        return 'Please Enter Valid Email';
                      }
                      return null;
                    },
        
                  decoration: InputDecoration(
                    labelText: "Email",
                    prefixIcon: Icon(Icons.email),
                  ),
                  
                ),
              ),
        
              SizedBox(height: size.height * 0.01),
        
              Container(
                
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(horizontal: 40),
                child: TextFormField(
        
                 controller: passwordController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please Enter Password';
                      }
                      return null;
                    },
                  decoration: InputDecoration(
                    labelText: "Password",
                    prefixIcon: Icon(Icons.email)
                  ),
                  obscureText: true,
                  
        
                ),
                
              ),
        
              SizedBox(height: size.height * 0.03),
        
              Container(
                alignment: Alignment.centerRight,
                margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                // ignore: deprecated_member_use
                child: RaisedButton(
        
        
                   onPressed: () {
                          // Validate returns true if the form is valid, otherwise false.
                          if (_registerFormKey.currentState!.validate()) {
                            setState(() {
                              firstname = firstnameController.text;
                              lastname = lastnameController.text;
                              email = emailController.text;
                              password = passwordController.text;
                            });
                            registration();
                          }
                        },
                  
        
        
        
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
                  textColor: Colors.white,
                  padding: const EdgeInsets.all(0),
                  child: Container(
                    alignment: Alignment.center,
                    height: 50.0,
                    width: size.width * 0.5,
                    decoration: new BoxDecoration(
                      borderRadius: BorderRadius.circular(80.0),
                      gradient: new LinearGradient(
                        colors: [
                          Color.fromARGB(255, 255, 136, 34),
                          Color.fromARGB(255, 255, 177, 41)
                        ]
                      )
                    ),
                    padding: const EdgeInsets.all(0),
                    child: Text(
                      "SIGN UP",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
              ),
        
              Container(
                alignment: Alignment.centerRight,
                margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                child: GestureDetector(
                  onTap: () => {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()))
                  },
                  child: Text(
                    "Already Have an Account? Sign in",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF2661FA)
                    ),
                  ),
                ),
              )
            ],

            
          
        ),
      ),
    );
  }
}