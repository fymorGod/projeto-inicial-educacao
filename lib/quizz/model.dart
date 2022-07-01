class Question {
  final String text;
  final List<Option> options;
  bool isLocked;
  Option? selectedOption;

  Question({
    required this.text,
    required this.options,
    this.isLocked = false,
    this.selectedOption,
  });
}

class Option{
  final String text;
  final bool isCorrect;

  const Option({
    required this.text,
    required this.isCorrect,
  });
}

final questions = [
  Question(
    text: "Com base no que foi ensinado na aula 1, quantos lados tem um triângulo?",
    options: [
      const Option(text: '3 lados', isCorrect: true),
      const Option(text: '4 lados', isCorrect: false),
    ]
  ),
  Question(
      text: "Ainda com base na aula, um triângulo pode ser considerado uma figura   tridimensional?",
      options: [
        const Option(text: 'sim', isCorrect: false),
        const Option(text: 'não', isCorrect: true),
      ]
  ),
];