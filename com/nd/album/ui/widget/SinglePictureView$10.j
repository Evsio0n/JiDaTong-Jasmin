.bytecode 50.0
.class synchronized com/nd/album/ui/widget/SinglePictureView$10
.super com/common/android/utils/task/genericTask/TaskAdapter
.enclosing method com/nd/album/ui/widget/SinglePictureView
.inner class inner com/nd/album/ui/widget/SinglePictureView$10

.field final synthetic 'this$0' Lcom/nd/album/ui/widget/SinglePictureView;

.method <init>(Lcom/nd/album/ui/widget/SinglePictureView;)V
aload 0
aload 1
putfield com/nd/album/ui/widget/SinglePictureView$10/this$0 Lcom/nd/album/ui/widget/SinglePictureView;
aload 0
invokespecial com/common/android/utils/task/genericTask/TaskAdapter/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public getName()Ljava/lang/String;
ldc "deleteGroup"
areturn
.limit locals 1
.limit stack 1
.end method

.method public onPostExecute(Lcom/common/android/utils/task/genericTask/GenericTask;Lcom/common/android/utils/task/genericTask/TaskResult;)V
aload 2
getstatic com/common/android/utils/task/genericTask/TaskResult/OK Lcom/common/android/utils/task/genericTask/TaskResult;
if_acmpne L0
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getOapUid()J 0
invokestatic com/product/android/business/headImage/HeadImageLoader/removeFaceCache(J)V
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getOapUid()J 0
invokestatic com/product/android/business/headImage/HeadImageLoader/removeShowCache(J)V
invokestatic com/nd/android/u/AlbumCallOtherModel/doModheadSuccess()V
getstatic com/product/android/business/broadcast/PersonInfoBroadHelper/INSTANCE Lcom/product/android/business/broadcast/PersonInfoBroadHelper;
aload 0
getfield com/nd/album/ui/widget/SinglePictureView$10/this$0 Lcom/nd/album/ui/widget/SinglePictureView;
getfield com/nd/album/ui/widget/SinglePictureView/oap_id J
invokevirtual com/product/android/business/broadcast/PersonInfoBroadHelper/sendUpdateAvaBroadCast(J)V
aload 0
getfield com/nd/album/ui/widget/SinglePictureView$10/this$0 Lcom/nd/album/ui/widget/SinglePictureView;
getfield com/nd/album/ui/widget/SinglePictureView/mActivity Landroid/app/Activity;
getstatic com/nd/album/R$string/upload_header_pic_success I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
L1:
aload 0
getfield com/nd/album/ui/widget/SinglePictureView$10/this$0 Lcom/nd/album/ui/widget/SinglePictureView;
getfield com/nd/album/ui/widget/SinglePictureView/m_dialog Landroid/app/ProgressDialog;
ifnull L2
aload 0
getfield com/nd/album/ui/widget/SinglePictureView$10/this$0 Lcom/nd/album/ui/widget/SinglePictureView;
invokestatic com/nd/album/ui/widget/SinglePictureView/access$1600(Lcom/nd/album/ui/widget/SinglePictureView;)Z
ifeq L2
aload 0
getfield com/nd/album/ui/widget/SinglePictureView$10/this$0 Lcom/nd/album/ui/widget/SinglePictureView;
getfield com/nd/album/ui/widget/SinglePictureView/m_dialog Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/dismiss()V
L2:
return
L0:
aload 2
getstatic com/common/android/utils/task/genericTask/TaskResult/CANCELLED Lcom/common/android/utils/task/genericTask/TaskResult;
if_acmpne L3
aload 0
getfield com/nd/album/ui/widget/SinglePictureView$10/this$0 Lcom/nd/album/ui/widget/SinglePictureView;
getfield com/nd/album/ui/widget/SinglePictureView/mActivity Landroid/app/Activity;
getstatic com/nd/album/R$string/set_header_pic_after_download I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
goto L1
L3:
aload 0
getfield com/nd/album/ui/widget/SinglePictureView$10/this$0 Lcom/nd/album/ui/widget/SinglePictureView;
getfield com/nd/album/ui/widget/SinglePictureView/mActivity Landroid/app/Activity;
getstatic com/nd/album/R$string/upload_header_pic_fail I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
goto L1
.limit locals 3
.limit stack 3
.end method

.method public onPreExecute(Lcom/common/android/utils/task/genericTask/GenericTask;)V
aload 0
getfield com/nd/album/ui/widget/SinglePictureView$10/this$0 Lcom/nd/album/ui/widget/SinglePictureView;
aload 0
getfield com/nd/album/ui/widget/SinglePictureView$10/this$0 Lcom/nd/album/ui/widget/SinglePictureView;
invokevirtual com/nd/album/ui/widget/SinglePictureView/getResources()Landroid/content/res/Resources;
getstatic com/nd/album/R$string/modifing_society_face_title I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
aload 0
getfield com/nd/album/ui/widget/SinglePictureView$10/this$0 Lcom/nd/album/ui/widget/SinglePictureView;
invokevirtual com/nd/album/ui/widget/SinglePictureView/getResources()Landroid/content/res/Resources;
getstatic com/nd/album/R$string/wait_for_save I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual com/nd/album/ui/widget/SinglePictureView/begin(Ljava/lang/String;Ljava/lang/String;)V
return
.limit locals 2
.limit stack 4
.end method
