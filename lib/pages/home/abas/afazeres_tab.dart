import 'package:flutter/material.dart';
import 'package:school/components/spacer_component.dart';
import 'package:school/pages/home/components/item_widget.dart';
import '../../../entities/afazer_entity.dart';
import '../components/novo_item_widget.dart';

class AfazeresTab extends StatefulWidget {
  final int valorInicial;
  final void Function(int tabIdx)? callback;

  const AfazeresTab({super.key, required this.valorInicial, this.callback});

  @override
  State<AfazeresTab> createState() => _AfazeresTab();
}

// O _ na frente do nome significa que a classe é privada
class _AfazeresTab extends State<AfazeresTab> {
  late List<AfazerEntity> _listaAfazeres;

//Função para adicionar um item
  void handleAdicionar() {
    //showDialog cria modal!
    showDialog(
      context: context,
      builder: (context) {
        return SimpleDialog(
          contentPadding: const EdgeInsets.all(16),
          children: [
            NovoItemWidget(callback: (item) {
              _listaAfazeres.add(item);
              setState(() {
                _listaAfazeres = _listaAfazeres;
              });
            })
          ],
        );
      },
    );
  }

//Função para remover um item
  void handleEcluir(int index) {
    _listaAfazeres.removeAt(index);
    setState(() {
      _listaAfazeres = _listaAfazeres;
    });
  }

  @override
  void initState() {
    super.initState();
    _listaAfazeres = [
      AfazerEntity(
          uuid: 'teste1',
          titulo: 'Teste 1',
          dataInicio: DateTime.now(),
          dataFim: DateTime.now(),
          isConcluido: false),
      AfazerEntity(
          uuid: 'teste2',
          titulo: 'Teste 2',
          dataInicio: DateTime.now(),
          dataFim: DateTime.now(),
          isConcluido: true),
    ];
  }

//Onde é chamada a função
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: handleAdicionar,
          child: const Text('Adicionar'),
        ),
        Container(
          padding: const EdgeInsets.all(6),
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 400,
            child: ListView.builder(
              itemCount: _listaAfazeres.length,
              itemBuilder: (context, index) {
                final item = _listaAfazeres.elementAt(index);

                //para remover um item arrastando o item
                return Dismissible(
                  key: Key(item.uuid),
                  onDismissed: (direction) {
                    if (direction == DismissDirection.startToEnd) {
                      handleEcluir(index);
                    }
                  },
                  child: ItemWidget(
                    item: item,
                    onPressed: () {
                      handleAdicionar();
                    },
                  ),
                );
              },
            ),
          ),
        ),
        const SpacerComponent(),
      ],
    );
  }
}
