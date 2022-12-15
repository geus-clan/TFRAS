int calA, calB;
bool bentA, bentB;

void setup() {
  pinMode(A0,INPUT);
  pinMode(A1,INPUT);
  Serial.begin(9600);

  int a, b;
  for(int i=0;i<10;i++){
    a += analogRead(A0);
    b += analogRead(A1);
  }
  calA = a/10;
  calB = b/10;
  
}

void loop() {
  if ((calA-analogRead(A0)) >100){
      bentA = true;
  }
  else{bentA = false;}
  
  if ((calB-analogRead(A1)) >100){
      bentB = true;
  }
  else{bentB = false;}

  if( bentA && bentB ){
    Serial.println("Bend at 6cm");
  }
  else if ( bentA && !bentB ){
    Serial.println("Bend at 9cm");
  }
  else if ( !bentA && bentB ){
    Serial.println("Bend at 3cm");
  }

  //if A is more than B, bend at 9cm

    /*
  Serial.print("raw A ");
  Serial.print(analogRead(A0));
  Serial.print("\t adjusted:");
  Serial.print(calA-analogRead(A0));

  Serial.print("\t \t \t raw B ");
  Serial.print(analogRead(A1));
  Serial.print("\t adjusted:");
  Serial.println(calB-analogRead(A1));
  */

  delay(250);
}
