.bytecode 50.0
.class synchronized com/nd/android/u/publicNumber/ui/activity/PspListFragment$5
.super java/lang/Object
.implements com/nd/android/u/controller/innerInterface/IMessageObserver
.enclosing method com/nd/android/u/publicNumber/ui/activity/PspListFragment
.inner class inner com/nd/android/u/publicNumber/ui/activity/PspListFragment$5

.field final synthetic 'this$0' Lcom/nd/android/u/publicNumber/ui/activity/PspListFragment;

.method <init>(Lcom/nd/android/u/publicNumber/ui/activity/PspListFragment;)V
aload 0
aload 1
putfield com/nd/android/u/publicNumber/ui/activity/PspListFragment$5/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspListFragment;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onMessageStateChanged(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;I)V
return
.limit locals 3
.limit stack 0
.end method

.method public onOtherMessageNotify(Landroid/os/Message;)V
aload 1
getfield android/os/Message/what I
lookupswitch
17 : L0
18 : L1
19 : L2
26 : L3
default : L4
L4:
return
L3:
aload 1
getfield android/os/Message/obj Ljava/lang/Object;
ifnull L4
aload 1
getfield android/os/Message/obj Ljava/lang/Object;
instanceof com/nd/android/u/publicNumber/ui/widget/PspItemView
ifeq L4
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspListFragment$5/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspListFragment;
invokestatic com/nd/android/u/publicNumber/ui/activity/PspListFragment/access$1800(Lcom/nd/android/u/publicNumber/ui/activity/PspListFragment;)Landroid/os/Handler;
aload 1
invokevirtual android/os/Handler/sendMessage(Landroid/os/Message;)Z
pop
return
L0:
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspListFragment$5/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspListFragment;
iconst_0
iconst_1
invokestatic com/nd/android/u/publicNumber/ui/activity/PspListFragment/access$100(Lcom/nd/android/u/publicNumber/ui/activity/PspListFragment;ZI)V
return
L1:
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspListFragment$5/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspListFragment;
invokestatic com/nd/android/u/publicNumber/ui/activity/PspListFragment/access$000(Lcom/nd/android/u/publicNumber/ui/activity/PspListFragment;)Lcom/nd/android/u/publicNumber/ui/dialog/PublicNumberOpDailog;
ifnull L5
aload 1
getfield android/os/Message/obj Ljava/lang/Object;
ifnonnull L6
ldc "CHAT"
ldc "ubsub psp error:null pspid"
invokestatic com/product/android/utils/LogUtils/e(Ljava/lang/String;Ljava/lang/String;)V
return
L6:
aload 1
getfield android/os/Message/obj Ljava/lang/Object;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
ldc "UNFOLLOW"
invokestatic com/nd/android/u/controller/utils/CommonUtils/getGroupOperationKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 2
invokestatic com/nd/android/u/controller/ChatGlobalVariable/getInstance()Lcom/nd/android/u/controller/ChatGlobalVariable;
invokevirtual com/nd/android/u/controller/ChatGlobalVariable/getFackBackList()Ljava/util/List;
aload 2
invokeinterface java/util/List/contains(Ljava/lang/Object;)Z 1
ifeq L7
invokestatic com/nd/android/u/controller/ChatGlobalVariable/getInstance()Lcom/nd/android/u/controller/ChatGlobalVariable;
invokevirtual com/nd/android/u/controller/ChatGlobalVariable/getFackBackList()Ljava/util/List;
aload 2
invokeinterface java/util/List/remove(Ljava/lang/Object;)Z 1
pop
L7:
new android/os/Message
dup
invokespecial android/os/Message/<init>()V
astore 2
aload 2
aload 1
getfield android/os/Message/what I
putfield android/os/Message/what I
aload 2
aload 1
getfield android/os/Message/obj Ljava/lang/Object;
putfield android/os/Message/obj Ljava/lang/Object;
aload 2
aload 1
getfield android/os/Message/arg1 I
putfield android/os/Message/arg1 I
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspListFragment$5/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspListFragment;
invokestatic com/nd/android/u/publicNumber/ui/activity/PspListFragment/access$1800(Lcom/nd/android/u/publicNumber/ui/activity/PspListFragment;)Landroid/os/Handler;
aload 2
invokevirtual android/os/Handler/sendMessage(Landroid/os/Message;)Z
pop
return
L5:
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspListFragment$5/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspListFragment;
iconst_0
iconst_0
invokestatic com/nd/android/u/publicNumber/ui/activity/PspListFragment/access$100(Lcom/nd/android/u/publicNumber/ui/activity/PspListFragment;ZI)V
return
L2:
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspListFragment$5/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspListFragment;
iconst_0
iconst_0
invokestatic com/nd/android/u/publicNumber/ui/activity/PspListFragment/access$100(Lcom/nd/android/u/publicNumber/ui/activity/PspListFragment;ZI)V
return
.limit locals 3
.limit stack 3
.end method

.method public onReceiveMessage(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)V
return
.limit locals 2
.limit stack 0
.end method

.method public onSendNewMessage(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)V
return
.limit locals 2
.limit stack 0
.end method
