/*******************************************************************************
  Main Source File

  Company:
    Microchip Technology Inc.

  File Name:
    main.c

  Summary:
    This file contains the "main" function for a project.

  Description:
    This file contains the "main" function for a project.  The
    "main" function calls the "SYS_Initialize" function to initialize the state
    machines of all modules in the system
 *******************************************************************************/

// *****************************************************************************
// *****************************************************************************
// Section: Included Files
// *****************************************************************************
// *****************************************************************************

#include <stddef.h>                     // Defines NULL
#include <stdbool.h>                    // Defines true
#include <stdlib.h>                     // Defines EXIT_FAILURE
#include "definitions.h"                // SYS function prototypes
#include  <string.h>



void delay_1 (int x);



#define RX_BUFFER_SIZE 50
#define LED_OFF   LED_1_Set
#define LED_ON    LED_1_Clear

#define SW_OFF   SW_1_Set
#define SW_ON    SW_1_Clear


//char messageStart[] = "** CODE ARE START **\r\n";
char messageStart[] = "AT\r\n";
char newline[] = "\r\n";
char errorMessage[] = "\r\n**** USART error has occurred ****\r\n";
char receiveBuffer[RX_BUFFER_SIZE] = {};
char data = 0;


// *****************************************************************************
// *****************************************************************************
// Section: Main Entry Point
// *****************************************************************************
// *****************************************************************************

int main ( void )
{
     uint16_t rxCounter=0;
    /* Initialize all modules */
    SYS_Initialize ( NULL );

    //SERCOM5_USART_Write(&messageStart[0], sizeof(messageStart));
    
    
    while ( true )
    {
       SERCOM5_USART_Write(&messageStart[0], sizeof(messageStart));
        /* Maintain state machines of all polled MPLAB Harmony modules. */
         /* Check if there is a received character */

        
        if(SERCOM5_USART_ReceiverIsReady() == true)
        {
            if(SERCOM5_USART_ErrorGet() == USART_ERROR_NONE)
            {
                SERCOM5_USART_Read(&data, 1);

                if((data == '\n') || (data == '\r'))
                {
                    //SERCOM5_USART_Write(&newline[0],sizeof(newline));
                    SERCOM5_USART_Write(&receiveBuffer[0],rxCounter);
                    //SERCOM5_USART_Write(&newline[0],sizeof(newline));
                    
                    delay_1 (800);
                    delay_1 (500);
                    
                    //memset(&receiveBuffer, 0, sizeof(receiveBuffer));
                    rxCounter = 0;
                    LED_1_Toggle();
                }
                else
                {
                    receiveBuffer[rxCounter++] = data;
                }
            }
            else
            {
                SERCOM5_USART_Write(&errorMessage[0],sizeof(errorMessage));
            }
        }
        
        //SYS_Tasks ( );
    }

    /* Execution should not come here during normal operation */

    return ( EXIT_FAILURE );
}


void delay_1 (int x)
{
    int i=0,j=0;
    for(i=0;i<=9999;i++)
    {
        for(j=0;j<=x;j++);
    }
}


/*******************************************************************************
 End of File
*/

