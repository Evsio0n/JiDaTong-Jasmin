.bytecode 50.0
.class synchronized com/nd/android/u/ui/widge/ChatListItemView_System$2
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/android/u/ui/widge/ChatListItemView_System
.inner class inner com/nd/android/u/ui/widge/ChatListItemView_System$2

.field final synthetic 'this$0' Lcom/nd/android/u/ui/widge/ChatListItemView_System;

.method <init>(Lcom/nd/android/u/ui/widge/ChatListItemView_System;)V
aload 0
aload 1
putfield com/nd/android/u/ui/widge/ChatListItemView_System$2/this$0 Lcom/nd/android/u/ui/widge/ChatListItemView_System;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_System$2/this$0 Lcom/nd/android/u/ui/widge/ChatListItemView_System;
invokestatic com/nd/android/u/ui/widge/ChatListItemView_System/access$000(Lcom/nd/android/u/ui/widge/ChatListItemView_System;)Lcom/nd/android/u/bean4xy/DisplayMessage_System;
invokevirtual com/nd/android/u/bean4xy/DisplayMessage_System/isRead()Z
ifeq L0
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 1
aload 1
ldc "gid"
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_System$2/this$0 Lcom/nd/android/u/ui/widge/ChatListItemView_System;
invokestatic com/nd/android/u/ui/widge/ChatListItemView_System/access$000(Lcom/nd/android/u/ui/widge/ChatListItemView_System;)Lcom/nd/android/u/bean4xy/DisplayMessage_System;
invokevirtual com/nd/android/u/bean4xy/DisplayMessage_System/getTypeId()Ljava/lang/Object;
checkcast java/lang/String
invokestatic java/lang/Long/parseLong(Ljava/lang/String;)J
invokevirtual android/os/Bundle/putLong(Ljava/lang/String;J)V
getstatic com/nd/android/u/ChatEntry/INSTANCE Lcom/nd/android/u/ChatEntry;
getfield com/nd/android/u/ChatEntry/chatCallOtherModel_UI Lcom/nd/android/u/ui/chatInterfaceImpl/IChatCallOtherModel_UI;
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_System$2/this$0 Lcom/nd/android/u/ui/widge/ChatListItemView_System;
invokestatic com/nd/android/u/ui/widge/ChatListItemView_System/access$100(Lcom/nd/android/u/ui/widge/ChatListItemView_System;)Landroid/content/Context;
aload 1
invokeinterface com/nd/android/u/ui/chatInterfaceImpl/IChatCallOtherModel_UI/gotoGroupManagerActivity(Landroid/content/Context;Landroid/os/Bundle;)V 2
L1:
invokestatic com/nd/android/u/controller/observer/MessageDispatcher/getInstance()Lcom/nd/android/u/controller/observer/MessageDispatcher;
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_System$2/this$0 Lcom/nd/android/u/ui/widge/ChatListItemView_System;
invokestatic com/nd/android/u/ui/widge/ChatListItemView_System/access$000(Lcom/nd/android/u/ui/widge/ChatListItemView_System;)Lcom/nd/android/u/bean4xy/DisplayMessage_System;
bipush 99
invokevirtual com/nd/android/u/controller/observer/MessageDispatcher/notifyMessageStateChanged(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;I)V
return
L0:
invokestatic ims/manager/IMSStateManager/getInstance()Lims/manager/IMSStateManager;
invokevirtual ims/manager/IMSStateManager/isOnline()Z
ifne L2
getstatic com/nd/android/u/chat/R$string/network_error_to_set_network I
invokestatic com/common/android/utils/ToastUtils/display(I)V
return
L2:
new com/nd/android/u/ui/dialog/AddGroupConfirmDialog
dup
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_System$2/this$0 Lcom/nd/android/u/ui/widge/ChatListItemView_System;
invokestatic com/nd/android/u/ui/widge/ChatListItemView_System/access$100(Lcom/nd/android/u/ui/widge/ChatListItemView_System;)Landroid/content/Context;
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_System$2/this$0 Lcom/nd/android/u/ui/widge/ChatListItemView_System;
invokestatic com/nd/android/u/ui/widge/ChatListItemView_System/access$000(Lcom/nd/android/u/ui/widge/ChatListItemView_System;)Lcom/nd/android/u/bean4xy/DisplayMessage_System;
invokespecial com/nd/android/u/ui/dialog/AddGroupConfirmDialog/<init>(Landroid/content/Context;Lcom/nd/android/u/bean4xy/DisplayMessage_System;)V
invokevirtual android/app/Dialog/show()V
goto L1
.limit locals 2
.limit stack 4
.end method
