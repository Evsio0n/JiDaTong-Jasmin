.bytecode 50.0
.class public synchronized com/nd/android/u/publicNumber/ui/bean/PublicNumberContactItem
.super com/nd/android/u/controller/bean/contact/RecentContactItem

.method public <init>()V
aload 0
invokespecial com/nd/android/u/controller/bean/contact/RecentContactItem/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public addIdentity(Landroid/content/ContentValues;)V
aload 1
ldc "extra_id"
aload 0
getfield com/nd/android/u/publicNumber/ui/bean/PublicNumberContactItem/mId Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
return
.limit locals 2
.limit stack 3
.end method

.method protected cursor2Identity(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/publicNumber/ui/bean/PublicNumberContactItem/mId Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public displayHeadPortrait(Landroid/widget/ImageView;)V
getstatic com/nd/android/u/publicNumber/controller/PortraitManager/INSTANCE Lcom/nd/android/u/publicNumber/controller/PortraitManager;
aload 0
getfield com/nd/android/u/publicNumber/ui/bean/PublicNumberContactItem/mId Ljava/lang/String;
aload 1
iconst_0
invokevirtual com/nd/android/u/publicNumber/controller/PortraitManager/displayPublicNumberPortrait(Ljava/lang/String;Landroid/widget/ImageView;Z)V
return
.limit locals 2
.limit stack 4
.end method

.method public equals(Ljava/lang/Object;)Z
aload 1
aload 0
if_acmpne L0
iconst_1
ireturn
L0:
aload 1
instanceof com/nd/android/u/publicNumber/ui/bean/PublicNumberContactItem
ifne L1
iconst_0
ireturn
L1:
aload 1
checkcast com/nd/android/u/publicNumber/ui/bean/PublicNumberContactItem
astore 1
aload 0
getfield com/nd/android/u/publicNumber/ui/bean/PublicNumberContactItem/mId Ljava/lang/String;
aload 1
getfield com/nd/android/u/publicNumber/ui/bean/PublicNumberContactItem/mId Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ireturn
.limit locals 2
.limit stack 2
.end method

.method public getContentText()Landroid/text/SpannableString;
aload 0
getfield com/nd/android/u/publicNumber/ui/bean/PublicNumberContactItem/spannableText Landroid/text/SpannableString;
ifnonnull L0
aload 0
aload 0
getfield com/nd/android/u/publicNumber/ui/bean/PublicNumberContactItem/mLastMsgContent Ljava/lang/String;
iconst_0
aload 0
getfield com/nd/android/u/publicNumber/ui/bean/PublicNumberContactItem/mLastMsgId Ljava/lang/String;
invokestatic com/nd/android/u/chatUiUtils/ChatCommonUtils/getSmileySpannableString(Ljava/lang/String;ILjava/lang/String;)Landroid/text/SpannableString;
putfield com/nd/android/u/publicNumber/ui/bean/PublicNumberContactItem/spannableText Landroid/text/SpannableString;
L0:
aload 0
getfield com/nd/android/u/publicNumber/ui/bean/PublicNumberContactItem/spannableText Landroid/text/SpannableString;
areturn
.limit locals 1
.limit stack 4
.end method

.method protected getDisplayMessage()Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
getstatic com/nd/android/u/controller/factory/MessageFactory/INSTANCE Lcom/nd/android/u/controller/factory/MessageFactory;
aload 0
invokevirtual com/nd/android/u/publicNumber/ui/bean/PublicNumberContactItem/getMessageType()I
aload 0
getfield com/nd/android/u/publicNumber/ui/bean/PublicNumberContactItem/mId Ljava/lang/String;
bipush 40
invokevirtual com/nd/android/u/controller/factory/MessageFactory/getMessage(ILjava/lang/String;I)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
areturn
.limit locals 1
.limit stack 4
.end method

.method public getGeneralId()J
aload 0
invokevirtual com/nd/android/u/publicNumber/ui/bean/PublicNumberContactItem/convertId()J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getIdentity()Ljava/lang/String;
aload 0
getfield com/nd/android/u/publicNumber/ui/bean/PublicNumberContactItem/mId Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getMessageType()I
iconst_5
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getMsgTitle(Landroid/content/Context;)Ljava/lang/String;
aload 0
getfield com/nd/android/u/publicNumber/ui/bean/PublicNumberContactItem/name Ljava/lang/String;
ifnonnull L0
aload 0
aload 0
getfield com/nd/android/u/publicNumber/ui/bean/PublicNumberContactItem/mId Ljava/lang/String;
invokestatic com/nd/android/u/publicNumber/controller/PublicNumberController/getPublicNumberName(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/publicNumber/ui/bean/PublicNumberContactItem/name Ljava/lang/String;
aload 0
getfield com/nd/android/u/publicNumber/ui/bean/PublicNumberContactItem/name Ljava/lang/String;
ifnonnull L0
aload 0
getfield com/nd/android/u/publicNumber/ui/bean/PublicNumberContactItem/mId Ljava/lang/String;
areturn
L0:
aload 0
getfield com/nd/android/u/publicNumber/ui/bean/PublicNumberContactItem/name Ljava/lang/String;
areturn
.limit locals 2
.limit stack 2
.end method

.method public hashCode()I
aload 0
invokevirtual com/nd/android/u/publicNumber/ui/bean/PublicNumberContactItem/getHashCodeHelper()I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public isPrimaryKeyValid()Z
aload 0
invokevirtual com/nd/android/u/publicNumber/ui/bean/PublicNumberContactItem/isIdValid()Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public isSubscribePublicNumber()Z
aload 0
invokevirtual com/nd/android/u/publicNumber/ui/bean/PublicNumberContactItem/getGeneralId()J
lstore 1
lload 1
lconst_0
lcmp
ifle L0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/android/u/publicNumber/controller/PublicNumberController/getPublicNumberInfo(Ljava/lang/String;)Lcom/nd/android/u/publicNumber/controller/bean/PublicNumberInfo;
astore 3
aload 3
ifnull L0
aload 3
getfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/type I
iconst_2
if_icmpne L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 4
.limit stack 4
.end method

.method public onClickHeadPortrait(Landroid/content/Context;)V
aload 0
invokevirtual com/nd/android/u/publicNumber/ui/bean/PublicNumberContactItem/convertId()J
lstore 2
lload 2
lconst_0
lcmp
ifge L0
return
L0:
new android/content/Intent
dup
aload 1
ldc com/nd/android/u/publicNumber/ui/activity/PspInformationActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 4
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 5
aload 5
ldc "generalid"
lload 2
invokevirtual android/os/Bundle/putLong(Ljava/lang/String;J)V
aload 5
ldc "name"
aload 0
getfield com/nd/android/u/publicNumber/ui/bean/PublicNumberContactItem/mId Ljava/lang/String;
invokestatic com/nd/android/u/publicNumber/controller/PublicNumberController/getPublicNumberName(Ljava/lang/String;)Ljava/lang/String;
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
aload 4
aload 5
invokevirtual android/content/Intent/putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
pop
aload 1
aload 4
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
return
.limit locals 6
.limit stack 4
.end method

.method public onClickItem(Landroid/content/Context;)V
aload 0
invokevirtual com/nd/android/u/publicNumber/ui/bean/PublicNumberContactItem/convertId()J
lstore 4
lload 4
lconst_0
lcmp
ifge L0
return
L0:
aload 0
invokevirtual com/nd/android/u/publicNumber/ui/bean/PublicNumberContactItem/isSubscribePublicNumber()Z
ifeq L1
invokestatic com/product/android/utils/SharedPreferenceHelper/getInstance()Lcom/product/android/utils/SharedPreferenceHelper;
getstatic com/nd/android/u/publicNumber/ui/bean/SubscribePublicNumberContactItem/SUBSCRIBE_UNREAD_COUNT Ljava/lang/String;
iconst_0
invokevirtual com/product/android/utils/SharedPreferenceHelper/loadIntKey(Ljava/lang/String;I)I
istore 2
aload 0
invokevirtual com/nd/android/u/publicNumber/ui/bean/PublicNumberContactItem/getUnreadCount()I
istore 3
invokestatic com/product/android/utils/SharedPreferenceHelper/getInstance()Lcom/product/android/utils/SharedPreferenceHelper;
getstatic com/nd/android/u/publicNumber/ui/bean/SubscribePublicNumberContactItem/SUBSCRIBE_UNREAD_COUNT Ljava/lang/String;
iload 2
iload 3
isub
invokevirtual com/product/android/utils/SharedPreferenceHelper/saveIntKey(Ljava/lang/String;I)V
L1:
new android/content/Intent
dup
aload 1
ldc com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 6
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 7
aload 7
ldc "MESSAGE_TYPE"
iconst_5
invokevirtual android/os/Bundle/putInt(Ljava/lang/String;I)V
aload 7
ldc "generalid"
lload 4
invokevirtual android/os/Bundle/putLong(Ljava/lang/String;J)V
aload 7
ldc "name"
aload 0
getfield com/nd/android/u/publicNumber/ui/bean/PublicNumberContactItem/name Ljava/lang/String;
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
aload 6
aload 7
invokevirtual android/content/Intent/putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
pop
aload 1
aload 6
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
return
.limit locals 8
.limit stack 4
.end method

.method public onForwarding(Landroid/app/Activity;Lcom/nd/android/u/controller/bean/contact/ForwardingParam;)V
return
.limit locals 3
.limit stack 0
.end method
