.bytecode 50.0
.class public synchronized com/nd/android/u/controller/dataSupplier/PersonDataSupplier
.super com/nd/android/u/controller/dataSupplier/BaseDataSupplier

.method public <init>(J)V
aload 0
invokespecial com/nd/android/u/controller/dataSupplier/BaseDataSupplier/<init>()V
aload 0
lload 1
putfield com/nd/android/u/controller/dataSupplier/PersonDataSupplier/mainId J
aload 0
invokestatic com/nd/android/u/controller/factory/ChatDaoFactory/getInstance()Lcom/nd/android/u/controller/factory/ChatDaoFactory;
iconst_0
invokevirtual com/nd/android/u/controller/factory/ChatDaoFactory/get(I)Lcom/nd/android/u/controller/innerInterface/IDbOperation;
putfield com/nd/android/u/controller/dataSupplier/PersonDataSupplier/dbOperation Lcom/nd/android/u/controller/innerInterface/IDbOperation;
aload 0
getstatic com/nd/android/u/controller/factory/MessageFactory/INSTANCE Lcom/nd/android/u/controller/factory/MessageFactory;
invokevirtual com/nd/android/u/controller/factory/MessageFactory/getPersonMessage()Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
putfield com/nd/android/u/controller/dataSupplier/PersonDataSupplier/displayMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
aload 0
getfield com/nd/android/u/controller/dataSupplier/PersonDataSupplier/displayMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
lload 1
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setToUid(J)V 2
aload 0
getfield com/nd/android/u/controller/dataSupplier/PersonDataSupplier/displayMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/getOapUid()J 0
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setFromUid(J)V 2
return
.limit locals 3
.limit stack 3
.end method

.method protected createContactItem()Lcom/nd/android/u/controller/bean/contact/RecentContactItem;
getstatic com/nd/android/u/controller/factory/ContactFactory/INSTANCE Lcom/nd/android/u/controller/factory/ContactFactory;
iconst_0
invokevirtual com/nd/android/u/controller/factory/ContactFactory/getRecentContactItem(I)Lcom/nd/android/u/controller/bean/contact/RecentContactItem;
astore 1
aload 1
aload 0
getfield com/nd/android/u/controller/dataSupplier/PersonDataSupplier/mainId J
invokestatic java/lang/String/valueOf(J)Ljava/lang/String;
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/setId(Ljava/lang/String;)V
aload 1
areturn
.limit locals 2
.limit stack 3
.end method

.method public getConcreteMessage()Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
getstatic com/nd/android/u/controller/factory/MessageFactory/INSTANCE Lcom/nd/android/u/controller/factory/MessageFactory;
invokevirtual com/nd/android/u/controller/factory/MessageFactory/getPersonMessage()Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
areturn
.limit locals 1
.limit stack 1
.end method
