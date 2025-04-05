
class Eaxmple {
    String? id;
    String? question;
    String? answer;

    Eaxmple({this.id, this.question, this.answer});

    Eaxmple.fromJson(Map<String, dynamic> json) {
        id = json["id"];
        question = json["question"];
        answer = json["answer"];
    }

  get ofset => null;

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        _data["id"] = id;
        _data["question"] = question;
        _data["answer"] = answer;
        return _data;
    }
    static List <Eaxmple>ofExample(List ofset){
      return ofset.map((e)=>Eaxmple.fromJson(e)).toList();
    }
}