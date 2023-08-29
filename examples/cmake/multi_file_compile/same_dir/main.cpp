#include"gcd.h"

bool checkDigit(std::string str){
    auto isdigit=[](char &ch){
        return std::isdigit(ch);
    };
    return std::count_if(str.begin(),str.end(),isdigit)==str.size();
}

int main(int argc, char* argv[]){
    if(argc!=3){
        std::cout<<"wrong input length"<<std::endl;
        return 0;
    }
    std::string str1=argv[1],str2=argv[2];
    if(checkDigit(str1)&&checkDigit(str2)){
        long long num1,num2;
        try{
            num1=std::stoll(str1),num2=std::stoll(str2);
        }
        catch(std::out_of_range e){
            std::cout<<"number too big"<<std::endl;
            return 0;
        }
        std::cout<<"The Greatest Common Divisor of "<<num1<<" and "<<num2<<" is "<<gcd(num1,num2)<<std::endl;
    }
    else{
        std::cout<<"wrong input type"<<std::endl;
    }
    return 0;
}