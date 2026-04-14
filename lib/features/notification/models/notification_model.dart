class NotificationModel {
  final String desc, iconPath;
  final bool isRead, isIcon;

  NotificationModel({
    required this.desc,
    required this.iconPath,
    required this.isRead,
    required this.isIcon,
  });
}

class NotificationGroubModel {
  final String date;
  final List<NotificationModel> notifications;

  NotificationGroubModel({required this.date, required this.notifications});
}
