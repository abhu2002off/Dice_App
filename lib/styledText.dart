import "package:flutter/material.dart";

class StyledText extends StatelessWidget {
  const StyledText(this.text,
      {super.key}); //the constructor and the build method is not connected,as named parameters are optional
  //initialization takes place in constructor for positional parameter as this keyword refer to the current instance of the class(Accept))

  final String
      text; // (store)class property or variable which store the value initialized by constructor,the variable is final bcz it should not be changed
  // in the build method or futher use in the class
  @override
  Widget build(context) {
    return Text(
      text, // can be used multiple times with restriction of reassignment(Use) ,looks foe class variable
      style: const TextStyle(fontSize: 28, color: Colors.white),
    );
  }
}
