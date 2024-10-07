;Ergasthrio Mikro Prwth Askhsh

.org 0x0000
	rjmp main ; define the start of the code and jump to main code
;Main solution
main:


	ldi r24, LOW(100)
	ldi r25, HIGH(100)
	;we loaded the registers of X with example values
	rcall wait_x_msec ;call the delay routine
loop:
	rjmp loop ; while loop without ending
wait_x_msec:
	push r24
	push r25 ; we pushed them into stack in order to save them and later to decrease them
delay_loop:
	ldi r18,42
inner_loop:
	ldi r19,127
delay_1ms:
	dec r19
	brne delay_1ms
	dec r18
	brne inner_loop
	sbiw r24,1
	brne delay_loop
	pop r25
	pop r24
	ret