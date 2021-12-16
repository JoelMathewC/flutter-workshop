import 'package:flutter/material.dart';
import 'package:workshop_app/classes/Event.dart';
import 'package:workshop_app/colors.dart';

class EventCards extends StatefulWidget {
  Event event;
  EventCards({required this.event});

  @override
  _EventCardsState createState() => _EventCardsState();
}

class _EventCardsState extends State<EventCards> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: 50,
        width: MediaQuery.of(context).size.width - 50,
        decoration: BoxDecoration(
          color: AppColors.cardColor,
          border: Border(
            left: BorderSide(
              width: 3.0,
              color: AppColors.secondaryColor,
            ),
          ),
        ),
        child: Row(
          children: [
            SizedBox(width: 10,),
            Checkbox(value: widget.event.getCompleted(), onChanged: (val){
              setState(() {
                widget.event.toggleCompleted();
              });
            },
            activeColor: AppColors.secondaryColor,),
            SizedBox(width: 10,),
            Text(widget.event.getData(),
            style: TextStyle(
              color: AppColors.secondaryColor,
              fontSize: 16,
            ),)
          ],
        ),
      ),
    );
  }
}
