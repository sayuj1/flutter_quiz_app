class QuizQuestion {
  final String question;
  final List<String> options;

  const QuizQuestion(this.question, this.options);

  List<String> getShuffledOptions() {
    final shuffledOptions = List.of(
      options,
    ); // copy of original list so shuffle doesn't affect original list
    shuffledOptions.shuffle(); // changes in place
    return shuffledOptions;
  }
}
