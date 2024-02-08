class Users {
  final String name;
  final String lastChatText;
  final String lastChatTime;
  final String image;
  final bool? isMute;
  final bool? incomeCall;
  final bool? isSeen;

  Users(
      {required this.name,
      required this.lastChatText,
      required this.lastChatTime,
      required this.image,
      this.isMute,
      this.incomeCall,
      this.isSeen});
}
