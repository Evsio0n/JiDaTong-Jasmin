.bytecode 50.0
.class synchronized android/support/v4/view/MotionEventCompat$EclairMotionEventVersionImpl
.super java/lang/Object
.implements android/support/v4/view/MotionEventCompat$MotionEventVersionImpl
.inner class static EclairMotionEventVersionImpl inner android/support/v4/view/MotionEventCompat$EclairMotionEventVersionImpl outer android/support/v4/view/MotionEventCompat

.method <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public findPointerIndex(Landroid/view/MotionEvent;I)I
aload 1
iload 2
invokestatic android/support/v4/view/MotionEventCompatEclair/findPointerIndex(Landroid/view/MotionEvent;I)I
ireturn
.limit locals 3
.limit stack 2
.end method

.method public getPointerCount(Landroid/view/MotionEvent;)I
aload 1
invokestatic android/support/v4/view/MotionEventCompatEclair/getPointerCount(Landroid/view/MotionEvent;)I
ireturn
.limit locals 2
.limit stack 1
.end method

.method public getPointerId(Landroid/view/MotionEvent;I)I
aload 1
iload 2
invokestatic android/support/v4/view/MotionEventCompatEclair/getPointerId(Landroid/view/MotionEvent;I)I
ireturn
.limit locals 3
.limit stack 2
.end method

.method public getX(Landroid/view/MotionEvent;I)F
aload 1
iload 2
invokestatic android/support/v4/view/MotionEventCompatEclair/getX(Landroid/view/MotionEvent;I)F
freturn
.limit locals 3
.limit stack 2
.end method

.method public getY(Landroid/view/MotionEvent;I)F
aload 1
iload 2
invokestatic android/support/v4/view/MotionEventCompatEclair/getY(Landroid/view/MotionEvent;I)F
freturn
.limit locals 3
.limit stack 2
.end method
