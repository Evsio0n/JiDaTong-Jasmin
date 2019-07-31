.bytecode 50.0
.class synchronized com/nd/album/ui/widget/SinglePictureView$8
.super java/lang/Object
.implements com/nd/album/ui/task/DelPhotoTask$ImageActionCallBack
.enclosing method com/nd/album/ui/widget/SinglePictureView
.inner class inner com/nd/album/ui/widget/SinglePictureView$8

.field final synthetic 'this$0' Lcom/nd/album/ui/widget/SinglePictureView;

.method <init>(Lcom/nd/album/ui/widget/SinglePictureView;)V
aload 0
aload 1
putfield com/nd/album/ui/widget/SinglePictureView$8/this$0 Lcom/nd/album/ui/widget/SinglePictureView;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public afterDoAction(Lcom/product/android/commonInterface/album/Image;II)V
aload 0
getfield com/nd/album/ui/widget/SinglePictureView$8/this$0 Lcom/nd/album/ui/widget/SinglePictureView;
invokestatic com/nd/album/ui/widget/SinglePictureView/access$400(Lcom/nd/album/ui/widget/SinglePictureView;)Lcom/product/android/commonInterface/album/Image;
invokevirtual com/product/android/commonInterface/album/Image/isMyPraise()I
istore 2
ldc ""
astore 1
iload 3
ifne L0
iload 2
iconst_1
if_icmpne L1
aload 0
getfield com/nd/album/ui/widget/SinglePictureView$8/this$0 Lcom/nd/album/ui/widget/SinglePictureView;
invokevirtual com/nd/album/ui/widget/SinglePictureView/getResources()Landroid/content/res/Resources;
getstatic com/nd/album/R$string/zan_success I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
astore 1
L2:
aload 0
getfield com/nd/album/ui/widget/SinglePictureView$8/this$0 Lcom/nd/album/ui/widget/SinglePictureView;
invokestatic com/nd/album/ui/widget/SinglePictureView/access$1100(Lcom/nd/album/ui/widget/SinglePictureView;)V
L3:
aload 0
getfield com/nd/album/ui/widget/SinglePictureView$8/this$0 Lcom/nd/album/ui/widget/SinglePictureView;
iconst_1
invokestatic com/nd/album/ui/widget/SinglePictureView/access$1200(Lcom/nd/album/ui/widget/SinglePictureView;Z)V
aload 0
getfield com/nd/album/ui/widget/SinglePictureView$8/this$0 Lcom/nd/album/ui/widget/SinglePictureView;
getfield com/nd/album/ui/widget/SinglePictureView/mActivity Landroid/app/Activity;
aload 1
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;Ljava/lang/String;)V
return
L1:
aload 0
getfield com/nd/album/ui/widget/SinglePictureView$8/this$0 Lcom/nd/album/ui/widget/SinglePictureView;
invokevirtual com/nd/album/ui/widget/SinglePictureView/getResources()Landroid/content/res/Resources;
getstatic com/nd/album/R$string/cancel_zan_success I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
astore 1
goto L2
L0:
iload 3
iconst_m1
if_icmpne L3
iload 2
ifne L4
aload 0
getfield com/nd/album/ui/widget/SinglePictureView$8/this$0 Lcom/nd/album/ui/widget/SinglePictureView;
invokevirtual com/nd/album/ui/widget/SinglePictureView/getResources()Landroid/content/res/Resources;
getstatic com/nd/album/R$string/zan_fail I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
astore 1
goto L3
L4:
aload 0
getfield com/nd/album/ui/widget/SinglePictureView$8/this$0 Lcom/nd/album/ui/widget/SinglePictureView;
invokevirtual com/nd/album/ui/widget/SinglePictureView/getResources()Landroid/content/res/Resources;
getstatic com/nd/album/R$string/cancel_zan_fail I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
astore 1
goto L3
.limit locals 4
.limit stack 2
.end method

.method public beforeDoAction()V
aload 0
getfield com/nd/album/ui/widget/SinglePictureView$8/this$0 Lcom/nd/album/ui/widget/SinglePictureView;
iconst_0
invokestatic com/nd/album/ui/widget/SinglePictureView/access$1200(Lcom/nd/album/ui/widget/SinglePictureView;Z)V
return
.limit locals 1
.limit stack 2
.end method
