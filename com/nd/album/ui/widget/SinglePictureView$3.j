.bytecode 50.0
.class synchronized com/nd/album/ui/widget/SinglePictureView$3
.super com/common/android/utils/task/genericTask/TaskAdapter
.enclosing method com/nd/album/ui/widget/SinglePictureView
.inner class inner com/nd/album/ui/widget/SinglePictureView$3

.field final synthetic 'this$0' Lcom/nd/album/ui/widget/SinglePictureView;

.method <init>(Lcom/nd/album/ui/widget/SinglePictureView;)V
aload 0
aload 1
putfield com/nd/album/ui/widget/SinglePictureView$3/this$0 Lcom/nd/album/ui/widget/SinglePictureView;
aload 0
invokespecial com/common/android/utils/task/genericTask/TaskAdapter/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onPostExecute(Lcom/common/android/utils/task/genericTask/GenericTask;Lcom/common/android/utils/task/genericTask/TaskResult;)V
aload 0
getfield com/nd/album/ui/widget/SinglePictureView$3/this$0 Lcom/nd/album/ui/widget/SinglePictureView;
getfield com/nd/album/ui/widget/SinglePictureView/m_dialog Landroid/app/ProgressDialog;
ifnull L0
aload 0
getfield com/nd/album/ui/widget/SinglePictureView$3/this$0 Lcom/nd/album/ui/widget/SinglePictureView;
getfield com/nd/album/ui/widget/SinglePictureView/m_dialog Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/dismiss()V
L0:
aload 2
getstatic com/common/android/utils/task/genericTask/TaskResult/OK Lcom/common/android/utils/task/genericTask/TaskResult;
if_acmpne L1
aload 0
getfield com/nd/album/ui/widget/SinglePictureView$3/this$0 Lcom/nd/album/ui/widget/SinglePictureView;
getfield com/nd/album/ui/widget/SinglePictureView/mActivity Landroid/app/Activity;
instanceof com/nd/album/ui/activity/PictureFragmentActivity
ifeq L2
aload 0
getfield com/nd/album/ui/widget/SinglePictureView$3/this$0 Lcom/nd/album/ui/widget/SinglePictureView;
getfield com/nd/album/ui/widget/SinglePictureView/mActivity Landroid/app/Activity;
checkcast com/nd/album/ui/activity/PictureFragmentActivity
aload 0
getfield com/nd/album/ui/widget/SinglePictureView$3/this$0 Lcom/nd/album/ui/widget/SinglePictureView;
getfield com/nd/album/ui/widget/SinglePictureView/mNum I
invokevirtual com/nd/album/ui/activity/PictureFragmentActivity/delItem(I)V
L2:
aload 0
getfield com/nd/album/ui/widget/SinglePictureView$3/this$0 Lcom/nd/album/ui/widget/SinglePictureView;
invokestatic com/nd/album/ui/widget/SinglePictureView/access$500(Lcom/nd/album/ui/widget/SinglePictureView;)Lcom/nd/album/ui/task/DelPhotoTask;
ifnull L3
aload 0
getfield com/nd/album/ui/widget/SinglePictureView$3/this$0 Lcom/nd/album/ui/widget/SinglePictureView;
invokestatic com/nd/album/ui/widget/SinglePictureView/access$500(Lcom/nd/album/ui/widget/SinglePictureView;)Lcom/nd/album/ui/task/DelPhotoTask;
invokevirtual com/nd/album/ui/task/DelPhotoTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L3
aload 0
getfield com/nd/album/ui/widget/SinglePictureView$3/this$0 Lcom/nd/album/ui/widget/SinglePictureView;
invokestatic com/nd/album/ui/widget/SinglePictureView/access$500(Lcom/nd/album/ui/widget/SinglePictureView;)Lcom/nd/album/ui/task/DelPhotoTask;
iconst_1
invokevirtual com/nd/album/ui/task/DelPhotoTask/cancel(Z)Z
pop
L3:
return
L1:
aload 0
getfield com/nd/album/ui/widget/SinglePictureView$3/this$0 Lcom/nd/album/ui/widget/SinglePictureView;
getfield com/nd/album/ui/widget/SinglePictureView/mActivity Landroid/app/Activity;
getstatic com/nd/album/R$string/delete_fail I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
goto L2
.limit locals 3
.limit stack 2
.end method

.method public onPreExecute(Lcom/common/android/utils/task/genericTask/GenericTask;)V
aload 0
getfield com/nd/album/ui/widget/SinglePictureView$3/this$0 Lcom/nd/album/ui/widget/SinglePictureView;
aload 0
getfield com/nd/album/ui/widget/SinglePictureView$3/this$0 Lcom/nd/album/ui/widget/SinglePictureView;
invokevirtual com/nd/album/ui/widget/SinglePictureView/getResources()Landroid/content/res/Resources;
getstatic com/nd/album/R$string/delete_this_pic I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
aload 0
getfield com/nd/album/ui/widget/SinglePictureView$3/this$0 Lcom/nd/album/ui/widget/SinglePictureView;
invokevirtual com/nd/album/ui/widget/SinglePictureView/getResources()Landroid/content/res/Resources;
getstatic com/nd/album/R$string/waiting_for_delete I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual com/nd/album/ui/widget/SinglePictureView/begin(Ljava/lang/String;Ljava/lang/String;)V
return
.limit locals 2
.limit stack 4
.end method
