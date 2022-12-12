class FontSize {
  const FontSize._(this.index);
  final int index;

  static const FontSize display1 = FontSize._(0);
  static const FontSize display2 = FontSize._(1);
  static const FontSize display3 = FontSize._(2);
  static const FontSize display4 = FontSize._(3);
  static const FontSize display5 = FontSize._(4);
  static const FontSize display6 = FontSize._(5);
  static const FontSize display7 = FontSize._(6);
  static const FontSize display8 = FontSize._(7);
  static const FontSize display9 = FontSize._(8);

  static const List<FontSize> values = <FontSize>[
    display1,
    display2,
    display3,
    display4,
    display5,
    display6,
    display7,
    display8,
    display9
  ];

  @override
  String toString() {
    return const <int, String>{
      0: 'FontSize.display1',
      1: 'FontSize.display2',
      2: 'FontSize.display3',
      3: 'FontSize.display4',
      4: 'FontSize.display5',
      5: 'FontSize.display6',
      6: 'FontSize.display7',
      7: 'FontSize.display8',
      8: 'FontSize.display9',
    }[index]!;
  }
}
