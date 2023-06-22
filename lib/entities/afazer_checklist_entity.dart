class AfazerCheckListEntity {
  String titulo;
  bool isChecked;

  AfazerCheckListEntity({
    required this.titulo,
    this.isChecked = false,
  });

  Map<String, dynamic> toJson() {
    return {
      'titulo': titulo,
      'isChecked': isChecked,
    };
  }

  factory AfazerCheckListEntity.fromJson(Map<String, dynamic> json) {
    return AfazerCheckListEntity(
      titulo: json['titulo'],
      isChecked: json['isChecked'],
    );
  }

  static List<AfazerCheckListEntity> fromJsonList(List<dynamic>? json) {
  return json?.map((e) => AfazerCheckListEntity.fromJson(e)).toList() ?? [];
  }
}
