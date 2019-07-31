.bytecode 50.0
.class synchronized com/nd/album/ui/widget/SinglePictureView$5
.super java/lang/Object
.implements android/widget/AdapterView$OnItemClickListener
.enclosing method com/nd/album/ui/widget/SinglePictureView/showMorePopupWindow()V
.inner class inner com/nd/album/ui/widget/SinglePictureView$5

.field final synthetic 'this$0' Lcom/nd/album/ui/widget/SinglePictureView;

.method <init>(Lcom/nd/album/ui/widget/SinglePictureView;)V
aload 0
aload 1
putfield com/nd/album/ui/widget/SinglePictureView$5/this$0 Lcom/nd/album/ui/widget/SinglePictureView;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.signature "(Landroid/widget/AdapterView<*>;Landroid/view/View;IJ)V"
iload 3
tableswitch 0
L0
L1
L2
L3
default : L4
L4:
aload 0
getfield com/nd/album/ui/widget/SinglePictureView$5/this$0 Lcom/nd/album/ui/widget/SinglePictureView;
invokestatic com/nd/album/ui/widget/SinglePictureView/access$900(Lcom/nd/album/ui/widget/SinglePictureView;)Landroid/widget/PopupWindow;
invokevirtual android/widget/PopupWindow/dismiss()V
return
L0:
aload 0
getfield com/nd/album/ui/widget/SinglePictureView$5/this$0 Lcom/nd/album/ui/widget/SinglePictureView;
invokevirtual com/nd/album/ui/widget/SinglePictureView/doSave()V
goto L4
L1:
aload 0
getfield com/nd/album/ui/widget/SinglePictureView$5/this$0 Lcom/nd/album/ui/widget/SinglePictureView;
invokevirtual com/nd/album/ui/widget/SinglePictureView/updateAvatar()V
goto L4
L2:
aload 0
getfield com/nd/album/ui/widget/SinglePictureView$5/this$0 Lcom/nd/album/ui/widget/SinglePictureView;
invokevirtual com/nd/album/ui/widget/SinglePictureView/updateShow()V
goto L4
L3:
aload 0
getfield com/nd/album/ui/widget/SinglePictureView$5/this$0 Lcom/nd/album/ui/widget/SinglePictureView;
invokestatic com/nd/album/ui/widget/SinglePictureView/access$800(Lcom/nd/album/ui/widget/SinglePictureView;)V
goto L4
.limit locals 6
.limit stack 1
.end method
