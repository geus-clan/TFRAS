//to do:
//  address individual boards
//  wait to transmit
//  read center of flex pcb

#define ADDRESS 99 //"c"

#define UART_TX 44
#define UART_RX 45
#define TX_EN 2

#define S0 33
#define S1 32
#define S2 31

#define S0_ 16
#define S1_ 15
#define S2_ 14

//analog returns from mux
#define A_TOP 36
#define A_BOTTOM 25

#define ADC_THERM 29

//digital power pins
//top:
#define A 3
#define C 39
#define E 38
#define G 37
#define I 4
#define K 5
#define M 6

//bottom:
#define B_ 17
#define D_ 12
#define F_ 11
#define H_ 26
#define J_ 27
#define L_ 28

//analog pin addresses:
//top:
#define B 0
#define H 1
#define J 2
#define D 3
#define L 4
#define F 5

//bottom:
#define I_ 0
#define K_ 1
#define M_ 2
#define A_ 3
#define C_ 4
#define G_ 5
#define E_ 7

int topFlex[13];     //arrays for storing the cm of readings. e.g. topFlex[6] is between 6 and 7cm
int bottomFlex[12];
   int bent[12];

void setup() {
Serial.begin(9600);


    pinMode(A_TOP, INPUT);
    pinMode(A_BOTTOM, INPUT);
    pinMode(ADC_THERM, INPUT);

    pinMode(B_, OUTPUT);
    pinMode(D_, OUTPUT);
    pinMode(F_, OUTPUT);
    pinMode(H_, OUTPUT);
    pinMode(J_, OUTPUT);
    pinMode(L_, OUTPUT); 


  pinMode(TX_EN, OUTPUT);

  pinMode(S0, OUTPUT);
  pinMode(S1, OUTPUT);
  pinMode(S2, OUTPUT);

  pinMode(S0_, OUTPUT);
  pinMode(S1_, OUTPUT);
  pinMode(S2_, OUTPUT);
  
  //digitalWrite(TX_EN, HIGH); //just temporary for testing: allow serial transmission any time
  
   digitalWrite(TX_EN, LOW); 

}

void readFlex(){
  /////Top section
  digitalWrite(A,HIGH);
  topFlex[0] = flexT(B);
  digitalWrite(A,LOW);

  digitalWrite(C,HIGH);
  topFlex[2] = flexT(B);
  topFlex[3] = flexT(D);
  digitalWrite(C,LOW);

  digitalWrite(E,HIGH);
  topFlex[4] = flexT(D);
  topFlex[5] = flexT(F);
  digitalWrite(E,LOW);

  digitalWrite(G,HIGH);
  topFlex[6] = flexT(F);
  topFlex[7] = flexT(H);
  digitalWrite(G,LOW);
  
  digitalWrite(I,HIGH);
  topFlex[8] = flexT(H);
  topFlex[9] = flexT(J);
  digitalWrite(I,LOW);

  digitalWrite(K,HIGH);
  topFlex[10] = flexT(J);
  topFlex[11] = flexT(L);
  digitalWrite(K,LOW);

  digitalWrite(M,HIGH);
  topFlex[12] = flexT(L);
  digitalWrite(M,LOW);

  /////Bottom section
  digitalWrite(B_,HIGH);
  bottomFlex[0] = flexB(A_);
  bottomFlex[1] = flexB(C_);
  digitalWrite(B_,LOW);

  digitalWrite(D_,HIGH);
  bottomFlex[2] = flexB(C_);
  bottomFlex[3] = flexB(E_);
  digitalWrite(D_,LOW);

  digitalWrite(F_,HIGH);
  bottomFlex[4] = flexB(E_);
  bottomFlex[5] = flexB(G_);
  digitalWrite(F_,LOW);

  digitalWrite(H_,HIGH);
  bottomFlex[6] = flexB(G_);
  bottomFlex[7] = flexB(I_);
  digitalWrite(H_,LOW);
  
  digitalWrite(J_,HIGH);
  bottomFlex[8] = flexB(I_);
  bottomFlex[9] = flexB(K_);
  digitalWrite(J_,LOW);

  digitalWrite(L_,HIGH);
  bottomFlex[10] = flexB(K_);
  bottomFlex[11] = flexB(M_) / 2.0; //TEMPORARY WORKAROUND - last measurement 
  digitalWrite(L_,LOW);

}

int flexB(int a){
  addressMux(a);
  return analogRead(A_BOTTOM);
}

int flexT(int a){
  addressMux(a);
  return analogRead(A_TOP);
}


void addressMux(int a){
  switch(a){
    case 0:
    digitalWrite(S0,LOW);
    digitalWrite(S1,LOW);
    digitalWrite(S2,LOW);

    digitalWrite(S0_,LOW);
    digitalWrite(S1_,LOW);
    digitalWrite(S2_,LOW);
    break;
        
    case 1:
    digitalWrite(S0,HIGH);
    digitalWrite(S1,LOW);
    digitalWrite(S2,LOW);

    digitalWrite(S0_,HIGH);
    digitalWrite(S1_,LOW);
    digitalWrite(S2_,LOW);
    break;
        case 2:
    digitalWrite(S0,LOW);
    digitalWrite(S1,HIGH);
    digitalWrite(S2,LOW);

    digitalWrite(S0_,LOW);
    digitalWrite(S1_,HIGH);
    digitalWrite(S2_,LOW);
    break;
    
    case 3:
    digitalWrite(S0,HIGH);
    digitalWrite(S1,HIGH);
    digitalWrite(S2,LOW);

    digitalWrite(S0_,HIGH);
    digitalWrite(S1_,HIGH);
    digitalWrite(S2_,LOW);
    break;
        
    case 4:
    digitalWrite(S0,LOW);
    digitalWrite(S1,LOW);
    digitalWrite(S2,HIGH);

    digitalWrite(S0_,LOW);
    digitalWrite(S1_,LOW);
    digitalWrite(S2_,HIGH);
    break;
    
        case 5:        
    digitalWrite(S0,HIGH);
    digitalWrite(S1,LOW);
    digitalWrite(S2,HIGH);

    digitalWrite(S0_,HIGH);
    digitalWrite(S1_,LOW);
    digitalWrite(S2_,HIGH);
    break;
            case 7:
    digitalWrite(S0,HIGH);
    digitalWrite(S1,HIGH);
    digitalWrite(S2,HIGH);

    digitalWrite(S0_,HIGH);
    digitalWrite(S1_,HIGH);
    digitalWrite(S2_,HIGH);
    break;
  }
}

void printResults(){
    
 for(int i=0;i<13;i++){
    Serial.print(topFlex[i]);
    Serial.print(", ");
  }
  /*
 for(int i=0;i<12;i++){
    Serial.print(bottomFlex[i]);
    Serial.print(", ");
  }
    */
  Serial.println();


}

void checkBend(){

 for(int i=0;i<12;i++){
    if(bottomFlex[i] < 200){
      bent[i] = 1;  //register binary bend in one direction
    }
    else if(bottomFlex[i] > 500){
      bent[i] = 2;  //other direction
    }
    else {
      bent[i]=0;  //no bend
    }
 }
    
}




void loop() {

if (Serial.available() > 0){

 while (Serial.available() > 0)
 {
    int c = Serial.read();
//    
//     digitalWrite(TX_EN, HIGH);
//
//     Serial.println(c);
//     delay(10);
//     digitalWrite(TX_EN, LOW);//rx enable, tx disable
//     delay(10);
//     
   if (c == ADDRESS){
    

      digitalWrite(TX_EN, HIGH);
      delay(15);

      //Serial.println("transmitting data...");

     readFlex();
     printResults();
     Serial.println();
     Serial.flush();  //wait for all data to be sent before disabling coms
     digitalWrite(TX_EN, LOW);//rx enable, tx disable

   }

   //Message coming in

   
 }
  
}

 //checkBend();
 //printBend();
 //delay(100);
}
