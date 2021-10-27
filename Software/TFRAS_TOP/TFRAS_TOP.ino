//to do:
//  address individual boards
//  wait to transmit
//  read center of flex pcb

#define UART_TX 44
#define UART_RX 45
#define RS485_EN 46

#define S0 33
#define S1 32
#define S2 31

#define S0- 12
#define S1- 11
#define S2- 10

#define A_TOP 36
#define A_BOTTOM 23
#define ADC_THERM 27

#define A 47
#define C 39
#define E 38
#define G 37
#define I 48
#define K 1
#define M 2

#define B_ 13
#define D_ 8
#define F_ 7
#define H_ 24
#define J_ 25
#define L_ 26


uint16_t topFlex[11];     //arrays for storing the cm of readings. e.g. topFlex[6] is between 6 and 7cm
uint16_t bottomFlex[11];

void setup() {
Serial.begin(9600);

  for(int i=1;i<49;i++){  //set most GPIOs as inputs (high impedence, e.g. open circuit)
    if(i==28){i=34;}
    if(i==40){i=47;}
    pinMode(i, INPUT);
  }
  
  for(int i=10;i<34;i++){  //set address pins as outputs
    if(i==13){i=31;}
    pinMode(i, OUTPUT);
  }

  pinMode(RS485_EN, OUTPUT);
  
}



void muxRead(){
  digitalWrite(S0, LOW); //address A0
  digitalWrite(S1, LOW);    //top connector: B
  digitalWrite(S2, LOW);    //bottom connector: I_

  topFlex[0]= readFlex(A, A_TOP); //power pin, mux pin
  topFlex[1]= readFlex(C, A_TOP);

  bottomFlex[7]= readFlex(H_, A_BOTTOM);
  bottomFlex[8]= readFlex(J_, A_BOTTOM);
  
  digitalWrite(S0, HIGH); //address A1
  digitalWrite(S1, LOW);    //top connector: H
  digitalWrite(S2, LOW);    //bottom connector: K_

  topFlex[6]= readFlex(G, A_TOP);
  topFlex[7]= readFlex(I, A_TOP);

  bottomFlex[9]= readFlex(J_, A_BOTTOM);
  bottomFlex[10]= readFlex(L_, A_BOTTOM);

  digitalWrite(S0, LOW); //address A2
  digitalWrite(S1, HIGH);   //top connector: J
  digitalWrite(S2, LOW);    //bottom connector: M_

  topFlex[8]= readFlex(I, A_TOP);
  topFlex[9]= readFlex(K, A_TOP);

  bottomFlex[11]= readFlex(L_, A_BOTTOM);

  digitalWrite(S0, HIGH); //address A3
  digitalWrite(S1, HIGH);   //top connector:D
  digitalWrite(S2, LOW);    //bottom connector: A-

  topFlex[2]= readFlex(C, A_TOP);
  topFlex[3]= readFlex(E, A_TOP);

  bottomFlex[0]= readFlex(B_, A_BOTTOM);
  
  digitalWrite(S0, LOW); //address A4
  digitalWrite(S1, LOW);    //top connector: L
  digitalWrite(S2, HIGH);   //bottom connector: C_

  topFlex[10]= readFlex(K, A_TOP);
  topFlex[11]= readFlex(M, A_TOP);
  
  bottomFlex[1]= readFlex(B_, A_BOTTOM);
  bottomFlex[2]= readFlex(D_, A_BOTTOM);

  digitalWrite(S0, HIGH); //address A5
  digitalWrite(S1, LOW);    //top connector: F
  digitalWrite(S2, HIGH);   //bottom connector: G_

  topFlex[4]= readFlex(E, A_TOP);
  topFlex[5]= readFlex(G, A_TOP);

  bottomFlex[5]= readFlex(F_, A_BOTTOM);
  bottomFlex[6]= readFlex(H_, A_BOTTOM);

  digitalWrite(S0, LOW); //address A6
  digitalWrite(S1, HIGH);   
  digitalWrite(S2, HIGH);   //bottom connector: E_

  bottomFlex[3]= readFlex(D_, A_BOTTOM);
  bottomFlex[4]= readFlex(F_, A_BOTTOM);
}




uint16_t readFlex(int powerPin, int readPin){ //readPin is just the mux output pin
  
//set A as output
//apply power to A
//read B
//remove power to A and reset to high-Z input
  
  pinMode(powerPin, OUTPUT);
  digitalWrite(powerPin, HIGH);
  uint16_t result = analogRead(readPin);
  pinMode(powerPin, INPUT);
  return result;
}


void printResults(){
  digitalWrite(RS485_EN, HIGH);
  for(int i=0;i<12;i++){
    Serial.print(topFlex[i]);
    Serial.print(", ");
  }
  Serial.println();
}



void loop() {
  muxRead();
  printResults();
  delay(1000);
}
