import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:school/providers/afazer_provider.dart';

class RootProvider {
  static List<SingleChildWidget> providers() {
    return [
      ChangeNotifierProvider(create: (_) => AfazerProvider())
    ];
  }
}