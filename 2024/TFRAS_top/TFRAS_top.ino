#include <Arduino.h>
#include <EEPROM.h>

#define ADDRESS 97 // "a"

// Define EEPROM addresses for calibration data
#define EEPROM_CALIBRATION_FLAG 0
#define EEPROM_CALIBRATION_DATA 1


// Pin Definitions
#define UART_TX 44
#define UART_RX 45
#define TX_EN 2

#define S0 33
#define S1 32
#define S2 31
#define S0_ 16
#define S1_ 15
#define S2_ 14

#define A_TOP 36
#define A_BOTTOM 25
#define ADC_THERM 29

const char BOARD_ADDRESSES[] = {'b', 'c',};// 'd', 'e', 'f'};
const int NUM_BOARDS = sizeof(BOARD_ADDRESSES) / sizeof(BOARD_ADDRESSES[0]);

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
// Arrays for storing flex sensor readings
int topFlex[12];
int bottomFlex[12];

// Arrays for storing data from other boards
int boardData[6][25];

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
    
    digitalWrite(TX_EN, LOW);
}

void addressMux(int a) {
    digitalWrite(S0, a & 1);
    digitalWrite(S1, (a >> 1) & 1);
    digitalWrite(S2, (a >> 2) & 1);
    digitalWrite(S0_, a & 1);
    digitalWrite(S1_, (a >> 1) & 1);
    digitalWrite(S2_, (a >> 2) & 1);
}

int flexRead(int pin, int address) {
    addressMux(address);
    return analogRead(pin);
}
void readFlex() {
    digitalWrite(A, HIGH);
    topFlex[11] = flexT(B) / 2.0; // TEMPORARY WORKAROUND
    digitalWrite(A, LOW);

    digitalWrite(C, HIGH);
    topFlex[10] = flexT(B);
    topFlex[9] = flexT(D);
    digitalWrite(C, LOW);

    digitalWrite(E, HIGH);
    topFlex[8] = flexT(D);
    topFlex[7] = flexT(F);
    digitalWrite(E, LOW);

    digitalWrite(G, HIGH);
    topFlex[6] = flexT(F);
    topFlex[5] = flexT(H);
    digitalWrite(G, LOW);
    
    digitalWrite(I, HIGH);
    topFlex[4] = flexT(H);
    topFlex[3] = flexT(J);
    digitalWrite(I, LOW);

    digitalWrite(K, HIGH);
    topFlex[2] = flexT(J);
    topFlex[1] = flexT(L);
    digitalWrite(K, LOW);

    digitalWrite(M, HIGH);
    topFlex[0] = flexT(L);
    digitalWrite(M, LOW);

    digitalWrite(B_, HIGH);
    bottomFlex[0] = flexB(A_);
    bottomFlex[1] = flexB(C_);
    digitalWrite(B_, LOW);

    digitalWrite(D_, HIGH);
    bottomFlex[2] = flexB(C_);
    bottomFlex[3] = flexB(E_);
    digitalWrite(D_, LOW);

    digitalWrite(F_, HIGH);
    bottomFlex[4] = flexB(E_);
    bottomFlex[5] = flexB(G_);
    digitalWrite(F_, LOW);

    digitalWrite(H_, HIGH);
    bottomFlex[6] = flexB(G_);
    bottomFlex[7] = flexB(I_);
    digitalWrite(H_, LOW);
    
    digitalWrite(J_, HIGH);
    bottomFlex[8] = flexB(I_);
    bottomFlex[9] = flexB(K_);
    digitalWrite(J_, LOW);

    digitalWrite(L_, HIGH);
    bottomFlex[10] = flexB(K_);
    bottomFlex[11] = flexB(M_) / 2.0; // TEMPORARY WORKAROUND
    digitalWrite(L_, LOW);
}

void readBoard(char boardChar) {
    digitalWrite(TX_EN, HIGH);
    delay(15);
    Serial.print(boardChar);
    Serial.flush();
    digitalWrite(TX_EN, LOW);
}
void receiveData(int boardIndex) {
    char startMarker = '<';
    char endMarker = '>';
    char rc;
    bool receiving = false;
    int dataIndex = 0;
    String currentValue = "";
    
    unsigned long timeout = millis();
    while (millis() - timeout < 1000) {
        if (Serial.available() > 0) {
            rc = Serial.read();
            if (receiving) {
                if (rc != endMarker) {
                    if (rc == ',') {
                        if (currentValue.length() > 0) {
                            boardData[boardIndex][dataIndex++] = currentValue.toInt();
                            currentValue = "";
                        }
                    } else {
                        currentValue += rc;
                    }
                } else {
                    if (currentValue.length() > 0) {
                        boardData[boardIndex][dataIndex++] = currentValue.toInt();
                    }
                    receiving = false;
                    break;
                }
            } else if (rc == startMarker) {
                receiving = true;
            }
        }
    }
}
void printAllData() {
    digitalWrite(TX_EN, HIGH);
    delay(15);
    
    Serial.println();
    Serial.print("#"); // start character
    
    for (int i = 0; i < 12; i++) {
        Serial.print(bottomFlex[i]);
        Serial.print(",");
    }
    
    for (int board = 0; board < 5; board++) {
        for (int i = 0; i < 25; i++) {
            Serial.print(boardData[board][i]);
            Serial.print(",");
        }
        Serial.println();
    }
    
    Serial.flush();
    digitalWrite(TX_EN, LOW);
}


void loop() {
    if (Serial.available() > 0) {
        char c = Serial.read();
        switch(c) {
            case 'q':
                readFlex();
                for (int i = 0; i < NUM_BOARDS; i++) {
                    readBoard(BOARD_ADDRESSES[i]);
                    receiveData(i);
                }
                printAllData();
                break;
            case 'C':
                calibrateBoards();
                break;
            case 'z':
                compareWithCalibration();
                break;
        }
    }
}

int flexB(int a){
  addressMux(a);
  return analogRead(A_BOTTOM);
}

int flexT(int a){
  addressMux(a);
  return analogRead(A_TOP);
}


void calibrateBoards() {
    // Read all boards
    readFlex();
    for (int i = 0; i < NUM_BOARDS; i++) {
        readBoard(BOARD_ADDRESSES[i]);
        receiveData(i);
    }

    // Store data in EEPROM
    EEPROM.write(EEPROM_CALIBRATION_FLAG, 1); // Set calibration flag
    int eepromAddress = EEPROM_CALIBRATION_DATA;
    
    // Store this board's data
    for (int i = 0; i < 12; i++) {
        EEPROM.put(eepromAddress, bottomFlex[i]);
        eepromAddress += sizeof(int);
    }

    // Store other boards' data
    for (int board = 0; board < NUM_BOARDS; board++) {
        for (int i = 0; i < 25; i++) {
            EEPROM.put(eepromAddress, boardData[board][i]);
            eepromAddress += sizeof(int);
        }
    }
  Serial.println("!CALIBRATED"); 
}

void compareWithCalibration() {
    if (EEPROM.read(EEPROM_CALIBRATION_FLAG) != 1) {
        Serial.println("No calibration data available");
        return;
    }

    // Read current values
    readFlex();
    for (int i = 0; i < NUM_BOARDS; i++) {
        readBoard(BOARD_ADDRESSES[i]);
        receiveData(i);
    }

    // Compare with stored calibration data
    int eepromAddress = EEPROM_CALIBRATION_DATA;

    
    // Compare this board's data
    for (int i = 0; i < 12; i++) {
        int calibratedValue;
        EEPROM.get(eepromAddress, calibratedValue);
        eepromAddress += sizeof(int);
        
        Serial.print("THIS BOARD ");
        Serial.print(i);
        Serial.print(": ALIBRATED = ");
        Serial.print(calibratedValue);
        Serial.print(", URRENT = ");
        Serial.print(bottomFlex[i]);
        Serial.print(", DIFFERNECE = ");
        Serial.println(bottomFlex[i] - calibratedValue);
    }

    // Compare other boards' data
    for (int board = 0; board < NUM_BOARDS; board++) {
        for (int i = 0; i < 25; i++) {
            int calibratedValue;
            EEPROM.get(eepromAddress, calibratedValue);
            eepromAddress += sizeof(int);
            
            Serial.print("BOARD");
            Serial.print(board);
            Serial.print(", SENSOR ");
            Serial.print(i);
            Serial.print(": ALIBRATED = ");
            Serial.print(calibratedValue);
            Serial.print(", URRENT = ");
            Serial.print(boardData[board][i]);
            Serial.print(", DIFFERENCE = ");
            Serial.println(boardData[board][i] - calibratedValue);
        }
    }
}