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
 
 // DOM-IGNORE-BEGIN
/*******************************************************************************
* Copyright (C) 2018 Microchip Technology Inc. and its subsidiaries.
*
* Subject to your compliance with these terms, you may use Microchip software
* and any derivatives exclusively with Microchip products. It is your
* responsibility to comply with third party license terms applicable to your
* use of third party software (including open source software) that may
* accompany Microchip software.
*
* THIS SOFTWARE IS SUPPLIED BY MICROCHIP "AS IS". NO WARRANTIES, WHETHER
* EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS SOFTWARE, INCLUDING ANY IMPLIED
* WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY, AND FITNESS FOR A
* PARTICULAR PURPOSE.
*
* IN NO EVENT WILL MICROCHIP BE LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE,
* INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, COST OR EXPENSE OF ANY KIND
* WHATSOEVER RELATED TO THE SOFTWARE, HOWEVER CAUSED, EVEN IF MICROCHIP HAS
* BEEN ADVISED OF THE POSSIBILITY OR THE DAMAGES ARE FORESEEABLE. TO THE
* FULLEST EXTENT ALLOWED BY LAW, MICROCHIP'S TOTAL LIABILITY ON ALL CLAIMS IN
* ANY WAY RELATED TO THIS SOFTWARE WILL NOT EXCEED THE AMOUNT OF FEES, IF ANY,
* THAT YOU HAVE PAID DIRECTLY TO MICROCHIP FOR THIS SOFTWARE.
*******************************************************************************/
// DOM-IGNORE-END

// *****************************************************************************
// *****************************************************************************
// Section: Included Files
// *****************************************************************************
// *****************************************************************************

#include <stddef.h>                     // Defines NULL
#include <stdbool.h>                    // Defines true
#include <stdlib.h>                     // Defines EXIT_FAILURE
#include <string.h>
#include "definitions.h"                // SYS function prototypes

#define RX_BUFFER_SIZE 90
#define LED_ON    LED_Clear
#define LED_OFF   LED_Set


void delay_1 (int x);
void fun1 (void);

char messageStart[] = "**** USART Line Echo Demo****\r\n";

/**** USART Line Echo Demo: Blocking Transfer without the interrupt ****\r\n\
**** Type a line of characters and press the Enter key. **** \r\n\
**** Entered line will be echoed back, and the LED is toggled. ****\r\n"*/

char newline[] = "\r\n";
char errorMessage[] = "\r\n**** USART error has occurred ****\r\n";
char receiveBuffer[RX_BUFFER_SIZE] = {};
char RX11[50] = {};

char data = 0;

// *****************************************************************************
// *****************************************************************************
// Section: Main Entry Point
// *****************************************************************************
// *****************************************************************************

int main ( void )
{
    
    uint16_t rxCounter=0;
    int i=0;
    char sudhir[2]={'O','K'};
    
    /* Initialize all modules */
    SYS_Initialize ( NULL );
    printf("code in main fun \n");
    /* Send start message */
    SERCOM5_USART_Write(&messageStart[0], sizeof(messageStart));
    
     memset(&receiveBuffer, 0, sizeof(receiveBuffer));
     rxCounter = 0;
    
    while ( true )
    {
        printf("code in loop \n");
        //memset(&receiveBuffer, 0, sizeof(receiveBuffer));
       // rxCounter = 0;
        
        /* Check if there is a received character */
        if(SERCOM5_USART_ReceiverIsReady() == true)
        {
            if(SERCOM5_USART_ErrorGet() == USART_ERROR_NONE)
            {
                SERCOM5_USART_Read(&data, 1);
                 printf("read data are done \n");
                


                if((data == '\n') || (data == '\r'))
                {
                    SERCOM5_USART_Write(&newline[0],sizeof(newline));
                    SERCOM5_USART_Write(&receiveBuffer[0],rxCounter);
                    SERCOM5_USART_Write(&RX11[0],rxCounter);
                    
                    SERCOM5_USART_Write(&newline[0],sizeof(newline));
                   // rxCounter = 0;
                    
                    //receiveBuffer[rxCounter++] == data;
//                    for (i=0;i<=rxCounter;i++)
//                    {
//                         if (receiveBuffer[i] == sudhir[0])
//                         {
//                             if (receiveBuffer[i] == sudhir[1])
//                             {
//                                LED_Toggle();
//                             }
//                         }
//                    }
                    memset(&receiveBuffer, 0, sizeof(receiveBuffer));
                    //rxCounter = 0;
                    
                }
                else
                {
                    receiveBuffer[rxCounter++] = data;
                    RX11[rxCounter++] = data;
                    
                    
                }
            }
            else
            {
                SERCOM5_USART_Write(&errorMessage[0],sizeof(errorMessage));
            }
        }
        

        //fun1 ();
        
         for (i=0;i<=sizeof(RX11 );i++)
                    {
                         if (RX11[i] == sudhir[0])
                         {
                            // SERCOM2_USART_Write(&RX11[i],1);
                             if (RX11[i] == sudhir[1])
                             {
                                LED_Toggle();
                                SERCOM5_USART_Write(&messageStart[0], sizeof(messageStart));
                             }
                         }
                    }
    }


   // delay_1 (1000);
   // delay_1 (1000);
    /* Execution should not come here during normal operation */

    return ( EXIT_FAILURE );
}

void fun1 (void)
{
    SERCOM5_USART_Write(&RX11[0],1);
    SERCOM5_USART_Write(&RX11[1],1); 
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

