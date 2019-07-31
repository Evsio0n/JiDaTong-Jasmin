.bytecode 50.0
.class public synchronized com/nd/android/u/bean4xy/PersonContactItem
.super com/nd/android/u/controller/bean/contact/BasePersonContactItem

.method public <init>()V
aload 0
invokespecial com/nd/android/u/controller/bean/contact/BasePersonContactItem/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method private isIgnoreItem(J)Z
lload 1
ldc2_w 10003057L
lcmp
ifeq L0
lload 1
ldc2_w 666666666L
lcmp
ifeq L0
lload 1
ldc2_w 999999999L
lcmp
ifne L1
L0:
iconst_1
ireturn
L1:
iconst_0
ireturn
.limit locals 3
.limit stack 4
.end method

.method public getContentText()Landroid/text/SpannableString;
aload 0
getfield com/nd/android/u/bean4xy/PersonContactItem/spannableText Landroid/text/SpannableString;
ifnonnull L0
aload 0
getfield com/nd/android/u/bean4xy/PersonContactItem/mVersion I
iconst_1
if_icmpne L1
aload 0
getfield com/nd/android/u/bean4xy/PersonContactItem/mLastMsgContent Ljava/lang/String;
astore 1
L2:
aload 0
aload 1
iconst_0
aload 0
getfield com/nd/android/u/bean4xy/PersonContactItem/mLastMsgId Ljava/lang/String;
invokestatic com/nd/android/u/chatUiUtils/ChatCommonUtils/getSmileySpannableString(Ljava/lang/String;ILjava/lang/String;)Landroid/text/SpannableString;
putfield com/nd/android/u/bean4xy/PersonContactItem/spannableText Landroid/text/SpannableString;
L0:
aload 0
getfield com/nd/android/u/bean4xy/PersonContactItem/spannableText Landroid/text/SpannableString;
areturn
L1:
aload 0
getfield com/nd/android/u/bean4xy/PersonContactItem/mLastMsgContent Ljava/lang/String;
aload 0
getfield com/nd/android/u/bean4xy/PersonContactItem/mLastMsgContentType I
invokestatic com/nd/android/u/chatUiUtils/ChatCommonUtils/analyseOldMessage(Ljava/lang/String;I)Ljava/lang/String;
astore 1
goto L2
.limit locals 2
.limit stack 4
.end method

.method public onClickHeadPortrait(Landroid/content/Context;)V
aload 0
invokevirtual com/nd/android/u/bean4xy/PersonContactItem/convertId()J
lstore 2
lload 2
lconst_0
lcmp
ifge L0
L1:
return
L0:
aload 0
lload 2
invokespecial com/nd/android/u/bean4xy/PersonContactItem/isIgnoreItem(J)Z
ifne L1
getstatic com/nd/android/u/ChatEntry/INSTANCE Lcom/nd/android/u/ChatEntry;
getfield com/nd/android/u/ChatEntry/chatCallOtherModel_UI Lcom/nd/android/u/ui/chatInterfaceImpl/IChatCallOtherModel_UI;
aload 1
lload 2
invokeinterface com/nd/android/u/ui/chatInterfaceImpl/IChatCallOtherModel_UI/gotoTweetProfileActivity(Landroid/content/Context;J)V 3
return
.limit locals 4
.limit stack 4
.end method

.method public onForwarding(Landroid/app/Activity;Lcom/nd/android/u/controller/bean/contact/ForwardingParam;)V
aload 0
invokevirtual com/nd/android/u/bean4xy/PersonContactItem/convertId()J
lstore 3
lload 3
lconst_0
lcmp
ifge L0
L1:
return
L0:
aload 2
ifnull L1
aload 0
lload 3
invokespecial com/nd/android/u/bean4xy/PersonContactItem/isIgnoreItem(J)Z
ifeq L2
aload 1
getstatic com/nd/android/u/chat/R$string/chat_transmit_owner I
invokestatic com/nd/android/u/allCommonUtils/ToastUtils/display(Landroid/content/Context;I)V
return
L2:
lload 3
aload 2
getfield com/nd/android/u/controller/bean/contact/ForwardingParam/userId J
lcmp
ifne L3
aload 1
getstatic com/nd/android/u/chat/R$string/chat_transmit_owner I
invokestatic com/nd/android/u/allCommonUtils/ToastUtils/display(Landroid/content/Context;I)V
return
L3:
lload 3
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/getOapUid()J 0
lcmp
ifne L4
aload 1
getstatic com/nd/android/u/chat/R$string/chat_transmit_self I
invokestatic com/nd/android/u/allCommonUtils/ToastUtils/display(Landroid/content/Context;I)V
return
L4:
new android/content/Intent
dup
aload 1
aload 0
invokevirtual com/nd/android/u/bean4xy/PersonContactItem/getDisplayClass()Ljava/lang/Class;
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 5
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 6
aload 6
ldc "fid"
lload 3
invokevirtual android/os/Bundle/putLong(Ljava/lang/String;J)V
aload 6
ldc "name"
aload 0
getfield com/nd/android/u/bean4xy/PersonContactItem/name Ljava/lang/String;
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
aload 6
ldc "forward_type"
aload 2
getfield com/nd/android/u/controller/bean/contact/ForwardingParam/type I
invokevirtual android/os/Bundle/putInt(Ljava/lang/String;I)V
aload 2
getfield com/nd/android/u/controller/bean/contact/ForwardingParam/type I
iconst_1
if_icmpne L5
aload 6
ldc "repost_data"
aload 2
getfield com/nd/android/u/controller/bean/contact/ForwardingParam/generateId Ljava/lang/String;
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
L6:
aload 5
aload 6
invokevirtual android/content/Intent/putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
pop
aload 1
aload 5
aload 0
aload 1
invokevirtual com/nd/android/u/bean4xy/PersonContactItem/getMsgTitle(Landroid/content/Context;)Ljava/lang/String;
invokestatic com/nd/android/u/chatUiUtils/ChatViewUtil/showDlg(Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/String;)V
return
L5:
aload 2
getfield com/nd/android/u/controller/bean/contact/ForwardingParam/type I
iconst_2
if_icmpne L1
aload 6
ldc "repost_data"
aload 2
getfield com/nd/android/u/controller/bean/contact/ForwardingParam/filePath Ljava/lang/String;
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
goto L6
.limit locals 7
.limit stack 4
.end method
