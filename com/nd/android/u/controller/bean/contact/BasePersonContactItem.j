.bytecode 50.0
.class public synchronized abstract com/nd/android/u/controller/bean/contact/BasePersonContactItem
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
getfield com/nd/android/u/controller/bean/contact/BasePersonContactItem/mId Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
return
.limit locals 2
.limit stack 3
.end method

.method protected cursor2Identity(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/controller/bean/contact/BasePersonContactItem/mId Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public displayHeadPortrait(Landroid/widget/ImageView;)V
aload 0
invokevirtual com/nd/android/u/controller/bean/contact/BasePersonContactItem/convertId()J
lstore 2
lload 2
lconst_0
lcmp
iflt L0
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/headerBitmapInterface Lcom/nd/android/u/controller/outInterface/HeaderBitmapCallbackInterface;
aload 1
lload 2
invokeinterface com/nd/android/u/controller/outInterface/HeaderBitmapCallbackInterface/displayByUser(Landroid/widget/ImageView;J)V 3
L0:
return
.limit locals 4
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
instanceof com/nd/android/u/controller/bean/contact/BasePersonContactItem
ifne L1
iconst_0
ireturn
L1:
aload 1
checkcast com/nd/android/u/controller/bean/contact/BasePersonContactItem
astore 1
aload 0
getfield com/nd/android/u/controller/bean/contact/BasePersonContactItem/mId Ljava/lang/String;
aload 1
getfield com/nd/android/u/controller/bean/contact/BasePersonContactItem/mId Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ireturn
.limit locals 2
.limit stack 2
.end method

.method protected getDisplayMessage()Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
getstatic com/nd/android/u/controller/factory/MessageFactory/INSTANCE Lcom/nd/android/u/controller/factory/MessageFactory;
invokevirtual com/nd/android/u/controller/factory/MessageFactory/getPersonMessage()Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getIdentity()Ljava/lang/String;
aload 0
getfield com/nd/android/u/controller/bean/contact/BasePersonContactItem/mId Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getMessageType()I
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getMsgTitle(Landroid/content/Context;)Ljava/lang/String;
aload 0
getfield com/nd/android/u/controller/bean/contact/BasePersonContactItem/name Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
aload 0
invokevirtual com/nd/android/u/controller/bean/contact/BasePersonContactItem/convertId()J
lstore 2
lload 2
lconst_0
lcmp
ifge L1
aload 0
ldc ""
putfield com/nd/android/u/controller/bean/contact/BasePersonContactItem/name Ljava/lang/String;
L0:
aload 0
getfield com/nd/android/u/controller/bean/contact/BasePersonContactItem/name Ljava/lang/String;
areturn
L1:
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
lload 2
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/getUserName(J)Ljava/lang/String; 2
astore 1
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L2
lload 2
invokestatic java/lang/Long/toString(J)Ljava/lang/String;
aload 1
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L3
L2:
new java/lang/StringBuilder
dup
lload 2
invokestatic java/lang/String/valueOf(J)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
L3:
aload 0
aload 1
putfield com/nd/android/u/controller/bean/contact/BasePersonContactItem/name Ljava/lang/String;
goto L0
.limit locals 4
.limit stack 4
.end method

.method public hashCode()I
aload 0
invokevirtual com/nd/android/u/controller/bean/contact/BasePersonContactItem/getHashCodeHelper()I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public isPrimaryKeyValid()Z
aload 0
invokevirtual com/nd/android/u/controller/bean/contact/BasePersonContactItem/isIdValid()Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public onClickItem(Landroid/content/Context;)V
aload 0
invokevirtual com/nd/android/u/controller/bean/contact/BasePersonContactItem/convertId()J
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
aload 0
invokevirtual com/nd/android/u/controller/bean/contact/BasePersonContactItem/getDisplayClass()Ljava/lang/Class;
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 4
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 5
aload 5
ldc "MESSAGE_TYPE"
iconst_0
invokevirtual android/os/Bundle/putInt(Ljava/lang/String;I)V
aload 5
ldc "fid"
lload 2
invokevirtual android/os/Bundle/putLong(Ljava/lang/String;J)V
aload 5
ldc "name"
aload 0
getfield com/nd/android/u/controller/bean/contact/BasePersonContactItem/name Ljava/lang/String;
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
