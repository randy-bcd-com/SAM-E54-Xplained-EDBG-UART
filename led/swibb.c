/*
 * swi.c
 *
 *  Created on: Apr 24, 2014
 *      Author: v-ralath
 */
#include <string.h>
#include "r_cg_macrodriver.h"
//#include "r_cg_dmac.h"
#include "r_cg_serial.h"
#include "swibb.h"

extern Pixel pixels[];
static uint8_t strandData[MAX_SWI_STRAND_LEN*3];

///\note Make sure the timing is slightly TOO SLOW. Making it too fast will cause bits to collide downstream
void swibbSendStrand(
    uint16_t len) ///< Length of the strand
{
    uint16_t i;
    static uint8_t pixelValue;

    memcpy((void*)strandData, (void*)pixels, sizeof(strandData));

    for(i=0;i<(len*3);i++){
        pixelValue = strandData[i];

        // start the bit - 7
        P1|=0x40;
        if(pixelValue & 0x80){
            P1|=0x40;P1|=0x40;P1|=0x40;P1|=0x40;
        }
        else{
            P1&=~0x40;
        }
        P1&=~0x40;P1&=~0x40;P1&=~0x40;P1&=~0x40;P1&=~0x40;P1&=~0x40;P1&=~0x40;P1&=~0x40;P1&=~0x40;P1&=~0x40;

        // start the bit - 6
        P1|=0x40;
        if(pixelValue & 0x40){
            P1|=0x40;P1|=0x40;P1|=0x40;P1|=0x40;
        }
        else{
            P1&=~0x40;
        }
        P1&=~0x40;P1&=~0x40;P1&=~0x40;P1&=~0x40;P1&=~0x40;P1&=~0x40;P1&=~0x40;P1&=~0x40;P1&=~0x40;P1&=~0x40;

        // start the bit - 5
        P1|=0x40;
        if(pixelValue & 0x20){
            P1|=0x40;P1|=0x40;P1|=0x40;P1|=0x40;
        }
        else{
            P1&=~0x40;
        }
        P1&=~0x40;P1&=~0x40;P1&=~0x40;P1&=~0x40;P1&=~0x40;P1&=~0x40;P1&=~0x40;P1&=~0x40;P1&=~0x40;P1&=~0x40;

        // start the bit - 4
        P1|=0x40;
        if(pixelValue & 0x10){
            P1|=0x40;P1|=0x40;P1|=0x40;P1|=0x40;
        }
        else{
            P1&=~0x40;
        }
        P1&=~0x40;P1&=~0x40;P1&=~0x40;P1&=~0x40;P1&=~0x40;P1&=~0x40;P1&=~0x40;P1&=~0x40;P1&=~0x40;P1&=~0x40;

        // start the bit - 3
        P1|=0x40;
        if(pixelValue & 0x08){
            P1|=0x40;P1|=0x40;P1|=0x40;P1|=0x40;
        }
        else{
            P1&=~0x40;
        }
        P1&=~0x40;P1&=~0x40;P1&=~0x40;P1&=~0x40;P1&=~0x40;P1&=~0x40;P1&=~0x40;P1&=~0x40;P1&=~0x40;P1&=~0x40;

        // start the bit - 2
        P1|=0x40;
        if(pixelValue & 0x04){
            P1|=0x40;P1|=0x40;P1|=0x40;P1|=0x40;
        }
        else{
            P1&=~0x40;
        }
        P1&=~0x40;P1&=~0x40;P1&=~0x40;P1&=~0x40;P1&=~0x40;P1&=~0x40;P1&=~0x40;P1&=~0x40;P1&=~0x40;P1&=~0x40;

        // start the bit - 1
        P1|=0x40;
        if(pixelValue & 0x02){
            P1|=0x40;P1|=0x40;P1|=0x40;P1|=0x40;
        }
        else{
            P1&=~0x40;
        }
        P1&=~0x40;P1&=~0x40;P1&=~0x40;P1&=~0x40;P1&=~0x40;P1&=~0x40;P1&=~0x40;P1&=~0x40;P1&=~0x40;P1&=~0x40;

        // start the bit - 0
        P1|=0x40;
        if(pixelValue & 0x01){
            P1|=0x40;P1|=0x40;P1|=0x40;P1|=0x40;
        }
        else{
            P1&=~0x40;
        }
        P1&=~0x40;P1&=~0x40;P1&=~0x40;
    }
}
