#include "AND08479_Lab6_delay.h"
#include "AND08479_Lab6_Display.h"
#include "xc.h"

void lcd_cmd(char Package){
    
    I2C2CONbits.SEN = 1;
    
    while(I2C2CONbits.SEN == 1);
    
    IFS3bits.MI2C2IF = 0;
    
    I2C2TRN = 0b01111100;
    
    while(IFS3bits.MI2C2IF == 0);
    
    IFS3bits.MI2C2IF = 0;
    
    I2C2TRN = 0x00; 
    
    while(IFS3bits.MI2C2IF == 0);
    
    IFS3bits.MI2C2IF = 0;
    
    I2C2TRN = Package;
    
    while(IFS3bits.MI2C2IF == 0);
 
    I2C2CONbits.PEN = 1;
    
    while(I2C2CONbits.PEN == 1);
    
}

void lcd_init(){
    
    _RCDIV = 0;
    AD1PCFG = 0xffff;
    
    TRISB = 0x0003;
    TRISA = 0x0000;
    
    PORTAbits.RA0 = 1;
    
    I2C2BRG = 0x9D;
    
    IFS3bits.MI2C2IF = 0;
    I2C2CONbits.I2CEN = 1;
    
    delay(40);
    
    lcd_cmd(0b00111000); // function set
    lcd_cmd(0b00111001); // advance
    lcd_cmd(0b00010100); // interval osc
    lcd_cmd(0b01110000); // contrast low
    lcd_cmd(0b01010110); 
    lcd_cmd(0b01101100); // follow control
    
    delay(200);
    
    lcd_cmd(0b00111000); // function set
    lcd_cmd(0b00001100); // display on
    lcd_cmd(0b00000001); // clear disp
    
    delay(5);
}

void setCursor(char x, char y){
    
    lcd_cmd(0x80|((0x40*y)+x));
    
}

void printChar(char myChar){
    
    I2C2CONbits.SEN = 1;
    
    while(I2C2CONbits.SEN == 1);
    
    IFS3bits.MI2C2IF = 0;
    
    I2C2TRN = 0b01111100;
    
    while(IFS3bits.MI2C2IF == 0);
    
    IFS3bits.MI2C2IF = 0;
    
    I2C2TRN = 0b01000000; 
    
    while(IFS3bits.MI2C2IF == 0);
    
    IFS3bits.MI2C2IF = 0;
    
    I2C2TRN = myChar;
    
    while(IFS3bits.MI2C2IF == 0);
 
    I2C2CONbits.PEN = 1;
    
    while(I2C2CONbits.PEN == 1);
    
}

void lcd_printStr(const char *s){
    
    I2C2CONbits.SEN = 1;
    
    while(I2C2CONbits.SEN == 1);
    
    IFS3bits.MI2C2IF = 0;
    
    I2C2TRN = 0b01111100;
    
    int i = 0;
    
    while(s[i] != '\0'){
        
        if(s[i+1] != '\0'){
            
            while(IFS3bits.MI2C2IF == 0);
    
            IFS3bits.MI2C2IF = 0;
    
            I2C2TRN = 0b11000000;
            
            while(IFS3bits.MI2C2IF == 0);
    
            IFS3bits.MI2C2IF = 0;
    
            I2C2TRN = s[i];
            
            
            
        } else {
            
            
            while(IFS3bits.MI2C2IF == 0);
    
            IFS3bits.MI2C2IF = 0;
    
            I2C2TRN = 0b01000000;
            
            while(IFS3bits.MI2C2IF == 0);
    
            IFS3bits.MI2C2IF = 0;
    
            I2C2TRN = s[i];
            
        }
        
        s++;
        
    }
    
    while(IFS3bits.MI2C2IF == 0);
 
    I2C2CONbits.PEN = 1;
    
    while(I2C2CONbits.PEN == 1);
    
}

void shift(){
    
    lcd_cmd(0b00011000);
    
}

void loop(){
    
    while(1){
        
    shift();
    
    delay(200);
    
    }
    
}

