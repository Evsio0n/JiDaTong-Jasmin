.bytecode 50.0
.class public synchronized com/nd/android/u/controller/dataSupplier/GroupDataSupplier
.super com/nd/android/u/controller/dataSupplier/BaseDataSupplier

.field private 'mGid' Ljava/lang/String;

.field private 'mGroupType' I

.method public <init>(JI)V
aload 0
invokespecial com/nd/android/u/controller/dataSupplier/BaseDataSupplier/<init>()V
aload 0
lload 1
putfield com/nd/android/u/controller/dataSupplier/GroupDataSupplier/mainId J
aload 0
iload 3
putfield com/nd/android/u/controller/dataSupplier/GroupDataSupplier/mGroupType I
aload 0
new java/lang/StringBuilder
dup
aload 0
getfield com/nd/android/u/controller/dataSupplier/GroupDataSupplier/mainId J
invokestatic java/lang/String/valueOf(J)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putfield com/nd/android/u/controller/dataSupplier/GroupDataSupplier/mGid Ljava/lang/String;
iload 3
bipush 20
if_icmpne L0
aload 0
new java/lang/StringBuilder
dup
aload 0
getfield com/nd/android/u/controller/dataSupplier/GroupDataSupplier/mGid Ljava/lang/String;
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
ldc "-u"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putfield com/nd/android/u/controller/dataSupplier/GroupDataSupplier/mGid Ljava/lang/String;
L0:
aload 0
invokestatic com/nd/android/u/controller/factory/ChatDaoFactory/getInstance()Lcom/nd/android/u/controller/factory/ChatDaoFactory;
iconst_1
invokevirtual com/nd/android/u/controller/factory/ChatDaoFactory/get(I)Lcom/nd/android/u/controller/innerInterface/IDbOperation;
putfield com/nd/android/u/controller/dataSupplier/GroupDataSupplier/dbOperation Lcom/nd/android/u/controller/innerInterface/IDbOperation;
aload 0
getstatic com/nd/android/u/controller/factory/MessageFactory/INSTANCE Lcom/nd/android/u/controller/factory/MessageFactory;
aload 0
getfield com/nd/android/u/controller/dataSupplier/GroupDataSupplier/mGid Ljava/lang/String;
aload 0
getfield com/nd/android/u/controller/dataSupplier/GroupDataSupplier/mGroupType I
invokevirtual com/nd/android/u/controller/factory/MessageFactory/getGroupMessage(Ljava/lang/String;I)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
putfield com/nd/android/u/controller/dataSupplier/GroupDataSupplier/displayMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
new com/nd/android/u/controller/bean/DefaultGroup
dup
aload 0
getfield com/nd/android/u/controller/dataSupplier/GroupDataSupplier/mGid Ljava/lang/String;
aload 0
getfield com/nd/android/u/controller/dataSupplier/GroupDataSupplier/mGroupType I
invokespecial com/nd/android/u/controller/bean/DefaultGroup/<init>(Ljava/lang/String;I)V
invokevirtual com/nd/android/u/controller/bean/DefaultGroup/loginInit()V
return
.limit locals 4
.limit stack 5
.end method

.method protected createContactItem()Lcom/nd/android/u/controller/bean/contact/RecentContactItem;
getstatic com/nd/android/u/controller/factory/ContactFactory/INSTANCE Lcom/nd/android/u/controller/factory/ContactFactory;
iconst_1
invokevirtual com/nd/android/u/controller/factory/ContactFactory/getRecentContactItem(I)Lcom/nd/android/u/controller/bean/contact/RecentContactItem;
astore 1
aload 1
aload 0
getfield com/nd/android/u/controller/dataSupplier/GroupDataSupplier/mGid Ljava/lang/String;
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/setId(Ljava/lang/String;)V
aload 1
aload 0
getfield com/nd/android/u/controller/dataSupplier/GroupDataSupplier/mGroupType I
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/setSubtype(I)V
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method public getConcreteMessage()Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
getstatic com/nd/android/u/controller/factory/MessageFactory/INSTANCE Lcom/nd/android/u/controller/factory/MessageFactory;
aload 0
getfield com/nd/android/u/controller/dataSupplier/GroupDataSupplier/mGid Ljava/lang/String;
aload 0
getfield com/nd/android/u/controller/dataSupplier/GroupDataSupplier/mGroupType I
invokevirtual com/nd/android/u/controller/factory/MessageFactory/getGroupMessage(Ljava/lang/String;I)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
areturn
.limit locals 1
.limit stack 3
.end method
