import 'package:flutter/material.dart';
import 'package:loginformui/auth.dart';
import 'package:loginformui/main.dart';
import 'package:loginformui/register.dart';

class Login extends StatelessWidget {
  final Function togScreen;
  final _formKey = GlobalKey<FormState>();


  Login({Key? key, required this.togScreen}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Padding(
          padding: EdgeInsets.all(25.0),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  Icon(
                    Icons.person_outlined, color: Colors.grey[500], size: 140,),
                  SizedBox(height: 13,),
                  Text("Wellcome Back",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text("Signin to Continue",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey[400],
                    ),
                  ),
                  SizedBox(height: 30,),

                  Container(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      child: Container(
                        child: TextFormField(
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 22,

                          ),
                          decoration: InputDecoration(


                            border: InputBorder.none,
                            prefixIcon: Icon(Icons.mail, size: 30,color: Theme.of(context).primaryColor),

                            labelText: "EMAIL",
                            labelStyle: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w800,
                              color: Theme.of(context).primaryColor,


                            ),

                          ),
    validator: (text) {
      if (text == null || text.isEmpty) {
        return 'Text is empty';
      }
      return null;
    }

                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      child: Container(
                        child: TextFormField(

                          obscureText: true,
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 22,

                          ),
                          decoration: InputDecoration(


                            border: InputBorder.none,
                            prefixIcon: Icon(Icons.lock, size: 30,color: Theme.of(context).primaryColor,),
                            labelText: "Password",
                            labelStyle: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w800,
                              color: Theme.of(context).primaryColor,


                            ),

                          ),
                          validator: (text) {
                            if (text == null || text.isEmpty) {
                              return 'Text is empty';
                            }
                            return null;
                          },


                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(onPressed: () {},

                          child: Text("Forget Password",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Theme
                                  .of(context)
                                  .primaryColor,
                            ),
                          )),
                    ],
                  ),
                  SizedBox(height: 10,),
                  SizedBox(height: 55,
                    width: double.infinity,
                    child: FlatButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {

                        }



                      },
                      child: Text("Login"),
                      color: Theme
                          .of(context)
                          .primaryColor,
                      textColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have and account ",
                        style: TextStyle(
                            fontSize: 18
                        ),
                      ),
                      GestureDetector(
                        onTap: () => togScreen(),
                        child: Text("Register",
                          style: TextStyle(
                              color: Theme
                                  .of(context)
                                  .primaryColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 20
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

}