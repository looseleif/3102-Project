/*
 * File:   AND08479_Lab6_main.c
 * Author: leif
 * Created on March 18, 2021, 1:54 AM
 */

// make LCD go crazy

#include "AND08479_Lab6_delay.h"
#include "AND08479_Lab6_Display.h"
#include "AND08479_Lab6_ADC.h"
#include "AND08479_Lab6_circBuff.h"
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

void makeBUtton(void){
    
    TRISAbits.TRISA1 = 1;
    TRISAbits.TRISA2 = 1;
    
    CNPU1bits.CN3PUE = 1;
    CNPU2bits.CN30PUE = 1;
    
}

int main(void) {
    
    initBuffer();
    
    lcd_init();
    
    initADC();
    
    makeBUtton();
    
    delay(50);
    
    double avg;
    
    double min = 0;
    
    double max = 0;
    
    unsigned char adStr[20];
    
    double currDiff = 0;
    
    while(1){
    
        while(IFS0bits.T1IF==0);
        
        avg = (3.3/1024)*getAvg();
        
        if(PORTAbits.RA1 == 0){
            
          min = avg;  
          
            
        }
        
        if(PORTAbits.RA2 == 0){
            
          max = avg;  
            
        }
        
        currDiff = avg*((max-min)/40)*1000;
        
        sprintf(&adStr, "%3.3f mA", currDiff);
        
        
        setCursor(0,0);
        
        lcd_printStr(adStr);
        
    }
    
    return 0;
    
}

