class Hero {
  String _name;
  String _poder;

  Hero([this._name = "Logan", this._poder = "Regeneracion"]);

  Hero.name(String name)
      : this._name = name,
        this._poder = "Sin poder";
  Hero.poder(String poder)
      : this._poder = poder,
        this._name = "Sin Nombre";

  String get Name {
    return this._name;
  }

  String get Poder {
    return this._poder;
  }

  set Name(String name) {
    this._name = name;
  }

  set Poder(String poder) {
    this._poder = poder;
  }
}
