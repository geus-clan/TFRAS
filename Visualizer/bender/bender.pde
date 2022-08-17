import processing.serial.*;

Serial myPort;  // Create object from Serial class
String rawSerial = "...";    // Data received from the serial port

int sensorVal = 0;
int[] numbers = new int[60]; //60
static int circleSize = 10;

void setup()
{
   size(720, 480);

  noFill();
  String portName = "COM6";// Change the number (in this case ) to match the corresponding port number connected to your Arduino. 

  myPort = new Serial(this, portName, 9600);
}

void draw()
{

  
  if ( myPort.available() > 0) {  // If data is available,
  rawSerial = myPort.readStringUntil('\n'); //whole string
  if(rawSerial != null && rawSerial.indexOf('#') >= 0){
     println(rawSerial);
      try {
      numbers = int(split(rawSerial, ','));
      }
      catch(Exception e) {
      ;
      }
  }

  }  
 background(255);



  circle(numbers[0],30,circleSize);
  
  
  line(width/2, 10, numbers[0], 30); //first line
  int yIndex = 30;
  int yInc = 30;
  for (int i = 0; i < numbers.length-2; i = i+1) {
    line(numbers[i], yIndex, numbers[i+1], yIndex + yInc);
  yIndex = yIndex+yInc;
  }

  
  //line(numbers[0], 30, numbers[1], 60); 
  //line(numbers[1], 60, numbers[2], 90); 

}
