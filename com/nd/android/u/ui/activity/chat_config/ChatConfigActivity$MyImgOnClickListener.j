.bytecode 50.0
.class synchronized com/nd/android/u/ui/activity/chat_config/ChatConfigActivity$MyImgOnClickListener
.super java/lang/Object
.implements android/view/View$OnClickListener
.inner class MyImgOnClickListener inner com/nd/android/u/ui/activity/chat_config/ChatConfigActivity$MyImgOnClickListener outer com/nd/android/u/ui/activity/chat_config/ChatConfigActivity

.field 'bundle' Landroid/os/Bundle;

.field final synthetic 'this$0' Lcom/nd/android/u/ui/activity/chat_config/ChatConfigActivity;

.method <init>(Lcom/nd/android/u/ui/activity/chat_config/ChatConfigActivity;)V
aload 0
aload 1
putfield com/nd/android/u/ui/activity/chat_config/ChatConfigActivity$MyImgOnClickListener/this$0 Lcom/nd/android/u/ui/activity/chat_config/ChatConfigActivity;
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
putfield com/nd/android/u/ui/activity/chat_config/ChatConfigActivity$MyImgOnClickListener/bundle Landroid/os/Bundle;
return
.limit locals 2
.limit stack 3
.end method

.method public onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
istore 2
iload 2
getstatic com/nd/android/u/chat/R$id/tvHomePage I
if_icmpeq L0
iload 2
getstatic com/nd/android/u/chat/R$id/imgFriendFace I
if_icmpne L1
L0:
getstatic com/nd/android/u/ChatEntry/INSTANCE Lcom/nd/android/u/ChatEntry;
getfield com/nd/android/u/ChatEntry/chatCallOtherModel_UI Lcom/nd/android/u/ui/chatInterfaceImpl/IChatCallOtherModel_UI;
aload 0
getfield com/nd/android/u/ui/activity/chat_config/ChatConfigActivity$MyImgOnClickListener/this$0 Lcom/nd/android/u/ui/activity/chat_config/ChatConfigActivity;
aload 0
getfield com/nd/android/u/ui/activity/chat_config/ChatConfigActivity$MyImgOnClickListener/this$0 Lcom/nd/android/u/ui/activity/chat_config/ChatConfigActivity;
invokestatic com/nd/android/u/ui/activity/chat_config/ChatConfigActivity/access$000(Lcom/nd/android/u/ui/activity/chat_config/ChatConfigActivity;)J
invokeinterface com/nd/android/u/ui/chatInterfaceImpl/IChatCallOtherModel_UI/gotoTweetProfileActivity(Landroid/content/Context;J)V 3
L2:
return
L1:
iload 2
getstatic com/nd/android/u/chat/R$id/tvFriend I
if_icmpne L3
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
aload 0
getfield com/nd/android/u/ui/activity/chat_config/ChatConfigActivity$MyImgOnClickListener/this$0 Lcom/nd/android/u/ui/activity/chat_config/ChatConfigActivity;
aload 0
getfield com/nd/android/u/ui/activity/chat_config/ChatConfigActivity$MyImgOnClickListener/this$0 Lcom/nd/android/u/ui/activity/chat_config/ChatConfigActivity;
invokestatic com/nd/android/u/ui/activity/chat_config/ChatConfigActivity/access$000(Lcom/nd/android/u/ui/activity/chat_config/ChatConfigActivity;)J
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/checkUidIsMyFolling(Landroid/content/Context;J)Z 3
ifeq L4
aload 0
getfield com/nd/android/u/ui/activity/chat_config/ChatConfigActivity$MyImgOnClickListener/this$0 Lcom/nd/android/u/ui/activity/chat_config/ChatConfigActivity;
new com/nd/android/u/ui/activity/chat_config/DeleteFollowDialog
dup
aload 0
getfield com/nd/android/u/ui/activity/chat_config/ChatConfigActivity$MyImgOnClickListener/this$0 Lcom/nd/android/u/ui/activity/chat_config/ChatConfigActivity;
aload 0
getfield com/nd/android/u/ui/activity/chat_config/ChatConfigActivity$MyImgOnClickListener/this$0 Lcom/nd/android/u/ui/activity/chat_config/ChatConfigActivity;
invokestatic com/nd/android/u/ui/activity/chat_config/ChatConfigActivity/access$000(Lcom/nd/android/u/ui/activity/chat_config/ChatConfigActivity;)J
aload 0
getfield com/nd/android/u/ui/activity/chat_config/ChatConfigActivity$MyImgOnClickListener/this$0 Lcom/nd/android/u/ui/activity/chat_config/ChatConfigActivity;
invokestatic com/nd/android/u/ui/activity/chat_config/ChatConfigActivity/access$200(Lcom/nd/android/u/ui/activity/chat_config/ChatConfigActivity;)Ljava/lang/String;
aload 0
getfield com/nd/android/u/ui/activity/chat_config/ChatConfigActivity$MyImgOnClickListener/this$0 Lcom/nd/android/u/ui/activity/chat_config/ChatConfigActivity;
getfield com/nd/android/u/ui/activity/chat_config/ChatConfigActivity/mHandler Landroid/os/Handler;
invokespecial com/nd/android/u/ui/activity/chat_config/DeleteFollowDialog/<init>(Landroid/content/Context;JLjava/lang/String;Landroid/os/Handler;)V
invokevirtual com/nd/android/u/ui/activity/chat_config/DeleteFollowDialog/create()Landroid/app/AlertDialog;
invokestatic com/nd/android/u/ui/activity/chat_config/ChatConfigActivity/access$102(Lcom/nd/android/u/ui/activity/chat_config/ChatConfigActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
pop
aload 0
getfield com/nd/android/u/ui/activity/chat_config/ChatConfigActivity$MyImgOnClickListener/this$0 Lcom/nd/android/u/ui/activity/chat_config/ChatConfigActivity;
invokestatic com/nd/android/u/ui/activity/chat_config/ChatConfigActivity/access$100(Lcom/nd/android/u/ui/activity/chat_config/ChatConfigActivity;)Landroid/app/AlertDialog;
invokevirtual android/app/AlertDialog/show()V
return
L4:
getstatic com/nd/android/u/ChatEntry/INSTANCE Lcom/nd/android/u/ChatEntry;
getfield com/nd/android/u/ChatEntry/chatCallOtherModel_UI Lcom/nd/android/u/ui/chatInterfaceImpl/IChatCallOtherModel_UI;
aload 0
getfield com/nd/android/u/ui/activity/chat_config/ChatConfigActivity$MyImgOnClickListener/this$0 Lcom/nd/android/u/ui/activity/chat_config/ChatConfigActivity;
invokestatic com/nd/android/u/ui/activity/chat_config/ChatConfigActivity/access$000(Lcom/nd/android/u/ui/activity/chat_config/ChatConfigActivity;)J
aload 0
getfield com/nd/android/u/ui/activity/chat_config/ChatConfigActivity$MyImgOnClickListener/this$0 Lcom/nd/android/u/ui/activity/chat_config/ChatConfigActivity;
invokeinterface com/nd/android/u/ui/chatInterfaceImpl/IChatCallOtherModel_UI/goToAddFriendGroupActivity(JLandroid/content/Context;)V 3
aload 0
getfield com/nd/android/u/ui/activity/chat_config/ChatConfigActivity$MyImgOnClickListener/this$0 Lcom/nd/android/u/ui/activity/chat_config/ChatConfigActivity;
invokevirtual com/nd/android/u/ui/activity/chat_config/ChatConfigActivity/finish()V
return
L3:
iload 2
getstatic com/nd/android/u/chat/R$id/tvBlacklist I
if_icmpne L5
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
aload 0
getfield com/nd/android/u/ui/activity/chat_config/ChatConfigActivity$MyImgOnClickListener/this$0 Lcom/nd/android/u/ui/activity/chat_config/ChatConfigActivity;
invokestatic com/nd/android/u/ui/activity/chat_config/ChatConfigActivity/access$000(Lcom/nd/android/u/ui/activity/chat_config/ChatConfigActivity;)J
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/checkUidIsBlackList(J)Z 2
ifne L6
new com/nd/android/u/ui/activity/chat_config/AddBlacklistDialog
dup
aload 0
getfield com/nd/android/u/ui/activity/chat_config/ChatConfigActivity$MyImgOnClickListener/this$0 Lcom/nd/android/u/ui/activity/chat_config/ChatConfigActivity;
aload 0
getfield com/nd/android/u/ui/activity/chat_config/ChatConfigActivity$MyImgOnClickListener/this$0 Lcom/nd/android/u/ui/activity/chat_config/ChatConfigActivity;
getfield com/nd/android/u/ui/activity/chat_config/ChatConfigActivity/mHandler Landroid/os/Handler;
invokespecial com/nd/android/u/ui/activity/chat_config/AddBlacklistDialog/<init>(Landroid/content/Context;Landroid/os/Handler;)V
invokevirtual com/nd/android/u/ui/activity/chat_config/AddBlacklistDialog/create()Landroid/app/AlertDialog;
invokevirtual android/app/AlertDialog/show()V
return
L6:
aload 0
getfield com/nd/android/u/ui/activity/chat_config/ChatConfigActivity$MyImgOnClickListener/this$0 Lcom/nd/android/u/ui/activity/chat_config/ChatConfigActivity;
iconst_2
invokevirtual com/nd/android/u/ui/activity/chat_config/ChatConfigActivity/delAddBlackList(I)V
return
L5:
iload 2
getstatic com/nd/android/u/chat/R$id/tvCloud I
if_icmpne L7
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 1
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getLocalSid()Ljava/lang/String;
astore 3
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic com/nd/android/u/ui/activity/chat_config/ChatConfigActivity/access$300()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "&fid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/ui/activity/chat_config/ChatConfigActivity$MyImgOnClickListener/this$0 Lcom/nd/android/u/ui/activity/chat_config/ChatConfigActivity;
invokestatic com/nd/android/u/ui/activity/chat_config/ChatConfigActivity/access$000(Lcom/nd/android/u/ui/activity/chat_config/ChatConfigActivity;)J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc "&title=0"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 3
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
aload 0
getfield com/nd/android/u/ui/activity/chat_config/ChatConfigActivity$MyImgOnClickListener/this$0 Lcom/nd/android/u/ui/activity/chat_config/ChatConfigActivity;
invokestatic com/nd/android/u/ui/activity/chat_config/ChatConfigActivity/access$000(Lcom/nd/android/u/ui/activity/chat_config/ChatConfigActivity;)J
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/getUserName(J)Ljava/lang/String; 2
astore 4
aload 1
getstatic com/product/android/ui/activity/WebViewActivity/EXTARS_WEBVIEW_URL Ljava/lang/String;
aload 3
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
aload 1
getstatic com/product/android/ui/activity/WebViewActivity/EXTARS_WEBVIEW_NEED_TITLE Ljava/lang/String;
aload 4
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/ui/activity/chat_config/ChatConfigActivity$MyImgOnClickListener/this$0 Lcom/nd/android/u/ui/activity/chat_config/ChatConfigActivity;
ldc com/product/android/ui/activity/WebViewActivity
aload 1
invokestatic com/nd/android/u/ui/activity/chat_config/ChatConfigActivity/access$400(Lcom/nd/android/u/ui/activity/chat_config/ChatConfigActivity;Ljava/lang/Class;Landroid/os/Bundle;)V
return
L7:
iload 2
getstatic com/nd/android/u/chat/R$id/tvClear I
if_icmpne L8
getstatic com/nd/android/u/controller/factory/MessageFactory/INSTANCE Lcom/nd/android/u/controller/factory/MessageFactory;
invokevirtual com/nd/android/u/controller/factory/MessageFactory/getPersonMessage()Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
astore 1
aload 1
aload 0
getfield com/nd/android/u/ui/activity/chat_config/ChatConfigActivity$MyImgOnClickListener/this$0 Lcom/nd/android/u/ui/activity/chat_config/ChatConfigActivity;
invokestatic com/nd/android/u/ui/activity/chat_config/ChatConfigActivity/access$000(Lcom/nd/android/u/ui/activity/chat_config/ChatConfigActivity;)J
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setToUid(J)V 2
aload 1
aload 0
getfield com/nd/android/u/ui/activity/chat_config/ChatConfigActivity$MyImgOnClickListener/this$0 Lcom/nd/android/u/ui/activity/chat_config/ChatConfigActivity;
invokestatic com/nd/android/u/ui/activity/chat_config/ChatConfigActivity/access$000(Lcom/nd/android/u/ui/activity/chat_config/ChatConfigActivity;)J
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setFromUid(J)V 2
new com/nd/android/u/ui/activity/chat_config/DeleteHistoryDialog
dup
aload 0
getfield com/nd/android/u/ui/activity/chat_config/ChatConfigActivity$MyImgOnClickListener/this$0 Lcom/nd/android/u/ui/activity/chat_config/ChatConfigActivity;
aload 1
invokespecial com/nd/android/u/ui/activity/chat_config/DeleteHistoryDialog/<init>(Landroid/content/Context;Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)V
invokevirtual com/nd/android/u/ui/activity/chat_config/DeleteHistoryDialog/show()Landroid/app/AlertDialog;
pop
return
L8:
iload 2
getstatic com/nd/android/u/chat/R$id/imgAdd I
if_icmpne L2
getstatic com/nd/android/u/ChatEntry/INSTANCE Lcom/nd/android/u/ChatEntry;
getfield com/nd/android/u/ChatEntry/chatCallOtherModel_UI Lcom/nd/android/u/ui/chatInterfaceImpl/IChatCallOtherModel_UI;
aload 0
getfield com/nd/android/u/ui/activity/chat_config/ChatConfigActivity$MyImgOnClickListener/this$0 Lcom/nd/android/u/ui/activity/chat_config/ChatConfigActivity;
aload 0
getfield com/nd/android/u/ui/activity/chat_config/ChatConfigActivity$MyImgOnClickListener/this$0 Lcom/nd/android/u/ui/activity/chat_config/ChatConfigActivity;
invokestatic com/nd/android/u/ui/activity/chat_config/ChatConfigActivity/access$000(Lcom/nd/android/u/ui/activity/chat_config/ChatConfigActivity;)J
iconst_0
iconst_0
invokeinterface com/nd/android/u/ui/chatInterfaceImpl/IChatCallOtherModel_UI/gotoSelectUserActivity(Landroid/content/Context;JIZ)V 5
return
.limit locals 5
.limit stack 8
.end method
