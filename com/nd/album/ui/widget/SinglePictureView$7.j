.bytecode 50.0
.class synchronized com/nd/album/ui/widget/SinglePictureView$7
.super java/lang/Object
.implements com/nd/album/ui/task/DelPhotoTask$ImageActionCallBack
.enclosing method com/nd/album/ui/widget/SinglePictureView
.inner class inner com/nd/album/ui/widget/SinglePictureView$7

.field final synthetic 'this$0' Lcom/nd/album/ui/widget/SinglePictureView;

.method <init>(Lcom/nd/album/ui/widget/SinglePictureView;)V
aload 0
aload 1
putfield com/nd/album/ui/widget/SinglePictureView$7/this$0 Lcom/nd/album/ui/widget/SinglePictureView;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public afterDoAction(Lcom/product/android/commonInterface/album/Image;II)V
iload 3
ifne L0
aload 0
getfield com/nd/album/ui/widget/SinglePictureView$7/this$0 Lcom/nd/album/ui/widget/SinglePictureView;
getfield com/nd/album/ui/widget/SinglePictureView/mActivity Landroid/app/Activity;
instanceof com/nd/album/ui/activity/PictureFragmentActivity
ifeq L1
aload 0
getfield com/nd/album/ui/widget/SinglePictureView$7/this$0 Lcom/nd/album/ui/widget/SinglePictureView;
getfield com/nd/album/ui/widget/SinglePictureView/mActivity Landroid/app/Activity;
checkcast com/nd/album/ui/activity/PictureFragmentActivity
aload 0
getfield com/nd/album/ui/widget/SinglePictureView$7/this$0 Lcom/nd/album/ui/widget/SinglePictureView;
getfield com/nd/album/ui/widget/SinglePictureView/mNum I
invokevirtual com/nd/album/ui/activity/PictureFragmentActivity/delItem(I)V
L1:
return
L0:
aload 0
getfield com/nd/album/ui/widget/SinglePictureView$7/this$0 Lcom/nd/album/ui/widget/SinglePictureView;
getfield com/nd/album/ui/widget/SinglePictureView/mActivity Landroid/app/Activity;
getstatic com/nd/album/R$string/delete_fail I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
return
.limit locals 4
.limit stack 2
.end method

.method public beforeDoAction()V
return
.limit locals 1
.limit stack 0
.end method
