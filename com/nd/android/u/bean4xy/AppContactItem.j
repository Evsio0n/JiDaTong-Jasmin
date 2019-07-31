.bytecode 50.0
.class public synchronized com/nd/android/u/bean4xy/AppContactItem
.super com/nd/android/u/controller/bean/contact/BaseAppContactItem

.method public <init>()V
aload 0
invokespecial com/nd/android/u/controller/bean/contact/BaseAppContactItem/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public getContentText()Landroid/text/SpannableString;
aload 0
getfield com/nd/android/u/bean4xy/AppContactItem/spannableText Landroid/text/SpannableString;
ifnonnull L0
aload 0
aload 0
getfield com/nd/android/u/bean4xy/AppContactItem/mLastMsgContent Ljava/lang/String;
iconst_0
aload 0
getfield com/nd/android/u/bean4xy/AppContactItem/mLastMsgId Ljava/lang/String;
invokestatic com/nd/android/u/chatUiUtils/ChatCommonUtils/getSmileySpannableString(Ljava/lang/String;ILjava/lang/String;)Landroid/text/SpannableString;
putfield com/nd/android/u/bean4xy/AppContactItem/spannableText Landroid/text/SpannableString;
L0:
aload 0
getfield com/nd/android/u/bean4xy/AppContactItem/spannableText Landroid/text/SpannableString;
areturn
.limit locals 1
.limit stack 4
.end method
