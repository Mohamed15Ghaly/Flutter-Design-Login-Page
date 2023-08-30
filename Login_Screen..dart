import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
class Login_Screen extends StatefulWidget {
  @override
  State<Login_Screen> createState() => _Login_ScreenState();
}

class _Login_ScreenState extends State<Login_Screen> {
  var Email = TextEditingController(),
      Password = TextEditingController(),
      Formkey = GlobalKey<FormState>();
  IconData? suffx;
  bool isPassword = false,
      isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20
          ),
          child: Center(
            child: SingleChildScrollView(
              child: Form(
                key: Formkey,
                child: Column(
                  children: [
                    Lottie.asset('assets/images/login_screen.json'),
                    TextFormField(
                      controller: Email,
                      cursorColor: Colors.white,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        label: Text("Email",
                          style: TextStyle(
                            color: Colors.white,
                          ),),
                        prefixIcon: Icon(Icons.email),
                        prefixIconColor: Colors.white,
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.white12,
                              width: 3,
                            )
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white30,
                            width: 3,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      validator: (value) {
                        if (value!.isEmpty)
                          return "Please Enter Your Email";
                      },
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(onPressed: () {},
                            child: Text("forgot password ? ", style: TextStyle(
                                color: Colors.white
                            ),)),
                      ],
                    ),
                    TextFormField(
                      cursorColor: Colors.white,
                      controller: Password,
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: isPassword,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock),
                        suffixIcon: IconButton(onPressed: () {
                          setState(() {
                            isPassword = !isPassword;
                          });
                        },
                            icon: isPassword
                                ? Icon(Icons.visibility)
                                : Icon(
                                Icons.visibility_off)),
                        suffixIconColor: Colors.white,
                        prefixIconColor: Colors.white,
                        label: Text("Password",
                          style: TextStyle(
                              color: Colors.white
                          ),),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.white12,
                              width: 3,
                            )
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white30,
                            width: 3,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) return "Please Enter Your Password";
                      },
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Checkbox(value: isChecked,
                            activeColor: Colors.white54,
                            onChanged: (value) {
                              setState(() {
                                isChecked = !isChecked;
                              });
                            }),
                        Text("Remember me", style: TextStyle(
                            color: Colors.white
                        ),),
                      ],
                    ),
                    SizedBox(height: 20,),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white30
                      ),
                      child: MaterialButton(
                        elevation: 0,
                        onPressed: () {
                          // if (Formkey.currentState!.validate()) {
                          //   print("Email : ${Email}");
                          //   print("Password : ${Password}");
                          // }
                        },
                        child: Text("Login in", style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),),
                      ),
                    ),
                    SizedBox(height: 5,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Dont't have an account", style: TextStyle(
                            color: Colors.white54
                        ),),
                        TextButton(onPressed: () {},
                            child: Text("Register now", style: TextStyle(
                                color: Colors.white),)),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: TextButton.icon(
                            onPressed: () {},
                            icon: Image.asset(
                              'assets/images/Facebook.png', color: Colors.white, width: 25,),
                            label: Text("Continue with Facebook", style: TextStyle(
                                color: Colors.white
                            ),),),
                        ),
                        Text("-  OR  -", style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: TextButton.icon(
                            onPressed: () {},
                            icon: Image.asset(
                              'assets/images/Google.PNG', color: Colors.white, width: 25,),
                            label: Text("Continue with Google", style: TextStyle(
                                color: Colors.white
                            ),),),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}