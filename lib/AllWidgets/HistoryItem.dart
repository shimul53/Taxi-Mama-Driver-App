import 'package:drivers_app/Assistants/assistantMethods.dart';
import 'package:drivers_app/Models/history.dart';
import 'package:flutter/material.dart';

class HistoryItem extends StatelessWidget {
  final History? history;
  HistoryItem({this.history});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Row(
                  children: <Widget>[
                    Image.asset(
                      "images/pickicon.png",
                      height: 16,
                      width: 16,
                    ),
                    SizedBox(
                      width: 18,
                    ),
                    Expanded(
                      child: Container(
                        child: Text(
                          history!.pickUp.toString(),
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 18.0,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 5),
                    Text(
                      '৳ ${history!.fares}',
                      style: TextStyle(
                          fontFamily: "Brand Bold",
                          fontSize: 16.0,
                          color: Colors.black87),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Image.asset(
                    "images/desticon.png",
                    height: 16,
                    width: 16,
                  ),
                  SizedBox(
                    width: 18,
                  ),
                  Text(
                    history!.dropOff.toString(),
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                AssistantMethods.formatTripDate(history!.createdAt.toString())
                    .toString(),
                style: TextStyle(color: Colors.grey),
              )
            ],
          )
        ],
      ),
    );
  }
}
