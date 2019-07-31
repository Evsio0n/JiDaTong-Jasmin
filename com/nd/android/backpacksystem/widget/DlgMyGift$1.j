.bytecode 50.0
.class synchronized com/nd/android/backpacksystem/widget/DlgMyGift$1
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/android/backpacksystem/widget/DlgMyGift
.inner class inner com/nd/android/backpacksystem/widget/DlgMyGift$1

.field final synthetic 'this$0' Lcom/nd/android/backpacksystem/widget/DlgMyGift;

.method <init>(Lcom/nd/android/backpacksystem/widget/DlgMyGift;)V
aload 0
aload 1
putfield com/nd/android/backpacksystem/widget/DlgMyGift$1/this$0 Lcom/nd/android/backpacksystem/widget/DlgMyGift;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
istore 2
iload 2
getstatic com/nd/android/backpacksystem/R$id/btnUseGift I
if_icmpne L0
aload 0
getfield com/nd/android/backpacksystem/widget/DlgMyGift$1/this$0 Lcom/nd/android/backpacksystem/widget/DlgMyGift;
invokevirtual com/nd/android/backpacksystem/widget/DlgMyGift/doUseGift()V
L1:
return
L0:
iload 2
getstatic com/nd/android/backpacksystem/R$id/btnSendGift I
if_icmpne L1
aload 0
getfield com/nd/android/backpacksystem/widget/DlgMyGift$1/this$0 Lcom/nd/android/backpacksystem/widget/DlgMyGift;
invokestatic com/nd/android/backpacksystem/widget/DlgMyGift/access$200(Lcom/nd/android/backpacksystem/widget/DlgMyGift;)Lcom/nd/android/backpacksystem/data/ItemProcess;
aload 0
getfield com/nd/android/backpacksystem/widget/DlgMyGift$1/this$0 Lcom/nd/android/backpacksystem/widget/DlgMyGift;
invokestatic com/nd/android/backpacksystem/widget/DlgMyGift/access$000(Lcom/nd/android/backpacksystem/widget/DlgMyGift;)Landroid/app/Activity;
aload 0
getfield com/nd/android/backpacksystem/widget/DlgMyGift$1/this$0 Lcom/nd/android/backpacksystem/widget/DlgMyGift;
invokestatic com/nd/android/backpacksystem/widget/DlgMyGift/access$100(Lcom/nd/android/backpacksystem/widget/DlgMyGift;)Lcom/nd/android/backpacksystem/data/MyItems;
invokevirtual com/nd/android/backpacksystem/data/MyItems/getItemId()J
invokeinterface com/nd/android/backpacksystem/data/ItemProcess/doGive(Landroid/app/Activity;J)V 3
aload 0
getfield com/nd/android/backpacksystem/widget/DlgMyGift$1/this$0 Lcom/nd/android/backpacksystem/widget/DlgMyGift;
invokevirtual com/nd/android/backpacksystem/widget/DlgMyGift/cancel()V
return
.limit locals 3
.limit stack 4
.end method
