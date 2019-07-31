.bytecode 50.0
.class synchronized com/nd/android/u/publicNumber/ui/activity/PspBottomFragment$1
.super android/os/Handler
.enclosing method com/nd/android/u/publicNumber/ui/activity/PspBottomFragment
.inner class inner com/nd/android/u/publicNumber/ui/activity/PspBottomFragment$1

.field final synthetic 'this$0' Lcom/nd/android/u/publicNumber/ui/activity/PspBottomFragment;

.method <init>(Lcom/nd/android/u/publicNumber/ui/activity/PspBottomFragment;)V
aload 0
aload 1
putfield com/nd/android/u/publicNumber/ui/activity/PspBottomFragment$1/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspBottomFragment;
aload 0
invokespecial android/os/Handler/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public handleMessage(Landroid/os/Message;)V
aload 0
aload 1
invokespecial android/os/Handler/handleMessage(Landroid/os/Message;)V
aload 1
getfield android/os/Message/what I
tableswitch 0
L0
L1
default : L2
L2:
return
L1:
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspBottomFragment$1/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspBottomFragment;
invokestatic com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/access$300(Lcom/nd/android/u/publicNumber/ui/activity/PspBottomFragment;)Landroid/widget/LinearLayout;
iconst_0
invokevirtual android/widget/LinearLayout/setVisibility(I)V
return
L0:
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspBottomFragment$1/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspBottomFragment;
invokestatic com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/access$300(Lcom/nd/android/u/publicNumber/ui/activity/PspBottomFragment;)Landroid/widget/LinearLayout;
bipush 8
invokevirtual android/widget/LinearLayout/setVisibility(I)V
return
.limit locals 2
.limit stack 2
.end method
