.bytecode 50.0
.class public synchronized android/support/v4/view/GestureDetectorCompat
.super java/lang/Object
.inner class static abstract interface GestureDetectorCompatImpl inner android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImpl outer android/support/v4/view/GestureDetectorCompat
.inner class static GestureDetectorCompatImplBase inner android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase outer android/support/v4/view/GestureDetectorCompat
.inner class private GestureHandler inner android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase$GestureHandler outer android/support/v4/view/GestureDetectorCompat
.inner class static GestureDetectorCompatImplJellybeanMr1 inner android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplJellybeanMr1 outer android/support/v4/view/GestureDetectorCompat

.field private final 'mImpl' Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImpl;

.method public <init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V
aload 0
aload 1
aload 2
aconst_null
invokespecial android/support/v4/view/GestureDetectorCompat/<init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V
return
.limit locals 3
.limit stack 4
.end method

.method public <init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V
aload 0
invokespecial java/lang/Object/<init>()V
getstatic android/os/Build$VERSION/SDK_INT I
bipush 17
if_icmplt L0
aload 0
new android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplJellybeanMr1
dup
aload 1
aload 2
aload 3
invokespecial android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplJellybeanMr1/<init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V
putfield android/support/v4/view/GestureDetectorCompat/mImpl Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImpl;
return
L0:
aload 0
new android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase
dup
aload 1
aload 2
aload 3
invokespecial android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/<init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V
putfield android/support/v4/view/GestureDetectorCompat/mImpl Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImpl;
return
.limit locals 4
.limit stack 6
.end method

.method public isLongpressEnabled()Z
aload 0
getfield android/support/v4/view/GestureDetectorCompat/mImpl Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImpl;
invokeinterface android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImpl/isLongpressEnabled()Z 0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
aload 0
getfield android/support/v4/view/GestureDetectorCompat/mImpl Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImpl;
aload 1
invokeinterface android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImpl/onTouchEvent(Landroid/view/MotionEvent;)Z 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method public setIsLongpressEnabled(Z)V
aload 0
getfield android/support/v4/view/GestureDetectorCompat/mImpl Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImpl;
iload 1
invokeinterface android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImpl/setIsLongpressEnabled(Z)V 1
return
.limit locals 2
.limit stack 2
.end method

.method public setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V
aload 0
getfield android/support/v4/view/GestureDetectorCompat/mImpl Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImpl;
aload 1
invokeinterface android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImpl/setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V 1
return
.limit locals 2
.limit stack 2
.end method
