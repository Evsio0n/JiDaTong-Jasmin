.bytecode 50.0
.class synchronized android/support/v4/view/MotionEventCompatEclair
.super java/lang/Object

.method <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static findPointerIndex(Landroid/view/MotionEvent;I)I
aload 0
iload 1
invokevirtual android/view/MotionEvent/findPointerIndex(I)I
ireturn
.limit locals 2
.limit stack 2
.end method

.method public static getPointerCount(Landroid/view/MotionEvent;)I
aload 0
invokevirtual android/view/MotionEvent/getPointerCount()I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public static getPointerId(Landroid/view/MotionEvent;I)I
aload 0
iload 1
invokevirtual android/view/MotionEvent/getPointerId(I)I
ireturn
.limit locals 2
.limit stack 2
.end method

.method public static getX(Landroid/view/MotionEvent;I)F
aload 0
iload 1
invokevirtual android/view/MotionEvent/getX(I)F
freturn
.limit locals 2
.limit stack 2
.end method

.method public static getY(Landroid/view/MotionEvent;I)F
aload 0
iload 1
invokevirtual android/view/MotionEvent/getY(I)F
freturn
.limit locals 2
.limit stack 2
.end method
