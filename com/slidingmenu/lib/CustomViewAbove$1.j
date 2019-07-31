.bytecode 50.0
.class synchronized com/slidingmenu/lib/CustomViewAbove$1
.super java/lang/Object
.implements android/view/animation/Interpolator
.enclosing method com/slidingmenu/lib/CustomViewAbove
.inner class inner com/slidingmenu/lib/CustomViewAbove$1

.method <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public getInterpolation(F)F
fload 1
fconst_1
fsub
fstore 1
fload 1
fload 1
fmul
fload 1
fmul
fload 1
fmul
fload 1
fmul
fconst_1
fadd
freturn
.limit locals 2
.limit stack 2
.end method
