import 'dart:io';


List<String> values = ['1', '2', '3', '4', '5', '6', '7', '8', '9'];
List<String> combinations = ['012', '048', '036', '147', '246', '258', '345', '678'];
String player1='X';
String player2='O';
int n=-1;
int main(List<String> arguments) {

print('    Tic Toc Toe Game');
print('    player<1>: X');
print('    player<2>: O');
print('                  '

    '                    ');
do
{
  draw();
  player_1();
  draw();
  checkWinner(player1);
  player_2();
  draw();
 checkWinner(player2);

} while (n == -1);

return 0;
}
void draw(){
  print('   |   |   ');
  print(' ${values[0]} | ${values[1]} | ${values[2]} ');
  print('___|___|___');
  print('   |   |   ');
  print(' ${values[3]} | ${values[4]} | ${values[5]} ');
  print('___|___|___');
  print('   |   |   ');
  print(' ${values[6]} | ${values[7]} | ${values[8]} ');
  print('   |   |   ');
}
void player_1(){
  print('    Player<1> Enter number:');
  String? num = stdin.readLineSync() ;
  switch (num)
  {
    case '1':
      values[0] = player1;
      break;
    case '2':
      values[1] = player1;
      break;
    case '3':
      values[2] = player1;
      break;
    case '4':
      values[3] = player1;
      break;
    case '5':
      values[4] = player1;
      break;
    case '6':
      values[5] = player1;
      break;
    case '7':
      values[6] = player1;
      break;
    case '8':
      values[7] = player1;
      break;
    case '9':
      values[8] = player1;
      break;
    default:
      print("    please, enter number from <1> to <9>!\n\n");
      player_1();
      break;
  }
}
void player_2(){
  print('    Player<2> Enter number:');
  String? num = stdin.readLineSync() ;
  switch (num)
  {
    case '1':
      values[0] = player2;
      break;
    case '2':
      values[1] = player2;
      break;
    case '3':
      values[2] = player2;
      break;
    case '4':
      values[3] = player2;
      break;
    case '5':
      values[4] = player2;
      break;
    case '6':
      values[5] = player2;
      break;
    case '7':
      values[6] = player2;
      break;
    case '8':
      values[7] = player2;
      break;
    case '9':
      values[8] = player2;
      break;
    default:
      print("    please, enter number from <1> to <9>!\n\n");
      player_2();
      break;
  }
}
bool checkCombination(String combination, String checkFor) {

  List<int> numbers = combination.split('').map((item) {
    return int.parse(item);
  }).toList();
  bool match = false;
  for (final item in numbers) {
    if (values[item] == checkFor) {
      match = true;
    } else {
      match = false;
      break;
    }
  }
  return match;
}
void checkWinner(player) {
  for (final item in combinations) {
    bool combinationValidity = checkCombination(item, player);
    if (combinationValidity == true) {
      print('$player WON!');
      n=1;
      break;
    }
  }
}