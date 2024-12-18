class DateFormatter {
  static String formatDate(DateTime date) {
    return '${date.day}/${date.month}/${date.year}';
  }

  static String formatDateTime(DateTime date) {
    return '${date.day}/${date.month}/${date.year} ${date.hour}:${date.minute}';
  }

  static String getRelativeTime(DateTime date) {
    final now = DateTime.now();
    final difference = now.difference(date);

    if (difference.inDays > 365) {
      return '${(difference.inDays / 365).floor()} años';
    } else if (difference.inDays > 30) {
      return '${(difference.inDays / 30).floor()} meses';
    } else if (difference.inDays > 0) {
      return '${difference.inDays} días';
    } else if (difference.inHours > 0) {
      return '${difference.inHours} horas';
    } else if (difference.inMinutes > 0) {
      return '${difference.inMinutes} minutos';
    } else {
      return 'Ahora';
    }
  }
}
