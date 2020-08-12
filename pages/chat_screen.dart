import "package:flutter/material.dart";

import "../models/chat_model.dart";
class ChatScreen extends StatefulWidget
{
	_chatScreenState createState() => _chatScreenState();
}

class _chatScreenState extends State<ChatScreen>
{
	@override
	Widget build(BuildContext conext)
	{
		return ListView.builder(
			itemCount : data.length,
			itemBuilder : (context,i)=>
			Column(
				children : <Widget>[
					i==0 ? Container() : Divider(height : 10.0),
					ListTile(
						leading : CircleAvatar(
							foregroundColor : Theme.of(context).primaryColor,
							backgroundColor : Colors.grey,
							backgroundImage : NetworkImage(data[i].avatarUrl),
						),
						title : Row(
							mainAxisAlignment : MainAxisAlignment.spaceBetween,
							children : <Widget>[
								Text(
									data[i].name,
									style : TextStyle(
										fontWeight : FontWeight.bold,
									),
								),

								Text(
									data[i].time,
									style : TextStyle(
										fontSize : 14.0,
										color : Colors.grey,
									),
								),
							],
						),
						subtitle : Padding(
							padding : EdgeInsets.only(top:5.0),
							child : Text(
								data[i].message,
								style : TextStyle(
									color : Colors.grey,
									fontSize : 15.0,
								),
							),
						),
					),
				],
			),
		);
	}
}