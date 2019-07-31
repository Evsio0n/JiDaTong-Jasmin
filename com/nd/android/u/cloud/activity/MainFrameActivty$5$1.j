.bytecode 50.0
.class synchronized com/nd/android/u/cloud/activity/MainFrameActivty$5$1
.super java/lang/Object
.implements java/lang/Runnable
.enclosing method com/nd/android/u/cloud/activity/MainFrameActivty$5/onReceiveMessage(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)V
.inner class inner com/nd/android/u/cloud/activity/MainFrameActivty$5
.inner class inner com/nd/android/u/cloud/activity/MainFrameActivty$5$1

.field final synthetic 'this$1' Lcom/nd/android/u/cloud/activity/MainFrameActivty$5;

.field final synthetic 'val$message' Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;

.method <init>(Lcom/nd/android/u/cloud/activity/MainFrameActivty$5;Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/MainFrameActivty$5$1/this$1 Lcom/nd/android/u/cloud/activity/MainFrameActivty$5;
aload 0
aload 2
putfield com/nd/android/u/cloud/activity/MainFrameActivty$5$1/val$message Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public run()V
aload 0
getfield com/nd/android/u/cloud/activity/MainFrameActivty$5$1/this$1 Lcom/nd/android/u/cloud/activity/MainFrameActivty$5;
getfield com/nd/android/u/cloud/activity/MainFrameActivty$5/this$0 Lcom/nd/android/u/cloud/activity/MainFrameActivty;
invokevirtual com/nd/android/u/cloud/activity/MainFrameActivty/showMsgCount()V
aload 0
getfield com/nd/android/u/cloud/activity/MainFrameActivty$5$1/val$message Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
instanceof com/nd/android/u/cloud/customapplication/DisplayMessage_App_Community
ifeq L0
aload 0
getfield com/nd/android/u/cloud/activity/MainFrameActivty$5$1/val$message Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
checkcast com/nd/android/u/cloud/customapplication/DisplayMessage_App_Community
astore 1
ldc "LIFE_COMMUNITY_APPLY_RESULT"
aload 1
getfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Community/business Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L1
ldc "LIFE_COMMUNITY_CREATE_RESULT"
aload 1
getfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Community/business Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L0
L1:
aload 1
getfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Community/resultValue I
iconst_1
if_icmpne L0
getstatic com/nd/android/u/ChatEntry/INSTANCE Lcom/nd/android/u/ChatEntry;
getfield com/nd/android/u/ChatEntry/chatCallOtherModel_UI Lcom/nd/android/u/ui/chatInterfaceImpl/IChatCallOtherModel_UI;
aload 1
getfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Community/communityGid I
i2l
invokeinterface com/nd/android/u/ui/chatInterfaceImpl/IChatCallOtherModel_UI/notifyPullClubGourpByGid(J)V 2
L0:
return
.limit locals 2
.limit stack 3
.end method
