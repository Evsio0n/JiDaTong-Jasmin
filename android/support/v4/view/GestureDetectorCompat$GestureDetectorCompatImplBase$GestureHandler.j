.bytecode 50.0
.class synchronized android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase$GestureHandler
.super android/os/Handler
.inner class static GestureDetectorCompatImplBase inner android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase outer android/support/v4/view/GestureDetectorCompat
.inner class private GestureHandler inner android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase$GestureHandler outer android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase

.field final synthetic 'this$0' Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;

.method <init>(Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;)V
aload 0
aload 1
putfield android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase$GestureHandler/this$0 Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;
aload 0
invokespecial android/os/Handler/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method <init>(Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;Landroid/os/Handler;)V
aload 0
aload 1
putfield android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase$GestureHandler/this$0 Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;
aload 0
aload 2
invokevirtual android/os/Handler/getLooper()Landroid/os/Looper;
invokespecial android/os/Handler/<init>(Landroid/os/Looper;)V
return
.limit locals 3
.limit stack 2
.end method

.method public handleMessage(Landroid/os/Message;)V
aload 1
getfield android/os/Message/what I
tableswitch 1
L0
L1
L2
default : L3
L3:
new java/lang/RuntimeException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Unknown message "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/RuntimeException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 0
getfield android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase$GestureHandler/this$0 Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;
invokestatic android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/access$100(Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;)Landroid/view/GestureDetector$OnGestureListener;
aload 0
getfield android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase$GestureHandler/this$0 Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;
invokestatic android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/access$000(Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;)Landroid/view/MotionEvent;
invokeinterface android/view/GestureDetector$OnGestureListener/onShowPress(Landroid/view/MotionEvent;)V 1
L4:
return
L1:
aload 0
getfield android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase$GestureHandler/this$0 Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;
invokestatic android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/access$200(Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;)V
return
L2:
aload 0
getfield android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase$GestureHandler/this$0 Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;
invokestatic android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/access$300(Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;)Landroid/view/GestureDetector$OnDoubleTapListener;
ifnull L4
aload 0
getfield android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase$GestureHandler/this$0 Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;
invokestatic android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/access$400(Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;)Z
ifne L4
aload 0
getfield android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase$GestureHandler/this$0 Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;
invokestatic android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/access$300(Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;)Landroid/view/GestureDetector$OnDoubleTapListener;
aload 0
getfield android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase$GestureHandler/this$0 Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;
invokestatic android/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase/access$000(Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;)Landroid/view/MotionEvent;
invokeinterface android/view/GestureDetector$OnDoubleTapListener/onSingleTapConfirmed(Landroid/view/MotionEvent;)Z 1
pop
return
.limit locals 2
.limit stack 4
.end method
