.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/customapplication/activity/ChatActivity_Flower
.super com/nd/android/u/ui/activity/message_chat/ChatActivity_App

.method public <init>()V
aload 0
invokespecial com/nd/android/u/ui/activity/message_chat/ChatActivity_App/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/nd/android/u/ui/activity/message_chat/ChatActivity_App/onCreate(Landroid/os/Bundle;)V
aload 0
ldc_w 2131493138
putfield com/nd/android/u/cloud/customapplication/activity/ChatActivity_Flower/delelteHistoryHint I
return
.limit locals 2
.limit stack 2
.end method

.method public onResume()V
aload 0
invokespecial com/nd/android/u/ui/activity/message_chat/ChatActivity_App/onResume()V
aload 0
getfield com/nd/android/u/cloud/customapplication/activity/ChatActivity_Flower/mMessageListFragment Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment;
invokevirtual com/nd/android/u/ui/widge/chatfragment/MessageListFragment/getData()Ljava/util/List;
astore 6
aconst_null
astore 4
aconst_null
astore 3
aload 6
ifnull L0
iconst_0
istore 1
aload 6
invokeinterface java/util/List/size()I 0
istore 2
L1:
aload 3
astore 4
iload 1
iload 2
if_icmpge L0
aload 6
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/cloud/customapplication/DisplayMessage_App_Flower
astore 5
aload 3
astore 4
aload 5
getfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Flower/flowerDataType I
iconst_2
if_icmpne L2
aload 3
astore 4
aload 5
invokevirtual com/nd/android/u/cloud/customapplication/DisplayMessage_App_Flower/isRead()Z
ifne L2
aload 5
astore 4
aload 5
iconst_1
putfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Flower/isRead I
aload 5
invokevirtual com/nd/android/u/cloud/customapplication/DisplayMessage_App_Flower/getProccessInterface()Lcom/nd/android/u/controller/innerInterface/IMessageProccess;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageProccess/saveToDb()Z 0
pop
L2:
iload 1
iconst_1
iadd
istore 1
aload 4
astore 3
goto L1
L0:
aload 4
ifnull L3
new android/os/Message
dup
invokespecial android/os/Message/<init>()V
astore 3
aload 3
bipush 20
putfield android/os/Message/what I
aload 3
aload 4
putfield android/os/Message/obj Ljava/lang/Object;
invokestatic com/nd/android/u/controller/observer/MessageDispatcher/getInstance()Lcom/nd/android/u/controller/observer/MessageDispatcher;
iconst_3
aload 3
invokevirtual com/nd/android/u/controller/observer/MessageDispatcher/notifyOtherMessage(ILandroid/os/Message;)V
L3:
return
.limit locals 7
.limit stack 3
.end method
