.bytecode 50.0
.class synchronized com/nd/android/u/ui/widge/chatfragment/MessageListFragment$8
.super java/lang/Object
.implements com/nd/android/u/controller/innerInterface/IMessageObserver
.enclosing method com/nd/android/u/ui/widge/chatfragment/MessageListFragment
.inner class inner com/nd/android/u/ui/widge/chatfragment/MessageListFragment$8

.field final synthetic 'this$0' Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment;

.method <init>(Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment;)V
aload 0
aload 1
putfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment$8/this$0 Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method private handlerMessage(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;I)V
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment$8/this$0 Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment;
invokestatic com/nd/android/u/ui/widge/chatfragment/MessageListFragment/access$200(Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment;)Lcom/nd/android/u/controller/innerInterface/IUIDataSupplier;
aload 1
invokeinterface com/nd/android/u/controller/innerInterface/IUIDataSupplier/isValidMessage(Ljava/lang/Object;)Z 1
ifne L0
return
L0:
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment$8/this$0 Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment;
invokestatic com/nd/android/u/ui/widge/chatfragment/MessageListFragment/access$600(Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment;)Landroid/os/Handler;
invokevirtual android/os/Handler/obtainMessage()Landroid/os/Message;
astore 3
aload 3
iload 2
putfield android/os/Message/what I
aload 3
aload 1
putfield android/os/Message/obj Ljava/lang/Object;
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment$8/this$0 Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment;
invokestatic com/nd/android/u/ui/widge/chatfragment/MessageListFragment/access$600(Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment;)Landroid/os/Handler;
aload 3
invokevirtual android/os/Handler/sendMessage(Landroid/os/Message;)Z
pop
return
.limit locals 4
.limit stack 2
.end method

.method public onMessageStateChanged(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;I)V
aload 0
aload 1
iload 2
invokespecial com/nd/android/u/ui/widge/chatfragment/MessageListFragment$8/handlerMessage(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;I)V
return
.limit locals 3
.limit stack 3
.end method

.method public onOtherMessageNotify(Landroid/os/Message;)V
aload 1
ifnonnull L0
L1:
return
L0:
aload 1
getfield android/os/Message/what I
bipush 18
if_icmpne L2
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment$8/this$0 Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment;
invokestatic com/nd/android/u/ui/widge/chatfragment/MessageListFragment/access$600(Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment;)Landroid/os/Handler;
invokevirtual android/os/Handler/obtainMessage()Landroid/os/Message;
astore 3
aload 3
aload 1
getfield android/os/Message/what I
putfield android/os/Message/what I
aload 3
aload 1
getfield android/os/Message/obj Ljava/lang/Object;
putfield android/os/Message/obj Ljava/lang/Object;
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment$8/this$0 Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment;
invokestatic com/nd/android/u/ui/widge/chatfragment/MessageListFragment/access$600(Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment;)Landroid/os/Handler;
aload 3
invokevirtual android/os/Handler/sendMessage(Landroid/os/Message;)Z
pop
return
L2:
aload 1
getfield android/os/Message/what I
bipush 27
if_icmpne L3
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment$8/this$0 Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment;
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment/mMessageList Ljava/util/List;
invokeinterface java/util/List/size()I 0
istore 2
iload 2
ifeq L1
aload 1
invokevirtual android/os/Message/getData()Landroid/os/Bundle;
ifnull L1
aload 1
invokevirtual android/os/Message/getData()Landroid/os/Bundle;
ldc "fileKey"
invokevirtual android/os/Bundle/getString(Ljava/lang/String;)Ljava/lang/String;
astore 4
aload 4
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L1
iload 2
iconst_1
isub
istore 2
L4:
iload 2
ifle L1
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment$8/this$0 Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment;
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment/mMessageList Ljava/util/List;
iload 2
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/controller/innerInterface/IMessageDisplay
astore 3
aload 3
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getDisplayDatas()Ljava/util/ArrayList; 0
invokevirtual java/util/ArrayList/iterator()Ljava/util/Iterator;
astore 5
L5:
aload 5
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L6
aload 5
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
astore 6
aload 6
instanceof com/nd/android/u/controller/bean/ImageMessage
ifeq L5
aload 6
checkcast com/nd/android/u/controller/bean/ImageMessage
invokevirtual com/nd/android/u/controller/bean/ImageMessage/getImgurl()Ljava/lang/String;
aload 4
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L5
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment$8/this$0 Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment;
invokestatic com/nd/android/u/ui/widge/chatfragment/MessageListFragment/access$600(Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment;)Landroid/os/Handler;
invokevirtual android/os/Handler/obtainMessage()Landroid/os/Message;
astore 4
aload 4
aload 1
getfield android/os/Message/what I
putfield android/os/Message/what I
aload 4
aload 3
putfield android/os/Message/obj Ljava/lang/Object;
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment$8/this$0 Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment;
invokestatic com/nd/android/u/ui/widge/chatfragment/MessageListFragment/access$600(Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment;)Landroid/os/Handler;
aload 4
invokevirtual android/os/Handler/sendMessage(Landroid/os/Message;)Z
pop
return
L6:
iload 2
iconst_1
isub
istore 2
goto L4
L3:
aload 1
getfield android/os/Message/what I
bipush 29
if_icmpne L7
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment$8/this$0 Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment;
invokestatic com/nd/android/u/ui/widge/chatfragment/MessageListFragment/access$600(Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment;)Landroid/os/Handler;
invokevirtual android/os/Handler/obtainMessage()Landroid/os/Message;
astore 3
aload 3
aload 1
getfield android/os/Message/what I
putfield android/os/Message/what I
aload 3
aload 1
getfield android/os/Message/obj Ljava/lang/Object;
putfield android/os/Message/obj Ljava/lang/Object;
aload 3
aload 1
getfield android/os/Message/arg1 I
putfield android/os/Message/arg1 I
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment$8/this$0 Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment;
invokestatic com/nd/android/u/ui/widge/chatfragment/MessageListFragment/access$600(Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment;)Landroid/os/Handler;
aload 3
invokevirtual android/os/Handler/sendMessage(Landroid/os/Message;)Z
pop
return
L7:
aload 1
getfield android/os/Message/what I
bipush 21
if_icmpeq L8
aload 1
getfield android/os/Message/what I
bipush 20
if_icmpne L9
L8:
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment$8/this$0 Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment;
invokestatic com/nd/android/u/ui/widge/chatfragment/MessageListFragment/access$600(Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment;)Landroid/os/Handler;
invokevirtual android/os/Handler/obtainMessage()Landroid/os/Message;
astore 3
aload 3
aload 1
getfield android/os/Message/what I
putfield android/os/Message/what I
aload 3
aload 1
getfield android/os/Message/obj Ljava/lang/Object;
putfield android/os/Message/obj Ljava/lang/Object;
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment$8/this$0 Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment;
invokestatic com/nd/android/u/ui/widge/chatfragment/MessageListFragment/access$600(Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment;)Landroid/os/Handler;
aload 3
invokevirtual android/os/Handler/sendMessage(Landroid/os/Message;)Z
pop
L9:
aload 1
getfield android/os/Message/what I
sipush 193
if_icmpne L1
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment$8/this$0 Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment;
invokestatic com/nd/android/u/ui/widge/chatfragment/MessageListFragment/access$600(Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment;)Landroid/os/Handler;
invokevirtual android/os/Handler/obtainMessage()Landroid/os/Message;
astore 3
aload 3
aload 1
getfield android/os/Message/what I
putfield android/os/Message/what I
aload 3
aload 1
getfield android/os/Message/obj Ljava/lang/Object;
putfield android/os/Message/obj Ljava/lang/Object;
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment$8/this$0 Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment;
invokestatic com/nd/android/u/ui/widge/chatfragment/MessageListFragment/access$600(Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment;)Landroid/os/Handler;
aload 3
invokevirtual android/os/Handler/sendMessage(Landroid/os/Message;)Z
pop
return
.limit locals 7
.limit stack 2
.end method

.method public onReceiveMessage(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)V
aload 0
aload 1
iconst_m1
invokespecial com/nd/android/u/ui/widge/chatfragment/MessageListFragment$8/handlerMessage(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;I)V
return
.limit locals 2
.limit stack 3
.end method

.method public onSendNewMessage(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)V
aload 0
aload 1
bipush -2
invokespecial com/nd/android/u/ui/widge/chatfragment/MessageListFragment$8/handlerMessage(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;I)V
return
.limit locals 2
.limit stack 3
.end method
