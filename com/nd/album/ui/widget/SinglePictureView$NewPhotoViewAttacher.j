.bytecode 50.0
.class synchronized com/nd/album/ui/widget/SinglePictureView$NewPhotoViewAttacher
.super uk/co/senab/photoview/PhotoViewAttacher
.inner class NewPhotoViewAttacher inner com/nd/album/ui/widget/SinglePictureView$NewPhotoViewAttacher outer com/nd/album/ui/widget/SinglePictureView

.field final synthetic 'this$0' Lcom/nd/album/ui/widget/SinglePictureView;

.method public <init>(Lcom/nd/album/ui/widget/SinglePictureView;Landroid/content/Context;Landroid/widget/ImageView;)V
aload 0
aload 1
putfield com/nd/album/ui/widget/SinglePictureView$NewPhotoViewAttacher/this$0 Lcom/nd/album/ui/widget/SinglePictureView;
aload 0
aload 2
aload 3
invokespecial uk/co/senab/photoview/PhotoViewAttacher/<init>(Landroid/content/Context;Landroid/widget/ImageView;)V
return
.limit locals 4
.limit stack 3
.end method

.method public final onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
aload 0
iconst_0
putfield com/nd/album/ui/widget/SinglePictureView$NewPhotoViewAttacher/isReturnOnSingle Z
aload 0
aload 1
invokespecial uk/co/senab/photoview/PhotoViewAttacher/onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
ifne L0
aload 0
getfield com/nd/album/ui/widget/SinglePictureView$NewPhotoViewAttacher/this$0 Lcom/nd/album/ui/widget/SinglePictureView;
invokevirtual com/nd/album/ui/widget/SinglePictureView/switchMenu()V
L0:
iconst_1
ireturn
.limit locals 2
.limit stack 2
.end method
