/**
 * \file
 *
 * \brief Application implement
 *
 * Copyright (c) 2015-2018 Microchip Technology Inc. and its subsidiaries.
 *
 * \asf_license_start
 *
 * \page License
 *
 * Subject to your compliance with these terms, you may use Microchip
 * software and any derivatives exclusively with Microchip products.
 * It is your responsibility to comply with third party license terms applicable
 * to your use of third party software (including open source software) that
 * may accompany Microchip software.
 *
 * THIS SOFTWARE IS SUPPLIED BY MICROCHIP "AS IS".  NO WARRANTIES,
 * WHETHER EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS SOFTWARE,
 * INCLUDING ANY IMPLIED WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY,
 * AND FITNESS FOR A PARTICULAR PURPOSE. IN NO EVENT WILL MICROCHIP BE
 * LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE, INCIDENTAL OR CONSEQUENTIAL
 * LOSS, DAMAGE, COST OR EXPENSE OF ANY KIND WHATSOEVER RELATED TO THE
 * SOFTWARE, HOWEVER CAUSED, EVEN IF MICROCHIP HAS BEEN ADVISED OF THE
 * POSSIBILITY OR THE DAMAGES ARE FORESEEABLE.  TO THE FULLEST EXTENT
 * ALLOWED BY LAW, MICROCHIP'S TOTAL LIABILITY ON ALL CLAIMS IN ANY WAY
 * RELATED TO THIS SOFTWARE WILL NOT EXCEED THE AMOUNT OF FEES, IF ANY,
 * THAT YOU HAVE PAID DIRECTLY TO MICROCHIP FOR THIS SOFTWARE.
 *
 * \asf_license_stop
 *
 */
/*
 * Support and FAQ: visit <a href="https://www.microchip.com/support/">Microchip Support</a>
 */

#include <stdint.h>
#include "atmel_start.h"
#include "atmel_start_pins.h"
#include <string.h>

#define MAX_SWI_STRAND_LEN 1 // sign = 71 // Rus 18 // Geli

typedef struct{
    uint8_t g;
    uint8_t r;
    uint8_t b;
}Pixel;

#define BYTES_PER_PIXEL (sizeof(Pixel))
#define MAX_PIXELS      MAX_SWI_STRAND_LEN

#define DELAY_FUNC_OVERHEAD     50
#define BIT_1_HIGH_DELAY_VAL    1200-DELAY_FUNC_OVERHEAD
#define BIT_1_LOW_DELAY_VAL     1300-DELAY_FUNC_OVERHEAD
#define BIT_0_HIGH_DELAY_VAL    500-DELAY_FUNC_OVERHEAD
#define BIT_0_LOW_DELAY_VAL     2000-DELAY_FUNC_OVERHEAD


////////////////////////////////////////////////////////////////////////////////
/// External Variables
////////////////////////////////////////////////////////////////////////////////
uint8_t timerExpired;
Pixel pixels[MAX_PIXELS] =
{
    {.g = 0x88, 
    .r = 0x55, 
    .b = 0x11}
};


static void dly_ns(uint16_t delay_val);
static void swibbSendStrand(uint16_t len);

static uint8_t example_hello_world[12] = "Hello World!";

volatile static uint32_t data_arrived = 0;

static void tx_cb_EDBG_COM(const struct usart_async_descriptor *const io_descr)
{
	/* Transfer completed */
	gpio_toggle_pin_level(LED0);
}

static void rx_cb_EDBG_COM(const struct usart_async_descriptor *const io_descr)
{
	/* Receive completed */
	data_arrived = 1;
}

static void err_cb_EDBG_COM(const struct usart_async_descriptor *const io_descr)
{
	/* error handle */
	io_write(&EDBG_COM.io, example_hello_world, 12);
}

int main(void)
{
	uint8_t recv_char;

	atmel_start_init();

	usart_async_register_callback(&EDBG_COM, USART_ASYNC_TXC_CB, tx_cb_EDBG_COM);
	usart_async_register_callback(&EDBG_COM, USART_ASYNC_RXC_CB, rx_cb_EDBG_COM);
	usart_async_register_callback(&EDBG_COM, USART_ASYNC_ERROR_CB, err_cb_EDBG_COM);
	usart_async_enable(&EDBG_COM);

	io_write(&EDBG_COM.io, example_hello_world, 12);

	while (1) {
        swibbSendStrand(1);
		if (data_arrived == 0) {
			continue;
		}

		while (io_read(&EDBG_COM.io, &recv_char, 1) == 1) {
			while (io_write(&EDBG_COM.io, &recv_char, 1) != 1) {
			}
		}
		data_arrived = 0;
	}
}

static uint8_t strandData[MAX_SWI_STRAND_LEN*3];

#define D0      LED0


static void dly_ns(uint16_t delay_val)
{
    volatile uint16_t i;

    for(i = 0; i < delay_val; i++);
}


///\note Make sure the timing is slightly TOO SLOW. Making it too fast will cause bits to collide downstream
// WS2811 Timing

// Bit Value "0" timing
//   0.5 |       2.0 
//   ____
//  |    |____________

// Bit Value "1" timing
//   1.2    |   1.3
//   _______
//  |       |_________

static void swibbSendStrand(
    uint16_t len) ///< Length of the strand
{
    uint16_t i, j;
    uint8_t  mask;
    static uint8_t pixelValue;

    memcpy((void*)strandData, (void*)pixels, sizeof(strandData));

    for(i=0;i<(len*3);i++){
        pixelValue = strandData[i];

        mask = 0x80;
        for(j=0;j<8;j++){
            // Start High
            gpio_set_pin_level(D0, false);
            // Is it a "1"
            if(mask & pixelValue){
                dly_ns(BIT_1_HIGH_DELAY_VAL);
                gpio_set_pin_level(D0, true);
                dly_ns(BIT_1_LOW_DELAY_VAL);
            }
            else{
                dly_ns(BIT_0_HIGH_DELAY_VAL);
                gpio_set_pin_level(D0, true);
                dly_ns(BIT_0_LOW_DELAY_VAL);
            }
            mask >>= 1;
        }
    }
}
