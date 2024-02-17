#include <stdio.h>

int main() {
  char operator;
  double num1, num2, result;

  printf("Enter_operator (+, -, *, /): ");
  scanf("%c", &operator);
  printf("Enter_two_number: ");
    scanf("%lf %lf", &num1, &num2);

  switch(operator) {
  case '+':
    result = num1 + num2;
      break;
  case '-':
    result = num1 - num2;
  case '*':
    result = num1 * num2;
  case '/':
    if(num2 != 0) {
      result = num1/num2;
    } else {
      printf("Stupid!");
      return 1;
    }
    break;
  default:
  printf("fuck");
  return 1;
  }
  printf("Result: %.2lf\n", result);

  return 0;
}
