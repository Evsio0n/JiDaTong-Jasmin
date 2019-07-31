.bytecode 50.0
.class synchronized com/common/android/ui/wheel/WheelView$1
.super java/lang/Object
.implements com/common/android/ui/wheel/WheelScroller$ScrollingListener
.enclosing method com/common/android/ui/wheel/WheelView
.inner class inner com/common/android/ui/wheel/WheelView$1

.field final synthetic 'this$0' Lcom/common/android/ui/wheel/WheelView;

.method <init>(Lcom/common/android/ui/wheel/WheelView;)V
aload 0
aload 1
putfield com/common/android/ui/wheel/WheelView$1/this$0 Lcom/common/android/ui/wheel/WheelView;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onFinished()V
aload 0
getfield com/common/android/ui/wheel/WheelView$1/this$0 Lcom/common/android/ui/wheel/WheelView;
invokestatic com/common/android/ui/wheel/WheelView/access$000(Lcom/common/android/ui/wheel/WheelView;)Z
ifeq L0
aload 0
getfield com/common/android/ui/wheel/WheelView$1/this$0 Lcom/common/android/ui/wheel/WheelView;
invokevirtual com/common/android/ui/wheel/WheelView/notifyScrollingListenersAboutEnd()V
aload 0
getfield com/common/android/ui/wheel/WheelView$1/this$0 Lcom/common/android/ui/wheel/WheelView;
iconst_0
invokestatic com/common/android/ui/wheel/WheelView/access$002(Lcom/common/android/ui/wheel/WheelView;Z)Z
pop
L0:
aload 0
getfield com/common/android/ui/wheel/WheelView$1/this$0 Lcom/common/android/ui/wheel/WheelView;
iconst_0
invokestatic com/common/android/ui/wheel/WheelView/access$202(Lcom/common/android/ui/wheel/WheelView;I)I
pop
aload 0
getfield com/common/android/ui/wheel/WheelView$1/this$0 Lcom/common/android/ui/wheel/WheelView;
invokevirtual com/common/android/ui/wheel/WheelView/invalidate()V
return
.limit locals 1
.limit stack 2
.end method

.method public onJustify()V
aload 0
getfield com/common/android/ui/wheel/WheelView$1/this$0 Lcom/common/android/ui/wheel/WheelView;
invokestatic com/common/android/ui/wheel/WheelView/access$200(Lcom/common/android/ui/wheel/WheelView;)I
invokestatic java/lang/Math/abs(I)I
iconst_1
if_icmple L0
aload 0
getfield com/common/android/ui/wheel/WheelView$1/this$0 Lcom/common/android/ui/wheel/WheelView;
invokestatic com/common/android/ui/wheel/WheelView/access$300(Lcom/common/android/ui/wheel/WheelView;)Lcom/common/android/ui/wheel/WheelScroller;
aload 0
getfield com/common/android/ui/wheel/WheelView$1/this$0 Lcom/common/android/ui/wheel/WheelView;
invokestatic com/common/android/ui/wheel/WheelView/access$200(Lcom/common/android/ui/wheel/WheelView;)I
iconst_0
invokevirtual com/common/android/ui/wheel/WheelScroller/scroll(II)V
L0:
return
.limit locals 1
.limit stack 3
.end method

.method public onScroll(I)V
aload 0
getfield com/common/android/ui/wheel/WheelView$1/this$0 Lcom/common/android/ui/wheel/WheelView;
iload 1
invokestatic com/common/android/ui/wheel/WheelView/access$100(Lcom/common/android/ui/wheel/WheelView;I)V
aload 0
getfield com/common/android/ui/wheel/WheelView$1/this$0 Lcom/common/android/ui/wheel/WheelView;
invokevirtual com/common/android/ui/wheel/WheelView/getHeight()I
istore 1
aload 0
getfield com/common/android/ui/wheel/WheelView$1/this$0 Lcom/common/android/ui/wheel/WheelView;
invokestatic com/common/android/ui/wheel/WheelView/access$200(Lcom/common/android/ui/wheel/WheelView;)I
iload 1
if_icmple L0
aload 0
getfield com/common/android/ui/wheel/WheelView$1/this$0 Lcom/common/android/ui/wheel/WheelView;
iload 1
invokestatic com/common/android/ui/wheel/WheelView/access$202(Lcom/common/android/ui/wheel/WheelView;I)I
pop
aload 0
getfield com/common/android/ui/wheel/WheelView$1/this$0 Lcom/common/android/ui/wheel/WheelView;
invokestatic com/common/android/ui/wheel/WheelView/access$300(Lcom/common/android/ui/wheel/WheelView;)Lcom/common/android/ui/wheel/WheelScroller;
invokevirtual com/common/android/ui/wheel/WheelScroller/stopScrolling()V
L1:
return
L0:
aload 0
getfield com/common/android/ui/wheel/WheelView$1/this$0 Lcom/common/android/ui/wheel/WheelView;
invokestatic com/common/android/ui/wheel/WheelView/access$200(Lcom/common/android/ui/wheel/WheelView;)I
iload 1
ineg
if_icmpge L1
aload 0
getfield com/common/android/ui/wheel/WheelView$1/this$0 Lcom/common/android/ui/wheel/WheelView;
iload 1
ineg
invokestatic com/common/android/ui/wheel/WheelView/access$202(Lcom/common/android/ui/wheel/WheelView;I)I
pop
aload 0
getfield com/common/android/ui/wheel/WheelView$1/this$0 Lcom/common/android/ui/wheel/WheelView;
invokestatic com/common/android/ui/wheel/WheelView/access$300(Lcom/common/android/ui/wheel/WheelView;)Lcom/common/android/ui/wheel/WheelScroller;
invokevirtual com/common/android/ui/wheel/WheelScroller/stopScrolling()V
return
.limit locals 2
.limit stack 2
.end method

.method public onStarted()V
aload 0
getfield com/common/android/ui/wheel/WheelView$1/this$0 Lcom/common/android/ui/wheel/WheelView;
iconst_1
invokestatic com/common/android/ui/wheel/WheelView/access$002(Lcom/common/android/ui/wheel/WheelView;Z)Z
pop
aload 0
getfield com/common/android/ui/wheel/WheelView$1/this$0 Lcom/common/android/ui/wheel/WheelView;
invokevirtual com/common/android/ui/wheel/WheelView/notifyScrollingListenersAboutStart()V
return
.limit locals 1
.limit stack 2
.end method
