;---------------------I.ЗАГОЛОВОК ПРОГРАМИ------------------------------------

IDEAL   ; Директива - тип Асемблера tasm
MODEL small ; Директива - тип моделі пам'яті
STACK 256   ; Директива - розмір стеку в байтах

;--------------------II.МАКРОСИ------------------------------------
MACRO M_Init ; Початок макросу
mov ax,@data ; ax <- @data 
mov ds,ax ; ds <- ax
mov es,ax ; es <- ax
ENDM M_Init ; Кінець макросу

;--------------------III.ПОЧАТОК СЕГМЕНТУ ДАНИХ
DATASEG

exCode db 0

; Одна лінія прямокутника
rect_line db 4Ch,21h,61h,21h,62h,21h,32h,21h,20h,21h
db 4Ch,21h,61h,21h,62h,21h,32h,21h,20h,21h
db 4Ch,21h,61h,21h,62h,21h,32h,21h,20h,21h
db 4Ch,21h,61h,21h,62h,21h,32h,21h,20h,21h



	rect_line_length=$-rect_line; функція для визначення довжини строки

;----------------------VI. ПОЧАТОК СЕГМЕНТУ КОДУ-----------------	
		CODESEG	

	Start:
		M_Init;використовуємо макрос
		
;-------------------------------------------------------------
	mov dx,400
	mov cx,10
loopStart:
	
	
	mov bx,cx
	mov ax,0B800h
	mov es,ax
	
	mov di,dx
	mov si,offset rect_line
	mov cx,rect_line_length
	cld
	rep movsb
	mov cx,bx
	
	add dx,160
LOOP loopStart

Exit:
	mov ah,04Ch
	mov al,[exCode]
	int 21h
;----------------------------------------------------------------------
END Start
;----------------------------------------------------------------------