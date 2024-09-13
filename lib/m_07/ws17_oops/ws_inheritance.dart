void main(){

  Car ramanCar = BMW(model: "RXZ", vehicleNo: "RJ!9-37653");

  Car rajeevCar = Audi();

  ramanCar.accelerate("50");
  ramanCar.applyBrakes();
  ramanCar.changeGear(1);
  ramanCar.accelerate("20");
  ramanCar.changeGear(2);
  ramanCar.accelerate("50");

}

class Car {
  int enginePower = 2000;
  int noOfWheels = 4;

  //Car({required this.enginePower});

  void accelerate(String speed){
    print('Accelerate by $speed KMPH');
  }

  void applyBrakes(){
    print('Brakes applied..');
  }

  void changeGear(int gear){
    print('Changed gear to $gear');
  }


} //Hierarchical

class Audi extends Car{

} //Single

class BMW extends Car{
  String color;
  String? vehicleNo;
  String? model;
  bool isPetrol;
  int? chassisNo;
  bool isSunroof;

  BMW({required this.model, required this.vehicleNo, this.color = "White", this.isPetrol = false, this.isSunroof = true,}){
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

} //Single
