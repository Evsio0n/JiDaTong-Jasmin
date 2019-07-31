.bytecode 50.0
.class synchronized com/nd/android/u/publicNumber/ui/widget/PspMenuView$2
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/android/u/publicNumber/ui/widget/PspMenuView
.inner class inner com/nd/android/u/publicNumber/ui/widget/PspMenuView$2

.field final synthetic 'this$0' Lcom/nd/android/u/publicNumber/ui/widget/PspMenuView;

.method <init>(Lcom/nd/android/u/publicNumber/ui/widget/PspMenuView;)V
aload 0
aload 1
putfield com/nd/android/u/publicNumber/ui/widget/PspMenuView$2/this$0 Lcom/nd/android/u/publicNumber/ui/widget/PspMenuView;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 1
getstatic com/nd/android/u/chat/R$id/dropup_list_tx_name I
invokevirtual android/view/View/getTag(I)Ljava/lang/Object;
checkcast java/lang/Integer
invokevirtual java/lang/Integer/intValue()I
istore 2
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PspMenuView$2/this$0 Lcom/nd/android/u/publicNumber/ui/widget/PspMenuView;
invokestatic com/nd/android/u/publicNumber/ui/widget/PspMenuView/access$300(Lcom/nd/android/u/publicNumber/ui/widget/PspMenuView;)Lcom/nd/android/u/publicNumber/ui/widget/PspMenuView$DropUpAdapter;
iload 2
invokevirtual com/nd/android/u/publicNumber/ui/widget/PspMenuView$DropUpAdapter/getItem(I)Ljava/lang/Object;
checkcast com/nd/android/u/publicNumber/controller/bean/PublicNumberMenuButton
astore 1
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PspMenuView$2/this$0 Lcom/nd/android/u/publicNumber/ui/widget/PspMenuView;
invokestatic com/nd/android/u/publicNumber/ui/widget/PspMenuView/access$000(Lcom/nd/android/u/publicNumber/ui/widget/PspMenuView;)Lcom/nd/android/u/publicNumber/ui/widget/PspMenuView$OnItemClickCallBack;
ifnull L0
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PspMenuView$2/this$0 Lcom/nd/android/u/publicNumber/ui/widget/PspMenuView;
invokestatic com/nd/android/u/publicNumber/ui/widget/PspMenuView/access$000(Lcom/nd/android/u/publicNumber/ui/widget/PspMenuView;)Lcom/nd/android/u/publicNumber/ui/widget/PspMenuView$OnItemClickCallBack;
aload 1
invokeinterface com/nd/android/u/publicNumber/ui/widget/PspMenuView$OnItemClickCallBack/onItemClick(Lcom/nd/android/u/publicNumber/controller/bean/PublicNumberMenuButton;)V 1
L0:
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PspMenuView$2/this$0 Lcom/nd/android/u/publicNumber/ui/widget/PspMenuView;
invokevirtual com/nd/android/u/publicNumber/ui/widget/PspMenuView/dismiss()V
return
.limit locals 3
.limit stack 2
.end method
