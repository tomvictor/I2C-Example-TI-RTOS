## Example Summary

Sample application to read temperature value from a TMP007 I2C temperature
sensor.

## Peripherals Exercised

* `Board_LED0` - Indicator LED
* `Board_I2C_TMP` - I2C used to communicate with TMP007 sensor.

## Resources & Jumper Settings

>Please refer to the development board's specific __Settings and Resources__
section in the Getting Started Guide. For convenience, a short summary is also
shown below.

| Development board | Notes                                                  |
| ----------------- | ------                                                 |
| CC1350STK         |                                                        |
| CC2650STK         |                                                        |

> Fields left blank have no specific settings for this example.

## Example Usage

* Run the example. `Board_LED0` turns ON to indicate TI-RTOS driver
initialization is complete.

* The example will request temperature samples from the TMP007 and print them on
the console. A total of 20 temperature samples are read/printed before the
example exits. Console output should resemble:
```
        I2C Initialized!
        Sample 0: 24 (C)
        Sample 1: 24 (C)
        Sample 2: 24 (C)
        Sample 3: 24 (C)
```

## Application Design Details

This application uses one tasks:

`'getTempTask'` - performs the following actions:

1. Opens and initializes an I2C driver object.

2. Uses the I2C driver to get data from the TMP007 sensor.

3. Extracts the temperature (in Celsius) and prints the value on the console.

4. The task sleeps for 1000 system ticks.

5. After 20 temperature samples are recovered, the I2C peripheral is closed
and the example exits.

## References
* For GNU and IAR users, please read the following website for details
  about enabling [semi-hosting](http://processors.wiki.ti.com/index.php/TI-RTOS_Examples_SemiHosting)
  in order to view console output.
