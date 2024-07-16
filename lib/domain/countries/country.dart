enum Country {
  spain('assets/flags/spain.png'),
  france('assets/flags/france.jpg'),
  eeuu('assets/flags/eeuu.png');

  const Country(this.flag);

  final String flag;

  @override
  String toString() {
    if (this == spain) {
      return 'Spain';
    }
    if (this == france) {
      return 'France';
    }
    if (this == eeuu) {
      return 'The United States Of America';
    }
    return '';
  }
}
