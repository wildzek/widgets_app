import 'package:flutter/widgets.dart';
import 'package:widgets_app/presentation/screens/screens.dart';

class AnimatedSccreen extends StatelessWidget {
  static const name = 'Animated Screen';

  const AnimatedSccreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Animated Container'),
      ),

      body: Center(
        child: AnimatedContainer(
          duration: const Duration(milliseconds:400),
          curve: Curves.easeOutCubic,
          width: 300, 
          height: 230, 
          decoration: BoxDecoration(
            color: Colors.red, borderRadius: BorderRadius.circular(20)) ),),
      floatingActionButton: FloatingActionButton(onPressed: (){

      },

      child: const Icon(Icons.play_arrow_rounded),
    ),
    );
  }
}
