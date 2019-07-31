.bytecode 50.0
.class synchronized com/nd/android/u/publicNumber/ui/activity/PspListFragment$1
.super android/os/Handler
.enclosing method com/nd/android/u/publicNumber/ui/activity/PspListFragment
.inner class inner com/nd/android/u/publicNumber/ui/activity/PspListFragment$1

.field final synthetic 'this$0' Lcom/nd/android/u/publicNumber/ui/activity/PspListFragment;

.method <init>(Lcom/nd/android/u/publicNumber/ui/activity/PspListFragment;)V
aload 0
aload 1
putfield com/nd/android/u/publicNumber/ui/activity/PspListFragment$1/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspListFragment;
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
lookupswitch
18 : L0
26 : L1
default : L2
L2:
return
L0:
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspListFragment$1/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspListFragment;
invokestatic com/nd/android/u/publicNumber/ui/activity/PspListFragment/access$000(Lcom/nd/android/u/publicNumber/ui/activity/PspListFragment;)Lcom/nd/android/u/publicNumber/ui/dialog/PublicNumberOpDailog;
invokevirtual com/nd/android/u/publicNumber/ui/dialog/PublicNumberOpDailog/removeMessage()V
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspListFragment$1/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspListFragment;
invokestatic com/nd/android/u/publicNumber/ui/activity/PspListFragment/access$000(Lcom/nd/android/u/publicNumber/ui/activity/PspListFragment;)Lcom/nd/android/u/publicNumber/ui/dialog/PublicNumberOpDailog;
invokevirtual com/nd/android/u/publicNumber/ui/dialog/PublicNumberOpDailog/dismissDialog()V
aload 1
getfield android/os/Message/arg1 I
sipush 200
if_icmpeq L3
getstatic com/nd/android/u/chat/R$string/unfollow_error I
invokestatic com/common/android/utils/ToastUtils/display(I)V
return
L3:
getstatic com/nd/android/u/chat/R$string/unfollow_success I
invokestatic com/common/android/utils/ToastUtils/display(I)V
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspListFragment$1/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspListFragment;
iconst_0
iconst_0
invokestatic com/nd/android/u/publicNumber/ui/activity/PspListFragment/access$100(Lcom/nd/android/u/publicNumber/ui/activity/PspListFragment;ZI)V
return
L1:
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspListFragment$1/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspListFragment;
aload 1
getfield android/os/Message/obj Ljava/lang/Object;
checkcast com/nd/android/u/publicNumber/ui/widget/PspItemView
invokestatic com/nd/android/u/publicNumber/ui/activity/PspListFragment/access$200(Lcom/nd/android/u/publicNumber/ui/activity/PspListFragment;Lcom/nd/android/u/publicNumber/ui/widget/PspItemView;)V
aload 1
aconst_null
putfield android/os/Message/obj Ljava/lang/Object;
return
.limit locals 2
.limit stack 3
.end method
