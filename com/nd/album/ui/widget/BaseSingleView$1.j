.bytecode 50.0
.class synchronized com/nd/album/ui/widget/BaseSingleView$1
.super android/os/Handler
.enclosing method com/nd/album/ui/widget/BaseSingleView
.inner class inner com/nd/album/ui/widget/BaseSingleView$1

.field final synthetic 'this$0' Lcom/nd/album/ui/widget/BaseSingleView;

.method <init>(Lcom/nd/album/ui/widget/BaseSingleView;)V
aload 0
aload 1
putfield com/nd/album/ui/widget/BaseSingleView$1/this$0 Lcom/nd/album/ui/widget/BaseSingleView;
aload 0
invokespecial android/os/Handler/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public handleMessage(Landroid/os/Message;)V
aload 1
getfield android/os/Message/what I
tableswitch 1
L0
L1
L2
L3
L4
L5
L6
default : L2
L2:
return
L0:
aload 0
getfield com/nd/album/ui/widget/BaseSingleView$1/this$0 Lcom/nd/album/ui/widget/BaseSingleView;
invokevirtual com/nd/album/ui/widget/BaseSingleView/hideMenu()V
return
L1:
aload 0
getfield com/nd/album/ui/widget/BaseSingleView$1/this$0 Lcom/nd/album/ui/widget/BaseSingleView;
aload 1
getfield android/os/Message/arg1 I
i2f
putfield com/nd/album/ui/widget/BaseSingleView/mBmpWidth F
aload 0
getfield com/nd/album/ui/widget/BaseSingleView$1/this$0 Lcom/nd/album/ui/widget/BaseSingleView;
aload 1
getfield android/os/Message/arg2 I
i2f
putfield com/nd/album/ui/widget/BaseSingleView/mBmpHeight F
aload 0
getfield com/nd/album/ui/widget/BaseSingleView$1/this$0 Lcom/nd/album/ui/widget/BaseSingleView;
invokevirtual com/nd/album/ui/widget/BaseSingleView/resetMatrix()V
aload 0
getfield com/nd/album/ui/widget/BaseSingleView$1/this$0 Lcom/nd/album/ui/widget/BaseSingleView;
invokevirtual com/nd/album/ui/widget/BaseSingleView/minZoom()V
aload 0
getfield com/nd/album/ui/widget/BaseSingleView$1/this$0 Lcom/nd/album/ui/widget/BaseSingleView;
invokevirtual com/nd/album/ui/widget/BaseSingleView/center()V
aload 0
getfield com/nd/album/ui/widget/BaseSingleView$1/this$0 Lcom/nd/album/ui/widget/BaseSingleView;
getfield com/nd/album/ui/widget/BaseSingleView/mImageView Landroid/widget/ImageView;
aload 0
getfield com/nd/album/ui/widget/BaseSingleView$1/this$0 Lcom/nd/album/ui/widget/BaseSingleView;
getfield com/nd/album/ui/widget/BaseSingleView/matrix Landroid/graphics/Matrix;
invokevirtual android/widget/ImageView/setImageMatrix(Landroid/graphics/Matrix;)V
return
L3:
aload 0
getfield com/nd/album/ui/widget/BaseSingleView$1/this$0 Lcom/nd/album/ui/widget/BaseSingleView;
getfield com/nd/album/ui/widget/BaseSingleView/mActivity Landroid/app/Activity;
ldc "\u5f00\u59cb\u4fdd\u5b58\u56fe\u7247..."
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;Ljava/lang/String;)V
return
L4:
aload 0
getfield com/nd/album/ui/widget/BaseSingleView$1/this$0 Lcom/nd/album/ui/widget/BaseSingleView;
getfield com/nd/album/ui/widget/BaseSingleView/mActivity Landroid/app/Activity;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "\u4fdd\u5b58\u56fe\u7247\u6210\u529f\uff01\u4fdd\u5b58\u8def\u5f84\u4e3a:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
getfield android/os/Message/obj Ljava/lang/Object;
checkcast java/lang/String
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;Ljava/lang/String;)V
return
L5:
aload 0
getfield com/nd/album/ui/widget/BaseSingleView$1/this$0 Lcom/nd/album/ui/widget/BaseSingleView;
getfield com/nd/album/ui/widget/BaseSingleView/mActivity Landroid/app/Activity;
ldc "\u4fdd\u5b58\u56fe\u7247\u5931\u8d25\uff01"
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;Ljava/lang/String;)V
return
L6:
aload 0
getfield com/nd/album/ui/widget/BaseSingleView$1/this$0 Lcom/nd/album/ui/widget/BaseSingleView;
getfield com/nd/album/ui/widget/BaseSingleView/mActivity Landroid/app/Activity;
ldc "\u56fe\u7247\u6b63\u5728\u4e0b\u8f7d\u4e2d\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\uff01"
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;Ljava/lang/String;)V
return
.limit locals 2
.limit stack 3
.end method
