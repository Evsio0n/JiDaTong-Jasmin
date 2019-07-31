.bytecode 50.0
.class synchronized com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply$OperateApplyTask
.super com/common/android/utils/concurrent/NdTinyHttpAsyncTask
.signature "Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/util/Map;>;"
.inner class OperateApplyTask inner com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply$OperateApplyTask outer com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply;

.method <init>(Lcom/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply$OperateApplyTask/this$0 Lcom/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply;
aload 0
invokespecial com/common/android/utils/concurrent/NdTinyHttpAsyncTask/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method protected volatile synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
aload 0
aload 1
checkcast [Ljava/lang/Void;
invokevirtual com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply$OperateApplyTask/doInBackground([Ljava/lang/Void;)Ljava/util/Map;
areturn
.limit locals 2
.limit stack 2
.end method

.method protected transient doInBackground([Ljava/lang/Void;)Ljava/util/Map;
getstatic com/nd/android/u/ChatEntry/INSTANCE Lcom/nd/android/u/ChatEntry;
getfield com/nd/android/u/ChatEntry/chatCallOtherModel_UI Lcom/nd/android/u/ui/chatInterfaceImpl/IChatCallOtherModel_UI;
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply$OperateApplyTask/this$0 Lcom/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply;
invokestatic com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply/access$100(Lcom/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply;)Lcom/nd/android/u/cloud/customapplication/DisplayMessage_App_Community;
getfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Community/communityid I
i2l
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply$OperateApplyTask/this$0 Lcom/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply;
invokestatic com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply/access$100(Lcom/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply;)Lcom/nd/android/u/cloud/customapplication/DisplayMessage_App_Community;
getfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Community/userUid J
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply$OperateApplyTask/this$0 Lcom/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply;
invokestatic com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply/access$200(Lcom/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply;)Z
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply$OperateApplyTask/this$0 Lcom/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply;
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply/reason Ljava/lang/String;
invokeinterface com/nd/android/u/ui/chatInterfaceImpl/IChatCallOtherModel_UI/callOtherApprovalJoin(JJZLjava/lang/String;)Ljava/util/Map; 6
areturn
.limit locals 2
.limit stack 7
.end method

.method protected volatile synthetic onPostExecute(Ljava/lang/Object;)V
aload 0
aload 1
checkcast java/util/Map
invokevirtual com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply$OperateApplyTask/onPostExecute(Ljava/util/Map;)V
return
.limit locals 2
.limit stack 2
.end method

.method protected onPostExecute(Ljava/util/Map;)V
aload 1
ldc "resultCode"
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast java/lang/Integer
astore 2
aload 2
invokevirtual java/lang/Integer/intValue()I
ifne L0
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply$OperateApplyTask/this$0 Lcom/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply;
invokestatic com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply/access$100(Lcom/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply;)Lcom/nd/android/u/cloud/customapplication/DisplayMessage_App_Community;
iconst_1
iconst_1
invokevirtual com/nd/android/u/cloud/customapplication/DisplayMessage_App_Community/setIsRead(IZ)V
invokestatic com/nd/android/u/controller/observer/MessageDispatcher/getInstance()Lcom/nd/android/u/controller/observer/MessageDispatcher;
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply$OperateApplyTask/this$0 Lcom/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply;
invokestatic com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply/access$100(Lcom/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply;)Lcom/nd/android/u/cloud/customapplication/DisplayMessage_App_Community;
bipush 99
invokevirtual com/nd/android/u/controller/observer/MessageDispatcher/notifyMessageStateChanged(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;I)V
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply$OperateApplyTask/this$0 Lcom/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply;
invokestatic com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply/access$200(Lcom/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply;)Z
ifeq L1
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply$OperateApplyTask/this$0 Lcom/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply;
invokestatic com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply/access$100(Lcom/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply;)Lcom/nd/android/u/cloud/customapplication/DisplayMessage_App_Community;
iconst_1
putfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Community/optResult I
L2:
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply$OperateApplyTask/this$0 Lcom/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply;
invokestatic com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply/access$100(Lcom/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply;)Lcom/nd/android/u/cloud/customapplication/DisplayMessage_App_Community;
invokevirtual com/nd/android/u/cloud/customapplication/DisplayMessage_App_Community/getProccessInterface()Lcom/nd/android/u/controller/innerInterface/IMessageProccess;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageProccess/saveToDb()Z 0
pop
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply$OperateApplyTask/this$0 Lcom/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply;
invokestatic com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply/access$100(Lcom/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply;)Lcom/nd/android/u/cloud/customapplication/DisplayMessage_App_Community;
invokevirtual com/nd/android/u/cloud/customapplication/DisplayMessage_App_Community/getProccessInterface()Lcom/nd/android/u/controller/innerInterface/IMessageProccess;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageProccess/ackMessage()V 0
L3:
return
L1:
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply$OperateApplyTask/this$0 Lcom/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply;
invokestatic com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply/access$100(Lcom/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply;)Lcom/nd/android/u/cloud/customapplication/DisplayMessage_App_Community;
iconst_0
putfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Community/optResult I
goto L2
L0:
aload 2
invokevirtual java/lang/Integer/intValue()I
bipush -3
if_icmpne L4
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply$OperateApplyTask/this$0 Lcom/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply;
invokestatic com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply/access$300(Lcom/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply;)Landroid/content/Context;
ldc_w 2131494488
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
return
L4:
aload 2
invokevirtual java/lang/Integer/intValue()I
bipush -2
if_icmpne L5
aload 1
ldc "errorCode"
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
ifnull L3
ldc "-998"
aload 1
ldc "errorCode"
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L6
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply$OperateApplyTask/this$0 Lcom/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply;
invokestatic com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply/access$300(Lcom/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply;)Landroid/content/Context;
aload 1
ldc "resultDesc"
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast java/lang/String
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;Ljava/lang/String;)V
return
L6:
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply$OperateApplyTask/this$0 Lcom/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply;
invokestatic com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply/access$100(Lcom/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply;)Lcom/nd/android/u/cloud/customapplication/DisplayMessage_App_Community;
iconst_1
iconst_1
invokevirtual com/nd/android/u/cloud/customapplication/DisplayMessage_App_Community/setIsRead(IZ)V
invokestatic com/nd/android/u/controller/observer/MessageDispatcher/getInstance()Lcom/nd/android/u/controller/observer/MessageDispatcher;
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply$OperateApplyTask/this$0 Lcom/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply;
invokestatic com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply/access$100(Lcom/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply;)Lcom/nd/android/u/cloud/customapplication/DisplayMessage_App_Community;
bipush 99
invokevirtual com/nd/android/u/controller/observer/MessageDispatcher/notifyMessageStateChanged(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;I)V
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply$OperateApplyTask/this$0 Lcom/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply;
invokestatic com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply/access$100(Lcom/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply;)Lcom/nd/android/u/cloud/customapplication/DisplayMessage_App_Community;
iconst_2
putfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Community/optResult I
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply$OperateApplyTask/this$0 Lcom/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply;
invokestatic com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply/access$100(Lcom/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply;)Lcom/nd/android/u/cloud/customapplication/DisplayMessage_App_Community;
invokevirtual com/nd/android/u/cloud/customapplication/DisplayMessage_App_Community/getProccessInterface()Lcom/nd/android/u/controller/innerInterface/IMessageProccess;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageProccess/saveToDb()Z 0
pop
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply$OperateApplyTask/this$0 Lcom/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply;
invokestatic com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply/access$100(Lcom/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply;)Lcom/nd/android/u/cloud/customapplication/DisplayMessage_App_Community;
invokevirtual com/nd/android/u/cloud/customapplication/DisplayMessage_App_Community/getProccessInterface()Lcom/nd/android/u/controller/innerInterface/IMessageProccess;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageProccess/ackMessage()V 0
return
L5:
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply$OperateApplyTask/this$0 Lcom/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply;
invokestatic com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply/access$300(Lcom/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply;)Landroid/content/Context;
ldc_w 2131493007
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
return
.limit locals 3
.limit stack 3
.end method
