void main(){

  User alex = User.details(uID: 11, name: 'alex', eMail: 'alex@gail.com', gender: 'male', isLoggedIn: true);
  alex.printAllValues();

  User bela = User.details(uID: 12, name: 'bela', eMail: 'bela@gmail.com', gender: 'male', isLoggedIn: false);
  bela.printAllValues();


}

class User{
  int uID;
  String eMail;
  bool isLoggedIn;
  String name;
  String gender;

  /*///named constructor
  User.name({required this.name});

  ///default constructor
  User(){

  }*/

  ///parameterized constructor
  User.details({required this.uID, required this.name, required this.eMail,
    required this.gender, required this.isLoggedIn});

  ///class ka function return krwana
  bool authenticateUser(){

    return true;
  }

  void printAllValues(){
    print('name = $name');
    print('UID = $uID');
    print('email = $eMail');
    print('gender = $gender');
    print('isloggedin = $isLoggedIn');
  }
}