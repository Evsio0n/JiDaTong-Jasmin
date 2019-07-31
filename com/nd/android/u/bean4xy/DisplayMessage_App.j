.bytecode 50.0
.class public synchronized com/nd/android/u/bean4xy/DisplayMessage_App
.super com/nd/android/u/controller/bean/message/BaseDisplayMessage_App

.method public <init>()V
aload 0
invokespecial com/nd/android/u/controller/bean/message/BaseDisplayMessage_App/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public getAppName(Landroid/content/Context;)Ljava/lang/String;
getstatic com/nd/android/u/ChatEntry/INSTANCE Lcom/nd/android/u/ChatEntry;
getfield com/nd/android/u/ChatEntry/chatCallOtherModel_UI Lcom/nd/android/u/ui/chatInterfaceImpl/IChatCallOtherModel_UI;
aload 0
getfield com/nd/android/u/bean4xy/DisplayMessage_App/appId I
aload 0
getfield com/nd/android/u/bean4xy/DisplayMessage_App/appCode Ljava/lang/String;
invokeinterface com/nd/android/u/ui/chatInterfaceImpl/IChatCallOtherModel_UI/getAppName(ILjava/lang/String;)Ljava/lang/String; 2
areturn
.limit locals 2
.limit stack 3
.end method

.method public onItemClick(Landroid/content/Context;)V
getstatic com/nd/android/u/ChatEntry/INSTANCE Lcom/nd/android/u/ChatEntry;
getfield com/nd/android/u/ChatEntry/chatCallOtherModel_UI Lcom/nd/android/u/ui/chatInterfaceImpl/IChatCallOtherModel_UI;
aload 0
getfield com/nd/android/u/bean4xy/DisplayMessage_App/appId I
aload 0
getfield com/nd/android/u/bean4xy/DisplayMessage_App/appCode Ljava/lang/String;
aload 0
getfield com/nd/android/u/bean4xy/DisplayMessage_App/bussinessId Ljava/lang/String;
aload 1
iconst_0
invokeinterface com/nd/android/u/ui/chatInterfaceImpl/IChatCallOtherModel_UI/jumpActivity(ILjava/lang/String;Ljava/lang/String;Landroid/content/Context;Z)V 5
return
.limit locals 2
.limit stack 6
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
astore 1
aload 1
getstatic com/nd/android/u/chat/R$string/notify_apk I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
astore 2
invokestatic com/common/android/utils/smiley/Smileyhelper/getInstance()Lcom/common/android/utils/smiley/Smileyhelper;
aload 0
getfield com/nd/android/u/bean4xy/DisplayMessage_App/displayContent Ljava/lang/String;
iconst_0
invokevirtual com/common/android/utils/smiley/Smileyhelper/showSmileyByTip(Ljava/lang/String;I)Ljava/lang/String;
astore 3
aload 0
invokevirtual com/nd/android/u/bean4xy/DisplayMessage_App/getUnreadMessage()Ljava/lang/String;
astore 4
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
astore 5
aload 5
aload 1
aload 0
invokevirtual com/nd/android/u/bean4xy/DisplayMessage_App/getDisplayClass()Ljava/lang/Class;
invokevirtual android/content/Intent/setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
pop
aload 5
aload 0
aload 1
invokevirtual com/nd/android/u/bean4xy/DisplayMessage_App/getBundle(Landroid/content/Context;)Landroid/os/Bundle;
invokevirtual android/content/Intent/putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
pop
invokestatic com/nd/android/u/commonWidget/NotificationMsg/getInstance()Lcom/nd/android/u/commonWidget/NotificationMsg;
aload 2
aload 4
aload 3
aload 5
aload 0
getfield com/nd/android/u/bean4xy/DisplayMessage_App/soundResId I
invokevirtual com/nd/android/u/commonWidget/NotificationMsg/obtainNotify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)Landroid/app/Notification;
astore 1
invokestatic com/nd/android/u/commonWidget/NotificationMsg/getInstance()Lcom/nd/android/u/commonWidget/NotificationMsg;
aload 1
aload 0
iconst_0
invokestatic java/lang/Boolean/valueOf(Z)Ljava/lang/Boolean;
invokevirtual com/nd/android/u/commonWidget/NotificationMsg/showNotify(Landroid/app/Notification;Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;Ljava/lang/Boolean;)V
aload 0
invokevirtual com/nd/android/u/bean4xy/DisplayMessage_App/specialProccessOnReceive()V
return
.limit locals 6
.limit stack 6
.end method
