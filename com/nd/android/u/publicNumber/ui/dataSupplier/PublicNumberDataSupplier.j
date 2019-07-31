.bytecode 50.0
.class public synchronized com/nd/android/u/publicNumber/ui/dataSupplier/PublicNumberDataSupplier
.super com/nd/android/u/controller/dataSupplier/BaseDataSupplier

.method public <init>(Ljava/lang/String;)V
aload 0
invokespecial com/nd/android/u/controller/dataSupplier/BaseDataSupplier/<init>()V
aload 0
aload 1
invokestatic com/common/android/utils/FormatUtils/parseLong(Ljava/lang/String;)J
putfield com/nd/android/u/publicNumber/ui/dataSupplier/PublicNumberDataSupplier/mainId J
aload 0
invokestatic com/nd/android/u/controller/factory/ChatDaoFactory/getInstance()Lcom/nd/android/u/controller/factory/ChatDaoFactory;
iconst_5
invokevirtual com/nd/android/u/controller/factory/ChatDaoFactory/get(I)Lcom/nd/android/u/controller/innerInterface/IDbOperation;
putfield com/nd/android/u/publicNumber/ui/dataSupplier/PublicNumberDataSupplier/dbOperation Lcom/nd/android/u/controller/innerInterface/IDbOperation;
aload 0
getstatic com/nd/android/u/controller/factory/MessageFactory/INSTANCE Lcom/nd/android/u/controller/factory/MessageFactory;
iconst_5
aload 1
iconst_0
invokevirtual com/nd/android/u/controller/factory/MessageFactory/getMessage(ILjava/lang/String;I)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
putfield com/nd/android/u/publicNumber/ui/dataSupplier/PublicNumberDataSupplier/displayMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
aload 0
getfield com/nd/android/u/publicNumber/ui/dataSupplier/PublicNumberDataSupplier/displayMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getProccessInterface()Lcom/nd/android/u/controller/innerInterface/IMessageProccess; 0
invokeinterface com/nd/android/u/controller/innerInterface/IMessageProccess/ackAllMessage()V 0
aload 0
invokevirtual com/nd/android/u/publicNumber/ui/dataSupplier/PublicNumberDataSupplier/clearUnreadCount()V
new com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo
dup
aload 1
invokespecial com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/<init>(Ljava/lang/String;)V
invokevirtual com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/loginInit()V
return
.limit locals 2
.limit stack 5
.end method

.method protected createContactItem()Lcom/nd/android/u/controller/bean/contact/RecentContactItem;
getstatic com/nd/android/u/controller/factory/ContactFactory/INSTANCE Lcom/nd/android/u/controller/factory/ContactFactory;
iconst_5
invokevirtual com/nd/android/u/controller/factory/ContactFactory/getRecentContactItem(I)Lcom/nd/android/u/controller/bean/contact/RecentContactItem;
astore 1
aload 1
aload 0
getfield com/nd/android/u/publicNumber/ui/dataSupplier/PublicNumberDataSupplier/mainId J
invokestatic java/lang/String/valueOf(J)Ljava/lang/String;
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/setId(Ljava/lang/String;)V
aload 1
areturn
.limit locals 2
.limit stack 3
.end method

.method public getConcreteMessage()Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
getstatic com/nd/android/u/controller/factory/MessageFactory/INSTANCE Lcom/nd/android/u/controller/factory/MessageFactory;
iconst_5
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getfield com/nd/android/u/publicNumber/ui/dataSupplier/PublicNumberDataSupplier/mainId J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
iconst_0
invokevirtual com/nd/android/u/controller/factory/MessageFactory/getMessage(ILjava/lang/String;I)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
areturn
.limit locals 1
.limit stack 5
.end method
