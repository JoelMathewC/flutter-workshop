import 'package:flutter/material.dart';
import 'package:workshop_app/classes/Event.dart';
import 'package:workshop_app/colors.dart';
import 'package:workshop_app/functions/data.dart';

class CreateNewReminder extends StatefulWidget {
  static String id = "NewReminder";
  @override
  _CreateNewReminderState createState() => _CreateNewReminderState();
}

class _CreateNewReminderState extends State<CreateNewReminder> {
  @override
  Widget build(BuildContext context) {

    String eventName = "";

    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        title: Padding(
          padding: EdgeInsets.only(top: 3),
          child: Text('Add New Event',
          style: TextStyle(
            color: AppColors.secondaryColor,
            fontSize: 22,
            fontWeight: FontWeight.bold
          ),),
        ),
        elevation: 0.0,
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Icon(Icons.arrow_back,
            color: AppColors.secondaryColor,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.secondaryColor,
        onPressed: () {
          if(eventName.isNotEmpty) {
            globalEventList.add(Event(data: eventName));
            Navigator.pop(context);
          }
        },
        child: Icon(Icons.check,
          color: AppColors.backgroundColor,),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text('Event Name',
              style: TextStyle(
                  color: AppColors.secText,
                  fontSize: 20,
                fontWeight: FontWeight.bold
              ),),
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width - 50,
                child: TextFormField(
                  cursorColor: AppColors.secondaryColor,
                  decoration: InputDecoration(
                    hintText: 'Enter the name of event/activity',
                    focusColor: AppColors.secondaryColor
                  ),
                  onChanged: (val){
                    eventName = val;
                  },
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
