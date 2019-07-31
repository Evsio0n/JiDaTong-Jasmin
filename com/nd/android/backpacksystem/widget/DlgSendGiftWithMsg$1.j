.bytecode 50.0
.class synchronized com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$1
.super java/lang/Object
.implements android/view/ViewTreeObserver$OnGlobalLayoutListener
.enclosing method com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/setData(Lcom/product/android/commonInterface/contact/OapUserSimple;J)V
.inner class inner com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$1

.field final synthetic 'this$0' Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;

.field final synthetic 'val$vRoot' Landroid/view/View;

.method <init>(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;Landroid/view/View;)V
aload 0
aload 1
putfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$1/this$0 Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;
aload 0
aload 2
putfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$1/val$vRoot Landroid/view/View;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public onGlobalLayout()V
new android/graphics/Rect
dup
invokespecial android/graphics/Rect/<init>()V
astore 1
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$1/val$vRoot Landroid/view/View;
aload 1
invokevirtual android/view/View/getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V
aload 1
getfield android/graphics/Rect/bottom I
aload 1
getfield android/graphics/Rect/top I
isub
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$1/val$vRoot Landroid/view/View;
invokevirtual android/view/View/getRootView()Landroid/view/View;
invokevirtual android/view/View/getHeight()I
isub
ifge L0
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$1/this$0 Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;
invokestatic com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/access$000(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;)V
L0:
return
.limit locals 2
.limit stack 2
.end method
