void main(){

  List<Map<String, dynamic>> emploData = [
    {
      "name" : "avi",
      "email" : "avi@fdslf.com",
      "address" : "33/22 sjdf,asdf",
      "gender" : "male",
      "mobileNo" : [
        64646465655,
        24646465456
      ],
      "salary" : true,
      "department" : "accounts",
      "field" : "office",
      "attendance" : {
        "01.07.24,Monday" : "Present",
        "02.07.24,Tuesday" : "Present",
        "03.07.24,Wednesday" : "Present",
        "04.07.24,Thrusday" : "Present",
        "05.07.24,Friday" : "Present",
        "06.07.24,Saturday" : "Present",
        "07.07.24,Sunday" : "Holiday",
      },
      "goal" : "personal develepment",
      "to-do list" : [
        "smart work",
        "email check",
        "blog post",
        "marketing",
        "meditation"
      ]

    },
    {
      "name" : "chavi",
      "email" : "chavi@fdslf.com",
      "address" : "96 house sjdf,asdf",
      "gender" : "female",
      "mobileNo" : [
        9685744559,
        9685748596
      ],
      "salary" : true,
      "department" : "marketing",
      "field" : "office",
      "attendance" : {
        "01.07.24,Monday" : "Present",
        "02.07.24,Tuesday" : "leave",
        "03.07.24,Wednesday" : "Present",
        "04.07.24,Thrusday" : "Present",
        "05.07.24,Friday" : "Present",
        "06.07.24,Saturday" : "Present",
        "07.07.24,Sunday" : "Holiday",
      },
      "goal" : "self improvement",
      "to-do list" : [
        "smart work",
        "email check",
        "blog post",
        "marketing",
        "meditation"
      ]

    },
    {
      "name" : "kaavi",
      "email" : "kaavi@sgss.com",
      "address" : "420 house 9211,asdf",
      "gender" : "male",
      "mobileNo" : [
        7845956222,
        8755446626
      ],
      "salary" : true,
      "department" : "public relation",
      "field" : "office",
      "attendance" : {
        "01.07.24,Monday" : "Present",
        "02.07.24,Tuesday" : "Present",
        "03.07.24,Wednesday" : "Present",
        "04.07.24,Thrusday" : "absenr",
        "05.07.24,Friday" : "Present",
        "06.07.24,Saturday" : "Present",
        "07.07.24,Sunday" : "Holiday",
      },
      "goal" : "skill development",
      "to-do list" : [
        "smart work",
        "email check",
        "blog post",
        "marketing",
        "meditation"
      ]

    },

  ];

  /// for whole data
  //print(emploData);

  ///for 1st mobile no of 2nd employee
  //print('${emploData[1]['mobileNo'][0]}');

  ///for 2nd mobile no of all employee

/*print("${emploData[0]['mobileNo'][1]}");
  print("${emploData[1]['mobileNo'][1]}");
  print("${emploData[2]['mobileNo'][1]}");*/

/*for(int i=0;i<emploData.length; i++){
  print('${emploData[i]['mobileNo'][1]}');
}*/
  ///print whole data
  /*for(Map<String, dynamic> zil in emploData){
    print(zil);
  }*/

  /// print goal of all
  for(Map<String, dynamic> bil in emploData){
    print(bil['goal']);
  }

}