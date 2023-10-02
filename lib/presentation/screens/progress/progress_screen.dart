import 'package:flutter/material.dart';

class ProgressScreen extends StatelessWidget {
  static const name = 'progress_screen';
  const ProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Progress Indicators'),
        ),
        body: const _ProgressView(),
    );
  }
}

class _ProgressView extends StatelessWidget {
  const _ProgressView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        children: [
          SizedBox(height: 30),
          Text('Circula progress indicator'),
          SizedBox(height: 10),
          CircularProgressIndicator( strokeWidth: 2, backgroundColor: Colors.black45),
          SizedBox(height: 20),
          Text('Circular y linear controlado'),
          SizedBox(height: 10),
          _ContollerProgresIndicator(),
        ],
        ),
    );
  }

}

class _ContollerProgresIndicator extends StatelessWidget {
  const _ContollerProgresIndicator();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Stream.periodic( const Duration( microseconds: 300), (value){
        return (value * 2) / 100; //0.0, 1.0
      }).takeWhile((value) => value < 100),
      builder: (context, snapshot){
        final progressValue = snapshot.data ?? 0;

        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularProgressIndicator( value:  progressValue, strokeWidth: 2, backgroundColor: Colors.black12,),
              const SizedBox(width: 20,),
              Expanded(
                child: LinearProgressIndicator(value: progressValue)
              ),
            ],
          ),
        );
      },
    );
  }
}

