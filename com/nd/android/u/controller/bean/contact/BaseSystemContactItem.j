.bytecode 50.0
.class public synchronized abstract com/nd/android/u/controller/bean/contact/BaseSystemContactItem
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
getfield com/nd/android/u/controller/bean/contact/BaseSystemContactItem/mId Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
return
.limit locals 2
.limit stack 3
.end method

.method protected cursor2Identity(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/controller/bean/contact/BaseSystemContactItem/mId Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public displayHeadPortrait(Landroid/widget/ImageView;)V
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/headerBitmapInterface Lcom/nd/android/u/controller/outInterface/HeaderBitmapCallbackInterface;
aload 1
invokeinterface com/nd/android/u/controller/outInterface/HeaderBitmapCallbackInterface/displaySystem(Landroid/widget/ImageView;)V 1
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
instanceof com/nd/android/u/controller/bean/contact/BaseSystemContactItem
ifne L1
iconst_0
ireturn
L1:
aload 1
checkcast com/nd/android/u/controller/bean/contact/BaseSystemContactItem
astore 1
aload 0
getfield com/nd/android/u/controller/bean/contact/BaseSystemContactItem/mId Ljava/lang/String;
aload 1
getfield com/nd/android/u/controller/bean/contact/BaseSystemContactItem/mId Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ireturn
.limit locals 2
.limit stack 2
.end method

.method protected getDisplayMessage()Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
getstatic com/nd/android/u/controller/factory/MessageFactory/INSTANCE Lcom/nd/android/u/controller/factory/MessageFactory;
aload 0
getfield com/nd/android/u/controller/bean/contact/BaseSystemContactItem/mId Ljava/lang/String;
aload 0
getfield com/nd/android/u/controller/bean/contact/BaseSystemContactItem/subType I
invokevirtual com/nd/android/u/controller/factory/MessageFactory/getSystemMessage(Ljava/lang/String;I)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
areturn
.limit locals 1
.limit stack 3
.end method

.method public getIdentity()Ljava/lang/String;
aload 0
getfield com/nd/android/u/controller/bean/contact/BaseSystemContactItem/mId Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getMessageType()I
iconst_2
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getMsgTitle(Landroid/content/Context;)Ljava/lang/String;
aload 0
getfield com/nd/android/u/controller/bean/contact/BaseSystemContactItem/name Ljava/lang/String;
ifnonnull L0
aload 0
aload 1
getstatic com/nd/android/u/controller/ResMapper/INSTANCE Lcom/nd/android/u/controller/ResMapper;
getfield com/nd/android/u/controller/ResMapper/MSG_SYSTEM I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
putfield com/nd/android/u/controller/bean/contact/BaseSystemContactItem/name Ljava/lang/String;
L0:
aload 0
getfield com/nd/android/u/controller/bean/contact/BaseSystemContactItem/name Ljava/lang/String;
areturn
.limit locals 2
.limit stack 3
.end method

.method public hashCode()I
aload 0
invokevirtual com/nd/android/u/controller/bean/contact/BaseSystemContactItem/getHashCodeHelper()I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public isPrimaryKeyValid()Z
aload 0
invokevirtual com/nd/android/u/controller/bean/contact/BaseSystemContactItem/isIdValid()Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public onClickHeadPortrait(Landroid/content/Context;)V
aload 0
aload 1
invokevirtual com/nd/android/u/controller/bean/contact/BaseSystemContactItem/onClickItem(Landroid/content/Context;)V
return
.limit locals 2
.limit stack 2
.end method

.method public onClickItem(Landroid/content/Context;)V
new android/content/Intent
dup
aload 1
aload 0
invokevirtual com/nd/android/u/controller/bean/contact/BaseSystemContactItem/getDisplayClass()Ljava/lang/Class;
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 2
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 3
aload 3
ldc "name"
aload 0
getfield com/nd/android/u/controller/bean/contact/BaseSystemContactItem/name Ljava/lang/String;
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
aload 2
aload 3
invokevirtual android/content/Intent/putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
pop
aload 1
aload 2
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
return
.limit locals 4
.limit stack 4
.end method

.method public onForwarding(Landroid/app/Activity;Lcom/nd/android/u/controller/bean/contact/ForwardingParam;)V
return
.limit locals 3
.limit stack 0
.end method
