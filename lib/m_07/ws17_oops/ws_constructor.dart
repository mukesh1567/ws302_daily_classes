void main(){

  BMW alexCar = BMW(model: '2018', vehicleNo: 'PB123 1234');
  BMW belaCar = BMW(model: '2342', vehicleNo: 'RJ234 2134', color: 'red', isPetrol: true );

  alexCar.printAllDetails();
  belaCar.printAllDetails();

  print(alexCar);
  print(belaCar);
}



class BMW{
  String color;
  String? vehicleNo;
  String? model;
  bool isPetrol;
  int? chassisNo;
  bool isSunroof;

  ///constructor
  ///required ka use, 'model' type k liye
  ///this ka use
  BMW({required this.model, required this.vehicleNo, this.color = "White",
    this.isPetrol = false, this.isSunroof = true,}){
    generateChassisNo();
  }
  
  generateChassisNo(){
    //chassisNo = Random().nextInt(100000000);
    chassisNo = DateTime.now().millisecondsSinceEpoch;
  }

  printAllDetails(){
    print("vehicleNo -> $vehicleNo");
    print("model -> $model");
    print("isPetrol -> $isPetrol");
    print("chassisNo -> $chassisNo");
    print("isSunroof -> $isSunroof");
    print("color -> $color");
  }

}
