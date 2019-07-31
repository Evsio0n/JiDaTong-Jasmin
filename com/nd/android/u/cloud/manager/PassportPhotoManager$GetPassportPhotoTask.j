.bytecode 50.0
.class synchronized com/nd/android/u/cloud/manager/PassportPhotoManager$GetPassportPhotoTask
.super com/common/android/utils/concurrent/NdTinyHttpAsyncTask
.signature "Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Boolean;>;"
.inner class private GetPassportPhotoTask inner com/nd/android/u/cloud/manager/PassportPhotoManager$GetPassportPhotoTask outer com/nd/android/u/cloud/manager/PassportPhotoManager

.field private final 'mimageView' Landroid/widget/ImageView;

.field private final 'muid' J

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/manager/PassportPhotoManager;

.method public <init>(Lcom/nd/android/u/cloud/manager/PassportPhotoManager;JLandroid/widget/ImageView;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/manager/PassportPhotoManager$GetPassportPhotoTask/this$0 Lcom/nd/android/u/cloud/manager/PassportPhotoManager;
aload 0
invokespecial com/common/android/utils/concurrent/NdTinyHttpAsyncTask/<init>()V
aload 0
lload 2
putfield com/nd/android/u/cloud/manager/PassportPhotoManager$GetPassportPhotoTask/muid J
aload 0
aload 4
putfield com/nd/android/u/cloud/manager/PassportPhotoManager$GetPassportPhotoTask/mimageView Landroid/widget/ImageView;
return
.limit locals 5
.limit stack 3
.end method

.method protected transient doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
aload 0
getfield com/nd/android/u/cloud/manager/PassportPhotoManager$GetPassportPhotoTask/this$0 Lcom/nd/android/u/cloud/manager/PassportPhotoManager;
aload 0
getfield com/nd/android/u/cloud/manager/PassportPhotoManager$GetPassportPhotoTask/muid J
invokevirtual com/nd/android/u/cloud/manager/PassportPhotoManager/needRefreshPassportPhoto(J)Z
invokestatic java/lang/Boolean/valueOf(Z)Ljava/lang/Boolean;
areturn
.limit locals 2
.limit stack 3
.end method

.method protected volatile synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
aload 0
aload 1
checkcast [Ljava/lang/Void;
invokevirtual com/nd/android/u/cloud/manager/PassportPhotoManager$GetPassportPhotoTask/doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
areturn
.limit locals 2
.limit stack 2
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
aload 0
aload 1
invokespecial com/common/android/utils/concurrent/NdTinyHttpAsyncTask/onPostExecute(Ljava/lang/Object;)V
aload 1
invokevirtual java/lang/Boolean/booleanValue()Z
ifeq L0
aload 0
getfield com/nd/android/u/cloud/manager/PassportPhotoManager$GetPassportPhotoTask/mimageView Landroid/widget/ImageView;
ifnull L0
invokestatic com/nostra13/universalimageloader/core/ImageLoader/getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;
aload 0
getfield com/nd/android/u/cloud/manager/PassportPhotoManager$GetPassportPhotoTask/muid J
invokestatic com/nd/android/u/cloud/manager/PassportPhotoManager/getPassportPhotoURL(J)Ljava/lang/String;
aload 0
getfield com/nd/android/u/cloud/manager/PassportPhotoManager$GetPassportPhotoTask/mimageView Landroid/widget/ImageView;
aload 0
getfield com/nd/android/u/cloud/manager/PassportPhotoManager$GetPassportPhotoTask/this$0 Lcom/nd/android/u/cloud/manager/PassportPhotoManager;
invokestatic com/nd/android/u/cloud/manager/PassportPhotoManager/access$000(Lcom/nd/android/u/cloud/manager/PassportPhotoManager;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V
L0:
return
.limit locals 2
.limit stack 4
.end method

.method protected volatile synthetic onPostExecute(Ljava/lang/Object;)V
aload 0
aload 1
checkcast java/lang/Boolean
invokevirtual com/nd/android/u/cloud/manager/PassportPhotoManager$GetPassportPhotoTask/onPostExecute(Ljava/lang/Boolean;)V
return
.limit locals 2
.limit stack 2
.end method
