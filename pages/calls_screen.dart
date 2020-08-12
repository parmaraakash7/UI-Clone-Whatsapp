import "package:flutter/material.dart";
import '../models/call_log_model.dart';

class CallsScreen extends StatelessWidget
{
	@override
	Widget build(BuildContext context)
	{
		return ListView.builder(
			itemCount : logs.length,
			itemBuilder : (c,i){
				return Column(
					children : <Widget>[
						i == 0 ? Container() : Divider(height : 10.0),
						ListTile(
							leading : CircleAvatar(
								foregroundColor : Theme.of(context).primaryColor,
								backgroundColor : Colors.grey,
								backgroundImage : NetworkImage(logs[i].avatarUrl)
							),
							title : Text(
								logs[i].name,
								style : TextStyle(

									fontWeight : FontWeight.w700,
								),
							),
							subtitle : Row(
								children : <Widget>[
									logs[i].incoming ? Icon(Icons.call_received,color : i%2 == 0 ? Colors.green : Colors.red,size : 18.0) : Icon(Icons.call_made,color : Colors.green,size : 18.0),
									SizedBox(width : 5.0),
									Text(
										logs[i].timeStamp,
										style : TextStyle(
											color : Colors.grey,
											fontSize : 15.0,
										),
									),
								]
							),
							trailing : logs[i].call ? Icon(Icons.local_phone,color : Theme.of(context).primaryColor,size : 25.0) : Icon(Icons.videocam,color : Theme.of(context).primaryColor,size : 25.0)
						),
					]
				);
			}
		);
	}
}
