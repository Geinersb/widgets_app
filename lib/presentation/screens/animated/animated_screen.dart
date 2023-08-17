import 'package:flutter/material.dart';
import 'dart:math' show Random;

class AnimatedScreen extends StatefulWidget {
  static const name = 'animated_screen';

  const AnimatedScreen({super.key});

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {
  double width = 50;
  double height = 50;
  Color color = Colors.indigo;
  double radius = 10.0;

  void changeShape() {
    final random = Random();

    width = random.nextInt(300) + 100;
    height = random.nextInt(300) +100;
    radius = random.nextInt(100) + 20;

    color = Color.fromRGBO(
      random.nextInt(255),  //red
       random.nextInt(255), //green
        random.nextInt(255), //blue
         1 //opacity
         );

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Container'),
        foregroundColor: colors.primary,
      ),
      body: Center(
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 400),
          curve: Curves.bounceOut,
          width: width <=0 ? 0 : width,
          height: height <=0 ? 0 : height,
          decoration: BoxDecoration(
              color: color, borderRadius: BorderRadius.circular(radius <0 ? 0 : radius)),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            changeShape();
          },
          child: const Icon(Icons.play_arrow_rounded)),
    );
  }
}
