import 'package:get/get.dart';

class WorkersController extends GetxController {
  final _workers = <Worker>[];
  final _nome = "mateus loiola".obs;

  String get nome => _nome.value;

  @override
  void onInit() {
    // observa todas as alterações de _nome
    final everWorker = ever(
      _nome,
      (nome) => print(nome),
      cancelOnError: true,
      condition: () => _nome.value == 'mateus',
    );

    // Executado uma única vez
    final onceWorker = once<String>(_nome, (nome) => print(nome));

    // Espera por um intervalo para poder executar a callback
    final intervalWorker = interval<String>(
      _nome,
      (nome) => print(nome),
      time: const Duration(seconds: 2),
    );

    // espera a pausa da interação para chamar a callback
    final debouncerWorker = debounce<String>(_nome, (nome) => print(nome));

    _workers.add(everWorker);
    _workers.add(onceWorker);
    _workers.add(intervalWorker);
    _workers.add(debouncerWorker);
    super.onInit();
  }

  @override
  void onClose() {
    for (var worker in _workers) {
      worker();
    }
    super.onClose();
  }

  void alterarnome(String nome) {
    _nome.value = nome;
  }
}
