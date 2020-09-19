class OverViewModel {
  String icon;
  String type;
  String value;
  String descri;

  OverViewModel({this.icon, this.type, this.value, this.descri});

  OverViewModel.fromJson(Map<String, dynamic> json) {
    icon = json['icon'];
    type = json['type'];
    value = json['value'];
    descri = json['descri'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['icon'] = this.icon;
    data['type'] = this.type;
    data['value'] = this.value;
    data['descri'] = this.descri;
    return data;
  }
}
