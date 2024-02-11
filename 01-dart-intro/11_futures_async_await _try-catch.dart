void main() async {
  print('Start');
  try {
    final response = await httpGet2('http://raez.dev/flutter');
    print('Exito: ${response}');
  } on Exception catch(err ){
    print('We have an exception $err');
  }   
  catch (e) {
    print('Error: ${e}');
  } finally{
    print('Try-catch end');
  }

  print('End');
}

Future<String> httpGet(String url) {
  return Future.delayed(const Duration(seconds: 3), () {
    //return 'Respuesta http';

    throw 'Request Http error';
  });
}

Future<String> httpGet2(String url) async {
  return await Future.delayed(const Duration(seconds: 3), () {
    //throw new Exception('Request Http error 2');
    throw 'Request Http error';
    // return 'Respuesta http 2';
  });
}
