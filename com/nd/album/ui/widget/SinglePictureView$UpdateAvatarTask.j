.bytecode 50.0
.class synchronized com/nd/album/ui/widget/SinglePictureView$UpdateAvatarTask
.super com/common/android/utils/task/genericTask/GenericTask
.inner class UpdateAvatarTask inner com/nd/album/ui/widget/SinglePictureView$UpdateAvatarTask outer com/nd/album/ui/widget/SinglePictureView

.field final synthetic 'this$0' Lcom/nd/album/ui/widget/SinglePictureView;

.method <init>(Lcom/nd/album/ui/widget/SinglePictureView;)V
aload 0
aload 1
putfield com/nd/album/ui/widget/SinglePictureView$UpdateAvatarTask/this$0 Lcom/nd/album/ui/widget/SinglePictureView;
aload 0
invokespecial com/common/android/utils/task/genericTask/GenericTask/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method protected transient _doInBackground([Lcom/common/android/utils/task/genericTask/TaskParams;)Lcom/common/android/utils/task/genericTask/TaskResult;
.catch java/lang/Exception from L0 to L1 using L2
aload 0
getfield com/nd/album/ui/widget/SinglePictureView$UpdateAvatarTask/this$0 Lcom/nd/album/ui/widget/SinglePictureView;
invokestatic com/nd/album/ui/widget/SinglePictureView/access$1500(Lcom/nd/album/ui/widget/SinglePictureView;)Landroid/graphics/Bitmap;
ifnull L3
L0:
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getSid()Ljava/lang/String; 0
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getOapUid()J 0
aload 0
getfield com/nd/album/ui/widget/SinglePictureView$UpdateAvatarTask/this$0 Lcom/nd/album/ui/widget/SinglePictureView;
invokestatic com/nd/album/ui/widget/SinglePictureView/access$1500(Lcom/nd/album/ui/widget/SinglePictureView;)Landroid/graphics/Bitmap;
invokestatic com/product/android/business/headImage/HeadImageLoader/sendFaceImageUpload(Ljava/lang/String;JLandroid/graphics/Bitmap;)Z
pop
getstatic com/common/android/utils/task/genericTask/TaskResult/OK Lcom/common/android/utils/task/genericTask/TaskResult;
astore 1
L1:
aload 1
areturn
L2:
astore 1
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
L3:
getstatic com/common/android/utils/task/genericTask/TaskResult/FAILED Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
.limit locals 2
.limit stack 4
.end method
