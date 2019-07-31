.bytecode 50.0
.class synchronized com/nd/android/u/tast/main/widget/HorizontalProgressView$MyHandler
.super android/os/Handler
.inner class private static MyHandler inner com/nd/android/u/tast/main/widget/HorizontalProgressView$MyHandler outer com/nd/android/u/tast/main/widget/HorizontalProgressView

.field private 'mHorizontalProgressView' Ljava/lang/ref/WeakReference; signature "Ljava/lang/ref/WeakReference<Lcom/nd/android/u/tast/main/widget/HorizontalProgressView;>;"

.method public <init>(Lcom/nd/android/u/tast/main/widget/HorizontalProgressView;)V
aload 0
invokespecial android/os/Handler/<init>()V
aload 0
new java/lang/ref/WeakReference
dup
aload 1
invokespecial java/lang/ref/WeakReference/<init>(Ljava/lang/Object;)V
putfield com/nd/android/u/tast/main/widget/HorizontalProgressView$MyHandler/mHorizontalProgressView Ljava/lang/ref/WeakReference;
return
.limit locals 2
.limit stack 4
.end method

.method public handleMessage(Landroid/os/Message;)V
aload 0
getfield com/nd/android/u/tast/main/widget/HorizontalProgressView$MyHandler/mHorizontalProgressView Ljava/lang/ref/WeakReference;
invokevirtual java/lang/ref/WeakReference/get()Ljava/lang/Object;
checkcast com/nd/android/u/tast/main/widget/HorizontalProgressView
astore 2
aload 2
ifnonnull L0
L1:
return
L0:
aload 1
getfield android/os/Message/arg1 I
tableswitch 0
L2
L3
default : L4
L4:
return
L2:
aload 2
aload 1
getfield android/os/Message/what I
invokevirtual com/nd/android/u/tast/main/widget/HorizontalProgressView/setProgress(I)V
return
L3:
aload 2
invokestatic com/nd/android/u/tast/main/widget/HorizontalProgressView/access$000(Lcom/nd/android/u/tast/main/widget/HorizontalProgressView;)Lcom/nd/android/u/tast/main/widget/HorizontalProgressView$OnLevelUpdateListener;
ifnull L1
aload 2
invokestatic com/nd/android/u/tast/main/widget/HorizontalProgressView/access$000(Lcom/nd/android/u/tast/main/widget/HorizontalProgressView;)Lcom/nd/android/u/tast/main/widget/HorizontalProgressView$OnLevelUpdateListener;
invokeinterface com/nd/android/u/tast/main/widget/HorizontalProgressView$OnLevelUpdateListener/onLevelUpdate()V 0
return
.limit locals 3
.limit stack 2
.end method
