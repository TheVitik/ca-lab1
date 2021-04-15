IDEAL
MODEL SMALL
STACK 512
;-------------------------------II.МАКРОСИ-------------------------------------
                    ; Макрос для ініціалізації
MACRO M_Init    ; Початок макросу 
    mov     ax,@data ;ax<@data
    mov     ds,ax   ; ds<ax
    mov     es,ax   ; es<ax
ENDM M_Init      ; Кінець макросу

;----------------------III.ПОЧАТОК СЕГМЕНТУ ДАНИХ------------------------------
DATASEG

; Подвійний масив 16х16
array2Db db 5Fh, 5Fh, 5Fh, 5Fh, 5Fh, 5Fh, 5Fh, 5Fh, 5Fh, 5Fh, 5Fh, 5Fh, 5Fh, 5Fh, 5Fh, 5Fh
       db 7Ch, 20h, 20h, 20h, 20h, 20h, 20h, 20h, 20h, 20h, 20h, 20h, 20h, 20h, 20h, 7Ch
       db 7Ch, 20h, 20h, 20h, 20h, 20h, 20h, 20h, 20h, 20h, 20h, 20h, 20h, 20h, 20h, 7Ch
       db 7Ch, 20h, 20h, 20h, 20h, 20h, 20h, 20h, 20h, 20h, 20h, 20h, 20h, 20h, 20h, 7Ch
       db 7Ch, 20h, 20h, 20h, 20h, 20h, 20h, 20h, 20h, 20h, 20h, 20h, 20h, 20h, 20h, 7Ch
       db 7Ch, 20h, 20h, 20h, 20h, 20h, 20h, 20h, 20h, 20h, 20h, 20h, 20h, 20h, 20h, 7Ch
       db 7Ch, 20h, 20h, 20h, 20h, 20h, 20h, 20h, 20h, 20h, 20h, 20h, 20h, 20h, 20h, 7Ch
       db 7Ch, 20h, 20h, 20h, 20h, 20h, 20h, 20h, 20h, 20h, 20h, 20h, 20h, 20h, 20h, 7Ch
       db 7Ch, 20h, 20h, 20h, 20h, 20h, 20h, 20h, 20h, 20h, 20h, 20h, 20h, 20h, 20h, 7Ch
       db 7Ch, 20h, 20h, 20h, 20h, 20h, 20h, 20h, 20h, 20h, 20h, 20h, 20h, 20h, 20h, 7Ch
       db 7Ch, 20h, 20h, 20h, 20h, 20h, 20h, 20h, 20h, 20h, 20h, 20h, 20h, 20h, 20h, 7Ch
       db 7Ch, 20h, 20h, 20h, 20h, 20h, 20h, 20h, 20h, 20h, 20h, 20h, 20h, 20h, 20h, 7Ch
       db 7Ch, 20h, 20h, 20h, 20h, 20h, 20h, 20h, 20h, 20h, 20h, 20h, 20h, 20h, 20h, 7Ch
       db 7Ch, 20h, 20h, 20h, 20h, 20h, 20h, 20h, 20h, 20h, 20h, 20h, 20h, 20h, 20h, 7Ch
       db 7Ch, 20h, 20h, 20h, 20h, 20h, 20h, 20h, 20h, 20h, 20h, 20h, 20h, 20h, 20h, 7Ch
       db 5Fh, 5Fh, 5Fh, 5Fh, 5Fh, 5Fh, 5Fh, 5Fh, 5Fh, 5Fh, 5Fh, 5Fh, 5Fh, 5Fh, 5Fh, 5Fh
       
;-----------------------VI. ПОЧАТОК СЕГМЕНТУ КОДУ-------------------------------
CODESEG

Start:  
      M_Init 	;Виклик макросу ініціалізації
  mov bx,30h 	;Відступ по У
  mov si,1h 	;Відступ по Х
  mov [array2Db+si+bx],'K' 	;Запис символу К
  add bx,10h 	;Перехід на наступний рядок
  inc si 	;Збільшення відступу на 1, si++
  mov [array2Db+si+bx],'E'  
  add bx,10h
  inc si
  mov [array2Db+si+bx],'S'

  inc si
  add bx,20h
  inc si
  mov [array2Db+si+bx],'K'
  add bx,10h
  inc si
  mov [array2Db+si+bx],'V'
  add bx,10h
  inc si
  mov [array2Db+si+bx],'O'

  inc si
  add bx,20h
  inc si
  mov [array2Db+si+bx],'H'
  add bx,10h
  inc si
  mov [array2Db+si+bx],'M'
  add bx,10h
  inc si
  mov [array2Db+si+bx],'Y'
  

  mov     ax,4C00h                ; Завершуемо программу
  int     21h

end Start