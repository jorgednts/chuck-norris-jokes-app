import 'package:flutter/material.dart';
import '../../../models/chuck_joke_model.dart';

class JokeBodyWidget extends StatelessWidget {
  final ChuckJokeModel? displayJoke;

  const JokeBodyWidget({Key? key, this.displayJoke}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: Column(
        children: [
          Container(
            child: Image.network(displayJoke?.iconUrl ?? ''),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(displayJoke?.joke ?? ''),
          ),
        ],
      ),
    );
  }
}
