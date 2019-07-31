.bytecode 50.0
.class synchronized com/nd/android/u/ui/longClickMenu/LongClickView$1
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/android/u/ui/longClickMenu/LongClickView/createItem(Lcom/nd/android/u/controller/innerInterface/IChatListLongClickMenu;Ljava/util/List;)V
.inner class inner com/nd/android/u/ui/longClickMenu/LongClickView$1

.field final synthetic 'this$0' Lcom/nd/android/u/ui/longClickMenu/LongClickView;

.field final synthetic 'val$itemMenu' Lcom/nd/android/u/controller/innerInterface/IChatListLongClickMenu;

.method <init>(Lcom/nd/android/u/ui/longClickMenu/LongClickView;Lcom/nd/android/u/controller/innerInterface/IChatListLongClickMenu;)V
aload 0
aload 1
putfield com/nd/android/u/ui/longClickMenu/LongClickView$1/this$0 Lcom/nd/android/u/ui/longClickMenu/LongClickView;
aload 0
aload 2
putfield com/nd/android/u/ui/longClickMenu/LongClickView$1/val$itemMenu Lcom/nd/android/u/controller/innerInterface/IChatListLongClickMenu;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 0
getfield com/nd/android/u/ui/longClickMenu/LongClickView$1/val$itemMenu Lcom/nd/android/u/controller/innerInterface/IChatListLongClickMenu;
aload 0
getfield com/nd/android/u/ui/longClickMenu/LongClickView$1/this$0 Lcom/nd/android/u/ui/longClickMenu/LongClickView;
invokestatic com/nd/android/u/ui/longClickMenu/LongClickView/access$000(Lcom/nd/android/u/ui/longClickMenu/LongClickView;)Landroid/content/Context;
invokeinterface com/nd/android/u/controller/innerInterface/IChatListLongClickMenu/onClick(Landroid/content/Context;)V 1
aload 0
getfield com/nd/android/u/ui/longClickMenu/LongClickView$1/this$0 Lcom/nd/android/u/ui/longClickMenu/LongClickView;
invokestatic com/nd/android/u/ui/longClickMenu/LongClickView/access$100(Lcom/nd/android/u/ui/longClickMenu/LongClickView;)Lcom/nd/android/u/ui/longClickMenu/ILongClickCallBack;
ifnull L0
aload 0
getfield com/nd/android/u/ui/longClickMenu/LongClickView$1/this$0 Lcom/nd/android/u/ui/longClickMenu/LongClickView;
invokestatic com/nd/android/u/ui/longClickMenu/LongClickView/access$100(Lcom/nd/android/u/ui/longClickMenu/LongClickView;)Lcom/nd/android/u/ui/longClickMenu/ILongClickCallBack;
invokeinterface com/nd/android/u/ui/longClickMenu/ILongClickCallBack/callback()V 0
L0:
return
.limit locals 2
.limit stack 2
.end method
