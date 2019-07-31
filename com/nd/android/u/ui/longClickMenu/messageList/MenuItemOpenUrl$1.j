.bytecode 50.0
.class synchronized com/nd/android/u/ui/longClickMenu/messageList/MenuItemOpenUrl$1
.super java/lang/Object
.implements android/content/DialogInterface$OnClickListener
.enclosing method com/nd/android/u/ui/longClickMenu/messageList/MenuItemOpenUrl/onClick(Landroid/content/Context;)V
.inner class inner com/nd/android/u/ui/longClickMenu/messageList/MenuItemOpenUrl$1

.field final synthetic 'this$0' Lcom/nd/android/u/ui/longClickMenu/messageList/MenuItemOpenUrl;

.field final synthetic 'val$context' Landroid/content/Context;

.field final synthetic 'val$list' Ljava/util/List;

.method <init>(Lcom/nd/android/u/ui/longClickMenu/messageList/MenuItemOpenUrl;Ljava/util/List;Landroid/content/Context;)V
aload 0
aload 1
putfield com/nd/android/u/ui/longClickMenu/messageList/MenuItemOpenUrl$1/this$0 Lcom/nd/android/u/ui/longClickMenu/messageList/MenuItemOpenUrl;
aload 0
aload 2
putfield com/nd/android/u/ui/longClickMenu/messageList/MenuItemOpenUrl$1/val$list Ljava/util/List;
aload 0
aload 3
putfield com/nd/android/u/ui/longClickMenu/messageList/MenuItemOpenUrl$1/val$context Landroid/content/Context;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 4
.limit stack 2
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
aload 0
getfield com/nd/android/u/ui/longClickMenu/messageList/MenuItemOpenUrl$1/val$list Ljava/util/List;
iload 2
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast java/lang/String
astore 1
aload 0
getfield com/nd/android/u/ui/longClickMenu/messageList/MenuItemOpenUrl$1/this$0 Lcom/nd/android/u/ui/longClickMenu/messageList/MenuItemOpenUrl;
aload 0
getfield com/nd/android/u/ui/longClickMenu/messageList/MenuItemOpenUrl$1/val$context Landroid/content/Context;
aload 1
invokestatic com/nd/android/u/ui/longClickMenu/messageList/MenuItemOpenUrl/access$000(Lcom/nd/android/u/ui/longClickMenu/messageList/MenuItemOpenUrl;Landroid/content/Context;Ljava/lang/String;)V
return
.limit locals 3
.limit stack 3
.end method
