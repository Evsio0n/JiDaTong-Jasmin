.bytecode 50.0
.class public synchronized com/nd/android/u/controller/dataSupplier/AppDataSupplier
.super com/nd/android/u/controller/dataSupplier/BaseDataSupplier

.field protected 'appCode' Ljava/lang/String;

.method public <init>(ILjava/lang/String;)V
aload 0
invokespecial com/nd/android/u/controller/dataSupplier/BaseDataSupplier/<init>()V
aload 0
iload 1
i2l
putfield com/nd/android/u/controller/dataSupplier/AppDataSupplier/mainId J
aload 0
aload 2
putfield com/nd/android/u/controller/dataSupplier/AppDataSupplier/appCode Ljava/lang/String;
aload 0
invokestatic com/nd/android/u/controller/factory/ChatDaoFactory/getInstance()Lcom/nd/android/u/controller/factory/ChatDaoFactory;
iconst_3
invokevirtual com/nd/android/u/controller/factory/ChatDaoFactory/get(I)Lcom/nd/android/u/controller/innerInterface/IDbOperation;
putfield com/nd/android/u/controller/dataSupplier/AppDataSupplier/dbOperation Lcom/nd/android/u/controller/innerInterface/IDbOperation;
aload 0
getstatic com/nd/android/u/controller/factory/AppMessageFactory/INSTANCE Lcom/nd/android/u/controller/factory/AppMessageFactory;
iload 1
aload 2
invokevirtual com/nd/android/u/controller/factory/AppMessageFactory/getAppMessage(ILjava/lang/String;)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
putfield com/nd/android/u/controller/dataSupplier/AppDataSupplier/displayMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
return
.limit locals 3
.limit stack 4
.end method

.method protected createContactItem()Lcom/nd/android/u/controller/bean/contact/RecentContactItem;
getstatic com/nd/android/u/controller/factory/ContactFactory/INSTANCE Lcom/nd/android/u/controller/factory/ContactFactory;
iconst_3
invokevirtual com/nd/android/u/controller/factory/ContactFactory/getRecentContactItem(I)Lcom/nd/android/u/controller/bean/contact/RecentContactItem;
astore 1
aload 1
aload 0
getfield com/nd/android/u/controller/dataSupplier/AppDataSupplier/mainId J
invokestatic java/lang/String/valueOf(J)Ljava/lang/String;
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/setId(Ljava/lang/String;)V
aload 1
aload 0
getfield com/nd/android/u/controller/dataSupplier/AppDataSupplier/appCode Ljava/lang/String;
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/setCode(Ljava/lang/String;)V
aload 1
areturn
.limit locals 2
.limit stack 3
.end method

.method public getConcreteMessage()Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
getstatic com/nd/android/u/controller/factory/AppMessageFactory/INSTANCE Lcom/nd/android/u/controller/factory/AppMessageFactory;
aload 0
getfield com/nd/android/u/controller/dataSupplier/AppDataSupplier/mainId J
l2i
aload 0
getfield com/nd/android/u/controller/dataSupplier/AppDataSupplier/appCode Ljava/lang/String;
invokevirtual com/nd/android/u/controller/factory/AppMessageFactory/getAppMessage(ILjava/lang/String;)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
areturn
.limit locals 1
.limit stack 3
.end method
