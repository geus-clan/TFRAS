#define ADDRESS 97 //"a"

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

#define nominal_resistance 10000       //Nominal resistance at 25⁰C
#define nominal_temeprature 25   // temperature for nominal resistance (almost always 25⁰ C)
#define samplingrate 5    // Number of samples 
#define beta 3950  // The beta coefficient or the B value of the thermistor (usually 3000-4000) check the datasheet for the accurate value.
#define Rref 10000   //Value of  resistor used for the voltage divider
int samples = 0;   //array to store the samples

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

const byte numChars = 128;
char receivedChars[numChars];
char tempChars[numChars];        // temporary array for use when parsing
int incomingData[26];

int boardA[14];
int boardB[25]; //2*12 flex + temp
int boardC[25];
int boardD[25];
int boardE[25];
int boardF[25];


boolean newData = false;

int topFlex[12];     //arrays for storing the cm of readings. e.g. topFlex[6] is between 6 and 7cm
int bottomFlex[12];

int bottomBent[12]; //arrays for storing how bent the positions are
int topBent[12];

int flatA[12] = {565,349,452,361,502,436,436,456,418,404,481,237};
   
int flatB[24] = {472,416,458,441,442,445,401,503,452,451,569,147,706,382,467,468,417,479,404,390,470,394,461,295};    //arrays for calibration at flat orientation
int flatC[24] = {299,500,414,433,456,374,432,362,326,458,312,259,664,407,444,418,436,462,392,375,415,416,409,358};    //arrays for calibration at flat orientation

unsigned long timeout = 0; 

   
void setup() {
Serial.begin(9600);


    pinMode(A_TOP, INPUT);
    pinMode(A_BOTTOM, INPUT);
    pinMode(ADC_THERM, INPUT);

    pinMode(A, OUTPUT);
    pinMode(C, OUTPUT);
    pinMode(E, OUTPUT);
    pinMode(G, OUTPUT);
    pinMode(I, OUTPUT);
    pinMode(K, OUTPUT); 
    pinMode(M, OUTPUT); 

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
  topFlex[11] = flexT(B) / 2.0; //TEMPORARY WORKAROUND
  digitalWrite(A,LOW);

  digitalWrite(C,HIGH);
  topFlex[10] = flexT(B);
  topFlex[9] = flexT(D);
  digitalWrite(C,LOW);

  digitalWrite(E,HIGH);
  topFlex[8] = flexT(D);
  topFlex[7] = flexT(F);
  digitalWrite(E,LOW);

  digitalWrite(G,HIGH);
  topFlex[6] = flexT(F);
  topFlex[5] = flexT(H);
  digitalWrite(G,LOW);
  
  digitalWrite(I,HIGH);
  topFlex[4] = flexT(H);
  topFlex[3] = flexT(J);
  digitalWrite(I,LOW);

  digitalWrite(K,HIGH);
  topFlex[2] = flexT(J);
  topFlex[1] = flexT(L);
  digitalWrite(K,LOW);

  digitalWrite(M,HIGH);
  topFlex[0] = flexT(L);
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
    /*
 for(int i=0;i<12;i++){
    Serial.print(topFlex[i]);
    Serial.print(", ");
  }*/
  
 for(int i=0;i<12;i++){
    Serial.print(bottomFlex[i]);
    Serial.print(",");
  }
}


void readAll(){ //takes command character 'q' from the station and starts serial streams from each board. this has a lot of potential for improvement.
  
 while (Serial.available() > 0)
 {
    int c = Serial.read();
    
    if (c == 'q'){
    
     readFlex();
     for(int i=0;i<13;i++){
        boardA[i] = bottomFlex[i];
     }
     
     readBoard('b');
     
     recSerial();     
     readData();
    
     for(int i=0;i<25;i++){
        boardB[i] = incomingData[i];
        incomingData[i] = 0; //avoid writing duplicate data if it's not updated
     }
     
     readBoard('c');
     recSerial();
     readData();
     for(int i=0;i<25;i++){
        boardC[i] = incomingData[i];
        incomingData[i] = 0;

     }

     
       readBoard('d');
     recSerial();
     readData();
     for(int i=0;i<25;i++){
        boardD[i] = incomingData[i];
        incomingData[i] = 0;


     }     readBoard('e');
     recSerial();
     readData();
     for(int i=0;i<25;i++){
        boardE[i] = incomingData[i];
        incomingData[i] = 0;


     }     readBoard('f');
     recSerial();
     readData();
     for(int i=0;i<25;i++){
        boardF[i] = incomingData[i];
        incomingData[i] = 0;

     }
   
         printAll_notemp();

   }
   else if (c == 'x'){
    printAllTemp();
   }
  }

}

void readBoard(char x){
   digitalWrite(TX_EN, HIGH);
   delay(15);
   Serial.print(x);
   Serial.flush();
   digitalWrite(TX_EN, LOW);//rx enable, tx disable
}

void printAll_notemp(){
  
  digitalWrite(TX_EN, HIGH);
   delay(15);
   
   Serial.println();
   Serial.print("\n");
   Serial.print("#"); //start character

    
    readFlex();
 
    for(int i=0;i<12;i++){
      Serial.print(bottomFlex[i]);
      Serial.print(",");
    }
   
   for(int i=0;i<24;i++){
    Serial.print(boardB[i]);
    Serial.print(",");
   }

   for(int i=0;i<24;i++){
    Serial.print(boardC[i]);
    Serial.print(",");
   }
   Serial.println();
   
   for(int i=0;i<24;i++){
    Serial.print(boardD[i]);
    Serial.print(",");
   }
   Serial.println();
   
   for(int i=0;i<24;i++){
    Serial.print(boardE[i]);
    Serial.print(",");
   }
   Serial.println();
   
   for(int i=0;i<24;i++){
    Serial.print(boardF[i]);
    Serial.print(",");
   }
   Serial.println();
   
   Serial.flush();
   digitalWrite(TX_EN, LOW);//rx enable, tx disable
}

void printAllTemp(){
  
  digitalWrite(TX_EN, HIGH);
   delay(15);
   
   Serial.println();
   Serial.print("\n");
   Serial.print("#"); //start character

    
    readFlex();
 
    
      Serial.print(readTemp());
      Serial.print(",");

    Serial.print(boardB[24]);
    Serial.print(",");
    Serial.print(boardC[24]);
    Serial.print(",");
    Serial.print(boardD[24]);
    Serial.print(",");
    Serial.print(boardE[24]);
    Serial.print(",");
    Serial.print(boardF[24]);
    Serial.print(",");
   
   Serial.println();
   
   Serial.flush();
   digitalWrite(TX_EN, LOW);//rx enable, tx disable
}

void loop() {
readAll();

}


int readTemp(void) {
  uint8_t i;
  float average;
  samples = 0;
  
  // take voltage readings from the voltage divider
  for (i = 0; i < samplingrate; i++) {
    samples += analogRead(ADC_THERM);
    delay(10);
  }
  average = 0;
  average = samples / samplingrate;

  // Calculate NTC resistance
  average = 1023 / average - 1;
  average = Rref / average;

  float temperature;
  temperature = average / nominal_resistance;     // (R/Ro)
  temperature = log(temperature);                  // ln(R/Ro)
  temperature /= beta;                   // 1/B * ln(R/Ro)
  temperature += 1.0 / (nominal_temeprature + 273.15); // + (1/To)
  temperature = 1.0 / temperature;                 // Invert
  temperature -= 273.15;                         // convert absolute temp to C

  return (int)(temperature*100.0); //must divide by 100 to get correct value. using ints because all bend data is int

}


void recSerial() {
    static boolean recvInProgress = false;
    static byte ndx = 0;
    char startMarker = '<';
    char endMarker = '>';
    char rc;
    

    timeout = millis();
    while (newData == false ) {
        if(millis()-timeout > 1000){
          break;
        }
      while (Serial.available() > 0){
        if(millis()-timeout > 1000){
          break;
        }
        rc = Serial.read();

        
        if (recvInProgress == true) {
            if (rc != endMarker) {
                receivedChars[ndx] = rc;
                ndx++;
                if (ndx >= numChars) {
                    ndx = numChars - 1;
                }
            }
            else {
                receivedChars[ndx] = '\0'; // terminate the string
                recvInProgress = false;
                ndx = 0;
                newData = true;
            }
        }

        else if (rc == startMarker) {
            recvInProgress = true;
        }
    }
    }
    
}


void readData() {

    if (newData == true) {
      
          strcpy(tempChars, receivedChars);
            // this temporary copy is necessary to protect the original data
            //   because strtok() replaces the commas with \0
        
          char * strtokIndx; // this is used by strtok() as an index
          
          strtokIndx = strtok(tempChars,",");
          incomingData[0] = atoi(strtokIndx);
         
   
      
          for(int i=1; i<26; i++){
            
          strtokIndx = strtok(NULL, ",");
          incomingData[i] = atoi(strtokIndx);
          }

          }
        newData = false;
}
