class Language {
  Language({
    required this.name,
    required this.flag,
    required this.puntuation,
    required this.certificate,
  });

  final String name;
  final String flag;
  final double puntuation;
  final String certificate;
}

final languages = <Language>[
  Language(
    name: 'Español',
    flag: 'assets/images/flags/spain.png',
    puntuation: 5,
    certificate: 'Nativo',
  ),
  Language(
    name: 'Inglés',
    flag: 'assets/images/flags/uk.png',
    puntuation: 3.5,
    certificate: 'B2',
  ),
];
