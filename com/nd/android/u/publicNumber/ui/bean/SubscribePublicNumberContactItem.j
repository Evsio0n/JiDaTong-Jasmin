.bytecode 50.0
.class public synchronized com/nd/android/u/publicNumber/ui/bean/SubscribePublicNumberContactItem
.super com/nd/android/u/controller/bean/contact/RecentContactItem

.field public static 'HAS_READ_KEY' Ljava/lang/String;

.field public static 'SUBSCRIBE_UNREAD_COUNT' Ljava/lang/String;

.method static <clinit>()V
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc "_subscribe_has_read_key"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putstatic com/nd/android/u/publicNumber/ui/bean/SubscribePublicNumberContactItem/HAS_READ_KEY Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc "_subscribe_unread_count"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putstatic com/nd/android/u/publicNumber/ui/bean/SubscribePublicNumberContactItem/SUBSCRIBE_UNREAD_COUNT Ljava/lang/String;
return
.limit locals 0
.limit stack 3
.end method

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
getfield com/nd/android/u/publicNumber/ui/bean/SubscribePublicNumberContactItem/mId Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
return
.limit locals 2
.limit stack 3
.end method

.method protected cursor2Identity(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/publicNumber/ui/bean/SubscribePublicNumberContactItem/mId Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public displayHeadPortrait(Landroid/widget/ImageView;)V
aload 1
getstatic com/nd/android/u/chat/R$drawable/subscribe_icon I
invokevirtual android/widget/ImageView/setImageResource(I)V
return
.limit locals 2
.limit stack 2
.end method

.method public equals(Ljava/lang/Object;)Z
aload 1
aload 0
if_acmpne L0
iconst_1
ireturn
L0:
aload 1
instanceof com/nd/android/u/publicNumber/ui/bean/SubscribePublicNumberContactItem
ifne L1
iconst_0
ireturn
L1:
aload 1
checkcast com/nd/android/u/publicNumber/ui/bean/SubscribePublicNumberContactItem
astore 1
aload 0
getfield com/nd/android/u/publicNumber/ui/bean/SubscribePublicNumberContactItem/mId Ljava/lang/String;
aload 1
getfield com/nd/android/u/publicNumber/ui/bean/SubscribePublicNumberContactItem/mId Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ireturn
.limit locals 2
.limit stack 2
.end method

.method public getContentText()Landroid/text/SpannableString;
aload 0
getfield com/nd/android/u/publicNumber/ui/bean/SubscribePublicNumberContactItem/spannableText Landroid/text/SpannableString;
ifnonnull L0
aload 0
aload 0
getfield com/nd/android/u/publicNumber/ui/bean/SubscribePublicNumberContactItem/mLastMsgContent Ljava/lang/String;
iconst_0
aload 0
getfield com/nd/android/u/publicNumber/ui/bean/SubscribePublicNumberContactItem/mLastMsgId Ljava/lang/String;
invokestatic com/nd/android/u/chatUiUtils/ChatCommonUtils/getSmileySpannableString(Ljava/lang/String;ILjava/lang/String;)Landroid/text/SpannableString;
putfield com/nd/android/u/publicNumber/ui/bean/SubscribePublicNumberContactItem/spannableText Landroid/text/SpannableString;
L0:
aload 0
getfield com/nd/android/u/publicNumber/ui/bean/SubscribePublicNumberContactItem/spannableText Landroid/text/SpannableString;
areturn
.limit locals 1
.limit stack 4
.end method

.method protected getDisplayMessage()Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
getstatic com/nd/android/u/controller/factory/MessageFactory/INSTANCE Lcom/nd/android/u/controller/factory/MessageFactory;
aload 0
invokevirtual com/nd/android/u/publicNumber/ui/bean/SubscribePublicNumberContactItem/getMessageType()I
aload 0
getfield com/nd/android/u/publicNumber/ui/bean/SubscribePublicNumberContactItem/mId Ljava/lang/String;
bipush 40
invokevirtual com/nd/android/u/controller/factory/MessageFactory/getMessage(ILjava/lang/String;I)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
areturn
.limit locals 1
.limit stack 4
.end method

.method public getGeneralId()J
aload 0
invokevirtual com/nd/android/u/publicNumber/ui/bean/SubscribePublicNumberContactItem/convertId()J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getIdentity()Ljava/lang/String;
aload 0
getfield com/nd/android/u/publicNumber/ui/bean/SubscribePublicNumberContactItem/mId Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getMessageType()I
bipush 6
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getMsgTitle(Landroid/content/Context;)Ljava/lang/String;
aload 1
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/chat/R$string/subscribe_public_number I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
areturn
.limit locals 2
.limit stack 2
.end method

.method public hashCode()I
aload 0
invokevirtual com/nd/android/u/publicNumber/ui/bean/SubscribePublicNumberContactItem/getHashCodeHelper()I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public isPrimaryKeyValid()Z
aload 0
invokevirtual com/nd/android/u/publicNumber/ui/bean/SubscribePublicNumberContactItem/isIdValid()Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public onClickHeadPortrait(Landroid/content/Context;)V
return
.limit locals 2
.limit stack 0
.end method

.method public onClickItem(Landroid/content/Context;)V
invokestatic com/product/android/utils/SharedPreferenceHelper/getInstance()Lcom/product/android/utils/SharedPreferenceHelper;
getstatic com/nd/android/u/publicNumber/ui/bean/SubscribePublicNumberContactItem/HAS_READ_KEY Ljava/lang/String;
iconst_1
invokevirtual com/product/android/utils/SharedPreferenceHelper/saveBooleanKey(Ljava/lang/String;Z)V
aload 1
new android/content/Intent
dup
aload 1
ldc com/nd/android/u/publicNumber/ui/activity/SubscribePublicNumberFragmentActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
return
.limit locals 2
.limit stack 5
.end method

.method public onForwarding(Landroid/app/Activity;Lcom/nd/android/u/controller/bean/contact/ForwardingParam;)V
return
.limit locals 3
.limit stack 0
.end method
