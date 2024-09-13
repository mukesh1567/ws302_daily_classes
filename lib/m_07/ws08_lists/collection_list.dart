void main(){

 List<int> listRollNo1 = [1, 2, 3, 4, 5];
 ///orignal list1 ka print
 print(listRollNo1);

 ///List<data type> vairable name = [element/value hoi yaha];
 ///numbering 0 se start hogi [0,1,2,3,4]
 ///data type mein "double" ya "var" b aa skta h value pr depend krega

 /*
 dynamic anyTthing = 123;
 anyTthing = true;
 anyTthing = "hello";*/
 
 /// value add krni ho, esse value last m add hogi
 listRollNo1.add(45);
 listRollNo1.add(57);
 print(listRollNo1);

 /// value update krne k liye kisi index m
 listRollNo1[2] = 29;
 print(listRollNo1);
 
 ///value insert krne k liye index pe, delete nhe hoga esme
 listRollNo1.insert(3, 89);
 print(listRollNo1);

 ///value ko remove/delete krne k liye
 listRollNo1.remove(2);
 print(listRollNo1);

 ///list1 m list2 add se phle print
 print(listRollNo1);

 ///list1 m ek or list2 add krne k liye, nyi list2 bna k
 List<int> listRollNo2 = [101, 102, 103, 104, 105];
 listRollNo1.addAll(listRollNo2);
 print(listRollNo1);

 ///insert another list3 at given index
 List<int> listRollNo3 = [1111, 2222, 3333, 4444, 5555];
 listRollNo1.insertAll(1, listRollNo3);


 /// complete list ko print k liye after all operation
 print(listRollNo1);

 
 ///particular index se value k liye
 print(listRollNo1[2]);
 print(listRollNo1.first);
 print(listRollNo1.last);
 print(listRollNo1.isEmpty);
 print(listRollNo1.isNotEmpty);
 print(listRollNo1.reversed);
 print(listRollNo1.reversed.toList());
 print(listRollNo1.iterator);
 print(listRollNo1.length);
 print(listRollNo1[listRollNo1.length-1]);

}
