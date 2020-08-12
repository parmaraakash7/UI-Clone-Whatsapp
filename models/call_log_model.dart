class CallLogModel{
	String name,timeStamp,avatarUrl;
	bool incoming,call;

	CallLogModel(this.name,this.timeStamp,this.avatarUrl,this.incoming,this.call);
}

List<CallLogModel> logs = [
	CallLogModel('Nirav','2 July,19:56','https://qph.fs.quoracdn.net/main-qimg-b544b8a7fec58b0707f18e8fe68b7fad.webp',true,false),
	CallLogModel('Jay Thard','21 Jun,2:30','https://upload.wikimedia.org/wikipedia/commons/f/f7/Rohit_Sharma_November_2016_%28cropped%29.jpg',true,true),
	CallLogModel('Chitrang','15 Jun,10:11','https://pbs.twimg.com/profile_images/527856211559849984/t6PKbnm4_400x400.jpeg',true,false),
	CallLogModel('Priyaank','2 May,9:06','https://qph.fs.quoracdn.net/main-qimg-b544b8a7fec58b0707f18e8fe68b7fad.webp',false,true),
	CallLogModel('Karan','29 April,1:51','https://qph.fs.quoracdn.net/main-qimg-b544b8a7fec58b0707f18e8fe68b7fad.webp',false,false)
];

