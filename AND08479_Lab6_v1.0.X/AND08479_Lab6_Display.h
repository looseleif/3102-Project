/* 
 * File:   AND08479_Lab6_Display.h
 * Author: chase
 *
 * Created on April 1, 2021, 2:03 PM
 */

#include "xc.h"

#ifndef AND08479_LAB6_DISPLAY_H
#define	AND08479_LAB6_DISPLAY_H

#ifdef	__cplusplus
extern "C" {
#endif

void lcd_cmd(char Package);

void lcd_init(void);

void setCursor(char x, char y);

void printChar(char myChar);

void lcd_printStr(const char *s);

void shift(void);

void loop(void);


#ifdef	__cplusplus
}
#endif

#endif	/* AND08479_LAB6_DISPLAY_H */

