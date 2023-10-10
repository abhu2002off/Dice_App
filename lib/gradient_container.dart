import "package:basics/dice_roller.dart";
import "package:flutter/material.dart";
//import "package:basics/styledText.dart";

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2,
      {super.key}); //3)---->Positional Parameter with separate Values

  const GradientContainer.purple({super.key})
      : color1 = Colors.deepPurple,
        color2 = Colors.indigo;

  final Color color1;
  final Color color2;
  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child: DiceRoller(), /*StyledText(
            "Hello World")*/
        // Argument are passed to constructor to styledText custom widget and can be used mulitple times,no need
        //to pass named agrument(key) as it is named parameter are optional,by default
      ),
    );
  }
}
/*class GradientContainer extends StatelessWidget {
  const GradientContainer(
      {super.key,
      required this.containerColor}); //2)---->Named Parameter are by default optional so required is required

  final List<Color> containerColor;
  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: containerColor,
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child: StyledText(
            "Hello World"), // Argument are passed to constructor to styledText custom widget and can be used mulitple times,no need
        //to pass named agrument(key) as it is named parameter are optional,by default
      ),
    );
  }
}
*/
/*class GradientContainer extends StatelessWidget {
  const GradientContainer(this.containerColor, {super.key});-->1) Using positional parameter (List)

  final List<Color> containerColor;
  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: containerColor
          /* [
          //Color.fromARGB(255, 64, 17, 141),//"hardcoded"
          // Color.fromARGB(255, 46, 10, 108)
           ]*/
          ,
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child: StyledText(
            "Hello World"), // Argument are passed to constructor to styledText custom widget and can be used mulitple times,no need
        //to pass named agrument(key) as it is named parameter are optional,by default
      ),
    );
  }
} */
