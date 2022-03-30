#include "asmLib.h"
#include "delay.h"
#include "xc.h"

void delay(int delay_in_ms)
{
    int p;
    
    for (p = 0; p < delay_in_ms; p++)
    {
        wait_1ms();
    }
}
