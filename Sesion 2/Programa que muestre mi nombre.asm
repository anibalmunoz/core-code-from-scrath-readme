  .data
	      result_message: .asciiz "\nMi nombre es Anibal Estuardo Mu�oz Hern�ndez "
  .text
	      main:
             
              li $v0, 4
              la $a0 result_message
              syscall             