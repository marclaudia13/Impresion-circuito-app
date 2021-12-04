
#include <Wire.h>
#include <Adafruit_Sensor.h>
#include <Adafruit_BME280.h> //Comunicación con el sensor
#include <SoftwareSerial.h> //Librera que permite establecer comunicacion serie en otros pins //Aquí conectamos los pins RXD,TDX del módulo Bluetooth.
SoftwareSerial BT(5, 6); // 5 recibe de TX, 6 envía a RX.
/*#include <SPI.h>
#define BME_SCK 18
#define BME_MISO 19
#define BME_MOSI 23
#define BME_CS 5*/

//#define SEALEVELPRESSURE_HPA (1013.25)
#define SEALEVELPRESSURE_HPA (1013.25)

Adafruit_BME280 bme; // I2C inicializa sensor
//Adafruit_BME280 bme(BME_CS); // hardware SPI
//Adafruit_BME280 bme(BME_CS, BME_MOSI, BME_MISO, BME_SCK); // software SPI
float temp = 0;
float hum = 0;

unsigned long delayTime;

void setup() {               //Setup-Main
  BT.begin(9600);  //Velocidad del puerto del módulo Bluetooth
  Serial.begin(9600);
  Serial.println(F("Iniciando:"));

  bool status;

  // default settings
  // (you can also pass in a Wire library object like &Wire2)
  status = bme.begin(0x76);  
  if (!status) {
    Serial.println("BME280 no encontrado, check wiring!");
    while (1);
  }

  Serial.println("----");
  delayTime = 1000;
  Serial.println();
}


void loop() {                 //Loop 
  printValues();
  delay(delayTime);
}

void printValues() {          //Function print
  temp = bme.readTemperature();
  BT.print(temp); //send distance to MIT App
  BT.print(";");
  Serial.print("Temp: ");
  Serial.print(temp);
  Serial.println(" *C");//The unit for  Celsius because original arduino don't support speical symbols
  // Convert temperature to Fahrenheit
  /*Serial.print("Temperature = ");
  Serial.print(1.8 * bme.readTemperature() + 32);
  Serial.println(" *F");*/
  hum = bme.readHumidity();
  BT.print(hum); //send distance to MIT App
  BT.println(";");
  Serial.print("Humidity: ");
  Serial.print(hum);
  Serial.println(" %");
  
  Serial.print("Pressure = ");
  Serial.print(bme.readPressure() / 100.0F);
  Serial.println(" hPa");

  Serial.print("Approx. Altitude = ");
  Serial.print(bme.readAltitude(SEALEVELPRESSURE_HPA));
  Serial.println(" m");
  
  Serial.println();
}
