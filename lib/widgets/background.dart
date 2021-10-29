import 'package:flutter/material.dart';
import 'package:sa3_liquid/sa3_liquid.dart';

class Background extends StatefulWidget {
  Widget child;
  Background({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  _BackgroundState createState() => _BackgroundState();
}

class _BackgroundState extends State<Background> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              tileMode: TileMode.mirror,
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromARGB(255, 44, 56, 26),
                Color.fromARGB(255, 168, 183, 72),
              ],
              stops: [
                0,
                1,
              ],
            ),
            backgroundBlendMode: BlendMode.srcOver,
          ),
          child: const PlasmaRenderer(
            type: PlasmaType.infinity,
            particles: 6,
            color: Color.fromARGB(255, 57, 35, 0),
            blur: 0.3,
            size: 0.2,
            speed: 1.41,
            offset: 0,
            blendMode: BlendMode.colorDodge,
            particleType: ParticleType.circle,
            variation1: 0,
            variation2: 0,
            variation3: 0,
            rotation: 0.79,
          ),
        ),
        widget.child,
        Align(
            alignment: Alignment.bottomRight,
            child: Image.asset('assets/images/tree.png'))
      ],
    );
  }
}
