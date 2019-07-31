.bytecode 50.0
.class synchronized com/nd/android/u/tast/main/widget/HorizontalProgressView$MyTimerTask
.super java/util/TimerTask
.inner class private MyTimerTask inner com/nd/android/u/tast/main/widget/HorizontalProgressView$MyTimerTask outer com/nd/android/u/tast/main/widget/HorizontalProgressView

.field private 'mNeedToZero' Z

.field private 'mToMax' I

.field private 'mToProgress' I

.field final synthetic 'this$0' Lcom/nd/android/u/tast/main/widget/HorizontalProgressView;

.method public <init>(Lcom/nd/android/u/tast/main/widget/HorizontalProgressView;II)V
aload 0
aload 1
putfield com/nd/android/u/tast/main/widget/HorizontalProgressView$MyTimerTask/this$0 Lcom/nd/android/u/tast/main/widget/HorizontalProgressView;
aload 0
invokespecial java/util/TimerTask/<init>()V
aload 0
iconst_0
putfield com/nd/android/u/tast/main/widget/HorizontalProgressView$MyTimerTask/mNeedToZero Z
aload 0
iload 2
putfield com/nd/android/u/tast/main/widget/HorizontalProgressView$MyTimerTask/mToProgress I
aload 0
iload 3
putfield com/nd/android/u/tast/main/widget/HorizontalProgressView$MyTimerTask/mToMax I
return
.limit locals 4
.limit stack 2
.end method

.method public run()V
new android/os/Message
dup
invokespecial android/os/Message/<init>()V
astore 2
aload 0
getfield com/nd/android/u/tast/main/widget/HorizontalProgressView$MyTimerTask/mToMax I
aload 0
getfield com/nd/android/u/tast/main/widget/HorizontalProgressView$MyTimerTask/this$0 Lcom/nd/android/u/tast/main/widget/HorizontalProgressView;
invokestatic com/nd/android/u/tast/main/widget/HorizontalProgressView/access$100(Lcom/nd/android/u/tast/main/widget/HorizontalProgressView;)I
if_icmpeq L0
aload 0
getfield com/nd/android/u/tast/main/widget/HorizontalProgressView$MyTimerTask/this$0 Lcom/nd/android/u/tast/main/widget/HorizontalProgressView;
invokestatic com/nd/android/u/tast/main/widget/HorizontalProgressView/access$200(Lcom/nd/android/u/tast/main/widget/HorizontalProgressView;)I
aload 0
getfield com/nd/android/u/tast/main/widget/HorizontalProgressView$MyTimerTask/this$0 Lcom/nd/android/u/tast/main/widget/HorizontalProgressView;
invokestatic com/nd/android/u/tast/main/widget/HorizontalProgressView/access$100(Lcom/nd/android/u/tast/main/widget/HorizontalProgressView;)I
if_icmpne L1
iconst_0
istore 1
aload 0
getfield com/nd/android/u/tast/main/widget/HorizontalProgressView$MyTimerTask/this$0 Lcom/nd/android/u/tast/main/widget/HorizontalProgressView;
aload 0
getfield com/nd/android/u/tast/main/widget/HorizontalProgressView$MyTimerTask/mToMax I
invokestatic com/nd/android/u/tast/main/widget/HorizontalProgressView/access$102(Lcom/nd/android/u/tast/main/widget/HorizontalProgressView;I)I
pop
aload 0
getfield com/nd/android/u/tast/main/widget/HorizontalProgressView$MyTimerTask/this$0 Lcom/nd/android/u/tast/main/widget/HorizontalProgressView;
aload 0
getfield com/nd/android/u/tast/main/widget/HorizontalProgressView$MyTimerTask/mToMax I
bipush 100
idiv
invokestatic com/nd/android/u/tast/main/widget/HorizontalProgressView/access$302(Lcom/nd/android/u/tast/main/widget/HorizontalProgressView;I)I
pop
aload 0
iconst_1
putfield com/nd/android/u/tast/main/widget/HorizontalProgressView$MyTimerTask/mNeedToZero Z
new android/os/Message
dup
invokespecial android/os/Message/<init>()V
astore 3
aload 3
iconst_1
putfield android/os/Message/arg1 I
aload 0
getfield com/nd/android/u/tast/main/widget/HorizontalProgressView$MyTimerTask/this$0 Lcom/nd/android/u/tast/main/widget/HorizontalProgressView;
invokestatic com/nd/android/u/tast/main/widget/HorizontalProgressView/access$400(Lcom/nd/android/u/tast/main/widget/HorizontalProgressView;)Lcom/nd/android/u/tast/main/widget/HorizontalProgressView$MyHandler;
aload 3
invokevirtual com/nd/android/u/tast/main/widget/HorizontalProgressView$MyHandler/sendMessage(Landroid/os/Message;)Z
pop
L2:
aload 2
iconst_0
putfield android/os/Message/arg1 I
aload 2
iload 1
putfield android/os/Message/what I
aload 0
getfield com/nd/android/u/tast/main/widget/HorizontalProgressView$MyTimerTask/this$0 Lcom/nd/android/u/tast/main/widget/HorizontalProgressView;
invokestatic com/nd/android/u/tast/main/widget/HorizontalProgressView/access$400(Lcom/nd/android/u/tast/main/widget/HorizontalProgressView;)Lcom/nd/android/u/tast/main/widget/HorizontalProgressView$MyHandler;
aload 2
invokevirtual com/nd/android/u/tast/main/widget/HorizontalProgressView$MyHandler/sendMessage(Landroid/os/Message;)Z
pop
L3:
return
L1:
aload 0
getfield com/nd/android/u/tast/main/widget/HorizontalProgressView$MyTimerTask/this$0 Lcom/nd/android/u/tast/main/widget/HorizontalProgressView;
invokestatic com/nd/android/u/tast/main/widget/HorizontalProgressView/access$200(Lcom/nd/android/u/tast/main/widget/HorizontalProgressView;)I
aload 0
getfield com/nd/android/u/tast/main/widget/HorizontalProgressView$MyTimerTask/this$0 Lcom/nd/android/u/tast/main/widget/HorizontalProgressView;
invokestatic com/nd/android/u/tast/main/widget/HorizontalProgressView/access$300(Lcom/nd/android/u/tast/main/widget/HorizontalProgressView;)I
iadd
aload 0
getfield com/nd/android/u/tast/main/widget/HorizontalProgressView$MyTimerTask/this$0 Lcom/nd/android/u/tast/main/widget/HorizontalProgressView;
invokestatic com/nd/android/u/tast/main/widget/HorizontalProgressView/access$100(Lcom/nd/android/u/tast/main/widget/HorizontalProgressView;)I
invokestatic java/lang/Math/min(II)I
istore 1
goto L2
L0:
aload 0
getfield com/nd/android/u/tast/main/widget/HorizontalProgressView$MyTimerTask/mNeedToZero Z
ifeq L4
aload 0
getfield com/nd/android/u/tast/main/widget/HorizontalProgressView$MyTimerTask/this$0 Lcom/nd/android/u/tast/main/widget/HorizontalProgressView;
iconst_0
invokestatic com/nd/android/u/tast/main/widget/HorizontalProgressView/access$202(Lcom/nd/android/u/tast/main/widget/HorizontalProgressView;I)I
pop
aload 0
iconst_0
putfield com/nd/android/u/tast/main/widget/HorizontalProgressView$MyTimerTask/mNeedToZero Z
L4:
aload 0
getfield com/nd/android/u/tast/main/widget/HorizontalProgressView$MyTimerTask/this$0 Lcom/nd/android/u/tast/main/widget/HorizontalProgressView;
invokestatic com/nd/android/u/tast/main/widget/HorizontalProgressView/access$200(Lcom/nd/android/u/tast/main/widget/HorizontalProgressView;)I
aload 0
getfield com/nd/android/u/tast/main/widget/HorizontalProgressView$MyTimerTask/this$0 Lcom/nd/android/u/tast/main/widget/HorizontalProgressView;
invokestatic com/nd/android/u/tast/main/widget/HorizontalProgressView/access$300(Lcom/nd/android/u/tast/main/widget/HorizontalProgressView;)I
iadd
aload 0
getfield com/nd/android/u/tast/main/widget/HorizontalProgressView$MyTimerTask/mToProgress I
invokestatic java/lang/Math/min(II)I
istore 1
aload 2
iconst_0
putfield android/os/Message/arg1 I
aload 2
iload 1
putfield android/os/Message/what I
aload 0
getfield com/nd/android/u/tast/main/widget/HorizontalProgressView$MyTimerTask/this$0 Lcom/nd/android/u/tast/main/widget/HorizontalProgressView;
invokestatic com/nd/android/u/tast/main/widget/HorizontalProgressView/access$400(Lcom/nd/android/u/tast/main/widget/HorizontalProgressView;)Lcom/nd/android/u/tast/main/widget/HorizontalProgressView$MyHandler;
aload 2
invokevirtual com/nd/android/u/tast/main/widget/HorizontalProgressView$MyHandler/sendMessage(Landroid/os/Message;)Z
pop
iload 1
aload 0
getfield com/nd/android/u/tast/main/widget/HorizontalProgressView$MyTimerTask/mToProgress I
if_icmplt L3
aload 0
getfield com/nd/android/u/tast/main/widget/HorizontalProgressView$MyTimerTask/this$0 Lcom/nd/android/u/tast/main/widget/HorizontalProgressView;
invokestatic com/nd/android/u/tast/main/widget/HorizontalProgressView/access$500(Lcom/nd/android/u/tast/main/widget/HorizontalProgressView;)Ljava/util/Timer;
invokevirtual java/util/Timer/cancel()V
return
.limit locals 4
.limit stack 3
.end method
