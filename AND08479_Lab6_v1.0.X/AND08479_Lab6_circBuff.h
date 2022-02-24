/* 
 * File:   AND08479_Lab6_circBuff.h
 * Author: chase
 *
 * Created on March 31, 2021, 10:30 PM
 */

#include "xc.h"

#ifndef AND08479_LAB6_CIRCBUFF_H
#define	AND08479_LAB6_CIRCBUFF_H

#ifdef	__cplusplus
extern "C" {
#endif

    void putVal(int ADCvalue);
    
    void initBuffer(void);
    
    unsigned long getAvg(void);

#ifdef	__cplusplus
}
#endif

#endif	/* AND08479_LAB6_CIRCBUFF_H */

