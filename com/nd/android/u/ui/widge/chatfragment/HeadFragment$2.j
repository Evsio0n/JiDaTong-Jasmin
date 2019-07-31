.bytecode 50.0
.class synchronized com/nd/android/u/ui/widge/chatfragment/HeadFragment$2
.super java/lang/Object
.implements com/nd/android/u/controller/innerInterface/IMessageObserver
.enclosing method com/nd/android/u/ui/widge/chatfragment/HeadFragment
.inner class inner com/nd/android/u/ui/widge/chatfragment/HeadFragment$2

.field final synthetic 'this$0' Lcom/nd/android/u/ui/widge/chatfragment/HeadFragment;

.method <init>(Lcom/nd/android/u/ui/widge/chatfragment/HeadFragment;)V
aload 0
aload 1
putfield com/nd/android/u/ui/widge/chatfragment/HeadFragment$2/this$0 Lcom/nd/android/u/ui/widge/chatfragment/HeadFragment;
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
ifnonnull L0
L1:
return
L0:
aload 1
getfield android/os/Message/what I
tableswitch 24
L2
L3
L4
L4
L5
L4
L4
L6
default : L4
L4:
return
L2:
aload 1
getfield android/os/Message/obj Ljava/lang/Object;
ifnull L1
aload 1
getfield android/os/Message/obj Ljava/lang/Object;
instanceof java/lang/Long
ifeq L1
aload 1
getfield android/os/Message/obj Ljava/lang/Object;
checkcast java/lang/Long
invokevirtual java/lang/Long/longValue()J
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/HeadFragment$2/this$0 Lcom/nd/android/u/ui/widge/chatfragment/HeadFragment;
invokestatic com/nd/android/u/ui/widge/chatfragment/HeadFragment/access$200(Lcom/nd/android/u/ui/widge/chatfragment/HeadFragment;)J
lcmp
ifne L1
aload 1
getfield android/os/Message/arg1 I
ifne L7
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/HeadFragment$2/this$0 Lcom/nd/android/u/ui/widge/chatfragment/HeadFragment;
invokestatic com/nd/android/u/ui/widge/chatfragment/HeadFragment/access$100(Lcom/nd/android/u/ui/widge/chatfragment/HeadFragment;)Landroid/os/Handler;
iconst_0
invokevirtual android/os/Handler/obtainMessage(I)Landroid/os/Message;
astore 1
aload 1
iconst_m1
putfield android/os/Message/arg1 I
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/HeadFragment$2/this$0 Lcom/nd/android/u/ui/widge/chatfragment/HeadFragment;
invokestatic com/nd/android/u/ui/widge/chatfragment/HeadFragment/access$100(Lcom/nd/android/u/ui/widge/chatfragment/HeadFragment;)Landroid/os/Handler;
aload 1
invokevirtual android/os/Handler/sendMessage(Landroid/os/Message;)Z
pop
return
L7:
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/HeadFragment$2/this$0 Lcom/nd/android/u/ui/widge/chatfragment/HeadFragment;
invokestatic com/nd/android/u/ui/widge/chatfragment/HeadFragment/access$200(Lcom/nd/android/u/ui/widge/chatfragment/HeadFragment;)J
invokestatic com/nd/android/u/imSdk/IMSdkCall$PersonMessage/getLoginPoint(J)V
return
L3:
aload 1
getfield android/os/Message/obj Ljava/lang/Object;
ifnull L1
aload 1
getfield android/os/Message/obj Ljava/lang/Object;
instanceof java/lang/Long
ifeq L1
aload 1
getfield android/os/Message/obj Ljava/lang/Object;
checkcast java/lang/Long
invokevirtual java/lang/Long/longValue()J
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/HeadFragment$2/this$0 Lcom/nd/android/u/ui/widge/chatfragment/HeadFragment;
invokestatic com/nd/android/u/ui/widge/chatfragment/HeadFragment/access$200(Lcom/nd/android/u/ui/widge/chatfragment/HeadFragment;)J
lcmp
ifne L1
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/HeadFragment$2/this$0 Lcom/nd/android/u/ui/widge/chatfragment/HeadFragment;
invokestatic com/nd/android/u/ui/widge/chatfragment/HeadFragment/access$100(Lcom/nd/android/u/ui/widge/chatfragment/HeadFragment;)Landroid/os/Handler;
iconst_0
invokevirtual android/os/Handler/obtainMessage(I)Landroid/os/Message;
astore 4
aload 4
aload 1
getfield android/os/Message/arg1 I
putfield android/os/Message/arg1 I
aload 4
aload 1
invokevirtual android/os/Message/getData()Landroid/os/Bundle;
invokevirtual android/os/Message/setData(Landroid/os/Bundle;)V
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/HeadFragment$2/this$0 Lcom/nd/android/u/ui/widge/chatfragment/HeadFragment;
invokestatic com/nd/android/u/ui/widge/chatfragment/HeadFragment/access$100(Lcom/nd/android/u/ui/widge/chatfragment/HeadFragment;)Landroid/os/Handler;
aload 4
invokevirtual android/os/Handler/sendMessage(Landroid/os/Message;)Z
pop
return
L6:
aload 1
getfield android/os/Message/obj Ljava/lang/Object;
ifnull L1
aload 1
getfield android/os/Message/obj Ljava/lang/Object;
instanceof java/lang/Long
ifeq L1
aload 1
getfield android/os/Message/obj Ljava/lang/Object;
checkcast java/lang/Long
invokevirtual java/lang/Long/longValue()J
lstore 2
lload 2
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/HeadFragment$2/this$0 Lcom/nd/android/u/ui/widge/chatfragment/HeadFragment;
invokestatic com/nd/android/u/ui/widge/chatfragment/HeadFragment/access$200(Lcom/nd/android/u/ui/widge/chatfragment/HeadFragment;)J
lcmp
ifne L1
lload 2
invokestatic com/nd/android/u/imSdk/IMSdkCall$PersonMessage/subFriendStatus(J)V
return
L5:
aload 1
invokevirtual android/os/Message/getData()Landroid/os/Bundle;
astore 1
aload 1
ifnull L1
aload 1
ldc "fid"
invokevirtual android/os/Bundle/getLong(Ljava/lang/String;)J
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/HeadFragment$2/this$0 Lcom/nd/android/u/ui/widge/chatfragment/HeadFragment;
invokestatic com/nd/android/u/ui/widge/chatfragment/HeadFragment/access$200(Lcom/nd/android/u/ui/widge/chatfragment/HeadFragment;)J
lcmp
ifne L1
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/HeadFragment$2/this$0 Lcom/nd/android/u/ui/widge/chatfragment/HeadFragment;
invokestatic com/nd/android/u/ui/widge/chatfragment/HeadFragment/access$100(Lcom/nd/android/u/ui/widge/chatfragment/HeadFragment;)Landroid/os/Handler;
iconst_2
invokevirtual android/os/Handler/obtainMessage(I)Landroid/os/Message;
astore 4
aload 4
aload 1
ldc "name"
invokevirtual android/os/Bundle/getString(Ljava/lang/String;)Ljava/lang/String;
putfield android/os/Message/obj Ljava/lang/Object;
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/HeadFragment$2/this$0 Lcom/nd/android/u/ui/widge/chatfragment/HeadFragment;
invokestatic com/nd/android/u/ui/widge/chatfragment/HeadFragment/access$100(Lcom/nd/android/u/ui/widge/chatfragment/HeadFragment;)Landroid/os/Handler;
aload 4
invokevirtual android/os/Handler/sendMessage(Landroid/os/Message;)Z
pop
return
.limit locals 5
.limit stack 4
.end method

.method public onReceiveMessage(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)V
aload 1
ifnull L0
aload 1
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getMessageContentType()I 0
sipush 10003
if_icmpne L0
aload 1
checkcast com/nd/android/u/bean4xy/dynamicMessage/DisplayMessage_GroupRenamed
invokevirtual com/nd/android/u/bean4xy/dynamicMessage/DisplayMessage_GroupRenamed/getGroupName()Ljava/lang/String;
astore 1
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/HeadFragment$2/this$0 Lcom/nd/android/u/ui/widge/chatfragment/HeadFragment;
invokestatic com/nd/android/u/ui/widge/chatfragment/HeadFragment/access$100(Lcom/nd/android/u/ui/widge/chatfragment/HeadFragment;)Landroid/os/Handler;
iconst_3
invokevirtual android/os/Handler/obtainMessage(I)Landroid/os/Message;
astore 2
aload 2
aload 1
putfield android/os/Message/obj Ljava/lang/Object;
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/HeadFragment$2/this$0 Lcom/nd/android/u/ui/widge/chatfragment/HeadFragment;
invokestatic com/nd/android/u/ui/widge/chatfragment/HeadFragment/access$100(Lcom/nd/android/u/ui/widge/chatfragment/HeadFragment;)Landroid/os/Handler;
aload 2
invokevirtual android/os/Handler/sendMessage(Landroid/os/Message;)Z
pop
L0:
return
.limit locals 3
.limit stack 2
.end method

.method public onSendNewMessage(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)V
return
.limit locals 2
.limit stack 0
.end method
