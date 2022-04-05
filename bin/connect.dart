
import 'package:skull_connect/calculate.dart' as untitled10;
import 'package:mongo_dart/mongo_dart.dart';

void main (List<String> arguments) async {
  var db = await Db.create("mongodb+srv://jonas:freedown@cluster0.28oko.azure.mongodb.net/stomach?retryWrites=true&w=majority");
  await db.open();
  print('Connected to database: ${untitled10.calculate()}!');
  var lista = [];
  lista = await db.getCollectionNames();
  print(lista);
  for (int count = 0; count < lista.length; count++) {
    DbCollection coll = db.collection(lista[count].toString());
    var library = await coll.find().toList();
    print(lista[count].toString());
    print(library);
  }
}
