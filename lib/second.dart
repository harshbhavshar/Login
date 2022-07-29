import 'package:carbon_icons/carbon_icons.dart';
import 'package:flutter/material.dart';
import 'package:login/third.dart';

class Second extends StatelessWidget {
  const Second({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    fild(String data) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: TextField(
          decoration: InputDecoration(
            hintText: data,
            labelText: data,
          ),
        ),
      );
    }

    sb(double h) {
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
              image: AssetImage('assets/1.jpg'), fit: BoxFit.fill)),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              sb(45),
              InkWell(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Icon(CarbonIcons.arrow_left),
              ),
              sb(40),
              Text(
                "Welcome\nback.",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
              sb(70),
              fild("Enter Email"),
              sb(20),
              fild("Enter Password"),
              sb(50),
              InkWell(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(12)),
                    child: Text(
                      "Sign In",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ),
              ),
              sb(60),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Third()));
                  }, child: Text("Sign Up")),
                  InkWell(onTap: () {}, child: Text("Forgot Password?")),
                ],
              )
            ],
          ),
        ),
      ),
    ));
  }
}
