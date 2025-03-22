#ifndef TIME_H
#define TIME_H
void delayMicroseconds(unsigned long i)
{
	i = (i*1000)/1550;
	for (; i > 0; i--);

}

// Delay function
void delay(unsigned long i){
	delayMicroseconds(i*1000);	
}
#endif