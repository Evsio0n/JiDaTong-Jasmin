.bytecode 50.0
.class synchronized com/nd/android/u/controller/factory/MessageLongClickMenuFactory$1
.super java/lang/Object
.implements android/content/DialogInterface$OnClickListener
.enclosing method com/nd/android/u/controller/factory/MessageLongClickMenuFactory/show(Landroid/content/Context;Ljava/util/List;)V
.inner class inner com/nd/android/u/controller/factory/MessageLongClickMenuFactory$1

.field final synthetic 'this$0' Lcom/nd/android/u/controller/factory/MessageLongClickMenuFactory;

.field private final synthetic 'val$context' Landroid/content/Context;

.field private final synthetic 'val$itemList' Ljava/util/List;

.method <init>(Lcom/nd/android/u/controller/factory/MessageLongClickMenuFactory;Ljava/util/List;Landroid/content/Context;)V
aload 0
aload 1
putfield com/nd/android/u/controller/factory/MessageLongClickMenuFactory$1/this$0 Lcom/nd/android/u/controller/factory/MessageLongClickMenuFactory;
aload 0
aload 2
putfield com/nd/android/u/controller/factory/MessageLongClickMenuFactory$1/val$itemList Ljava/util/List;
aload 0
aload 3
putfield com/nd/android/u/controller/factory/MessageLongClickMenuFactory$1/val$context Landroid/content/Context;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 4
.limit stack 2
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
aload 0
getfield com/nd/android/u/controller/factory/MessageLongClickMenuFactory$1/val$itemList Ljava/util/List;
iload 2
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/controller/innerInterface/IChatListLongClickMenu
aload 0
getfield com/nd/android/u/controller/factory/MessageLongClickMenuFactory$1/val$context Landroid/content/Context;
invokeinterface com/nd/android/u/controller/innerInterface/IChatListLongClickMenu/onClick(Landroid/content/Context;)V 1
return
.limit locals 3
.limit stack 2
.end method
