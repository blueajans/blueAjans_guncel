import 'package:timelines/timelines.dart';
import 'package:flutter/material.dart';

class TimeLine extends StatelessWidget {
  const TimeLine({Key? key}) : super(key: key);
///TODO: TELEFONDA DENE
  @override
  Widget build(BuildContext context) {
    return Timeline.tileBuilder(
      scrollDirection: Axis.horizontal,
      builder: TimelineTileBuilder.fromStyle(

        contentsAlign: ContentsAlign.alternating,
        contentsBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(24.0),
          child: Text('Timeline Event $index'),
        ),
        itemCount: 5,
      ),
    );
  }
}
