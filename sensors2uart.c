#include <pic.h>
#include <stdio.h> // For sprintf

// Configuration bits (may need to be adjusted based on your setup)
__CONFIG(0x3F72);

#define _XTAL_FREQ 4000000

// LCD Definitions
#define RS RC0
#define RW RC1
#define EN RC2

// For UART
#define BAUD 9600
#define BREG_VALUE ((_XTAL_FREQ/16/BAUD) - 1)

// Function Declarations
void command(unsigned char y);
void data(unsigned char z);
void initial();
void UART_Init();
void UART_SendChar(char bt);
void UART_SendString(char* str);
void read_DHT11(unsigned char* temperature);
unsigned char read_PIR();

// LCD Functions
void command(unsigned char y) {
    PORTD = y;
    RS = 0;
    RW = 0;
    EN = 1;
    __delay_ms(1);
    EN = 0;
}

void data(unsigned char z) {
    PORTD = z;
    RS = 1;
    RW = 0;
    EN = 1;
    __delay_ms(1);
    EN = 0;
}

void initial() {
    command(0x38);
    command(0x01);
    command(0x06);
    command(0x0C);
}

// UART Functions
void UART_Init() {
    SPBRG = BREG_VALUE;
    TXSTA = 0x24;  // TXEN set, BRGH set
    RCSTA = 0x90;  // SPEN set, CREN set
    TRISC6 = 0;    // TX Pin as output
    TRISC7 = 1;    // RX Pin as input
}

void UART_SendChar(char bt) {
    while(!TXIF);
    TXREG = bt;
}

void UART_SendString(char* str) {
    while(*str) {
        UART_SendChar(*str++);
    }
}

// DHT11 Functions (Simplified for illustration. Implement according to DHT11 protocol)
void read_DHT11(unsigned char* temperature) {
    // Placeholder - Implement DHT11 protocol
    *temperature = 25; // Dummy value
}

// PIR Sensor Function (Simplified for illustration)
unsigned char read_PIR() {
    return RB3; // Direct read from PIR pin
}

void main() {
    int temp, distance;
    unsigned char temperature, pirState;
    
    TRISB = 0x0B; // RB0 and RB3 as input (PIR sensor), RB2 as input (DHT11), rest as output
    PORTB = 0x00;
    TRISD = 0x00; // LCD Data pins as output
    PORTD = 0x00;
    TRISC = 0x00; // LCD Control pins as output
    PORTC = 0x00;
    
    initial();
    UART_Init();
    T1CON = 0x00;

    while(1) {
        // Read Ultrasonic Sensor
        TMR1H = 0x00;
        TMR1L = 0x00;
        RB1 = 1;
        __delay_ms(0.01);
        RB1 = 0;
        while(RB0 == 0);
        TMR1ON = 1;
        while(RB0 == 1);
        TMR1ON = 0;
        temp = ((TMR1H << 8) | TMR1L);
        distance = (temp * 0.017);
        
        // Read DHT11 Sensor
        read_DHT11(&temperature);
        
        // Read PIR Sensor
        pirState = read_PIR();
        
        // Display Distance on LCD
        int a, b, c, d, e, f;
        a = distance / 10;
        b = distance % 10;
        c = a / 10;
        d = a % 10;
        e = c / 10;
        f = c % 10;
        command(0x80);
        data(e + 0x30);
        data(f + 0x30);
        data(d + 0x30);
        data(b + 0x30);
        
        // Send Data over UART
        char buffer[32];
         char buffer1[32];
        sprintf(buffer, "Distance: %d cm, Temperature: %d C, PIR: %d\r\n", distance, temperature, pirState);
        sprintf(buffer1, "Distance: 182 cm, Temperature: 25 C, PIR: 1\n");
    
        UART_SendString(buffer);
        UART_SendString(buffer1);

        __delay_ms(500);
    }
}
