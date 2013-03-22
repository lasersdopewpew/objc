// Program to reverse the digits of a number 

#import <Foundation/Foundation.h>

int main (int argc, char *argv[]) {
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	int number, right_digit;
	
	NSLog (@"Enter your number.");
	scanf ("%i", &number);

		do {
			right_digit = number % 10;
			NSLog (@"%i", right_digit);
			number /= 10;
		}
		while ( number != 0 );

	[pool drain];
	return 0;
}