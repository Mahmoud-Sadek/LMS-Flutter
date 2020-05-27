class PdfModel{
  int id;
  String name;
  String termSystem;
  Null firstTermSystem;
  Null secondTermSystem;
  Null file;
  Null other;
  bool gradetype;




  PdfModel({this.id,
    this.name,
    this.termSystem,
    this.firstTermSystem,
    this.secondTermSystem,
    this.file,
    this.other,
    this.gradetype});


  factory PdfModel.fromJson(Map<String, dynamic> json) {
    return PdfModel(
    id : json['Id'],
    name : json['Name'],
    termSystem : json['TermSystem'],
    firstTermSystem : json['FirstTermSystem'],
    secondTermSystem : json['SecondTermSystem'],
    file : json['file'],
    other : json['Other'],
    gradetype : json['gradetype'],
    );
  }

}