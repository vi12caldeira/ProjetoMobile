class Categoria {
  int? id;
  String? nome;

  Categoria(this.id, this.nome);

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{'id': id, 'nome': nome};
    return map;
  }

  Categoria.fromMap(Map<String, dynamic> map) {
    id = map['id'];
    nome = map['nome'];
  }


}
