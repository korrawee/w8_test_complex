int[] c_value;
void setup(){
  
}

class Complex{
    int value_1;
    int value_2;
    int[] c_value;
    int pos;
    char opt;
    int temp;
    int index;
   Complex(){
     temp = 0;
   }
   void find_complex(int v1, char op, int v2, int pos, int id){
     index = id;
     if(op == '+' || op == '-'){
       if(pos == 1){
           value_2 = -1 * value_2;
           temp = value_2/value_1;
           c_value[index] = (value_1 * temp) + value_2;
       }
       else if(pos == 2){
           value_1 = -1 * value_1;
           temp = value_1/value_2;
           c_value[index] = value_1 + (value_2 * temp);
       }
     }
     else if(op == '*' || op == '/'){
         temp = value_2 * value_2;
         if(op == '*'){
             if(pos == 1){
               c_value[index] = (value_1 * temp) * value_2;
             }else{
               c_value[index] = value_1 * (value_2 * temp); 
             }
         }
         else{
           if(op == '/'){
              if(pos == 1){
                 c_value[index] = (temp * value_1) / value_2; 
              }else{
                 c_value[index] = value_1 / (temp * value_2); 
              }
           }
         }
     }
   }
   int cal_complex(int comp_1, int comp_2, int op){
     return 0; // return result calculation of complex value 1 and complex value 2
   }
}
/* 1.create obj 
    2. use method find_complex(value_1, operator, value_2, position of complex number, index to keep result)
    3. use method cal_complex(complex value 1, complex value 2, operator)*/
