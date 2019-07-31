.bytecode 50.0
.class synchronized com/nd/android/u/ui/widge/ChatListItemView_System$1
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/android/u/ui/widge/ChatListItemView_System
.inner class inner com/nd/android/u/ui/widge/ChatListItemView_System$1

.field final synthetic 'this$0' Lcom/nd/android/u/ui/widge/ChatListItemView_System;

.method <init>(Lcom/nd/android/u/ui/widge/ChatListItemView_System;)V
aload 0
aload 1
putfield com/nd/android/u/ui/widge/ChatListItemView_System$1/this$0 Lcom/nd/android/u/ui/widge/ChatListItemView_System;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 1
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_System$1/this$0 Lcom/nd/android/u/ui/widge/ChatListItemView_System;
invokestatic com/nd/android/u/ui/widge/ChatListItemView_System/access$000(Lcom/nd/android/u/ui/widge/ChatListItemView_System;)Lcom/nd/android/u/bean4xy/DisplayMessage_System;
getfield com/nd/android/u/bean4xy/DisplayMessage_System/groupType I
istore 2
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_System$1/this$0 Lcom/nd/android/u/ui/widge/ChatListItemView_System;
invokestatic com/nd/android/u/ui/widge/ChatListItemView_System/access$000(Lcom/nd/android/u/ui/widge/ChatListItemView_System;)Lcom/nd/android/u/bean4xy/DisplayMessage_System;
getfield com/nd/android/u/bean4xy/DisplayMessage_System/groupId Ljava/lang/String;
invokestatic com/common/android/utils/FormatUtils/parseLong(Ljava/lang/String;)J
lstore 3
iload 2
invokestatic com/product/android/commonInterface/chat/ChatGroup/getDiscussionGroupType()I
if_icmpne L0
aload 1
ldc "gid"
lload 3
invokevirtual android/os/Bundle/putLong(Ljava/lang/String;J)V
getstatic com/nd/android/u/ChatEntry/INSTANCE Lcom/nd/android/u/ChatEntry;
getfield com/nd/android/u/ChatEntry/chatCallOtherModel_UI Lcom/nd/android/u/ui/chatInterfaceImpl/IChatCallOtherModel_UI;
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_System$1/this$0 Lcom/nd/android/u/ui/widge/ChatListItemView_System;
invokestatic com/nd/android/u/ui/widge/ChatListItemView_System/access$100(Lcom/nd/android/u/ui/widge/ChatListItemView_System;)Landroid/content/Context;
aload 1
invokeinterface com/nd/android/u/ui/chatInterfaceImpl/IChatCallOtherModel_UI/gotoDiscussionManagerActivity(Landroid/content/Context;Landroid/os/Bundle;)V 2
return
L0:
iload 2
invokestatic com/product/android/commonInterface/chat/ChatGroup/getNormalGroupType()I
if_icmpne L1
aload 1
ldc "gid"
lload 3
invokevirtual android/os/Bundle/putLong(Ljava/lang/String;J)V
getstatic com/nd/android/u/ChatEntry/INSTANCE Lcom/nd/android/u/ChatEntry;
getfield com/nd/android/u/ChatEntry/chatCallOtherModel_UI Lcom/nd/android/u/ui/chatInterfaceImpl/IChatCallOtherModel_UI;
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_System$1/this$0 Lcom/nd/android/u/ui/widge/ChatListItemView_System;
invokestatic com/nd/android/u/ui/widge/ChatListItemView_System/access$100(Lcom/nd/android/u/ui/widge/ChatListItemView_System;)Landroid/content/Context;
aload 1
invokeinterface com/nd/android/u/ui/chatInterfaceImpl/IChatCallOtherModel_UI/gotoGroupManagerActivity(Landroid/content/Context;Landroid/os/Bundle;)V 2
return
L1:
iload 2
invokestatic com/product/android/commonInterface/chat/ChatGroup/getDepartGroupType()I
if_icmpne L2
aload 1
ldc "deptid"
lload 3
invokevirtual android/os/Bundle/putLong(Ljava/lang/String;J)V
getstatic com/nd/android/u/ChatEntry/INSTANCE Lcom/nd/android/u/ChatEntry;
getfield com/nd/android/u/ChatEntry/chatCallOtherModel_UI Lcom/nd/android/u/ui/chatInterfaceImpl/IChatCallOtherModel_UI;
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_System$1/this$0 Lcom/nd/android/u/ui/widge/ChatListItemView_System;
invokestatic com/nd/android/u/ui/widge/ChatListItemView_System/access$100(Lcom/nd/android/u/ui/widge/ChatListItemView_System;)Landroid/content/Context;
aload 1
invokeinterface com/nd/android/u/ui/chatInterfaceImpl/IChatCallOtherModel_UI/gotoGroupManagerActivity(Landroid/content/Context;Landroid/os/Bundle;)V 2
return
L2:
iload 2
invokestatic com/product/android/commonInterface/chat/ChatGroup/getUntidGroupType()I
if_icmpne L3
new android/content/Intent
dup
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_System$1/this$0 Lcom/nd/android/u/ui/widge/ChatListItemView_System;
invokestatic com/nd/android/u/ui/widge/ChatListItemView_System/access$100(Lcom/nd/android/u/ui/widge/ChatListItemView_System;)Landroid/content/Context;
ldc com/nd/android/u/ui/activity/message_chat/ChatActivity_Notice
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 1
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_System$1/this$0 Lcom/nd/android/u/ui/widge/ChatListItemView_System;
invokestatic com/nd/android/u/ui/widge/ChatListItemView_System/access$100(Lcom/nd/android/u/ui/widge/ChatListItemView_System;)Landroid/content/Context;
aload 1
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
return
L3:
ldc "CHAT"
ldc "UNKNOW GROUP TYPE"
invokestatic com/product/android/utils/LogUtils/e(Ljava/lang/String;Ljava/lang/String;)V
return
.limit locals 5
.limit stack 4
.end method
