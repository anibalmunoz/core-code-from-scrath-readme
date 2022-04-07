  .data
	      number1: .asciiz "\nIngrese el primer numero: "
	      number2: .asciiz "\nIngrese el segundo numero: "
  .text
	       main:
              li $v0, 4
              la $a0, number1
              syscall

              li $v0, 5
              syscall

              move $t0, $v0

              li $v0, 4
              la $a0, number2
              syscall

              li $v0, 5
              syscall

              move $t1, $v0

              add $t2, $t0, $t1

              li $v0, 1
              move $a0, $t2
              syscall