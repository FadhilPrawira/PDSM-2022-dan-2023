#define dhtpin 2

  float dtemp=0;
  int dhumi=0;

void setup()
{
  Serial.begin(9600);
  Serial.println("DHT11/DHT22");
}

int dhtRead()
{
  static byte data[5]={0,0,0,0,0} ; // 5 bytes to receive 40 data bits
  unsigned int loopCnt; // loop counter
  byte sum;  // checksum
  #define DHT_LOOPS 1800


      pinMode(dhtpin, OUTPUT); 
      digitalWrite(dhtpin, LOW);
      delayMicroseconds(15000); //dht11
//      delayMicroseconds(100);   //dht22
      pinMode(dhtpin,INPUT_PULLUP);
      loopCnt = DHT_LOOPS;
      while(digitalRead(dhtpin) == HIGH) if (loopCnt-- == 0) return;
      loopCnt = DHT_LOOPS;
      while(digitalRead(dhtpin) == LOW) if (loopCnt-- == 0) return;
      loopCnt = DHT_LOOPS;
      while(digitalRead(dhtpin) == HIGH) if (loopCnt-- == 0) return;
      
      for (byte bitNum=0;bitNum<40;bitNum++) // try reading 40 bits
      {
        loopCnt = DHT_LOOPS;
        while(digitalRead(dhtpin) == LOW) if (loopCnt-- == 0) return;
        delayMicroseconds(32);
        boolean dhtBit=digitalRead(dhtpin);
        bitWrite(data[bitNum/8],7-bitNum%8,dhtBit);
        loopCnt = DHT_LOOPS;
        while(digitalRead(dhtpin) == HIGH) if (loopCnt-- == 0) return;
      }
      sum = data[0] + data[1] + data[2] + data[3];  
      if (data[4] != sum) {data[0]=0; data[1]=0; data[2]=0; data[3]=0; return;}

      dhumi=data[0];//*256+data[1];
      //dtemp= (data[2] & 0x7F) * 10 + data[3];
      dtemp= (data[2] & 0x7F)+data[3]*0.1;
}

void loop()
{
      dhumi=0; dtemp=0;
      dhtRead();
      Serial.print("Kelembaban: ");
      Serial.print(dhumi);
      Serial.println();
      Serial.print("   Suhu: ");
      Serial.print(dtemp);
      Serial.println();

      

      delay(2000); // minimum time between two DHT samples is two seconds
}
