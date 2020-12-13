class ChatModel{
  final String name;
  final String message;
  final String time;
  final String avatarSrc;

  ChatModel({this.name,this.message,this.time,this.avatarSrc});
}

List<ChatModel> dummyData=[
  ChatModel(
    name:"Home-Vodafone2",
    message:"hihi",
    time:"15:30",
    avatarSrc: "assets/dp.JPG",
  ),
   ChatModel(
    name:"Home-jio",
    message:"kk",
    time:"15:30",
    avatarSrc: "assets/dp.JPG",
  ),
];