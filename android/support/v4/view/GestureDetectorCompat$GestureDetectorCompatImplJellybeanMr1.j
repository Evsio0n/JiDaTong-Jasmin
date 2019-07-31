.bytecode 50.0
.class synchronized android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplJellybeanMr1
.super java/lang/Object
.implements android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImpl
.inner class static GestureDetectorCompatImplJellybeanMr1 inner android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplJellybeanMr1 outer android/support/v4/view/GestureDetectorCompat

.field private final 'mDetector' Landroid/view/GestureDetector;

.method public <init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new android/view/GestureDetector
dup
aload 1
aload 2
aload 3
invokespecial android/view/GestureDetector/<init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V
putfield android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplJellybeanMr1/mDetector Landroid/view/GestureDetector;
return
.limit locals 4
.limit stack 6
.end method

.method public isLongpressEnabled()Z
aload 0
getfield android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplJellybeanMr1/mDetector Landroid/view/GestureDetector;
invokevirtual android/view/GestureDetector/isLongpressEnabled()Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
aload 0
getfield android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplJellybeanMr1/mDetector Landroid/view/GestureDetector;
aload 1
invokevirtual android/view/GestureDetector/onTouchEvent(Landroid/view/MotionEvent;)Z
ireturn
.limit locals 2
.limit stack 2
.end method

.method public setIsLongpressEnabled(Z)V
aload 0
getfield android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplJellybeanMr1/mDetector Landroid/view/GestureDetector;
iload 1
invokevirtual android/view/GestureDetector/setIsLongpressEnabled(Z)V
return
.limit locals 2
.limit stack 2
.end method

.method public setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V
aload 0
getfield android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplJellybeanMr1/mDetector Landroid/view/GestureDetector;
aload 1
invokevirtual android/view/GestureDetector/setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V
return
.limit locals 2
.limit stack 2
.end method
