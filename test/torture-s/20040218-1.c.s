	.text
	.file	"/b/build/slave/linux/build/src/buildbot/work/gcc/gcc/testsuite/gcc.c-torture/execute/20040218-1.c"
	.globl	xb
	.type	xb,@function
xb:                                     # @xb
	.param  	i32
	.result 	i32
# BB#0:                                 # %entry
	i32.load8_u	$push0=, 0($0)
	i32.load	$push1=, 4($0)
	i32.add 	$push2=, $pop0, $pop1
	return  	$pop2
func_end0:
	.size	xb, func_end0-xb

	.globl	xw
	.type	xw,@function
xw:                                     # @xw
	.param  	i32
	.result 	i32
# BB#0:                                 # %entry
	i32.load16_u	$push0=, 0($0)
	i32.load	$push1=, 4($0)
	i32.add 	$push2=, $pop0, $pop1
	return  	$pop2
func_end1:
	.size	xw, func_end1-xw

	.globl	yb
	.type	yb,@function
yb:                                     # @yb
	.param  	i32
	.result 	i32
	.local  	i32
# BB#0:                                 # %entry
	i32.const	$1=, 16
	i32.load8_u	$push0=, 0($0)
	i32.load16_u	$push1=, 2($0)
	i32.add 	$push2=, $pop0, $pop1
	i32.shl 	$push3=, $pop2, $1
	i32.shr_s	$push4=, $pop3, $1
	return  	$pop4
func_end2:
	.size	yb, func_end2-yb

	.globl	main
	.type	main,@function
main:                                   # @main
	.result 	i32
	.local  	i32, i32, i32, i32, i32, i32, i32, i32
# BB#0:                                 # %entry
	i32.const	$2=, __stack_pointer
	i32.load	$2=, 0($2)
	i32.const	$3=, 16
	i32.sub 	$7=, $2, $3
	i32.const	$3=, __stack_pointer
	i32.store	$7=, 0($3), $7
	i32.const	$push1=, 1048641535
	i32.store	$discard=, 4($7), $pop1
	i64.const	$push0=, 68723771703295
	i64.store	$discard=, 8($7), $pop0
	i32.const	$4=, 8
	i32.add 	$4=, $7, $4
	i32.call	$0=, xb, $4
	i32.const	$1=, 16255
	block   	BB3_4
	i32.ne  	$push2=, $0, $1
	br_if   	$pop2, BB3_4
# BB#1:                                 # %lor.lhs.false
	i32.const	$5=, 8
	i32.add 	$5=, $7, $5
	i32.call	$push3=, xw, $5
	i32.const	$push4=, 81535
	i32.ne  	$push5=, $pop3, $pop4
	br_if   	$pop5, BB3_4
# BB#2:                                 # %lor.lhs.false4
	i32.const	$6=, 4
	i32.add 	$6=, $7, $6
	i32.call	$push6=, yb, $6
	i32.const	$push7=, 65535
	i32.and 	$push8=, $pop6, $pop7
	i32.ne  	$push9=, $pop8, $1
	br_if   	$pop9, BB3_4
# BB#3:                                 # %if.end
	i32.const	$push10=, 0
	call    	exit, $pop10
	unreachable
BB3_4:                                  # %if.then
	call    	abort
	unreachable
func_end3:
	.size	main, func_end3-main


	.ident	"clang version 3.8.0 "
	.section	".note.GNU-stack","",@progbits