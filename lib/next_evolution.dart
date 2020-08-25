
class Next_evolution {

  String num;
  String name;

	Next_evolution.fromJsonMap(Map<String, dynamic> map): 
		num = map["num"],
		name = map["name"];

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['num'] = num;
		data['name'] = name;
		return data;
	}
}
