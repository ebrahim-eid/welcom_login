
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      const SizedBox(height: 30,),
                      Text('LOGIN',
                      style: TextStyle(
                        fontSize: 25,

                      ),
                      ),
                      SizedBox(height: 20,),
                      SvgPicture.asset(
                        'assets/icons/login.svg',
                        width: 288,

                      ),
                      SizedBox(height: 15,),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.purple[100],
                          borderRadius: BorderRadius.circular(66),
                        ),
                        width: 266,
                        padding: EdgeInsets.symmetric(horizontal: 16),

                        child: TextFormField
                          (
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            labelText: "Your Email :",
                            prefixIcon: Icon(
                              Icons.person,
                              color: Colors.purple[800],
                            ),

                          ),

                        ),
                      ),
                      SizedBox(height: 18
                        ,),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.purple[100],
                          borderRadius: BorderRadius.circular(66),
                        ),
                        width: 266,
                        padding: EdgeInsets.symmetric(horizontal: 16),

                        child: TextFormField
                          (
                          obscureText: true,
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            labelText: "Password :",
                            prefixIcon: Icon(
                              Icons.lock,
                              color: Colors.purple[800],
                            ),
                            suffixIcon: Icon(Icons.remove_red_eye,
                              color: Colors.purple[800],),

                          ),

                        ),
                      ),
                      SizedBox(height: 18
                        ,),
                      ElevatedButton(
                        onPressed: () {         },
                        style: ButtonStyle(
                          backgroundColor:
                          MaterialStateProperty.all(Colors.purple),
                          padding: MaterialStateProperty.all(
                              EdgeInsets.symmetric(
                                  horizontal: 106, vertical: 10)),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(27))),
                        ),
                        child: Text(
                          "login",
                          style: TextStyle(fontSize: 24),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              left: 0,
                top: 0,
                child: Image.asset("assets/images/main_top.png",width: 111,),
            ),


          ],
        ),
      ),
    );
  }
}
