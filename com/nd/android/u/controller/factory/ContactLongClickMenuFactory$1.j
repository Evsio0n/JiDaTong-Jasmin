.bytecode 50.0
.class synchronized com/nd/android/u/controller/factory/ContactLongClickMenuFactory$1
.super java/lang/Object
.implements android/content/DialogInterface$OnClickListener
.enclosing method com/nd/android/u/controller/factory/ContactLongClickMenuFactory/showMessageMenu(Landroid/content/Context;Lcom/nd/android/u/controller/bean/contact/RecentContactItem;)V
.inner class inner com/nd/android/u/controller/factory/ContactLongClickMenuFactory$1

.field final synthetic 'this$0' Lcom/nd/android/u/controller/factory/ContactLongClickMenuFactory;

.field private final synthetic 'val$context' Landroid/content/Context;

.field private final synthetic 'val$item' Lcom/nd/android/u/controller/bean/contact/RecentContactItem;

.field private final synthetic 'val$itemList' Ljava/util/List;

.method <init>(Lcom/nd/android/u/controller/factory/ContactLongClickMenuFactory;Ljava/util/List;Landroid/content/Context;Lcom/nd/android/u/controller/bean/contact/RecentContactItem;)V
aload 0
aload 1
putfield com/nd/android/u/controller/factory/ContactLongClickMenuFactory$1/this$0 Lcom/nd/android/u/controller/factory/ContactLongClickMenuFactory;
aload 0
aload 2
putfield com/nd/android/u/controller/factory/ContactLongClickMenuFactory$1/val$itemList Ljava/util/List;
aload 0
aload 3
putfield com/nd/android/u/controller/factory/ContactLongClickMenuFactory$1/val$context Landroid/content/Context;
aload 0
aload 4
putfield com/nd/android/u/controller/factory/ContactLongClickMenuFactory$1/val$item Lcom/nd/android/u/controller/bean/contact/RecentContactItem;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 5
.limit stack 2
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
aload 0
getfield com/nd/android/u/controller/factory/ContactLongClickMenuFactory$1/val$itemList Ljava/util/List;
iload 2
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/controller/innerInterface/IContactLongClickMenu
aload 0
getfield com/nd/android/u/controller/factory/ContactLongClickMenuFactory$1/val$context Landroid/content/Context;
aload 0
getfield com/nd/android/u/controller/factory/ContactLongClickMenuFactory$1/val$item Lcom/nd/android/u/controller/bean/contact/RecentContactItem;
invokeinterface com/nd/android/u/controller/innerInterface/IContactLongClickMenu/onClick(Landroid/content/Context;Lcom/nd/android/u/controller/bean/contact/RecentContactItem;)V 2
return
.limit locals 3
.limit stack 3
.end method
