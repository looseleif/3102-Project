/*
 * File:   AND08479_Lab6_main.c
 * Author: leif
 * Created on March 18, 2021, 1:54 AM
 */

// make LCD go crazy

#include "delay.h"
#include "display.h"
#include "circBuff.h"
#include "xc.h"
#include "stdio.h"

#pragma config ICS = PGx1          // Comm Channel Select (Emulator EMUC1/EMUD1 pins are shared with PGC1/PGD1)
#pragma config FWDTEN = OFF        // Watchdog Timer Enable (Watchdog Timer is disabled)
#pragma config GWRP = OFF          // General Code Segment Write Protect (Writes to program memory are allowed)
#pragma config GCP = OFF           // General Code Segment Code Protect (Code protection is disabled)
#pragma config JTAGEN = OFF        // JTAG Port Enable (JTAG port is disabled)

// CW2: FLASH CONFIGURATION WORD 2 (see PIC24 Family Reference Manual 24.1)
#pragma config I2C1SEL = PRI       // I2C1 Pin Location Select (Use default SCL1/SDA1 pins)
#pragma config IOL1WAY = OFF       // IOLOCK Protection (IOLOCK may be changed via unlocking seq)
#pragma config OSCIOFNC = ON       // Primary Oscillator I/O Function (CLKO/RC15 functions as I/O pin)
#pragma config FCKSM = CSECME      // Clock Switching and Monitor (Clock switching is enabled, 
                                       // Fail-Safe Clock Monitor is enabled)
#pragma config FNOSC = FRCPLL      // Oscillator Select (Fast RC Oscillator with PLL module (FRCPLL))

void __attribute__((interrupt, no_auto_psv)) _ADC1Interrupt(void)
{
    
    IFS0bits.AD1IF = 0;
    IFS0bits.T3IF = 0;
    putVal(ADC1BUF0);
    
}

void __attribute__ ((interrupt, no_auto_psv)) _T1Interrupt(void){
    
    _T1IF = 0;
    
}

void makeButton(void){
    
    TRISBbits.TRISB8 = 1; // buttons as RB8 as input
    CNPU2bits.CN22PUE = 1; // pull-up resistor set
    
    TRISBbits.TRISB9 = 1; // buttons as RB9 as input
    CNPU2bits.CN21PUE = 1; // pull-up resistor set
    
    
}

int main(void) {
    
    initBuffer(); // circ buffer init
    
    lcd_init(); // set contrast and screen settings
    
    initADC(); // initialize ADCPFG for analog input from INA
    
    makeButton(); // init button pins and pull-ups
    
    delay(50); // necessary delay for settle
    
    double avg;
    
    float min = 0;
    
    float max = 0;
    
    unsigned char adStr[20];
    
    double currDiff = 0;
    
    double correctedCurrDiff = 0;
    
    while(1){ // begin main sensing loop
    
        while(IFS0bits.T1IF==0); // wait for timer 1 to sample ADC
        
        avg = (3.23/1024)*getAvg(); // convert adc sample to voltage range
        
        if(PORTBbits.RB8 == 1){ // set minimum by RB8 depression
            
          min = avg;  
          
          setCursor(0,1);
        
          sprintf(&adStr, "-min set");
          
          lcd_printStr(adStr);
            
        }
        
        else if(PORTBbits.RB9 == 1){ // set maximum by RB9 depression
            
          max = avg;  
          
          setCursor(0,1);
        
          sprintf(&adStr, "+max set");
          
          lcd_printStr(adStr);
            
        } else {
            
            double slope = (0.040)/(max-min);
            
            double Vint = -1*((max-min)/0.04)*0.05+max; // intercept of current plot
            
            currDiff = ((avg-Vint)*((.040)/((max)-(min))))*1000; // original input code for current difference calc

            correctedCurrDiff = currDiff - ((-0.003758*currDiff*currDiff)+(.2261*currDiff)-(1.85)); // using curve fit to correct current reading

            sprintf(&adStr, "%6.4f", correctedCurrDiff);

            setCursor(0,0); // first row

            lcd_printStr(adStr); // print correct current difference to screen

            setCursor(0,1); // second row

            sprintf(&adStr, "mA      ");

            lcd_printStr(adStr); // print "mA" to screen
        
        }
    }
    
    return 0;
    
}

