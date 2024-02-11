void main(){
  emitNumbers().listen((event) { 
    print('Listen: $event');
  });
}

Stream<int> emitNumbers() async* {
  final valuesToEmit = [1,2,3,4,5];

  for( int i in valuesToEmit){
    await Future.delayed( Duration(seconds: 1));
    yield i;
  };
  
}