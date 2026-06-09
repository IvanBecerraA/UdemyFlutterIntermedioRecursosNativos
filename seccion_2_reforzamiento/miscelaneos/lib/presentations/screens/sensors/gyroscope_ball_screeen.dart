import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miscelaneos/presentations/providers/sensors/gyroscope_provider.dart';


class GyroscopreBallScreen extends ConsumerWidget {
  const GyroscopreBallScreen({super.key});

  @override
  Widget build(BuildContext context, ref) {

    final gyroscope$ = ref.watch(gyroscopreProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Giroscópio'),
      ),
      body: SizedBox.expand(
        child: gyroscope$.when(
          data: (value) => MovingBall(x: value.x, y: value.y), 
          error: (error, stackTrace) => Text('$error'), 
          loading: () => const CircularProgressIndicator()
        )
      ),
    );
  }
}


class MovingBall extends StatelessWidget {

  final double x;
  final double y;

  const MovingBall({super.key, required this.x, required this.y});

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;
    double screenWidth = size.width;
    double screenHeight = size.height;

    double currentYPos = ( y * 400);
    double currentXPos = ( x * 600);


    return Stack(
      alignment: Alignment.center,
      children: [

        AnimatedPositioned(
          left: currentYPos -25 + (screenWidth / 2),
          top: currentXPos -100 + (screenHeight / 2),
          curve: Curves.easeInOut, 
          duration: const Duration(milliseconds: 1000),
          child: const Ball()
        ),

        Text(
          '''
    X: $x,
    Y: $y
''', 
          style: const TextStyle(fontSize: 30),
        ),
      ],
    );
  }
}


class Ball extends StatelessWidget {
  const Ball({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(100)
      ),
    );
  }
}