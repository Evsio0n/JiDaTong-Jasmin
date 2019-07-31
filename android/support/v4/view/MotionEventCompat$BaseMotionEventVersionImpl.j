.bytecode 50.0
.class synchronized android/support/v4/view/MotionEventCompat$BaseMotionEventVersionImpl
.super java/lang/Object
.implements android/support/v4/view/MotionEventCompat$MotionEventVersionImpl
.inner class static BaseMotionEventVersionImpl inner android/support/v4/view/MotionEventCompat$BaseMotionEventVersionImpl outer android/support/v4/view/MotionEventCompat

.method <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public findPointerIndex(Landroid/view/MotionEvent;I)I
iload 2
ifne L0
iconst_0
ireturn
L0:
iconst_m1
ireturn
.limit locals 3
.limit stack 1
.end method

.method public getPointerCount(Landroid/view/MotionEvent;)I
iconst_1
ireturn
.limit locals 2
.limit stack 1
.end method

.method public getPointerId(Landroid/view/MotionEvent;I)I
iload 2
ifne L0
iconst_0
ireturn
L0:
new java/lang/IndexOutOfBoundsException
dup
ldc "Pre-Eclair does not support multiple pointers"
invokespecial java/lang/IndexOutOfBoundsException/<init>(Ljava/lang/String;)V
athrow
.limit locals 3
.limit stack 3
.end method

.method public getX(Landroid/view/MotionEvent;I)F
iload 2
ifne L0
aload 1
invokevirtual android/view/MotionEvent/getX()F
freturn
L0:
new java/lang/IndexOutOfBoundsException
dup
ldc "Pre-Eclair does not support multiple pointers"
invokespecial java/lang/IndexOutOfBoundsException/<init>(Ljava/lang/String;)V
athrow
.limit locals 3
.limit stack 3
.end method

.method public getY(Landroid/view/MotionEvent;I)F
iload 2
ifne L0
aload 1
invokevirtual android/view/MotionEvent/getY()F
freturn
L0:
new java/lang/IndexOutOfBoundsException
dup
ldc "Pre-Eclair does not support multiple pointers"
invokespecial java/lang/IndexOutOfBoundsException/<init>(Ljava/lang/String;)V
athrow
.limit locals 3
.limit stack 3
.end method
