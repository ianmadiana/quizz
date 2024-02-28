class QuizQuestion {
  QuizQuestion(this.text, this.answer);

  final String text;
  final List<String> answer;

  List<String> getShuffledAsnwer() {
    final shuffledList = List.of(answer);
    shuffledList.shuffle();
    return shuffledList;
  }
}
