  .data
	      result_message: .asciiz "\nMi nombre es Anibal Estuardo Muñoz Hernández "
  .text
	      main:
             
              li $v0, 4
              la $a0 result_message
              syscall             