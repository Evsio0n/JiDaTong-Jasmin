.bytecode 50.0
.class public synchronized com/nd/android/u/bean4xy/DisplayMessage_Person
.super com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person

.field public 'erpInfo' Lcom/product/android/commonInterface/chat/ErpInfo;

.method public <init>()V
aload 0
invokespecial com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method private proccessErp()Z
aload 0
getfield com/nd/android/u/bean4xy/DisplayMessage_Person/erpInfo Lcom/product/android/commonInterface/chat/ErpInfo;
getfield com/product/android/commonInterface/chat/ErpInfo/bussinessId Ljava/lang/String;
astore 1
new com/nd/android/u/bean4xy/DisplayMessage_Person
dup
invokespecial com/nd/android/u/bean4xy/DisplayMessage_Person/<init>()V
astore 2
aload 2
aload 1
putfield com/nd/android/u/bean4xy/DisplayMessage_Person/generateId Ljava/lang/String;
aload 0
getfield com/nd/android/u/bean4xy/DisplayMessage_Person/dbOperation Lcom/nd/android/u/controller/innerInterface/IDbOperation;
aload 2
iconst_1
invokeinterface com/nd/android/u/controller/innerInterface/IDbOperation/getByCmd(Lcom/nd/android/u/controller/innerInterface/IDbDataSupplier;I)Z 2
ifeq L0
aload 0
aload 2
getfield com/nd/android/u/bean4xy/DisplayMessage_Person/generateId Ljava/lang/String;
putfield com/nd/android/u/bean4xy/DisplayMessage_Person/generateId Ljava/lang/String;
aload 0
getfield com/nd/android/u/bean4xy/DisplayMessage_Person/erpInfo Lcom/product/android/commonInterface/chat/ErpInfo;
aload 0
getfield com/nd/android/u/bean4xy/DisplayMessage_Person/generateId Ljava/lang/String;
putfield com/product/android/commonInterface/chat/ErpInfo/generateId Ljava/lang/String;
aload 0
getfield com/nd/android/u/bean4xy/DisplayMessage_Person/dbOperation Lcom/nd/android/u/controller/innerInterface/IDbOperation;
aload 0
invokeinterface com/nd/android/u/controller/innerInterface/IDbOperation/update(Lcom/nd/android/u/controller/innerInterface/IDbDataSupplier;)Z 1
ifne L1
ldc "debug"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "update erpmessage fail:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
getfield com/nd/android/u/bean4xy/DisplayMessage_Person/erpInfo Lcom/product/android/commonInterface/chat/ErpInfo;
getfield com/product/android/commonInterface/chat/ErpInfo/tasktitle Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ","
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
getfield com/nd/android/u/bean4xy/DisplayMessage_Person/erpInfo Lcom/product/android/commonInterface/chat/ErpInfo;
getfield com/product/android/commonInterface/chat/ErpInfo/taskId Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/android/u/allCommonUtils/LogUtils/e(Ljava/lang/String;Ljava/lang/String;)V
iconst_1
ireturn
L1:
aload 0
invokevirtual com/nd/android/u/bean4xy/DisplayMessage_Person/showNotify()V
invokestatic com/nd/android/u/controller/observer/MessageDispatcher/getInstance()Lcom/nd/android/u/controller/observer/MessageDispatcher;
aload 0
bipush 22
invokevirtual com/nd/android/u/controller/observer/MessageDispatcher/notifyMessageStateChanged(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;I)V
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 3
.limit stack 3
.end method

.method public clickPortrait(ZLandroid/content/Context;)V
iload 1
ifeq L0
getstatic com/nd/android/u/ChatEntry/INSTANCE Lcom/nd/android/u/ChatEntry;
getfield com/nd/android/u/ChatEntry/chatCallOtherModel_UI Lcom/nd/android/u/ui/chatInterfaceImpl/IChatCallOtherModel_UI;
aload 2
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/getOapUid()J 0
invokeinterface com/nd/android/u/ui/chatInterfaceImpl/IChatCallOtherModel_UI/gotoTweetProfileActivity(Landroid/content/Context;J)V 3
return
L0:
getstatic com/nd/android/u/ChatEntry/INSTANCE Lcom/nd/android/u/ChatEntry;
getfield com/nd/android/u/ChatEntry/chatCallOtherModel_UI Lcom/nd/android/u/ui/chatInterfaceImpl/IChatCallOtherModel_UI;
aload 2
aload 0
getfield com/nd/android/u/bean4xy/DisplayMessage_Person/uidFrom J
invokeinterface com/nd/android/u/ui/chatInterfaceImpl/IChatCallOtherModel_UI/gotoTweetProfileActivity(Landroid/content/Context;J)V 3
return
.limit locals 3
.limit stack 4
.end method

.method public convertToContentValues()Landroid/content/ContentValues;
aload 0
invokespecial com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person/convertToContentValues()Landroid/content/ContentValues;
astore 1
aload 0
getfield com/nd/android/u/bean4xy/DisplayMessage_Person/messageContentType I
bipush 101
if_icmpne L0
aload 0
getfield com/nd/android/u/bean4xy/DisplayMessage_Person/erpInfo Lcom/product/android/commonInterface/chat/ErpInfo;
ifnull L1
aload 0
aload 0
getfield com/nd/android/u/bean4xy/DisplayMessage_Person/erpInfo Lcom/product/android/commonInterface/chat/ErpInfo;
invokevirtual com/product/android/commonInterface/chat/ErpInfo/packToJson()Ljava/lang/String;
putfield com/nd/android/u/bean4xy/DisplayMessage_Person/oriMessage Ljava/lang/String;
aload 1
ldc "businessid"
aload 0
getfield com/nd/android/u/bean4xy/DisplayMessage_Person/erpInfo Lcom/product/android/commonInterface/chat/ErpInfo;
getfield com/product/android/commonInterface/chat/ErpInfo/bussinessId Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
L1:
aload 1
ldc "message"
aload 0
getfield com/nd/android/u/bean4xy/DisplayMessage_Person/oriMessage Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 1
areturn
L0:
aload 0
getfield com/nd/android/u/bean4xy/DisplayMessage_Person/oriMessage Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L1
aload 0
getfield com/nd/android/u/bean4xy/DisplayMessage_Person/messageContentType I
iconst_2
if_icmpeq L2
aload 0
getfield com/nd/android/u/bean4xy/DisplayMessage_Person/messageContentType I
ifne L1
L2:
aload 0
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/messageAnalyser Lcom/nd/android/u/controller/outInterface/IMessageAnalyser;
aload 0
invokeinterface com/nd/android/u/controller/outInterface/IMessageAnalyser/packMsg(Lcom/nd/android/u/controller/bean/message/BaseDisplayMessage;)Ljava/lang/String; 1
putfield com/nd/android/u/bean4xy/DisplayMessage_Person/oriMessage Ljava/lang/String;
goto L1
.limit locals 2
.limit stack 3
.end method

.method public isChild()Z
aload 0
invokevirtual com/nd/android/u/bean4xy/DisplayMessage_Person/getMessageContentType()I
tableswitch 20001
L0
L0
L0
L0
default : L1
L1:
aload 0
invokespecial com/nd/android/u/controller/bean/message/BaseDisplayMessage_Person/isChild()Z
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public prepareMessage()Z
aload 0
getfield com/nd/android/u/bean4xy/DisplayMessage_Person/erpInfo Lcom/product/android/commonInterface/chat/ErpInfo;
ifnull L0
aload 0
invokespecial com/nd/android/u/bean4xy/DisplayMessage_Person/proccessErp()Z
ireturn
L0:
aload 0
getfield com/nd/android/u/bean4xy/DisplayMessage_Person/messageContentType I
bipush 101
if_icmpne L1
aload 0
new com/product/android/commonInterface/chat/ErpInfo
dup
invokespecial com/product/android/commonInterface/chat/ErpInfo/<init>()V
putfield com/nd/android/u/bean4xy/DisplayMessage_Person/erpInfo Lcom/product/android/commonInterface/chat/ErpInfo;
aload 0
getfield com/nd/android/u/bean4xy/DisplayMessage_Person/erpInfo Lcom/product/android/commonInterface/chat/ErpInfo;
aload 0
getfield com/nd/android/u/bean4xy/DisplayMessage_Person/oriMessage Ljava/lang/String;
invokevirtual com/product/android/commonInterface/chat/ErpInfo/parseFromJson(Ljava/lang/String;)V
aload 0
aload 0
getfield com/nd/android/u/bean4xy/DisplayMessage_Person/erpInfo Lcom/product/android/commonInterface/chat/ErpInfo;
getfield com/product/android/commonInterface/chat/ErpInfo/content Ljava/lang/String;
putfield com/nd/android/u/bean4xy/DisplayMessage_Person/displayContent Ljava/lang/String;
L1:
aload 0
getfield com/nd/android/u/bean4xy/DisplayMessage_Person/displayContent Ljava/lang/String;
ifnonnull L2
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/messageAnalyser Lcom/nd/android/u/controller/outInterface/IMessageAnalyser;
aload 0
invokeinterface com/nd/android/u/controller/outInterface/IMessageAnalyser/analyseMessage(Lcom/nd/android/u/controller/bean/message/BaseDisplayMessage;)V 1
aload 0
getfield com/nd/android/u/bean4xy/DisplayMessage_Person/messageContentType I
sipush 195
if_icmpne L2
iconst_1
ireturn
L2:
iconst_0
ireturn
.limit locals 1
.limit stack 3
.end method

.method public showNotify()V
invokestatic com/nd/android/u/controller/ChatGlobalVariable/getInstance()Lcom/nd/android/u/controller/ChatGlobalVariable;
aload 0
invokevirtual com/nd/android/u/controller/ChatGlobalVariable/noNeedNotify(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)Z
ifeq L0
return
L0:
getstatic ims/IMSdkEntry/INSTANCE Lims/IMSdkEntry;
getfield ims/IMSdkEntry/context Landroid/content/Context;
astore 4
ldc ""
astore 3
iconst_1
istore 1
aload 0
getfield com/nd/android/u/bean4xy/DisplayMessage_Person/uidFrom J
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/getOapUid()J 0
lcmp
ifne L1
aload 4
getstatic com/nd/android/u/chat/R$string/notify_me I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
astore 2
iconst_0
istore 1
L2:
aload 0
getfield com/nd/android/u/bean4xy/DisplayMessage_Person/uidFrom J
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/getOapUid()J 0
lcmp
ifne L3
iconst_0
istore 1
L3:
invokestatic com/common/android/utils/smiley/Smileyhelper/getInstance()Lcom/common/android/utils/smiley/Smileyhelper;
aload 0
getfield com/nd/android/u/bean4xy/DisplayMessage_Person/displayContent Ljava/lang/String;
iconst_0
invokevirtual com/common/android/utils/smiley/Smileyhelper/showSmileyByTip(Ljava/lang/String;I)Ljava/lang/String;
astore 5
aload 0
invokevirtual com/nd/android/u/bean4xy/DisplayMessage_Person/getUnreadMessage()Ljava/lang/String;
astore 6
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
astore 7
aload 7
aload 4
aload 0
invokevirtual com/nd/android/u/bean4xy/DisplayMessage_Person/getDisplayClass()Ljava/lang/Class;
invokevirtual android/content/Intent/setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
pop
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 4
aload 4
ldc "fid"
aload 0
invokevirtual com/nd/android/u/bean4xy/DisplayMessage_Person/getFriendId()J
invokevirtual android/os/Bundle/putLong(Ljava/lang/String;J)V
aload 4
ldc "generalid"
aload 0
invokevirtual com/nd/android/u/bean4xy/DisplayMessage_Person/getFriendId()J
invokevirtual android/os/Bundle/putLong(Ljava/lang/String;J)V
aload 4
ldc "MESSAGE_TYPE"
aload 0
getfield com/nd/android/u/bean4xy/DisplayMessage_Person/messageType I
invokevirtual android/os/Bundle/putInt(Ljava/lang/String;I)V
aload 4
ldc "name"
aload 3
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
aload 7
aload 4
invokevirtual android/content/Intent/putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
pop
invokestatic com/nd/android/u/commonWidget/NotificationMsg/getInstance()Lcom/nd/android/u/commonWidget/NotificationMsg;
aload 2
aload 6
aload 5
aload 7
invokevirtual com/nd/android/u/commonWidget/NotificationMsg/obtainNotify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Notification;
astore 2
invokestatic com/nd/android/u/commonWidget/NotificationMsg/getInstance()Lcom/nd/android/u/commonWidget/NotificationMsg;
aload 2
aload 0
iload 1
invokestatic java/lang/Boolean/valueOf(Z)Ljava/lang/Boolean;
aload 4
invokevirtual com/nd/android/u/commonWidget/NotificationMsg/showNotify(Landroid/app/Notification;Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;Ljava/lang/Boolean;Landroid/os/Bundle;)V
return
L1:
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
aload 0
getfield com/nd/android/u/bean4xy/DisplayMessage_Person/uidFrom J
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/getUserName(J)Ljava/lang/String; 2
astore 3
aload 4
getstatic com/nd/android/u/chat/R$string/notify_other I
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 3
aastore
invokevirtual android/content/Context/getString(I[Ljava/lang/Object;)Ljava/lang/String;
astore 2
goto L2
.limit locals 8
.limit stack 6
.end method
