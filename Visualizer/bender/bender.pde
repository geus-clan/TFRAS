import processing.serial.*;

Serial myPort;  // Create object from Serial class
String rawSerial = "...";    // Data received from the serial port

int sensorVal = 0;
int[] numbers = new int[61]; //60
int[] cal = new int[61];
static int circleSize = 10;

int calibrated = 0;
  int m = millis();
  int timer;
  

void setup()
{
   size(920, 1024);

  noFill();
  String portName = "COM25";// Change the number (in this case ) to match the corresponding port number connected to your Arduino. 

  myPort = new Serial(this, portName, 9600);
  
}

void draw()
{
  
 if(millis()-timer > 1000){
  myPort.write("q");
  
  if ( myPort.available() > 0) {  // If data is available,
  rawSerial = myPort.readStringUntil('\n'); //whole string
    if(rawSerial != null){
    println(rawSerial);
    }
  
  if(rawSerial != null && rawSerial.indexOf('#') >= 0){
      try {
      numbers = int(split(rawSerial, ','));
      }
      catch(Exception e) {
      ;
      }
      myPort.clear();
  }
  timer = millis();
 
  }

  }
  
  if(calibrated == 0 && millis() > 5000){
    println("!cal!");
  for(int i=0;i<60;i++){
    cal[i] = numbers[i];
    }
    println("!cal!");
    calibrated = 1;
  }
 background(255);
 textSize(20);
fill(0,0,255);


   int tInt = 15;
  for(int i=0;i<61;i++){
    if(i%24==0){
    text("pcb", width/4-100, tInt + 15);
    }
    if(i%12==0){
    text("---", width/4-70, tInt + 15);
      i+=1;
    }
    
  text(i*2, width/4-50, tInt + 15);
  tInt += 15;
  
  

   }
   
   
  //delay(900);

  //circle(numbers[0],30,circleSize);
  strokeWeight(1);
  
  //thresh lines
  line (width*3/4+30, 10, width*3/4+30, 900);
  line (width*3/4+30, 10, width*3/4+30, 900);


  line (width/4-30, 10, width/4-30, 900);
  line (width/4-30, 10, width/4-30, 900);

    strokeWeight(5);

  //line(width/2, 10, n-umbers[0], 30); //first line
  int yIndex = 30;
  int yInc = 15;
  for (int i = 0; i < numbers.length-2; i = i+1) {
    line(numbers[i]+400 - cal[i], yIndex, numbers[i+1]+400 - cal[i+1], yIndex + yInc);
  yIndex = yIndex+yInc;
  }

  
  //line(numbers[0], 30, numbers[1], 60); 
  //line(numbers[1], 60, numbers[2], 90); 

}
