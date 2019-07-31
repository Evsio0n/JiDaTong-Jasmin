.bytecode 50.0
.class synchronized com/common/android/ui/wheel/WheelScroller$2
.super android/os/Handler
.enclosing method com/common/android/ui/wheel/WheelScroller
.inner class inner com/common/android/ui/wheel/WheelScroller$2

.field final synthetic 'this$0' Lcom/common/android/ui/wheel/WheelScroller;

.method <init>(Lcom/common/android/ui/wheel/WheelScroller;)V
aload 0
aload 1
putfield com/common/android/ui/wheel/WheelScroller$2/this$0 Lcom/common/android/ui/wheel/WheelScroller;
aload 0
invokespecial android/os/Handler/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public handleMessage(Landroid/os/Message;)V
aload 0
getfield com/common/android/ui/wheel/WheelScroller$2/this$0 Lcom/common/android/ui/wheel/WheelScroller;
invokestatic com/common/android/ui/wheel/WheelScroller/access$100(Lcom/common/android/ui/wheel/WheelScroller;)Landroid/widget/Scroller;
invokevirtual android/widget/Scroller/computeScrollOffset()Z
pop
aload 0
getfield com/common/android/ui/wheel/WheelScroller$2/this$0 Lcom/common/android/ui/wheel/WheelScroller;
invokestatic com/common/android/ui/wheel/WheelScroller/access$100(Lcom/common/android/ui/wheel/WheelScroller;)Landroid/widget/Scroller;
invokevirtual android/widget/Scroller/getCurrY()I
istore 2
aload 0
getfield com/common/android/ui/wheel/WheelScroller$2/this$0 Lcom/common/android/ui/wheel/WheelScroller;
invokestatic com/common/android/ui/wheel/WheelScroller/access$000(Lcom/common/android/ui/wheel/WheelScroller;)I
iload 2
isub
istore 3
aload 0
getfield com/common/android/ui/wheel/WheelScroller$2/this$0 Lcom/common/android/ui/wheel/WheelScroller;
iload 2
invokestatic com/common/android/ui/wheel/WheelScroller/access$002(Lcom/common/android/ui/wheel/WheelScroller;I)I
pop
iload 3
ifeq L0
aload 0
getfield com/common/android/ui/wheel/WheelScroller$2/this$0 Lcom/common/android/ui/wheel/WheelScroller;
invokestatic com/common/android/ui/wheel/WheelScroller/access$300(Lcom/common/android/ui/wheel/WheelScroller;)Lcom/common/android/ui/wheel/WheelScroller$ScrollingListener;
iload 3
invokeinterface com/common/android/ui/wheel/WheelScroller$ScrollingListener/onScroll(I)V 1
L0:
iload 2
aload 0
getfield com/common/android/ui/wheel/WheelScroller$2/this$0 Lcom/common/android/ui/wheel/WheelScroller;
invokestatic com/common/android/ui/wheel/WheelScroller/access$100(Lcom/common/android/ui/wheel/WheelScroller;)Landroid/widget/Scroller;
invokevirtual android/widget/Scroller/getFinalY()I
isub
invokestatic java/lang/Math/abs(I)I
iconst_1
if_icmpge L1
aload 0
getfield com/common/android/ui/wheel/WheelScroller$2/this$0 Lcom/common/android/ui/wheel/WheelScroller;
invokestatic com/common/android/ui/wheel/WheelScroller/access$100(Lcom/common/android/ui/wheel/WheelScroller;)Landroid/widget/Scroller;
invokevirtual android/widget/Scroller/getFinalY()I
pop
aload 0
getfield com/common/android/ui/wheel/WheelScroller$2/this$0 Lcom/common/android/ui/wheel/WheelScroller;
invokestatic com/common/android/ui/wheel/WheelScroller/access$100(Lcom/common/android/ui/wheel/WheelScroller;)Landroid/widget/Scroller;
iconst_1
invokevirtual android/widget/Scroller/forceFinished(Z)V
L1:
aload 0
getfield com/common/android/ui/wheel/WheelScroller$2/this$0 Lcom/common/android/ui/wheel/WheelScroller;
invokestatic com/common/android/ui/wheel/WheelScroller/access$100(Lcom/common/android/ui/wheel/WheelScroller;)Landroid/widget/Scroller;
invokevirtual android/widget/Scroller/isFinished()Z
ifne L2
aload 0
getfield com/common/android/ui/wheel/WheelScroller$2/this$0 Lcom/common/android/ui/wheel/WheelScroller;
invokestatic com/common/android/ui/wheel/WheelScroller/access$400(Lcom/common/android/ui/wheel/WheelScroller;)Landroid/os/Handler;
aload 1
getfield android/os/Message/what I
invokevirtual android/os/Handler/sendEmptyMessage(I)Z
pop
return
L2:
aload 1
getfield android/os/Message/what I
ifne L3
aload 0
getfield com/common/android/ui/wheel/WheelScroller$2/this$0 Lcom/common/android/ui/wheel/WheelScroller;
invokestatic com/common/android/ui/wheel/WheelScroller/access$500(Lcom/common/android/ui/wheel/WheelScroller;)V
return
L3:
aload 0
getfield com/common/android/ui/wheel/WheelScroller$2/this$0 Lcom/common/android/ui/wheel/WheelScroller;
invokevirtual com/common/android/ui/wheel/WheelScroller/finishScrolling()V
return
.limit locals 4
.limit stack 2
.end method
