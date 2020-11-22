/*
 * swi.h
 *
 *  Created on: Apr 24, 2014
 *      Author: v-ralath
 */

#ifndef SWI_H_
#define SWI_H_

#include "stdint.h"


#define MAX_SWI_STRAND_LEN 17 // sign = 71 // Rus 18 // Geli

typedef struct{
    uint8_t g;
    uint8_t r;
    uint8_t b;
}Pixel;

#define BYTES_PER_PIXEL (sizeof(Pixel))

void swiSendStrand(uint16_t len);

#endif /* SWI_H_ */
