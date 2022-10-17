import 'package:bmi_project/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class WelcomScreen extends StatefulWidget {
  @override
  State<WelcomScreen> createState() => _WelcomScreenState();
}
class _WelcomScreenState extends State<WelcomScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  const Text('WELCOM TO EDU',
                     style: TextStyle(
                       fontWeight: FontWeight.bold,
                     ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  SvgPicture.asset('assets/icons/chat.svg',height: 380,),
                  SizedBox(height: 40,),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.purple),
                      padding: MaterialStateProperty.all(
                          const EdgeInsets.symmetric(
                            horizontal: 79,
                            vertical: 10,
                          ),
                      ),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(27))),

                    ),
                      onPressed: (){
                      Navigator.push
                        (context,
                        MaterialPageRoute(
                            builder: (context)=> LoginScreen()
                        ),
                      );
                      },
                      child: const Text('LOGIN'),
                  ),


                ],
              ),
            ),
            Positioned(
              left: 0,
                child: Image.asset("assets/images/main_top.png",width: 111,),
            ),
            Positioned(
              bottom: 0,
              child: Image.asset("assets/images/main_bottom.png",width: 105,),
            ),

          ],
        ),
      ),
    );
  }
}
