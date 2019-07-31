.bytecode 50.0
.class public synchronized abstract com/nd/android/u/controller/bean/contact/BaseAppContactItem
.super com/nd/android/u/controller/bean/contact/RecentContactItem
.inner class public static AppIdentity inner com/nd/android/u/controller/bean/contact/BaseAppContactItem$AppIdentity outer com/nd/android/u/controller/bean/contact/BaseAppContactItem

.field protected volatile 'mCode' Ljava/lang/String;

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
invokevirtual com/nd/android/u/controller/bean/contact/BaseAppContactItem/getIdentity()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
return
.limit locals 2
.limit stack 3
.end method

.method protected cursor2Identity(Ljava/lang/String;)V
new com/nd/android/u/controller/bean/contact/BaseAppContactItem$AppIdentity
dup
invokespecial com/nd/android/u/controller/bean/contact/BaseAppContactItem$AppIdentity/<init>()V
astore 2
aload 2
aload 1
invokestatic com/nd/android/u/controller/bean/contact/BaseAppContactItem$AppIdentity/access$0(Lcom/nd/android/u/controller/bean/contact/BaseAppContactItem$AppIdentity;Ljava/lang/String;)V
aload 0
aload 2
invokestatic com/nd/android/u/controller/bean/contact/BaseAppContactItem$AppIdentity/access$1(Lcom/nd/android/u/controller/bean/contact/BaseAppContactItem$AppIdentity;)Ljava/lang/String;
putfield com/nd/android/u/controller/bean/contact/BaseAppContactItem/mId Ljava/lang/String;
aload 0
aload 2
invokestatic com/nd/android/u/controller/bean/contact/BaseAppContactItem$AppIdentity/access$2(Lcom/nd/android/u/controller/bean/contact/BaseAppContactItem$AppIdentity;)Ljava/lang/String;
putfield com/nd/android/u/controller/bean/contact/BaseAppContactItem/mCode Ljava/lang/String;
return
.limit locals 3
.limit stack 2
.end method

.method public displayHeadPortrait(Landroid/widget/ImageView;)V
aload 0
invokevirtual com/nd/android/u/controller/bean/contact/BaseAppContactItem/convertId()J
lstore 2
lload 2
lconst_0
lcmp
iflt L0
getstatic com/nd/android/u/controller/factory/AppMessageFactory/INSTANCE Lcom/nd/android/u/controller/factory/AppMessageFactory;
lload 2
l2i
aload 0
getfield com/nd/android/u/controller/bean/contact/BaseAppContactItem/mCode Ljava/lang/String;
invokevirtual com/nd/android/u/controller/factory/AppMessageFactory/getAppMessage(ILjava/lang/String;)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
checkcast com/nd/android/u/controller/bean/message/BaseDisplayMessage_App
astore 4
aload 4
ifnonnull L1
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/headerBitmapInterface Lcom/nd/android/u/controller/outInterface/HeaderBitmapCallbackInterface;
aload 1
lload 2
l2i
aload 0
getfield com/nd/android/u/controller/bean/contact/BaseAppContactItem/mCode Ljava/lang/String;
invokeinterface com/nd/android/u/controller/outInterface/HeaderBitmapCallbackInterface/displayByApp(Landroid/widget/ImageView;ILjava/lang/String;)V 3
L0:
return
L1:
aload 4
aload 1
invokevirtual com/nd/android/u/controller/bean/message/BaseDisplayMessage_App/showContactPortrait(Landroid/widget/ImageView;)V
return
.limit locals 5
.limit stack 4
.end method

.method public equals(Ljava/lang/Object;)Z
aload 1
aload 0
if_acmpne L0
L1:
iconst_1
ireturn
L0:
aload 1
instanceof com/nd/android/u/controller/bean/contact/BaseAppContactItem
ifne L2
iconst_0
ireturn
L2:
aload 1
checkcast com/nd/android/u/controller/bean/contact/BaseAppContactItem
astore 1
aload 0
getfield com/nd/android/u/controller/bean/contact/BaseAppContactItem/mId Ljava/lang/String;
aload 1
getfield com/nd/android/u/controller/bean/contact/BaseAppContactItem/mId Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L3
iconst_0
ireturn
L3:
aload 0
getfield com/nd/android/u/controller/bean/contact/BaseAppContactItem/mCode Ljava/lang/String;
aload 1
getfield com/nd/android/u/controller/bean/contact/BaseAppContactItem/mCode Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L1
iconst_0
ireturn
.limit locals 2
.limit stack 2
.end method

.method public getCode()Ljava/lang/String;
aload 0
getfield com/nd/android/u/controller/bean/contact/BaseAppContactItem/mCode Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method protected getDisplayMessage()Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
aload 0
getfield com/nd/android/u/controller/bean/contact/BaseAppContactItem/mId Ljava/lang/String;
invokestatic com/nd/android/u/allCommonUtils/FormatUtils/parseInt(Ljava/lang/String;)I
istore 1
getstatic com/nd/android/u/controller/factory/AppMessageFactory/INSTANCE Lcom/nd/android/u/controller/factory/AppMessageFactory;
iload 1
aload 0
getfield com/nd/android/u/controller/bean/contact/BaseAppContactItem/mCode Ljava/lang/String;
invokevirtual com/nd/android/u/controller/factory/AppMessageFactory/getAppMessage(ILjava/lang/String;)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
areturn
.limit locals 2
.limit stack 3
.end method

.method public getIdentity()Ljava/lang/String;
new com/nd/android/u/controller/bean/contact/BaseAppContactItem$AppIdentity
dup
invokespecial com/nd/android/u/controller/bean/contact/BaseAppContactItem$AppIdentity/<init>()V
astore 1
aload 1
aload 0
getfield com/nd/android/u/controller/bean/contact/BaseAppContactItem/mId Ljava/lang/String;
invokestatic com/nd/android/u/controller/bean/contact/BaseAppContactItem$AppIdentity/access$3(Lcom/nd/android/u/controller/bean/contact/BaseAppContactItem$AppIdentity;Ljava/lang/String;)V
aload 1
aload 0
getfield com/nd/android/u/controller/bean/contact/BaseAppContactItem/mCode Ljava/lang/String;
invokestatic com/nd/android/u/controller/bean/contact/BaseAppContactItem$AppIdentity/access$4(Lcom/nd/android/u/controller/bean/contact/BaseAppContactItem$AppIdentity;Ljava/lang/String;)V
aload 1
invokevirtual com/nd/android/u/controller/bean/contact/BaseAppContactItem$AppIdentity/toDBStr()Ljava/lang/String;
areturn
.limit locals 2
.limit stack 2
.end method

.method public getMessageType()I
iconst_3
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getMsgTitle(Landroid/content/Context;)Ljava/lang/String;
aload 0
getfield com/nd/android/u/controller/bean/contact/BaseAppContactItem/name Ljava/lang/String;
ifnonnull L0
aload 0
invokevirtual com/nd/android/u/controller/bean/contact/BaseAppContactItem/convertId()J
lstore 2
lload 2
lconst_0
lcmp
ifge L1
aload 0
ldc ""
putfield com/nd/android/u/controller/bean/contact/BaseAppContactItem/name Ljava/lang/String;
L0:
aload 0
getfield com/nd/android/u/controller/bean/contact/BaseAppContactItem/name Ljava/lang/String;
areturn
L1:
getstatic com/nd/android/u/controller/factory/AppMessageFactory/INSTANCE Lcom/nd/android/u/controller/factory/AppMessageFactory;
lload 2
l2i
aload 0
getfield com/nd/android/u/controller/bean/contact/BaseAppContactItem/mCode Ljava/lang/String;
invokevirtual com/nd/android/u/controller/factory/AppMessageFactory/getAppMessage(ILjava/lang/String;)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
checkcast com/nd/android/u/controller/bean/message/BaseDisplayMessage_App
astore 4
aload 4
ifnull L2
aload 0
aload 4
aload 1
invokevirtual com/nd/android/u/controller/bean/message/BaseDisplayMessage_App/getAppName(Landroid/content/Context;)Ljava/lang/String;
putfield com/nd/android/u/controller/bean/contact/BaseAppContactItem/name Ljava/lang/String;
goto L0
L2:
aload 0
aload 1
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/controller/ResMapper/INSTANCE Lcom/nd/android/u/controller/ResMapper;
getfield com/nd/android/u/controller/ResMapper/MSG_APP I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
putfield com/nd/android/u/controller/bean/contact/BaseAppContactItem/name Ljava/lang/String;
goto L0
.limit locals 5
.limit stack 4
.end method

.method public hashCode()I
aload 0
invokevirtual com/nd/android/u/controller/bean/contact/BaseAppContactItem/getHashCodeHelper()I
bipush 31
imul
aload 0
getfield com/nd/android/u/controller/bean/contact/BaseAppContactItem/mCode Ljava/lang/String;
invokevirtual java/lang/String/hashCode()I
iadd
ireturn
.limit locals 1
.limit stack 2
.end method

.method public isPrimaryKeyValid()Z
aload 0
getfield com/nd/android/u/controller/bean/contact/BaseAppContactItem/mCode Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
iconst_0
ireturn
L0:
aload 0
invokevirtual com/nd/android/u/controller/bean/contact/BaseAppContactItem/isIdValid()Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public onClickHeadPortrait(Landroid/content/Context;)V
aload 0
aload 1
invokevirtual com/nd/android/u/controller/bean/contact/BaseAppContactItem/onClickItem(Landroid/content/Context;)V
return
.limit locals 2
.limit stack 2
.end method

.method public onClickItem(Landroid/content/Context;)V
aload 0
invokevirtual com/nd/android/u/controller/bean/contact/BaseAppContactItem/convertId()J
lstore 2
lload 2
lconst_0
lcmp
ifge L0
new java/lang/StringBuilder
dup
ldc "invalid appid:"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
lload 2
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/android/u/allCommonUtils/ToastUtils/display(Ljava/lang/String;)V
return
L0:
getstatic com/nd/android/u/controller/factory/AppMessageFactory/INSTANCE Lcom/nd/android/u/controller/factory/AppMessageFactory;
lload 2
l2i
aload 0
getfield com/nd/android/u/controller/bean/contact/BaseAppContactItem/mCode Ljava/lang/String;
invokevirtual com/nd/android/u/controller/factory/AppMessageFactory/getAppMessage(ILjava/lang/String;)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
checkcast com/nd/android/u/controller/bean/message/BaseDisplayMessage_App
astore 4
aload 4
ifnull L1
aload 4
aload 1
invokevirtual com/nd/android/u/controller/bean/message/BaseDisplayMessage_App/goDisplayActivity(Landroid/content/Context;)V
return
L1:
ldc "unknow app"
invokestatic com/nd/android/u/allCommonUtils/ToastUtils/display(Ljava/lang/String;)V
return
.limit locals 5
.limit stack 4
.end method

.method public onForwarding(Landroid/app/Activity;Lcom/nd/android/u/controller/bean/contact/ForwardingParam;)V
return
.limit locals 3
.limit stack 0
.end method

.method public setCode(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/controller/bean/contact/BaseAppContactItem/mCode Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public toString()Ljava/lang/String;
new java/lang/StringBuilder
dup
aload 0
invokespecial com/nd/android/u/controller/bean/contact/RecentContactItem/toString()Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
astore 1
aload 1
ldc "mCode\uff1a"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 0
getfield com/nd/android/u/controller/bean/contact/BaseAppContactItem/mCode Ljava/lang/String;
ifnonnull L0
aload 1
ldc "null"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L1:
aload 1
ldc_w 65292
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
pop
aload 1
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
L0:
aload 1
aload 0
getfield com/nd/android/u/controller/bean/contact/BaseAppContactItem/mCode Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
goto L1
.limit locals 2
.limit stack 3
.end method
