#include "circBuff.h"
#include "xc.h"

#define BUFFER_SIZE 32
#define NUMSAMPLES 64

int adc_buffer[BUFFER_SIZE];
int buffer_inx = 0;

void initBuffer(){
    
    int i;
    
    for(i=0; i<BUFFER_SIZE; i++){
        
        adc_buffer[i] = 0;
        
    }
    
}

void putVal(int ADCvalue){
    
    adc_buffer[buffer_inx++] = ADCvalue;
    
    if(buffer_inx >= BUFFER_SIZE){
        
        buffer_inx = 0;
        
    }
    
}

unsigned long getAvg(){
    
    int i;
    
    unsigned long sum = 0;
    
    for(i=0; i<BUFFER_SIZE; i++){
        
        sum += adc_buffer[i];
        
    }
    
    return sum/BUFFER_SIZE;
    
}