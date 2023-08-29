#include"gcd.h"

//求最大公因数
int gcd(long long num1,long long num2){
    if(num2==0)return num1;
    return gcd(num2,num1%num2);
}