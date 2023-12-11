class DataModel {
  String? name;
  String? userId;
  String? msg;

  DataModel({required this.name, required this.userId, required this.msg});
}

class DataModelList {
  List<DataModel> itemList;

  DataModelList(List<Map<String, String>> itemData) : itemList = itemData.map((e) => DataModel(name: e['name'] ?? '', userId: e['userId'] ?? '', msg: e['age'] ?? '',)).toList();
}


var itemData = [
  {
    'name': 'Priya',
    'userId': 'priyamo12@gmail.com',
    'msg': "The food tastes amazing",

  },
  {
    'name': 'Manju',
    'userId': 'Manju1@gmail.com',
    'msg': 'Delicious'
  },

];

DataModelList dataModelList = DataModelList(itemData);
