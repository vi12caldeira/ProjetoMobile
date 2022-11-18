class Produto {
  int? id;
  String? nome;
  double? preco;
  int? quantidade;
  int? id_categoria;

  Produto(this.id, this.nome, this.preco, this.quantidade, this.id_categoria);

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      'id': id,
      'nome': nome,
      'preco': preco,
      'quantidade': quantidade,
      'id_categoria': id_categoria
    };
    return map;
  }

  Produto.fromMap(Map<String, dynamic> map) {
    id = map['id'];
    nome = map['nome'];
    preco = map['preco'];
    quantidade = map['quantidade'];
    id_categoria = map['id_categoria'];
  }

  @override
  String toString() {
    return "Produto => (id: $id, nome: $nome, preco: $preco, quantidade: $quantidade, id_categoria: $id_categoria)";
  }
}
