import 'package:flutter/material.dart';
import '../entities/afazer_entity.dart';
import '../pages/home/components/novo_item_widget.dart';
import '../services/afazer_service.dart';

class AfazerProvider with ChangeNotifier {
  final service = AfazerService();
  List<AfazerEntity> _listaAfazeres = [];

  AfazerEntity? _selecionado;

  AfazerProvider() {
    buscarAfazeres();
  }

  buscarAfazeres() async {
    listaAfazeres = await service.buscar();
  }

  List<AfazerEntity> get listaAfazeres => _listaAfazeres;

  AfazerEntity? get selecionado => _selecionado;

  set selecionado(AfazerEntity? val) {
    _selecionado = val;
    notifyListeners();
  }

  void atualizarItemAfazer(int idx) {
    if (selecionado != null) {
      _listaAfazeres[idx] = _selecionado!;
      notifyListeners();
    }
  }

  set listaAfazeres(List<AfazerEntity> val) {
    _listaAfazeres = val;
    service.salvar(_listaAfazeres);
    notifyListeners(); //toda vez que alterar o estado da lista, precisa chamar o notifyListeners()
  }

//cadastrar/create
  void abrirModalCadastro(BuildContext context) {
    //showDialog cria modal!
    showDialog(
      context: context,
      builder: (context) {
        return SimpleDialog(
          contentPadding: const EdgeInsets.all(16),
          children: [
            NovoItemWidget(callback: (item) {
              listaAfazeres = [item, ...listaAfazeres];
            })
          ],
        );
      },
    );
  }

  //remove/delete
  void removerItemAfazer(int index) {
    _listaAfazeres.removeAt(index);
    service.salvar(listaAfazeres);
    notifyListeners();
  }
}
