
import 'dart:io';

import 'dart:math';


void hello(){
  print('Как тебя зовут?');
  final name = stdin.readLineSync();
  stdout.write('Hello $name!');
}


void calculator() {
  print('Введите первое число:');
  final a = int.tryParse(stdin.readLineSync());
  print('Введите второе число:');
  final b = int.tryParse(stdin.readLineSync());
  print('Сумма:');
  print(a+b);
  print('Разность:');
  print(a-b);
  print('Произведение:');
  print(a*b);
  print('Частное:');
  if (b != 0){
    print(a/b);
  }
}

void simple_equation(){
  print('Введите коэффицент b:');
  final b = int.tryParse(stdin.readLineSync());
  print('Введите число c:');
  final c = int.tryParse(stdin.readLineSync());
  if (b != 0){
    final x = -(c/b);
    print('Корень: ');
    print(x);
  } else {
    print('Ошибка! c = 0');
  }
}


void quadratic_equation(){
  print('Введите коэффицент a:');
  final a = int.tryParse(stdin.readLineSync());
  print('Введите коэффицент b:');
  final b = int.tryParse(stdin.readLineSync());
  print('Введите число c:');
  final c = int.tryParse(stdin.readLineSync());
  final d = pow(b, 2) - 4 * a * c;
  if (d == 0){
    final x = -b/(2*a);
    print('x = $x');
  }
  if (d < 0){
    print('Корней нет!');
  }
  if (d > 0){

    final x1 = (-b-sqrt(d))/(2*a);
    final x2 = (-b+sqrt(d))/(2*a);
    print('x1 = $x1, x2 = $x2');

  }
}


void lamp_with_curtain(){
  print('На улице день? 0 - нет, 1 - да');
  final a = int.tryParse(stdin.readLineSync());
  print('Шторы раздвинуты? 0 - нет, 1 - да');
  final b = int.tryParse(stdin.readLineSync());
  print('Лампа включена? 0 - нет, 1 - да');
  final c = int.tryParse(stdin.readLineSync());
  if ((a==1 && b==1) || c==1){
    print('В комнате светло!');
  } else {
    print('В комнате темно!');
  }
}


void cone (){
  print('Введите R:');
  final R = int.tryParse(stdin.readLineSync());
  print('Введите r:');
  final r = int.tryParse(stdin.readLineSync());
  print('Введите h:');
  final h = int.tryParse(stdin.readLineSync());
  final l = sqrt(pow(h, 2)+pow(R, 2));
  final V = (1/3)*pi*h*(pow(R, 2)+(R*r)+pow(r, 2));
  final S = pi*(pow(R, 2)+(R+r)*l+pow(r, 2));
  print('Объем:');
  print(V);
  print('Полная поверхность:');
  print(S);
}


void branching(){
  print('Введите x:');
  final x = int.tryParse(stdin.readLineSync());
  print('Введите a:');
  final a = int.tryParse(stdin.readLineSync());
  if (a < x) {
    print('Ошибка!');
  }
  if (x < 1){
    final w = a*log(x);
    print(w);
  } else if (x>=1) {
    final w = sqrt(a-pow(x, 2));
    print(w);
  }
}



void function(){
  print('Введите x:');
  final x = int.tryParse(stdin.readLineSync());
  print('Введите y:');
  final y = int.tryParse(stdin.readLineSync());
  print('Введите b:');
  final b = int.tryParse(stdin.readLineSync());
  if ((b < x) || (b < y)){
    print('Ошибка!');
  } else {
    final z = log(b-y)*sqrt(b-x);
    print(z);
  }
}


void order (){
  print('Введите N:');
  final N = int.tryParse(stdin.readLineSync());
  for (var i = N;i <= N +10 ;i++){
    print(i);
  }
}



void tabulation(){
  for (double x = -4 ; x < 4; x += 0.5){
    var y = (pow(x, 2) - (2*x) + 2)/(x-1);
    print('x = $x, y = $y');
  }
}



void main() {
  print('Введите номер задания:');
  final n = int.tryParse(stdin.readLineSync());
  switch (n) {
    case 1:
      hello();
      break;
    case 2:
      calculator();
      break;
    case 3:
      simple_equation();
      break;
    case 4:
      quadratic_equation();
      break;
    case 5:
      lamp_with_curtain();
      break;
    case 6:
      cone();
      break;
    case 7:
      branching();
      break;
    case 8:
      function();
      break;
    case 9:
      order();
      break;
    case 10:
      tabulation();
      break;
  }
}
