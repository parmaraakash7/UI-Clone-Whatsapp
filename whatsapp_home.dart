import "package:flutter/material.dart";

import 'package:camera/camera.dart';
import "pages/calls_screen.dart";
import "pages/camera_screen.dart";
import "pages/chat_screen.dart";
import "pages/status_screen.dart";
class WhatsAppUi extends StatefulWidget
{
	  final List<CameraDescription> cameras;
	  WhatsAppUi(this.cameras);
	_whatsAppUiState createState() => _whatsAppUiState();
}

class _whatsAppUiState extends State<WhatsAppUi> with SingleTickerProviderStateMixin 
{

	TabController tabController;
	bool showFab = true;

	@override
	void initState()
	{
		super.initState();
		tabController = TabController(vsync : this,initialIndex : 1,length : 4);
		tabController.addListener(() {
      if (tabController.index == 0) {
        showFab = false;
      } else {
        showFab = true;
      }
      setState(() {});
    });
	}

	@override
	Widget build(BuildContext context){
		
		return Scaffold(
			appBar : AppBar(
				title : Text("WhatsApp"),
				elevation : 0.7,
				actions:<Widget>[
					IconButton(
						icon : Icon(Icons.search),
						onPressed : (){},
					),
					IconButton(
						icon : Icon(Icons.more_vert),
						onPressed : (){},
					),
				],
				bottom : TabBar(
					controller : tabController,
					indicatorColor : Colors.white,
					tabs : <Widget>[
						Tab(icon : Icon(Icons.camera_alt)),
						Tab(text : "CHATS"),
						Tab(text : "STATUS"),
						Tab(text : "CALLS"),
					],
				),
			),
			body : TabBarView(
				controller : tabController,
				children : <Widget>[
					CameraScreen(widget.cameras),
					ChatScreen(),
					StatusScreen(),
					CallsScreen(),
				],
			),
			floatingActionButton : showFab ? tabController.index == 1 ? FloatingActionButton(
				child : Icon(Icons.message,color : Colors.white),
				backgroundColor : Theme.of(context).accentColor,
			) : tabController.index == 2 ? Column(
				mainAxisAlignment : MainAxisAlignment.end,
				children : <Widget>[
					Container(
						height : 45,
						width : 45,
						decoration : BoxDecoration(
							borderRadius : BorderRadius.circular(30.0),
							color : Colors.grey[200],
						),
						child : Icon(Icons.edit,color : Color(0xff075E54)),
					),
					SizedBox(height : 10.0),
					FloatingActionButton(
						child : Icon(Icons.camera_alt,color : Colors.white),
						backgroundColor : Theme.of(context).accentColor,
					),
				]
			) : tabController.index == 3 ? FloatingActionButton(
				child : Icon(Icons.add_call,color : Colors.white),
				backgroundColor : Theme.of(context).accentColor,
			) : null : null,
		);
	}
}