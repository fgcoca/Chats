const int CLK = 12;  //Pin de reloj
const int DAT = 9;   //Pin de Datos
const int CTRL = 10; //Pin de control

void setup() {
  pinMode(CLK, OUTPUT);
  pinMode(DAT, INPUT);
  pinMode(CTRL, OUTPUT);
  digitalWrite(CTRL, LOW);
  digitalWrite(CLK, LOW);
  Serial.begin(9600);
}
byte fpga_read(); //Definimos fpga_read
void loop() {
  byte dat;
  byte old = 0xff;
  //Leer el puerto constantemente
  while(1) {
    dat = fpga_read();//Leer dato de la FPGA
    if (dat != old) { //Si ha habido un cambio desde la última lectura, mostrarlo en la consola
      Serial.write(dat+'0');
      Serial.write("\n");
    }  
    old = dat;  //Almacenar dato leido para saber si hay cambios
  }
}

//Implementacicon de fpga_read
byte fpga_read() {
  byte c;
  //-- Indicar a la FPGA que capture el dato
  digitalWrite(CTRL, HIGH);
  digitalWrite(CTRL, LOW);
  //-- Recibir el dato
  c =  shiftIn(DAT, CLK, MSBFIRST);
  return c;
}
