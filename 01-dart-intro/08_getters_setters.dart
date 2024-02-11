void main() {
  final mysquare = Square(side: -10);
  // mysquare.side = 5;

  print('Area: ${mysquare.caculateArea()}');
  print('Area: ${mysquare.area}');
}

class Square {
  double _side; // side * side

  Square({required double side})
      : assert(side > 0,'Side must be >= 0'),
        _side = side;

  double get area {
    return _side * _side;
  }

  set side(double value) {
    if (value < 0) throw 'Value must be greater than 0';
    this._side = value;
  }

  double caculateArea() {
    return _side * _side;
  }
}
