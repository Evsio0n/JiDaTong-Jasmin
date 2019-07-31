.bytecode 50.0
.class public synchronized abstract com/nd/android/u/controller/bean/contact/BaseGroupContactItem
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
getfield com/nd/android/u/controller/bean/contact/BaseGroupContactItem/mId Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
return
.limit locals 2
.limit stack 3
.end method

.method protected cursor2Identity(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/controller/bean/contact/BaseGroupContactItem/mId Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public cursor2Item(Landroid/database/Cursor;)V
aload 0
aload 1
invokespecial com/nd/android/u/controller/bean/contact/RecentContactItem/cursor2Item(Landroid/database/Cursor;)V
aload 0
aload 1
aload 1
ldc "sub_type"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
putfield com/nd/android/u/controller/bean/contact/BaseGroupContactItem/subType I
return
.limit locals 2
.limit stack 4
.end method

.method public displayHeadPortrait(Landroid/widget/ImageView;)V
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/headerBitmapInterface Lcom/nd/android/u/controller/outInterface/HeaderBitmapCallbackInterface;
aload 1
aload 0
getfield com/nd/android/u/controller/bean/contact/BaseGroupContactItem/mId Ljava/lang/String;
aload 0
getfield com/nd/android/u/controller/bean/contact/BaseGroupContactItem/subType I
invokeinterface com/nd/android/u/controller/outInterface/HeaderBitmapCallbackInterface/displayByGroup(Landroid/widget/ImageView;Ljava/lang/String;I)V 3
return
.limit locals 2
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
instanceof com/nd/android/u/controller/bean/contact/BaseGroupContactItem
ifne L2
iconst_0
ireturn
L2:
aload 1
checkcast com/nd/android/u/controller/bean/contact/BaseGroupContactItem
astore 1
aload 0
getfield com/nd/android/u/controller/bean/contact/BaseGroupContactItem/mId Ljava/lang/String;
aload 1
getfield com/nd/android/u/controller/bean/contact/BaseGroupContactItem/mId Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L3
aload 0
getfield com/nd/android/u/controller/bean/contact/BaseGroupContactItem/subType I
aload 1
getfield com/nd/android/u/controller/bean/contact/BaseGroupContactItem/subType I
if_icmpeq L1
L3:
iconst_0
ireturn
.limit locals 2
.limit stack 2
.end method

.method protected getDisplayMessage()Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
getstatic com/nd/android/u/controller/factory/MessageFactory/INSTANCE Lcom/nd/android/u/controller/factory/MessageFactory;
aload 0
getfield com/nd/android/u/controller/bean/contact/BaseGroupContactItem/mId Ljava/lang/String;
aload 0
getfield com/nd/android/u/controller/bean/contact/BaseGroupContactItem/subType I
invokevirtual com/nd/android/u/controller/factory/MessageFactory/getGroupMessage(Ljava/lang/String;I)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
areturn
.limit locals 1
.limit stack 3
.end method

.method public getIdentity()Ljava/lang/String;
aload 0
getfield com/nd/android/u/controller/bean/contact/BaseGroupContactItem/mId Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getMessageType()I
iconst_1
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getMsgTitle(Landroid/content/Context;)Ljava/lang/String;
aload 0
getfield com/nd/android/u/controller/bean/contact/BaseGroupContactItem/name Ljava/lang/String;
ifnonnull L0
aload 0
getfield com/nd/android/u/controller/bean/contact/BaseGroupContactItem/subType I
bipush 20
if_icmpne L1
aload 0
aload 1
getstatic com/nd/android/u/controller/ResMapper/INSTANCE Lcom/nd/android/u/controller/ResMapper;
getfield com/nd/android/u/controller/ResMapper/MSG_BROADCAST I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
putfield com/nd/android/u/controller/bean/contact/BaseGroupContactItem/name Ljava/lang/String;
L0:
aload 0
getfield com/nd/android/u/controller/bean/contact/BaseGroupContactItem/name Ljava/lang/String;
areturn
L1:
aload 0
invokevirtual com/nd/android/u/controller/bean/contact/BaseGroupContactItem/convertId()J
lstore 2
lload 2
lconst_0
lcmp
ifge L2
aload 0
ldc ""
putfield com/nd/android/u/controller/bean/contact/BaseGroupContactItem/name Ljava/lang/String;
goto L0
L2:
aload 0
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
aload 0
getfield com/nd/android/u/controller/bean/contact/BaseGroupContactItem/subType I
lload 2
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/getGroupName(IJ)Ljava/lang/String; 3
putfield com/nd/android/u/controller/bean/contact/BaseGroupContactItem/name Ljava/lang/String;
goto L0
.limit locals 4
.limit stack 5
.end method

.method public hashCode()I
aload 0
invokevirtual com/nd/android/u/controller/bean/contact/BaseGroupContactItem/getHashCodeHelper()I
bipush 31
imul
aload 0
getfield com/nd/android/u/controller/bean/contact/BaseGroupContactItem/subType I
iadd
ireturn
.limit locals 1
.limit stack 2
.end method

.method public isPrimaryKeyValid()Z
aload 0
getfield com/nd/android/u/controller/bean/contact/BaseGroupContactItem/subType I
ifge L0
iconst_0
ireturn
L0:
aload 0
invokevirtual com/nd/android/u/controller/bean/contact/BaseGroupContactItem/isIdValid()Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public onClickItem(Landroid/content/Context;)V
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
astore 5
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 6
aload 6
ldc "name"
aload 0
getfield com/nd/android/u/controller/bean/contact/BaseGroupContactItem/name Ljava/lang/String;
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/controller/bean/contact/BaseGroupContactItem/subType I
bipush 20
if_icmpeq L0
aload 0
invokevirtual com/nd/android/u/controller/bean/contact/BaseGroupContactItem/convertId()J
lstore 2
lload 2
lconst_0
lcmp
ifge L1
return
L1:
aload 6
ldc "MESSAGE_TYPE"
iconst_1
invokevirtual android/os/Bundle/putInt(Ljava/lang/String;I)V
aload 6
ldc "grouptype"
aload 0
getfield com/nd/android/u/controller/bean/contact/BaseGroupContactItem/subType I
invokevirtual android/os/Bundle/putInt(Ljava/lang/String;I)V
aload 6
ldc "gid"
lload 2
invokevirtual android/os/Bundle/putLong(Ljava/lang/String;J)V
aload 0
invokevirtual com/nd/android/u/controller/bean/contact/BaseGroupContactItem/getDisplayClass()Ljava/lang/Class;
astore 4
L2:
aload 5
aload 6
invokevirtual android/content/Intent/putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
pop
aload 5
aload 1
aload 4
invokevirtual android/content/Intent/setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
pop
aload 1
aload 5
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
return
L0:
aload 6
ldc "gid"
aload 0
getfield com/nd/android/u/controller/bean/contact/BaseGroupContactItem/mId Ljava/lang/String;
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
aload 0
invokevirtual com/nd/android/u/controller/bean/contact/BaseGroupContactItem/getDisplayClass()Ljava/lang/Class;
astore 4
goto L2
.limit locals 7
.limit stack 4
.end method

.method public toContentValues()Landroid/content/ContentValues;
aload 0
invokespecial com/nd/android/u/controller/bean/contact/RecentContactItem/toContentValues()Landroid/content/ContentValues;
astore 1
aload 1
ldc "sub_type"
aload 0
getfield com/nd/android/u/controller/bean/contact/BaseGroupContactItem/subType I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 1
areturn
.limit locals 2
.limit stack 3
.end method

.method public toString()Ljava/lang/String;
new java/lang/StringBuilder
dup
aload 0
invokespecial com/nd/android/u/controller/bean/contact/RecentContactItem/toString()Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
astore 1
aload 1
ldc "mSubtype\uff1a"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 0
getfield com/nd/android/u/controller/bean/contact/BaseGroupContactItem/subType I
ifne L0
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
getfield com/nd/android/u/controller/bean/contact/BaseGroupContactItem/subType I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
pop
goto L1
.limit locals 2
.limit stack 3
.end method
