{Rutina de verificación para operaciones aritméticas con datos 
de tipo BYTE. 
Se debe simular el programa en el circuito "Test1.DSN". Se debe 
escuchar, una serie de pitidos cortos. Si se escucha un pitido 
largo, es que hubo algún error en el resultado de alguna operación.}
{$PROCESSOR PIC16F84A}
{$FREQUENCY 8Mhz}
uses PIC16F84A;
var
  pinLed: bit absolute PORTB.0;
  a, b: byte;

  procedure bien;
  begin
    pinLed := 1;
    delay_ms(25);
    pinLed := 0;
    delay_ms(50);
  end;
  procedure Mal;
  begin
    pinLed := 1;
    delay_ms(1500);
    pinLed := 0;
    asm SLEEP end
  end;
begin
  SetAsOutput(pinLed);
  pinLed := 0;

  //////////////////////////////////////////////////////////
	////////////////////////  Suma  /////////////////////////
  //////////////////////////////////////////////////////////

	//Constante
  if 0 + 0 = 0 then bien else mal end;
  if 0 + 1  = 0 then mal else bien end;
  if 255 + 0 = 255 then bien else mal end;

	//Variables
  a := 0;
  b := 255;
  if a + a = 0 then bien else mal end;
  if a + b = 255 then bien else mal end;
  if b + a = 255 then bien else mal end;
  if a + b = b then bien else mal end;

  a := 1;
  b := 254;
  if a + b = 255 then bien else mal end;

	//Variables - constantes
  a := 0;
  if a + 0 = 0 then bien else mal end;
  if 0 + a = 0 then bien else mal end;
  if a + 1 = 1 then bien else mal end;
  if 1 + a = 1 then bien else mal end;
  if a + 255 = 255 then bien else mal end;
  if 255 + a = 255 then bien else mal end;

  a := 1;
  if a + 0 = 1 then bien else mal end;
  if 0 + a = 1 then bien else mal end;
  if a + 1 = 2 then bien else mal end;
  if 1 + a = 2 then bien else mal end;
  if a + 254 = 255 then bien else mal end;
  if 254 + a = 255 then bien else mal end;

	//Expresiones
  a := 10; b := 5;
  if a = b+5 then bien else mal end;
  if a + b = 15 then bien else mal end;
  if (a + b) + 1 = 16 then bien else mal end;
  if b + a = 15 then bien else mal end;
  if 15 = b + a then bien else mal end;
  if a + b = a + 5 then bien else mal end;
  if a + (b+a) = a + (a + 5) then bien else mal end;
  if a + (b+ (a+b)) = a + (a + a) then bien else mal end;

  //////////////////////////////////////////////////////////
	////////////////////////  Resta  /////////////////////////
  //////////////////////////////////////////////////////////

	//Constante
  if 0 - 0 = 0 then bien else mal end;
  if 1 - 0  = 0 then mal else bien end;
  if 255 - 0 = 255 then bien else mal end;

	//Variables
  a := 255; b := 0;
  if a - a = 0 then bien else mal end;
  if a - a = b then bien else mal end;
  if b - b = b then bien else mal end;
  if a - b = 255 then bien else mal end;
  if a - b = a then bien else mal end;

  a := 255; b := 1;
  if b - b = 0 then bien else mal end;
  if a - b = 254 then bien else mal end;

  a := 1; b := 0;
  if a - b = 1 then bien else mal end;
  if a - b = a then bien else mal end;

  a := 10; b := 5;
  if a - b = b then bien else mal end;
  if a - b = 5 then bien else mal end;

	//Variables - constantes
  a := 0;
  if a - 0 = 0 then bien else mal end;
  if 0 - a = 0 then bien else mal end;
  if a - 0 = a then bien else mal end;
  a := 1;
  if a - 1 = 0 then bien else mal end;
  if 1 - a = 0 then bien else mal end;
  if 255 - a = 254 then bien else mal end;
  if 10 - a = 9 then bien else mal end;
  a := 255;
  if a - 1 = 254 then bien else mal end;
  if 255 - a = 0 then bien else mal end;
  if a - 10 = 245 then bien else mal end;

	//Expresiones
  a := 10; b := 5;
  if 10 - (b+1) = 4 then bien else mal end;  //constante - expresión  
  if a - (b+1) = 4 then bien else mal end;   //variable - expresión  
  if (a+1) - 1 = 10 then bien else mal end;   //expresión - constante 
  if (a+1) - 0 = 11 then bien else mal end;   //expresión - constante 
  if (a+1) - a = 1 then bien else mal end;   //expresión - variable
  if (a+1) - (b+1) = 5 then bien else mal end;   //expresión - expresión
  if a - b = a - b then bien else mal end;
  if a - b - 1 = 4 then bien else mal end;
  if a - b - 1 = b - 1 then bien else mal end;
  if 5 = a - b then bien else mal end;
  if a - 5 = a - b then bien else mal end;
  if b + (a-b) = a  then bien else mal end;
  if a = b + (a-b) then bien else mal end;
  if a + (b+ (a-b)) = a + (a - b + 5) then bien else mal end;

  //////////////////////////////////////////////////////////
	////////////////////  Mult 8 bits->16  ///////////////////
  //////////////////////////////////////////////////////////
	//coConst_Const
  if 0 * 0 = word(0) then bien else mal end;
  if 0 * 1  = word(0) then bien else mal end;
  if 255 * 0 = word(0) then bien else mal end;
  if 5 * 5 = word(25) then bien else mal end;

	//coConst_Variab
  a := 0;
  if 5 * a = word(0) then bien else mal end;
  a := 5;
  if 0 * a = word(0) then bien else mal end;
  if 5 * a = word(25) then bien else mal end;
  //coConst_Expres
  a := 5;
  if 0 * (a+1) = word(0) then bien else mal end;
  if 5 * (a+1) = word(30) then bien else mal end;
  //coVariab_Const
  a := 5;
  if a * 0 = word(0) then bien else mal end;
  if a * 5 = word(25) then bien else mal end;
  //coVariab_Variab  
  a := 5; b := 0;
  if a * b = word(0) then bien else mal end;
  a := 5; b := 100;
  if a * b = 500 then bien else mal end;
  //coVariab_Expres
  a := 10; b := 10;
  if a * (b+1) = word(110) then bien else mal end;
  //coExpres_Const
  a := 19;
  if (a+1) * 5 = word(100) then bien else mal end;
  //coExpres_Variab
  a := 19; b := 100;
  if (a+1) * b = 2000 then bien else mal end;
  //coExpres_Expres
  a := 10; b := 10;
  if (a+1) * (b+1) = word(121) then bien else mal end;
  
end.
