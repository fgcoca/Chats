const unsigned long period = 50;
unsigned long prevMillis = 0;
 
byte iRow = 0, iCol = 0;
const byte countRows = 5;
const byte countColumns = 3;
 
const byte rowsPins[countRows] = { 2, 3, 4, 5 , 7};    // R0 R1  R2  R3 R4
const byte columnsPins[countColumns] = { 6, 8, 13 };   // C8 C18 C19
 
char keys[countRows][countColumns] = {
  { '7','9','8' },
  { '4','6','5' },
  { '1','3','2' },
  { ' ','.','0' },
  { 'N','*','/' },
};
 
// Leer el estado del teclado
bool readKeypad()
{
  bool rst = false;
 
  // Barrido de columnas
  for (byte c = 0; c < countColumns; c++)
  {
    // Poner columna a LOW
    pinMode(columnsPins[c],OUTPUT);
    digitalWrite(columnsPins[c], LOW);
    
    // Barrer todas las filas comprobando pulsaciones
    for (byte r = 0; r < countRows; r++)
    {
      if (digitalRead(columnsPins[c]) == LOW)   
      {
        // Pulsacion detectada, guardar fila y columna
        iRow = r;
        iCol = c;
        rst = true; 
      }
    }
    // Devolver la columna a alta impedancia
    digitalWrite(columnsPins[c], HIGH);
    pinMode(columnsPins[c], INPUT);
  }
  return rst;
}
 
// Inicializacion
void setup()
{
  Serial.begin(9600);
 
  // Columnas en alta impedancia
  for (byte c = 0; c < countColumns; c++)
  {
    pinMode(columnsPins[c], INPUT);
    digitalWrite(columnsPins[c], HIGH);
  }
 
  // Filas en pullup
  for (byte r = 0; r < countRows; r++)
  {
    pinMode(rowsPins[r], INPUT_PULLUP);
  }
}
 
void loop()
{
  if (millis() - prevMillis > period)   // Espera no bloqueante
  {
    prevMillis = millis();
    if (readKeypad())   // Detección de tecla pulsada
    {
      Serial.println(keys[iRow][iCol]);   // Mostrar tecla
    }
  }
}
