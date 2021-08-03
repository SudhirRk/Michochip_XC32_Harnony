/*******************************************************************************

  Description:
    This file contains the "main" function for a project.  The
    "main" function calls the "SYS_Initialize" function to initialize the state
    machines of all modules in the system
 *******************************************************************************/
// *****************************************************************************
// Section: Included Files
// *****************************************************************************


#include <stddef.h>                     // Defines NULL
#include <stdbool.h>                    // Defines true
#include <stdlib.h>                     // Defines EXIT_FAILURE
#include "definitions.h"                // SYS function prototypes
#include  <string.h>


//**** ALL Fun for GSM *****

void GSM_AT_cmd ();
void AT_CMD ();
void Sim_Ready_CMD ();
void Echo_CMD ();
void Call_Flag_CMD ();
void Auto_Call_Receved_CMD ();
void Set_DTMF_Mode_CMD ();
void All_save_data_CMD ();
void GSM_Calling_CMD ();
void GSM_Signal_check_CMD ();
void Call_Cut_CMD ();
void DTMF_Send_CMD ();

void Read_data_GSM ();

void delay_1 (int x);

/***************************  Variable  **************************************/

#define RX_BUFFER_SIZE 50   // MAX SIZE IS 255

#define LED_OFF   LED_1_Set
#define LED_ON    LED_1_Clear

//#define LED22_OFF   LED_2_Set
//#define LED22_ON    LED_2_Clear

#define SW_OFF   SW_1_Set
#define SW_ON    SW_1_Clear


//char messageStart[] = "** CODE ARE START **\r\n";
char messageStart[] = "AT\r\n";
char newline[] = "\r\n";
char errorMessage[] = "\r\n**** USART error has occurred ****\r\n";
char receiveBuffer[RX_BUFFER_SIZE] = {};
char data = 0;

char check[2]={'O','K'};

uint16_t rxCounter=0;


// *****************************************************************************
// *****************************************************************************
// Section: Main Entry Point
// *****************************************************************************
// *****************************************************************************

int main ( void )
{
    int i=0;
    //int count11=0;
     //uint16_t rxCounter=0;
    /* Initialize all modules */
    SYS_Initialize ( NULL );
    //SERCOM5_USART_Read(&data, 1);
    SERCOM5_USART_Write(&messageStart[0], sizeof(messageStart));
    
     //delay_1 (800);
     //delay_1 (500);
    printf ("code start \r \n ");   // comment
     
    //GSM_AT_cmd ();
   
    memset(&receiveBuffer, 0, sizeof(receiveBuffer));
    rxCounter = 0; 
     
    while ( true )
    {
         printf ("code in loop\n ");   // comment
       // count11++;
      //  memset(&receiveBuffer, 0, sizeof(receiveBuffer));
       // rxCounter = 0; 
        
//        printf ("LED_ON \n ");   // comment
//        LED22_ON;
//        delay_1 (500);
//        printf ("LED_OFF \n ");   // comment
//        LED22_OFF;
//        delay_1 (500);
        
        //Read_data_GSM ();
        
 //       memset(&receiveBuffer, 0, sizeof(receiveBuffer));
 //       rxCounter = 0; 
        
        
      // SERCOM5_USART_Write(&messageStart[0], sizeof(messageStart));
        /* Maintain state machines of all polled MPLAB Harmony modules. */
         /* Check if there is a received character */

        
        if(SERCOM5_USART_ReceiverIsReady() == true)
        {
            if(SERCOM5_USART_ErrorGet() == USART_ERROR_NONE)
            {
                SERCOM5_USART_Read(&data, 1);
                printf ("data read are done \n ");   // comment
               // printf ("data read char=%d \n",data);
                printf ("data read char=%c \n",data);
     

                if((data == '\n') || (data == '\r') || (data == '\0'))
                {
                    SERCOM5_USART_Write(&newline[0],sizeof(newline));
                    SERCOM5_USART_Write(&receiveBuffer[0],rxCounter);
                    SERCOM5_USART_Write(&newline[0],sizeof(newline));
                    
 //8888888888888888888888888888888888888888888888888888888                   
                    printf ("code in if loop \n");
                    for(i=0;i<=rxCounter;i++)
                    {
                        printf ("ckeck arr0 \n");
                       if( receiveBuffer[i] == check[0])
                       {
                           printf ("ckeck arr1 \n");
                            if( receiveBuffer[i+1] == check[1])
                            {
                                printf ("toggle on/off \n");
                                LED_1_Toggle();
                                delay_1 (800);
                                delay_1 (500);

                                memset(&receiveBuffer, 0, sizeof(receiveBuffer));
                                rxCounter = 0; 
                                
                                //LED_1_Toggle();
                            }
                       }
                    }
                    
                    
                    
                    
//                    delay_1 (800);
//                    delay_1 (500);
//                    
//                    memset(&receiveBuffer, 0, sizeof(receiveBuffer));
//                    rxCounter = 0; 
//                    LED_1_Toggle();
                }
                else
                {
                    printf (" array filling data \n ");   // comment
                    receiveBuffer[rxCounter++] = data;
                }
            }
            else
            {
                SERCOM5_USART_Write(&errorMessage[0],sizeof(errorMessage));
            }
        }
        
        //SYS_Tasks ( );
        
         
         
         
        
     delay_1 (800);
     delay_1 (500);
        
        
    }

    /* Execution should not come here during normal operation */

    
    
    return ( EXIT_FAILURE );
}



/**************************  DTMF READ DATA  *************************************/

void Read_data_GSM ()
{
    //int i=0;
     printf (" \n read gsm data loop ");   // comment
               
     if (SERCOM5_USART_ReceiverIsReady() == true)
        {
            SERCOM5_USART_Read(&data, 1);
            printf (" \n read data char =%c",data);   // comment
            printf (" \n read data int =%d",data);   // comment
            
            receiveBuffer[rxCounter++] = data;
            
//            if((data == '\t') || (data == '\0'))// || (data == '\r'))
//            {
//                //for (i=0;i<=rxCounter;i++)
//                {
//                    //printf ("\n for loop incriment= %d",i);
//                    
 //                   printf ("\t read string = %s",receiveBuffer);
//                    printf ("\t read char = %c",data);
//                }
//
               delay_1 (1500);
//               delay_1 (800);
//
               
//
//            }
               printf (" \n fun close ");   // comment
     }
}







/**************************  All GSM CMD  *************************************/

void GSM_AT_cmd ()
{
   printf ("\n gsm function call \n ");   // comment
     
   rxCounter=0;
   
   delay_1 (100);
   AT_CMD ();           //>> GSM CHECK
   delay_1 (1500);
   
   Echo_CMD ();         //>> ECHO SET
   delay_1 (1500);
   
   Sim_Ready_CMD ();     // SIM READY
   delay_1 (1500); 
   
   Call_Flag_CMD ();    // SET CALL FLAG
   delay_1 (1500); 
   
   Auto_Call_Receved_CMD ();  // ANTO CALL RECEVED
   delay_1 (1500); 
   
   Set_DTMF_Mode_CMD ();   //SET DTMF MODE
   delay_1 (1500); 
   
   GSM_Signal_check_CMD ();    // CHECK GSM SINGNAL
   delay_1 (1500); 
   
   All_save_data_CMD ();     // SAVE ALL DATA
   delay_1 (1500); 
   
   GSM_Calling_CMD ();      // GSM CALLING
   delay_1 (3000); 
   delay_1 (3000); 
   
//   Set_DTMF_Mode_CMD ();    // SET DTMF MODE
//   delay_1 (1500); 
//   
//   DTMF_Send_CMD ();    // SEND DTMF MODE
//   delay_1 (1500); 
//   
   
   
   
   
   
  // Call_Cut_CMD ();
  // delay_1 (1500); 
   
}

/******************************************************************************/

//>>>>>>>>>>>>> AT CMD <<<<<<<<<<
void AT_CMD ()
{
    int i=0;
    printf (" \n start AT cmd function \n ");   // comment
    char messageStart[] = "AT\r\n";
   
    
    SERCOM5_USART_Write(&messageStart[0], sizeof(messageStart));
    //delay_1 (2);
    printf ("at_1");
    if(SERCOM5_USART_ReceiverIsReady() == true)
        {
        printf ("recever is ready");
          //  if(SERCOM5_USART_ErrorGet() == USART_ERROR_NONE)
          //  {
                printf ("uart is not error");
                SERCOM5_USART_Read(&data, 1);
                
                printf ("AT = %c",data);

                if((data == '\n') || (data == '\r') || (data == '\0'))
                {
                    //SERCOM5_USART_Write(&newline[0],sizeof(newline));
                   // SERCOM5_USART_Write(&receiveBuffer[0],rxCounter);
                    //SERCOM5_USART_Write(&newline[0],sizeof(newline));
                    
                    for(i=0;i<=sizeof(receiveBuffer);i++)
                    {
                        printf ("at in for loop =%d",i);
                       // printf ("at response =%c",receiveBuffer);
                    }
                    
                    
                    delay_1 (1000);
                    memset(&receiveBuffer, 0, sizeof(receiveBuffer));
                    rxCounter = 0; 
                    
                } 
                else
                {
                    printf ("at else condition= array collect");
                    receiveBuffer[rxCounter++] = data;
                     printf ("read data= %c",data);   // comment
                     printf ("rx count= %d",rxCounter);   // comment
                    
                }
                    delay_1 (500);
            }
//            //else
//            //{
//           //     printf ("get at cmd error");
//                SERCOM5_USART_Write(&errorMessage[0],sizeof(errorMessage));
//                delay_1 (500);
//            }
//        }
         //delay_1 (500);
        delay_1 (1000);
        //memset(&receiveBuffer, 0, sizeof(receiveBuffer));
        //rxCounter = 0; 
}

//>>>>>>>>> echo CMD <<<<<<<<<<
void Echo_CMD ()
{
    printf (" ECHO function \n ");   // comment
    char messageStart[] = "ATE0\r\n";
   
    SERCOM5_USART_Write(&messageStart[0], sizeof(messageStart));
    delay_1 (2);
    if(SERCOM5_USART_ReceiverIsReady() == true)
        {
            //if(SERCOM5_USART_ErrorGet() == USART_ERROR_NONE)
            // {
                SERCOM5_USART_Read(&data, 1);

                if((data == '\n') || (data == '\r') || (data == '\0'))
                {
                   // printf ("reciving  \t \n ");   // comment
                    //SERCOM5_USART_Write(&newline[0],sizeof(newline));
                   // SERCOM5_USART_Write(&receiveBuffer[0],rxCounter);
                    //SERCOM5_USART_Write(&newline[0],sizeof(newline));

                    delay_1 (1000);

                    memset(&receiveBuffer, 0, sizeof(receiveBuffer));
                    rxCounter = 0; 
         
                }
                else
                {
                    receiveBuffer[rxCounter++] = data;
                     printf ("read data= %c",data);   // comment
                     printf ("rx count= %d",rxCounter);   // comment
                    
                }
                    delay_1 (500);
            }
//            else
//            {
//                SERCOM5_USART_Write(&errorMessage[0],sizeof(errorMessage));
//                delay_1 (500);
//            }
//        }
      //delay_1 (500);
        delay_1 (1000);
        //memset(&receiveBuffer, 0, sizeof(receiveBuffer));
        //rxCounter = 0; 
      
}

//>>>>>>>>> SIM Ready CMD <<<<<<<<<<
void Sim_Ready_CMD ()
{
     printf (" SIM READY function \t \n ");   // comment
    char messageStart[] = "AT+CPIN?\r\n";
   
    SERCOM5_USART_Write(&messageStart[0], sizeof(messageStart));
    //delay_1 (2);
    if(SERCOM5_USART_ReceiverIsReady() == true)
        {
            //if(SERCOM5_USART_ErrorGet() == USART_ERROR_NONE)
            //{
                SERCOM5_USART_Read(&data, 1);

                if((data == '\n') || (data == '\r') || (data == '\0'))
                {
                   // printf ("reciving  \t \n ");   // comment
                    //SERCOM5_USART_Write(&newline[0],sizeof(newline));
                   // SERCOM5_USART_Write(&receiveBuffer[0],rxCounter);
                    //SERCOM5_USART_Write(&newline[0],sizeof(newline));

                    delay_1 (1000);
                    
                    memset(&receiveBuffer, 0, sizeof(receiveBuffer));
                    rxCounter = 0; 
                }
                else
                {
                    receiveBuffer[rxCounter++] = data;
                     printf ("read data= %c",data);   // comment
                     printf ("rx count= %d",rxCounter);   // comment
                    
                }
                    delay_1 (500);
            }
//            else
//            {
//                SERCOM5_USART_Write(&errorMessage[0],sizeof(errorMessage));
//                delay_1 (500);
//            }
//        }
      //delay_1 (500);
        delay_1 (1000);
        //memset(&receiveBuffer, 0, sizeof(receiveBuffer));
        //rxCounter = 0; 
      
}

//>>>>>>>>> Set Call Flag CMD <<<<<<<<<<
void Call_Flag_CMD ()
{
     printf (" SET Call Flag function \n ");   // comment
    char messageStart[] = "AT+COLP=1\r\n";
   
    SERCOM5_USART_Write(&messageStart[0], sizeof(messageStart));

    if(SERCOM5_USART_ReceiverIsReady() == true)
        {
           // if(SERCOM5_USART_ErrorGet() == USART_ERROR_NONE)
            //{
                SERCOM5_USART_Read(&data, 1);

                if((data == '\n') || (data == '\r') || (data == '\0'))
                {
                   // printf ("reciving  \t \n ");   // comment
                    //SERCOM5_USART_Write(&newline[0],sizeof(newline));
                   // SERCOM5_USART_Write(&receiveBuffer[0],rxCounter);
                    //SERCOM5_USART_Write(&newline[0],sizeof(newline));

                    delay_1 (1000);
                    
                    memset(&receiveBuffer, 0, sizeof(receiveBuffer));
                    rxCounter = 0; 
                    
                }
                else
                {
                    receiveBuffer[rxCounter++] = data;
                     printf ("read data= %c",data);   // comment
                     printf ("rx count= %d",rxCounter);   // comment
                    
                }
                    delay_1 (500);
            }
//            else
//            {
//                SERCOM5_USART_Write(&errorMessage[0],sizeof(errorMessage));
//                delay_1 (500);
//            }
//        }
      delay_1 (500);
      
}

//>>>>>>>>> Auto call receved CMD <<<<<<<<<<
void Auto_Call_Receved_CMD ()
{
     printf (" Set Auto call receved cmd \n ");   // comment
    char messageStart[] = "ATS0=2\r\n";
   
    SERCOM5_USART_Write(&messageStart[0], sizeof(messageStart));

    if(SERCOM5_USART_ReceiverIsReady() == true)
        {
           // if(SERCOM5_USART_ErrorGet() == USART_ERROR_NONE)
           // {
                SERCOM5_USART_Read(&data, 1);

                if((data == '\n') || (data == '\r') || (data == '\0'))
                {
                   // printf ("reciving  \t \n ");   // comment
                    //SERCOM5_USART_Write(&newline[0],sizeof(newline));
                   // SERCOM5_USART_Write(&receiveBuffer[0],rxCounter);
                    //SERCOM5_USART_Write(&newline[0],sizeof(newline));

                    delay_1 (1000);
                    
                    memset(&receiveBuffer, 0, sizeof(receiveBuffer));
                    rxCounter = 0; 
                    
                }
                else
                {
                    receiveBuffer[rxCounter++] = data;
                     printf ("read data= %c",data);   // comment
                     printf ("rx count= %d",rxCounter);   // comment
                    
                }
                    delay_1 (500);
            }
//            else
//            {
//                SERCOM5_USART_Write(&errorMessage[0],sizeof(errorMessage));
//                delay_1 (500);
//            }
//        }
      delay_1 (500);
      
}


//>>>>>>>>> set DTMF MODE CMD <<<<<<<<<<
void Set_DTMF_Mode_CMD ()
{
     printf (" Set DTMF MODE cmd \n ");   // comment
    char messageStart[] = "AT+QTONEDET=1\r\n";
   
    SERCOM5_USART_Write(&messageStart[0], sizeof(messageStart));

    if(SERCOM5_USART_ReceiverIsReady() == true)
        {
            //if(SERCOM5_USART_ErrorGet() == USART_ERROR_NONE)
            //{
                SERCOM5_USART_Read(&data, 1);

                if((data == '\n') || (data == '\r') || (data == '\0'))
                {
                   // printf ("reciving  \t \n ");   // comment
                    //SERCOM5_USART_Write(&newline[0],sizeof(newline));
                   // SERCOM5_USART_Write(&receiveBuffer[0],rxCounter);
                    //SERCOM5_USART_Write(&newline[0],sizeof(newline));

                    delay_1 (1000);
                    
                    memset(&receiveBuffer, 0, sizeof(receiveBuffer));
                    rxCounter = 0; 
                  
                }
                else
                {
                    receiveBuffer[rxCounter++] = data;
                     printf ("read data= %c",data);   // comment
                     printf ("rx count= %d",rxCounter);   // comment
                }
                    delay_1 (500);
            }
//            else
//            {
//                SERCOM5_USART_Write(&errorMessage[0],sizeof(errorMessage));
//                delay_1 (500);
//            }
//        }
      delay_1 (500);
      
}

//>>>>>>>>> All save CMD <<<<<<<<<<
void All_save_data_CMD ()
{
     printf (" All save data cmd \n ");   // comment
    char messageStart[] = "AT&W\r\n";
   
    SERCOM5_USART_Write(&messageStart[0], sizeof(messageStart));

    if(SERCOM5_USART_ReceiverIsReady() == true)
        {
            //if(SERCOM5_USART_ErrorGet() == USART_ERROR_NONE)
            //{
                SERCOM5_USART_Read(&data, 1);

                if((data == '\n') || (data == '\r') || (data == '\0'))
                {
                   // printf ("reciving  \t \n ");   // comment
                    //SERCOM5_USART_Write(&newline[0],sizeof(newline));
                   // SERCOM5_USART_Write(&receiveBuffer[0],rxCounter);
                    //SERCOM5_USART_Write(&newline[0],sizeof(newline));

                    delay_1 (1000);
                    
                    memset(&receiveBuffer, 0, sizeof(receiveBuffer));
                    rxCounter = 0; 
                  
                }
                else
                {
                    receiveBuffer[rxCounter++] = data;
                     printf ("read data= %c",data);   // comment
                     printf ("rx count= %d",rxCounter);   // comment
                }
                    delay_1 (500);
            }
//            else
//            {
//                SERCOM5_USART_Write(&errorMessage[0],sizeof(errorMessage));
//                delay_1 (500);
//            }
//        }
      delay_1 (500);
      
}

//>>>>>>>>> Call cut CMD <<<<<<<<<<
void Call_Cut_CMD ()
{
     printf (" CALL CUT CMD \n ");   // comment
    char messageStart[] = "ATH\r\n";
   
    SERCOM5_USART_Write(&messageStart[0], sizeof(messageStart));

    if(SERCOM5_USART_ReceiverIsReady() == true)
        {
           // if(SERCOM5_USART_ErrorGet() == USART_ERROR_NONE)
           // {
                SERCOM5_USART_Read(&data, 1);

                if((data == '\n') || (data == '\r') || (data == '\0'))
                {
                   // printf ("reciving  \t \n ");   // comment
                    //SERCOM5_USART_Write(&newline[0],sizeof(newline));
                   // SERCOM5_USART_Write(&receiveBuffer[0],rxCounter);
                    //SERCOM5_USART_Write(&newline[0],sizeof(newline));

                    delay_1 (1000);
                    
                    memset(&receiveBuffer, 0, sizeof(receiveBuffer));
                    rxCounter = 0; 
                  
                }
                else
                {
                    receiveBuffer[rxCounter++] = data;
                     printf ("read data= %c",data);   // comment
                     printf ("rx count= %d",rxCounter);   // comment
                }
                    delay_1 (500);
            }
//            else
//            {
//                SERCOM5_USART_Write(&errorMessage[0],sizeof(errorMessage));
//                delay_1 (500);
//            }
//        }
      delay_1 (500);
      
}


//>>>>>>>>> GSM SIGNAL CHECKED CMD <<<<<<<<<<
void GSM_Signal_check_CMD ()
{
     printf (" check gsm signal \n ");   // comment
    char messageStart[] = "AT+CSQ\r\n";
   
    SERCOM5_USART_Write(&messageStart[0], sizeof(messageStart));

    if(SERCOM5_USART_ReceiverIsReady() == true)
        {
            //if(SERCOM5_USART_ErrorGet() == USART_ERROR_NONE)
            //{
                SERCOM5_USART_Read(&data, 1);

                if((data == '\n') || (data == '\r') || (data == '\0'))
                {
                   // printf ("reciving  \t \n ");   // comment
                    //SERCOM5_USART_Write(&newline[0],sizeof(newline));
                   // SERCOM5_USART_Write(&receiveBuffer[0],rxCounter);
                    //SERCOM5_USART_Write(&newline[0],sizeof(newline));

                    delay_1 (1000);
                    
                    memset(&receiveBuffer, 0, sizeof(receiveBuffer));
                    rxCounter = 0; 
                  
                }
                else
                {
                    receiveBuffer[rxCounter++] = data;
                     printf ("read data= %c",data);   // comment
                     printf ("rx count= %d",rxCounter);   // comment
                }
                    delay_1 (500);
            }
//            else
//            {
//                SERCOM5_USART_Write(&errorMessage[0],sizeof(errorMessage));
//                delay_1 (500);
//            }
//        }
      delay_1 (500);
      
}


//>>>>>>>>> GSM CALLING CMD <<<<<<<<<<
void GSM_Calling_CMD ()
{
     printf (" gsm calling cmd \n ");   // comment
    char messageStart[] = "ATD7066253456;\r\n";
   
    SERCOM5_USART_Write(&messageStart[0], sizeof(messageStart));

    if(SERCOM5_USART_ReceiverIsReady() == true)
        {
           // if(SERCOM5_USART_ErrorGet() == USART_ERROR_NONE)
            //{
                SERCOM5_USART_Read(&data, 1);

                if((data == '\n') || (data == '\r') || (data == '\0'))
                {
                   // printf ("reciving  \t \n ");   // comment
                    //SERCOM5_USART_Write(&newline[0],sizeof(newline));
                   // SERCOM5_USART_Write(&receiveBuffer[0],rxCounter);
                    //SERCOM5_USART_Write(&newline[0],sizeof(newline));

                    delay_1 (1000);
                    
                    memset(&receiveBuffer, 0, sizeof(receiveBuffer));
                    rxCounter = 0; 
                  
                }
                else
                {
                    receiveBuffer[rxCounter++] = data;
                     printf ("read data= %c",data);   // comment
                     printf ("rx count= %d",rxCounter);   // comment
                }
                    delay_1 (500);
            }
//            else
//            {
//                SERCOM5_USART_Write(&errorMessage[0],sizeof(errorMessage));
//                delay_1 (500);
//            }
//        }
      delay_1 (500);
      
}

//>>>>>>>>> DTMF_SEND_CMD <<<<<<<<<<
void DTMF_Send_CMD ()
{
     printf (" dtmf send cmd \n ");   // comment
    char messageStart[] = "AT+VTS=5\r\n";
   
    SERCOM5_USART_Write(&messageStart[0], sizeof(messageStart));

    if(SERCOM5_USART_ReceiverIsReady() == true)
        {
           // if(SERCOM5_USART_ErrorGet() == USART_ERROR_NONE)
           // {
                SERCOM5_USART_Read(&data, 1);

                if((data == '\n') || (data == '\r') || (data == '\0'))
                {
                   // printf ("reciving  \t \n ");   // comment
                    //SERCOM5_USART_Write(&newline[0],sizeof(newline));
                   // SERCOM5_USART_Write(&receiveBuffer[0],rxCounter);
                    //SERCOM5_USART_Write(&newline[0],sizeof(newline));

                    delay_1 (1000);
                    
                    memset(&receiveBuffer, 0, sizeof(receiveBuffer));
                    rxCounter = 0; 
                  
                }
                else
                {
                    receiveBuffer[rxCounter++] = data;
                     printf ("read data= %c",data);   // comment
                     printf ("rx count= %d",rxCounter);   // comment
                }
                    delay_1 (500);
            }
//            else
//            {
//                SERCOM5_USART_Write(&errorMessage[0],sizeof(errorMessage));
//                delay_1 (500);
//            }
//        }
      delay_1 (500);
      
}










/*******************************  FOR Delay  *********************************/

void delay_1 (int x)
{
    int i=0,j=0;
    for(i=0;i<=9999;i++)
    {
        for(j=0;j<=x;j++);
    }
}

/********************************  End of File  ******************************/

