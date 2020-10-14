String capitalize(String value) {
  if (value != null) {
    String firstChar = value[0].toUpperCase();
    String otherChar = value.substring(1);
    return '$firstChar$otherChar';
  }
  return null;
}

String capitalizeWords(String sentence) {
  if (sentence != null) {
    List<String> splitSentence = sentence.split('_');
    return splitSentence.map((word) => capitalize(word)).toList().join(' ');
  }
  return null;
}

String humanize(String value) {
  List<String> splitValue = value.split('_');
  return capitalize(splitValue.join(' '));
}
