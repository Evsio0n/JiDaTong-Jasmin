.bytecode 50.0
.class public synchronized com/nd/android/u/bean4xy/GroupContactItem
.super com/nd/android/u/controller/bean/contact/BaseGroupContactItem

.method public <init>()V
aload 0
invokespecial com/nd/android/u/controller/bean/contact/BaseGroupContactItem/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public getContentText()Landroid/text/SpannableString;
aload 0
getfield com/nd/android/u/bean4xy/GroupContactItem/spannableText Landroid/text/SpannableString;
ifnonnull L0
aload 0
getfield com/nd/android/u/bean4xy/GroupContactItem/mVersion I
iconst_1
if_icmpne L1
aload 0
getfield com/nd/android/u/bean4xy/GroupContactItem/mLastMsgContent Ljava/lang/String;
astore 1
L2:
aload 0
aload 1
iconst_0
aload 0
getfield com/nd/android/u/bean4xy/GroupContactItem/mLastMsgId Ljava/lang/String;
invokestatic com/nd/android/u/chatUiUtils/ChatCommonUtils/getSmileySpannableString(Ljava/lang/String;ILjava/lang/String;)Landroid/text/SpannableString;
putfield com/nd/android/u/bean4xy/GroupContactItem/spannableText Landroid/text/SpannableString;
L0:
aload 0
getfield com/nd/android/u/bean4xy/GroupContactItem/spannableText Landroid/text/SpannableString;
areturn
L1:
aload 0
getfield com/nd/android/u/bean4xy/GroupContactItem/mLastMsgContent Ljava/lang/String;
aload 0
getfield com/nd/android/u/bean4xy/GroupContactItem/mLastMsgContentType I
invokestatic com/nd/android/u/chatUiUtils/ChatCommonUtils/analyseOldMessage(Ljava/lang/String;I)Ljava/lang/String;
astore 1
goto L2
.limit locals 2
.limit stack 4
.end method

.method public onClickHeadPortrait(Landroid/content/Context;)V
aload 0
invokevirtual com/nd/android/u/bean4xy/GroupContactItem/convertId()J
lstore 2
lload 2
lconst_0
lcmp
ifge L0
L1:
return
L0:
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 4
aload 0
getfield com/nd/android/u/bean4xy/GroupContactItem/subType I
invokestatic com/product/android/commonInterface/chat/ChatGroup/getDiscussionGroupType()I
if_icmpne L2
aload 4
ldc "gid"
lload 2
invokevirtual android/os/Bundle/putLong(Ljava/lang/String;J)V
getstatic com/nd/android/u/ChatEntry/INSTANCE Lcom/nd/android/u/ChatEntry;
getfield com/nd/android/u/ChatEntry/chatCallOtherModel_UI Lcom/nd/android/u/ui/chatInterfaceImpl/IChatCallOtherModel_UI;
aload 1
aload 4
invokeinterface com/nd/android/u/ui/chatInterfaceImpl/IChatCallOtherModel_UI/gotoDiscussionManagerActivity(Landroid/content/Context;Landroid/os/Bundle;)V 2
return
L2:
aload 0
getfield com/nd/android/u/bean4xy/GroupContactItem/subType I
invokestatic com/product/android/commonInterface/chat/ChatGroup/getNormalGroupType()I
if_icmpne L3
aload 4
ldc "gid"
lload 2
invokevirtual android/os/Bundle/putLong(Ljava/lang/String;J)V
getstatic com/nd/android/u/ChatEntry/INSTANCE Lcom/nd/android/u/ChatEntry;
getfield com/nd/android/u/ChatEntry/chatCallOtherModel_UI Lcom/nd/android/u/ui/chatInterfaceImpl/IChatCallOtherModel_UI;
aload 1
aload 4
invokeinterface com/nd/android/u/ui/chatInterfaceImpl/IChatCallOtherModel_UI/gotoGroupManagerActivity(Landroid/content/Context;Landroid/os/Bundle;)V 2
return
L3:
aload 0
getfield com/nd/android/u/bean4xy/GroupContactItem/subType I
invokestatic com/product/android/commonInterface/chat/ChatGroup/getDepartGroupType()I
if_icmpne L4
aload 4
ldc "deptid"
lload 2
invokevirtual android/os/Bundle/putLong(Ljava/lang/String;J)V
getstatic com/nd/android/u/ChatEntry/INSTANCE Lcom/nd/android/u/ChatEntry;
getfield com/nd/android/u/ChatEntry/chatCallOtherModel_UI Lcom/nd/android/u/ui/chatInterfaceImpl/IChatCallOtherModel_UI;
aload 1
aload 4
invokeinterface com/nd/android/u/ui/chatInterfaceImpl/IChatCallOtherModel_UI/gotoGroupManagerActivity(Landroid/content/Context;Landroid/os/Bundle;)V 2
return
L4:
aload 0
getfield com/nd/android/u/bean4xy/GroupContactItem/subType I
invokestatic com/product/android/commonInterface/chat/ChatGroup/getUntidGroupType()I
if_icmpne L1
aload 0
invokevirtual com/nd/android/u/bean4xy/GroupContactItem/getDisplayClass()Ljava/lang/Class;
astore 4
aload 4
ifnonnull L1
aload 1
new android/content/Intent
dup
aload 1
aload 4
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
return
.limit locals 5
.limit stack 5
.end method

.method public onForwarding(Landroid/app/Activity;Lcom/nd/android/u/controller/bean/contact/ForwardingParam;)V
aload 2
getfield com/nd/android/u/controller/bean/contact/ForwardingParam/msgType I
bipush 80
if_icmpeq L0
aload 2
getfield com/nd/android/u/controller/bean/contact/ForwardingParam/msgType I
sipush 20481
if_icmpne L1
L0:
aload 1
getstatic com/nd/android/u/chat/R$string/chat_transmit_group I
invokestatic com/nd/android/u/allCommonUtils/ToastUtils/display(Landroid/content/Context;I)V
L2:
return
L1:
aload 0
invokevirtual com/nd/android/u/bean4xy/GroupContactItem/convertId()J
lstore 3
lload 3
lconst_0
lcmp
iflt L2
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 5
aload 5
ldc "forward_type"
aload 2
getfield com/nd/android/u/controller/bean/contact/ForwardingParam/type I
invokevirtual android/os/Bundle/putInt(Ljava/lang/String;I)V
aload 2
getfield com/nd/android/u/controller/bean/contact/ForwardingParam/type I
iconst_1
if_icmpne L3
aload 5
ldc "repost_data"
aload 2
getfield com/nd/android/u/controller/bean/contact/ForwardingParam/generateId Ljava/lang/String;
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
L4:
aload 5
ldc "gid"
lload 3
invokevirtual android/os/Bundle/putLong(Ljava/lang/String;J)V
aload 5
ldc "name"
aload 0
getfield com/nd/android/u/bean4xy/GroupContactItem/name Ljava/lang/String;
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
aload 5
ldc "MESSAGE_TYPE"
iconst_1
invokevirtual android/os/Bundle/putInt(Ljava/lang/String;I)V
aload 5
ldc "grouptype"
aload 0
getfield com/nd/android/u/bean4xy/GroupContactItem/subType I
invokevirtual android/os/Bundle/putInt(Ljava/lang/String;I)V
new android/content/Intent
dup
aload 1
aload 0
invokevirtual com/nd/android/u/bean4xy/GroupContactItem/getDisplayClass()Ljava/lang/Class;
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 2
aload 2
aload 5
invokevirtual android/content/Intent/putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
pop
aload 1
aload 2
aload 0
aload 1
invokevirtual com/nd/android/u/bean4xy/GroupContactItem/getMsgTitle(Landroid/content/Context;)Ljava/lang/String;
invokestatic com/nd/android/u/chatUiUtils/ChatViewUtil/showDlg(Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/String;)V
return
L3:
aload 2
getfield com/nd/android/u/controller/bean/contact/ForwardingParam/type I
iconst_2
if_icmpne L2
aload 5
ldc "repost_data"
aload 2
getfield com/nd/android/u/controller/bean/contact/ForwardingParam/filePath Ljava/lang/String;
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
goto L4
.limit locals 6
.limit stack 4
.end method
