extension StringExtension on String {
  String getInitials() {
    if (isEmpty) return '';
    final words = split(' ');
    var res = '';

    if (words.length > 1) {
      res = substring(0, 1) +
          (words[1].length > 1 ? words[1].substring(0, 1) : words[1]);
    } else {
      res = substring(0, 1);
    }

    // remove any non-ascii characters
    res = res.replaceAll(RegExp(r'[^\x00-\x7F]+'), '');

    return res.toUpperCase();
  }
}
