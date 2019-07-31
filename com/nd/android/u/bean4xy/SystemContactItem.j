.bytecode 50.0
.class public synchronized com/nd/android/u/bean4xy/SystemContactItem
.super com/nd/android/u/controller/bean/contact/BaseSystemContactItem

.method public <init>()V
aload 0
invokespecial com/nd/android/u/controller/bean/contact/BaseSystemContactItem/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public getContentText()Landroid/text/SpannableString;
aload 0
getfield com/nd/android/u/bean4xy/SystemContactItem/spannableText Landroid/text/SpannableString;
ifnonnull L0
aload 0
aload 0
getfield com/nd/android/u/bean4xy/SystemContactItem/mLastMsgContent Ljava/lang/String;
iconst_0
aload 0
getfield com/nd/android/u/bean4xy/SystemContactItem/mLastMsgId Ljava/lang/String;
invokestatic com/nd/android/u/chatUiUtils/ChatCommonUtils/getSmileySpannableString(Ljava/lang/String;ILjava/lang/String;)Landroid/text/SpannableString;
putfield com/nd/android/u/bean4xy/SystemContactItem/spannableText Landroid/text/SpannableString;
L0:
aload 0
getfield com/nd/android/u/bean4xy/SystemContactItem/spannableText Landroid/text/SpannableString;
areturn
.limit locals 1
.limit stack 4
.end method
