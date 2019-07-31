.bytecode 50.0
.class final synchronized com/nd/android/u/publicNumber/ui/activity/PspBottomFragment$GetInfoTask
.super java/lang/Object
.implements java/lang/Runnable
.inner class private final GetInfoTask inner com/nd/android/u/publicNumber/ui/activity/PspBottomFragment$GetInfoTask outer com/nd/android/u/publicNumber/ui/activity/PspBottomFragment

.field private 'mpspMenuInfo' Lcom/nd/android/u/publicNumber/controller/bean/PublicNumberMenuButton;

.field final synthetic 'this$0' Lcom/nd/android/u/publicNumber/ui/activity/PspBottomFragment;

.method private <init>(Lcom/nd/android/u/publicNumber/ui/activity/PspBottomFragment;Lcom/nd/android/u/publicNumber/controller/bean/PublicNumberMenuButton;)V
aload 0
aload 1
putfield com/nd/android/u/publicNumber/ui/activity/PspBottomFragment$GetInfoTask/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspBottomFragment;
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 2
putfield com/nd/android/u/publicNumber/ui/activity/PspBottomFragment$GetInfoTask/mpspMenuInfo Lcom/nd/android/u/publicNumber/controller/bean/PublicNumberMenuButton;
return
.limit locals 3
.limit stack 2
.end method

.method synthetic <init>(Lcom/nd/android/u/publicNumber/ui/activity/PspBottomFragment;Lcom/nd/android/u/publicNumber/controller/bean/PublicNumberMenuButton;Lcom/nd/android/u/publicNumber/ui/activity/PspBottomFragment$1;)V
aload 0
aload 1
aload 2
invokespecial com/nd/android/u/publicNumber/ui/activity/PspBottomFragment$GetInfoTask/<init>(Lcom/nd/android/u/publicNumber/ui/activity/PspBottomFragment;Lcom/nd/android/u/publicNumber/controller/bean/PublicNumberMenuButton;)V
return
.limit locals 4
.limit stack 3
.end method

.method public run()V
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspBottomFragment$GetInfoTask/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspBottomFragment;
invokestatic com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/access$100(Lcom/nd/android/u/publicNumber/ui/activity/PspBottomFragment;)Landroid/os/Handler;
iconst_0
invokevirtual android/os/Handler/removeMessages(I)V
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspBottomFragment$GetInfoTask/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspBottomFragment;
invokestatic com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/access$100(Lcom/nd/android/u/publicNumber/ui/activity/PspBottomFragment;)Landroid/os/Handler;
iconst_1
invokevirtual android/os/Handler/sendEmptyMessage(I)Z
pop
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspBottomFragment$GetInfoTask/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspBottomFragment;
invokestatic com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/access$100(Lcom/nd/android/u/publicNumber/ui/activity/PspBottomFragment;)Landroid/os/Handler;
invokevirtual android/os/Handler/obtainMessage()Landroid/os/Message;
astore 1
aload 1
iconst_0
putfield android/os/Message/what I
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspBottomFragment$GetInfoTask/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspBottomFragment;
invokestatic com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/access$100(Lcom/nd/android/u/publicNumber/ui/activity/PspBottomFragment;)Landroid/os/Handler;
aload 1
ldc2_w 2000L
invokevirtual android/os/Handler/sendMessageDelayed(Landroid/os/Message;J)Z
pop
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspBottomFragment$GetInfoTask/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspBottomFragment;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspBottomFragment$GetInfoTask/mpspMenuInfo Lcom/nd/android/u/publicNumber/controller/bean/PublicNumberMenuButton;
invokestatic com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/access$200(Lcom/nd/android/u/publicNumber/ui/activity/PspBottomFragment;Lcom/nd/android/u/publicNumber/controller/bean/PublicNumberMenuButton;)V
return
.limit locals 2
.limit stack 4
.end method
