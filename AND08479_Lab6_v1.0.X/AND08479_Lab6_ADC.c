#include "AND08479_Lab6_ADC.h"
#include "xc.h"

void initADC(){
    
    CLKDIVbits.RCDIV = 1; // Tcy = 16MHz
    
    TRISAbits.TRISA0 = 1; // input
            
    AD1PCFG = 0xffff;
    
    TRISB = 0x0003;
    TRISA = 0xFFFF;
    
    AD1PCFGbits.PCFG0 = 0;
    
    PORTAbits.RA0 = 1;
    
    AD1PCFGbits.PCFG0 = 0;
    
    AD1CON2bits.VCFG = 0b000; // use AVDD 3.3
    
    AD1CON3bits.ADCS = 0b00000001;
    AD1CON1bits.SSRC = 0b010;
    AD1CON3bits.SAMC = 0b00001;
    AD1CON1bits.FORM = 0b00;
    
    T3CONbits.TSIDL = 0;
    
    AD1CON1bits.ASAM = 0b1;
    AD1CON2bits.SMPI = 0b0000;
    AD1CON1bits.ADON = 1;
    
    _AD1IF = 0;
    _AD1IE = 1;
    
    TMR3 = 0;
    T3CON = 0;
    T3CONbits.TCKPS = 0b10;
    
    T3CONbits.TCS =0;
    T3CONbits.TGATE =0;
    
    PR3 = 15624;
    
    T3CONbits.TON = 1;
    
    TMR1 = 0;
    T1CON = 0;
    T1CONbits.TCKPS = 0b10;
    
    PR1 = 5555;
    
    // PR1 was 24999
    
    T1CONbits.TON = 1;
    
    _T1IF = 0;
    _T1IE = 1;
    
}
