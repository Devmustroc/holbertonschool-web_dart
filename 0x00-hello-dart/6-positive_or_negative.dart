void main(List<String> args) {
  if (args.length > 0) {
    final int nb = int.parse(args[0]);
    if (nb > 0) {
      print('$nb is positive');
    } else if (nb < 0) {
      print('$nb is negative');
    } else {
      print('$nb is zero');
    }
  } else {
    print('Please enter a number');
  }
}
