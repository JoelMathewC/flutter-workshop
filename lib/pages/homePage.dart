import 'package:flutter/material.dart';
import 'package:workshop_app/classes/Event.dart';
import 'package:workshop_app/colors.dart';
import 'package:workshop_app/functions/data.dart';
import 'package:workshop_app/pages/createNewReminder.dart';
import 'package:workshop_app/widgets/EventCards.dart';

class HomePage extends StatefulWidget {
  static String id = 'HomePage';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<Event> events = globalEventList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.secondaryColor,
        onPressed: () => Navigator.pushNamed(context, CreateNewReminder.id),
        child: Icon(Icons.add,
        color: AppColors.backgroundColor,),
      ),
      body: Container(
        color: AppColors.backgroundColor,
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 100,),
            Text('DASHBOARD',
            style: TextStyle(
              color: AppColors.secondaryColor,
              fontSize: 28,
              fontWeight: FontWeight.bold
            ),),
            Text('TODO LIST',
              style: TextStyle(
                  color: AppColors.secText,
                  fontSize: 24,
                  fontWeight: FontWeight.bold
              ),),
            SizedBox(height: 50,),

            if(events.length > 0)
              Container(
                height: MediaQuery.of(context).size.height - 300,
                child: ListView.builder(
                    itemCount: events.length,
                    itemBuilder: (context,index){
                      return EventCards(event: events[index]);
                    }
                ),
              ),


          ],
        ),
      ),
    );
  }
}
