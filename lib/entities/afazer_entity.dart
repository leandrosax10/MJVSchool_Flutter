import 'package:shcool/entities/afazer_checklist_entity.dart';

class AfazerEntity {
  String uuid;
  String titulo;
  DateTime dataInicio;
  DateTime dataFim;
  bool? isConcluido;
  List<AfazerCheckListEntity>? conteudos;
  String? image;

  AfazerEntity(
      {required this.uuid,
      required this.titulo,
      required this.dataInicio,
      required this.dataFim,
      this.isConcluido = false,
      this.conteudos = const [],
      this.image});

  factory AfazerEntity.fromJson(Map<String, dynamic> json) {
    return AfazerEntity(
      uuid: json['uuid'],
      titulo: json['titulo'],
      dataInicio: DateTime.fromMicrosecondsSinceEpoch(json['dataInicio']),
      dataFim: DateTime.fromMillisecondsSinceEpoch(json['dataFim']),
      isConcluido: json['isConcluido'],
      conteudos: AfazerCheckListEntity.fromJsonList(json['conteudos']),
      image: json['image'],
    );
  }

//para transforma num arquivo Json
  Map<String, dynamic> toJson() {
    return {
      'uuid': uuid,
      'titulo': titulo,
      'dataInicio': dataInicio
          .microsecondsSinceEpoch, //transforma num inteiro assim fica fácil transformar em Json
      'dataFin': dataFim.microsecondsSinceEpoch,
      'isConcluido': isConcluido,
      'conteudos': conteudos,
      if (image != null) 'image': image
    };
  }

  static List<AfazerEntity> fromJsonList(List<dynamic>? json) {
    return json?.map((item) => AfazerEntity.fromJson(item)).toList() ?? [];
  }
}
