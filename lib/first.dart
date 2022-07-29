import 'package:carbon_icons/carbon_icons.dart';
import 'package:flutter/material.dart';
import 'package:login/second.dart';
import 'package:login/third.dart';

class First extends StatelessWidget {
  const First({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    btn(IconData icon, String data){
      return InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>Second()));
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 15,horizontal: 20),
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(12)
            ),
            child: Row(
              children: [
                Icon(icon,color: Colors.white,size: 31,),
                SizedBox(width: 15,),
                Text(data,style: TextStyle(color: Colors.white,fontSize: 18),)
              ],
            ),
          ),
        ),
      );
    }
    sb(double h){
      return SizedBox(
      height: h,
      );
    }
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Container(
          width: size.width,
          height: size.height,
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/1.jpg'),
                fit: BoxFit.fill
              )
          ),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  sb(45),
                  Image.asset('assets/gangaram.png',width: 60,),
                  sb(40),
                  Text("Check\nwhat's\nhappening\naround you.",style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold
                  ),),
                  sb(50),
                  Column(
                    children: [
                      btn(Icons.mail_outline, "Continue with email"),
                      btn(CarbonIcons.logo_facebook, "Continue with Facebook"),
                      btn(CarbonIcons.logo_google, "Continue with Google"),
                    ],
                  ),
                  sb(60),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Third()));
                        },
                          child: Text("Sign Up")),
                      InkWell(
                        onTap: (){},
                          child:  Text("Forgot Password?")),
                    ],
                  )

                ],
              ),
            ),
          ),
        )
      );
  }
}
