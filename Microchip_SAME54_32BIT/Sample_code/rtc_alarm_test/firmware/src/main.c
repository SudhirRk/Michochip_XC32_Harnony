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
#include "definitions.h"         		// SYS function prototypes








void delay (int x);
//*************************************************************************************









bool alarm_triggered;
void RTC_Callback(RTC_CLOCK_INT_MASK int_cause , uintptr_t  context)
{
	if (int_cause & RTC_CLOCK_INT_MASK_ALARM0)
	{
        alarm_triggered = true;
        LED_Toggle();
	}
}
// *****************************************************************************
// *****************************************************************************
// Section: Main Entry Point
// *****************************************************************************
// *****************************************************************************









int main ( void )
{

     SYS_Initialize ( NULL );
   
    SERCOM5_USART_TransmitterEnable();    // sercom 3 (uart-3 enable)
    
 
    struct tm sys_time;
    time_t t_of_day;

    alarm_triggered = false;

    //15-01-2018 12:00:00 Monday
    sys_time.tm_hour = 18;      /* hour [0,23] */
    sys_time.tm_sec = 00;       /* seconds [0,61] */
    sys_time.tm_min = 38;       /* minutes [0,59] */
    sys_time.tm_mon = 6;        /* month of year [0,11] */
    sys_time.tm_year = 121;     /* years since 1900 ---118*/
    sys_time.tm_mday = 20;      /* day of month [1,31] */
    sys_time.tm_wday = 2;       /* day of week [0,6] (Sunday = 0) */
                                /* tm_yday - day of year [0,365] */
                                /* tm_isdst - daylight savings flag */

    
    t_of_day = mktime(&sys_time);
    
    
//    //15-01-2018 12:00:20 Monday
//    alarm_time.tm_hour = 12;
//    alarm_time.tm_sec = 20;
//    alarm_time.tm_min = 00;
//    alarm_time.tm_mon = 0;
//    alarm_time.tm_year = 118; 
//    alarm_time.tm_mday = 15;
//    alarm_time.tm_wday = 1;

    printf("\n---------------------------------------------------------");
    printf("\n                    RTC Demo                 ");
    printf("\n---------------------------------------------------------");

    RTC_RTCCCallbackRegister(RTC_Callback, (uintptr_t) NULL);

    RTC_RTCCTimeSet(&sys_time);
    //RTC_RTCCAlarm0Set(&alarm_time, RTC_ALARM_MASK_HHMMSS);

   // printf("\n\rThe Alarm will Trigger at 12:00:20\n\n\r");

    while ( true )
    {
        // struct tm sys_time;   //
         //time_t t_of_day;   //

        RTC_RTCCTimeGet(&sys_time);
        printf("\nSystem time is:   %02d:%02d:%02d",sys_time.tm_hour, sys_time.tm_min, sys_time.tm_sec);
        printf("\nSystem date is:   %02d:%02d:%02d",sys_time.tm_mday, (sys_time.tm_mon+1), (sys_time.tm_year-100));

//        if(alarm_triggered == true)  
//        {
//            printf("\n\rAlarm Triggered !!!!!!!!\n\r");
//            alarm_triggered = false;
//        }

           RTC_RTCCTimeGet(&sys_time); 
    
 
    // this is utc date & time conversion--unix epoch
   t_of_day = mktime(&sys_time);
 
    printf("\nseconds since the Epoch: %ld \n\n", (long) t_of_day);
   
        
        delay (5000);
    }

    /* Execution should not come here during normal operation */

    return ( EXIT_FAILURE );
}

void delay (int x)
{
    for(int i=0;i<=x;i++)
    {
        for(int p=0;p<=50000;p++);
    }
}



/*******************************************************************************
 End of File
*/
