List<double> convertToF(List<double> temperaturesInC) {
  List<double> temperaturesInF = [];
  for (var i = 0; i < temperaturesInC.length; i++) {
    temperaturesInC[i] = temperaturesInC[i] * 9 / 5 + 32;
    temperaturesInC[i] = double.parse(temperaturesInC[i].toStringAsFixed(2));
    temperaturesInF.add(temperaturesInC[i]);
  }
  return temperaturesInF;
}
