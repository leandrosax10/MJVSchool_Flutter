import 'package:flutter/material.dart';
import 'package:school/entities/afazer_entity.dart';
import 'package:school/services/afazer_service.dart';

class AfazerProvider with ChangeNotifier {
  final service = AfazerService();
  List<AfazerEntity> _listaAfazeres = [];

  AfazerProvider() {
    buscarAfazeres();
  }

  buscarAfazeres() async {
    listaAfazeres = await service.buscar();
  }

  List<AfazerEntity> get listaAfazeres => _listaAfazeres;

  set listaAfazeres(List<AfazerEntity> val) {
    _listaAfazeres = val;
    notifyListeners(); //toda vez que alterar o estado da lista, precisa chamar o notifyListeners()
  
  }
}
