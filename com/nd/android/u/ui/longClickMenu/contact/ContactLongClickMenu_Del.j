.bytecode 50.0
.class public synchronized com/nd/android/u/ui/longClickMenu/contact/ContactLongClickMenu_Del
.super java/lang/Object
.implements com/nd/android/u/controller/innerInterface/IContactLongClickMenu

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public getLabel()Ljava/lang/String;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
getstatic com/nd/android/u/chat/R$string/context_menu_item_remove_contact I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
areturn
.limit locals 1
.limit stack 2
.end method

.method public isEnable(Lcom/nd/android/u/controller/bean/contact/RecentContactItem;)Z
iconst_1
ireturn
.limit locals 2
.limit stack 1
.end method

.method public onClick(Landroid/content/Context;Lcom/nd/android/u/controller/bean/contact/RecentContactItem;)V
getstatic com/nd/android/u/business/db/dao/RecentContactRecords/INSTANCE Lcom/nd/android/u/business/db/dao/RecentContactRecords;
aload 2
invokevirtual com/nd/android/u/business/db/dao/RecentContactRecords/deleteItem(Lcom/nd/android/u/controller/bean/contact/RecentContactItem;)V
new android/os/Message
dup
invokespecial android/os/Message/<init>()V
astore 1
aload 1
bipush 30
putfield android/os/Message/what I
invokestatic com/nd/android/u/controller/observer/MessageDispatcher/getInstance()Lcom/nd/android/u/controller/observer/MessageDispatcher;
aload 2
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/getMessageType()I
aload 1
invokevirtual com/nd/android/u/controller/observer/MessageDispatcher/notifyOtherMessage(ILandroid/os/Message;)V
return
.limit locals 3
.limit stack 3
.end method
