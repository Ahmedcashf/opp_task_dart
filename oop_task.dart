import 'dart:ffi';
import 'dart:io';

main() {
//difference between const and final
  var ahmed = man("ahmed" , "medhat");
  print(ahmed.x);

  //bank account

  var account_1 = Bank();
  print("inter your blance :");
  account_1.balance = int.parse(stdin.readLineSync()!);
 print("how can i help you (deposit : e / withdraw : w) : ");
var option = stdin.readLineSync();

if (option == "e") {
  print("inter your amount of mony :");
  var deposit_num = int.parse(stdin.readLineSync()!);
  account_1.deposit(deposit_num);
} else if (option == "w") {
  print("inter your amount of mony :");
  var withdraw_num = int.parse(stdin.readLineSync()!);
  account_1.withdraw(withdraw_num);
}else {
  print(" not available");
}

//Vehicle

var car1 = car();
car1.num_doors = 2;
car1.brand = "dodge" ;
car1.model = "dodge2050";
car1.year = 2024;

var truck1 = truck();
truck1.payloadCapacity = "200kg";
truck1.year = 2022;
truck1.model = "cobra13";
truck1.brand = "toyota";

//static class
print(stat_class.toy); //لازم علي شان استدعي الstatic في الmain لازم استدعيها بال class name

  //getter and setter
  var fast = fast_car();
  fast.set("cashf");
  print(fast.get());

}

//difference between const and final

class man  {
 late final  x; //نقدر منديهاش initial value علي طول ونوعده ان هنديهاله قدام
  static const y = 20 ; //رخم ولازم يا خد initial value واحنا بنعمله declare + ان الconst مينفعش يكون في الclass من غير static بيدي error حتي لو اديت ليه قيمه
man (value , [may]) {
  this.x = value; // اقدر ادي للfinal قيمه من عن طريق الconstructor
  //this.y = may; //لاكن الconst مقدرش اعمل فيها نفس ال final وده علي شان هي اصلا الزم تinitialize في سعات متعرفها
}
}

//bank account
class Bank {
  var balance;
  var accountNumber;
  deposit(number) {
    balance += number!;
    print ("your balance now : $balance");
  }

  withdraw(number){
    balance -= number!;
    print("your balance now : $balance");
  }

}

//Vehicle

class Vehicle {
  var brand ;
  var model ;
  var year ;
}

class car extends Vehicle {
  var num_doors ;
}

class truck extends Vehicle {
  var payloadCapacity ;
}

//static example

class stat_class {
  static var toy = "wody"; //فكره الstatic انها ثابته بمعني هي ثابته جوه الclass بس لو عملنا object منقدرش نaccess علي ال static variables الا بال class
}

//ex setter and getter

class fast_car extends Vehicle {
  var x;

  set(car_name) {
    x = car_name;
  }
  get() {
    return x;
  }
  // الفكره من الsetter وال getter انها بتعين القيمه لل variable وترجع القيمه دي

}



