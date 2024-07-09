#define ADDRESS 98 // 'c' (adjust for each board)


/*
 * 97   a
 * 98   b
 * 99   c
 * 100  d
 * 101 e
 * 102 f
 * 
 */
 
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

// Digital power pins
#define A 3
#define C 39
#define E 38
#define G 37
#define I 4
#define K 5
#define M 6

#define B_ 17
#define D_ 12
#define F_ 11
#define H_ 26
#define J_ 27
#define L_ 28

// Analog pin addresses
#define B 0
#define H 1
#define J 2
#define D 3
#define L 4
#define F 5

#define I_ 0
#define K_ 1
#define M_ 2
#define A_ 3
#define C_ 4
#define G_ 5
#define E_ 7

int topFlex[12];
int bottomFlex[12];

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

int flexB(int a) {
    addressMux(a);
    return analogRead(A_BOTTOM);
}

int flexT(int a) {
    addressMux(a);
    return analogRead(A_TOP);
}

void readFlex() {
    digitalWrite(A, HIGH);
    topFlex[11] = flexT(B) / 2.0;
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
    bottomFlex[11] = flexB(M_) / 2.0;
    digitalWrite(L_, LOW);
}

float readTemp() {
    int samples = 0;
    for (int i = 0; i < 5; i++) {
        samples += analogRead(ADC_THERM);
        delay(10);
    }
    float average = samples / 5.0;
    
    // Convert ADC value to temperature (implement your conversion here)
    // This is a placeholder calculation
    float temperature = (average - 500) / 10;
    
    return temperature * 100.0; // Return as integer (multiply by 100)
}

void sendData() {
    digitalWrite(TX_EN, HIGH);
    delay(15);
    
    Serial.print("<,");
    for (int i = 0; i < 12; i++) {
        Serial.print(topFlex[i]);
        Serial.print(",");
    }
    for (int i = 0; i < 12; i++) {
        Serial.print(bottomFlex[i]);
        Serial.print(",");
    }
    Serial.print((int)readTemp());
    Serial.println(">");
    
    Serial.flush();
    digitalWrite(TX_EN, LOW);
}

void loop() {
    if (Serial.available() > 0) {
        char c = Serial.read();
        if (c == ADDRESS) {
            readFlex();
            sendData();
        }
    }
}
