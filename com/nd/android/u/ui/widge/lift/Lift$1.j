.bytecode 50.0
.class synchronized com/nd/android/u/ui/widge/lift/Lift$1
.super android/os/Handler
.enclosing method com/nd/android/u/ui/widge/lift/Lift
.inner class inner com/nd/android/u/ui/widge/lift/Lift$1

.field final synthetic 'this$0' Lcom/nd/android/u/ui/widge/lift/Lift;

.method <init>(Lcom/nd/android/u/ui/widge/lift/Lift;)V
aload 0
aload 1
putfield com/nd/android/u/ui/widge/lift/Lift$1/this$0 Lcom/nd/android/u/ui/widge/lift/Lift;
aload 0
invokespecial android/os/Handler/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public handleMessage(Landroid/os/Message;)V
aload 1
getfield android/os/Message/what I
iconst_1
if_icmpne L0
aload 0
getfield com/nd/android/u/ui/widge/lift/Lift$1/this$0 Lcom/nd/android/u/ui/widge/lift/Lift;
invokestatic com/nd/android/u/ui/widge/lift/Lift/access$000(Lcom/nd/android/u/ui/widge/lift/Lift;)Lcom/nd/android/u/ui/widge/lift/PetalView;
getfield com/nd/android/u/ui/widge/lift/PetalView/mPetalThread Lcom/nd/android/u/ui/widge/lift/PetalView$PetalThread;
ifnull L1
aload 0
getfield com/nd/android/u/ui/widge/lift/Lift$1/this$0 Lcom/nd/android/u/ui/widge/lift/Lift;
invokestatic com/nd/android/u/ui/widge/lift/Lift/access$000(Lcom/nd/android/u/ui/widge/lift/Lift;)Lcom/nd/android/u/ui/widge/lift/PetalView;
getfield com/nd/android/u/ui/widge/lift/PetalView/mPetalThread Lcom/nd/android/u/ui/widge/lift/PetalView$PetalThread;
astore 1
aload 1
aload 1
getfield com/nd/android/u/ui/widge/lift/PetalView$PetalThread/num I
sipush 1000
imul
putfield com/nd/android/u/ui/widge/lift/PetalView$PetalThread/num I
aload 0
getfield com/nd/android/u/ui/widge/lift/Lift$1/this$0 Lcom/nd/android/u/ui/widge/lift/Lift;
new com/nd/android/u/ui/widge/lift/Lift$RemoveThread
dup
aload 0
getfield com/nd/android/u/ui/widge/lift/Lift$1/this$0 Lcom/nd/android/u/ui/widge/lift/Lift;
invokespecial com/nd/android/u/ui/widge/lift/Lift$RemoveThread/<init>(Lcom/nd/android/u/ui/widge/lift/Lift;)V
invokestatic com/nd/android/u/ui/widge/lift/Lift/access$102(Lcom/nd/android/u/ui/widge/lift/Lift;Lcom/nd/android/u/ui/widge/lift/Lift$RemoveThread;)Lcom/nd/android/u/ui/widge/lift/Lift$RemoveThread;
pop
aload 0
getfield com/nd/android/u/ui/widge/lift/Lift$1/this$0 Lcom/nd/android/u/ui/widge/lift/Lift;
invokestatic com/nd/android/u/ui/widge/lift/Lift/access$100(Lcom/nd/android/u/ui/widge/lift/Lift;)Lcom/nd/android/u/ui/widge/lift/Lift$RemoveThread;
invokevirtual com/nd/android/u/ui/widge/lift/Lift$RemoveThread/start()V
L1:
return
L0:
aload 1
getfield android/os/Message/what I
iconst_2
if_icmpne L2
aload 0
getfield com/nd/android/u/ui/widge/lift/Lift$1/this$0 Lcom/nd/android/u/ui/widge/lift/Lift;
invokestatic com/nd/android/u/ui/widge/lift/Lift/access$000(Lcom/nd/android/u/ui/widge/lift/Lift;)Lcom/nd/android/u/ui/widge/lift/PetalView;
ifnull L1
aload 0
getfield com/nd/android/u/ui/widge/lift/Lift$1/this$0 Lcom/nd/android/u/ui/widge/lift/Lift;
invokestatic com/nd/android/u/ui/widge/lift/Lift/access$200(Lcom/nd/android/u/ui/widge/lift/Lift;)Landroid/widget/RelativeLayout;
aload 0
getfield com/nd/android/u/ui/widge/lift/Lift$1/this$0 Lcom/nd/android/u/ui/widge/lift/Lift;
invokestatic com/nd/android/u/ui/widge/lift/Lift/access$000(Lcom/nd/android/u/ui/widge/lift/Lift;)Lcom/nd/android/u/ui/widge/lift/PetalView;
invokevirtual android/widget/RelativeLayout/removeView(Landroid/view/View;)V
aload 0
getfield com/nd/android/u/ui/widge/lift/Lift$1/this$0 Lcom/nd/android/u/ui/widge/lift/Lift;
iconst_1
invokestatic com/nd/android/u/ui/widge/lift/Lift/access$302(Lcom/nd/android/u/ui/widge/lift/Lift;I)I
pop
return
L2:
aload 1
getfield android/os/Message/what I
iconst_3
if_icmpne L1
aload 0
getfield com/nd/android/u/ui/widge/lift/Lift$1/this$0 Lcom/nd/android/u/ui/widge/lift/Lift;
aload 0
getfield com/nd/android/u/ui/widge/lift/Lift$1/this$0 Lcom/nd/android/u/ui/widge/lift/Lift;
invokestatic com/nd/android/u/ui/widge/lift/Lift/access$400(Lcom/nd/android/u/ui/widge/lift/Lift;)Z
invokevirtual com/nd/android/u/ui/widge/lift/Lift/fallLift(Z)V
return
.limit locals 2
.limit stack 4
.end method
