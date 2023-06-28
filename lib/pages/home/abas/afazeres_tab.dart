import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../app_routes.dart';
import '../../../entities/afazer_entity.dart';
import '../../../providers/afazer_provider.dart';
import '../components/item_widget.dart';

class AfazeresTab extends StatefulWidget {
  const AfazeresTab({
    super.key,
  });

  @override
  State createState() => _AfazeresTab();
}

// O _ na frente do nome significa que a classe é privada
class _AfazeresTab extends State<AfazeresTab> {
  late AfazerProvider store;

//Função para remover um item
  void handleEcluir(int index) {
    store.removerItemAfazer(index);
  }

  void onDetalhes(AfazerEntity item, int idx) {
    store.selecionado = item;
    Navigator.pushNamed(context, AppRoutes.detalhe, arguments: idx); //rota
  }

  @override
  void initState() {
    super.initState();
  }

//Onde é chamada a função
  @override
  Widget build(BuildContext context) {
    store = Provider.of<AfazerProvider>(context);

    return ListView.builder(
      itemCount: store.listaAfazeres.length,
      itemBuilder: (context, index) {
        final item = store.listaAfazeres.elementAt(index);

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
              onDetalhes(item, index);
            },
          ),
        );
      },
    );
  }
}
