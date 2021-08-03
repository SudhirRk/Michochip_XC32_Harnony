#include <atmel_start.h>
#include <hal_gpio.h>
#include <hal_delay.h>

int main(void)
{
	/* Initializes MCU, drivers and middleware */
	atmel_start_init();
    //gpio_set_pin_pull_mode(SW_1, GPIO_PULL_UP);

	/* Replace with your application code */
	while (1)
    {
		//do {
			delay_ms(100);
		//} while (gpio_get_pin_level(SW_1));

		gpio_toggle_pin_level(LED_1);

		//do {
			delay_ms(100);
		//} while (!gpio_get_pin_level(SW_1));
	//}
    }
     
}
