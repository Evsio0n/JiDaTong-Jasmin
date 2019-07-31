.bytecode 50.0
.class public synchronized com/nd/album/ui/task/DelPhotoTask
.super android/os/AsyncTask
.signature "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Integer;>;"
.inner class public static abstract interface ImageActionCallBack inner com/nd/album/ui/task/DelPhotoTask$ImageActionCallBack outer com/nd/album/ui/task/DelPhotoTask

.field private 'mCallBack' Lcom/nd/album/ui/task/DelPhotoTask$ImageActionCallBack;

.field private 'mContext' Landroid/content/Context;

.field private 'mImage' Lcom/product/android/commonInterface/album/Image;

.field private 'mPos' I

.field private 'mProgressDlg' Landroid/app/ProgressDialog;

.method public <init>(Landroid/content/Context;Lcom/product/android/commonInterface/album/Image;ILcom/nd/album/ui/task/DelPhotoTask$ImageActionCallBack;)V
aload 0
invokespecial android/os/AsyncTask/<init>()V
aload 0
aload 2
putfield com/nd/album/ui/task/DelPhotoTask/mImage Lcom/product/android/commonInterface/album/Image;
aload 0
aload 4
putfield com/nd/album/ui/task/DelPhotoTask/mCallBack Lcom/nd/album/ui/task/DelPhotoTask$ImageActionCallBack;
aload 0
aload 1
putfield com/nd/album/ui/task/DelPhotoTask/mContext Landroid/content/Context;
aload 0
iload 3
putfield com/nd/album/ui/task/DelPhotoTask/mPos I
return
.limit locals 5
.limit stack 2
.end method

.method protected transient doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
L0:
invokestatic com/nd/album/com/AlbumCom/getInstance()Lcom/nd/album/com/AlbumCom;
aload 0
getfield com/nd/album/ui/task/DelPhotoTask/mImage Lcom/product/android/commonInterface/album/Image;
invokevirtual com/product/android/commonInterface/album/Image/getImageId()J
invokevirtual com/nd/album/com/AlbumCom/delPhoto(J)V
getstatic com/nd/album/db/dao/AlbumDAOImpl/INSTANCE Lcom/nd/album/db/dao/AlbumDAOImpl;
aload 0
getfield com/nd/album/ui/task/DelPhotoTask/mImage Lcom/product/android/commonInterface/album/Image;
invokevirtual com/nd/album/db/dao/AlbumDAOImpl/deleteImage(Lcom/product/android/commonInterface/album/Image;)V
L1:
iconst_0
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
areturn
L2:
astore 1
aload 1
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
iconst_m1
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
areturn
.limit locals 2
.limit stack 3
.end method

.method protected volatile synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
aload 0
aload 1
checkcast [Ljava/lang/Void;
invokevirtual com/nd/album/ui/task/DelPhotoTask/doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
areturn
.limit locals 2
.limit stack 2
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
aload 0
aload 1
invokespecial android/os/AsyncTask/onPostExecute(Ljava/lang/Object;)V
aload 0
getfield com/nd/album/ui/task/DelPhotoTask/mCallBack Lcom/nd/album/ui/task/DelPhotoTask$ImageActionCallBack;
ifnull L0
aload 0
getfield com/nd/album/ui/task/DelPhotoTask/mCallBack Lcom/nd/album/ui/task/DelPhotoTask$ImageActionCallBack;
aload 0
getfield com/nd/album/ui/task/DelPhotoTask/mImage Lcom/product/android/commonInterface/album/Image;
aload 0
getfield com/nd/album/ui/task/DelPhotoTask/mPos I
aload 1
invokevirtual java/lang/Integer/intValue()I
invokeinterface com/nd/album/ui/task/DelPhotoTask$ImageActionCallBack/afterDoAction(Lcom/product/android/commonInterface/album/Image;II)V 3
L0:
aload 0
getfield com/nd/album/ui/task/DelPhotoTask/mProgressDlg Landroid/app/ProgressDialog;
ifnull L1
aload 0
getfield com/nd/album/ui/task/DelPhotoTask/mProgressDlg Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/isShowing()Z
ifeq L1
aload 0
getfield com/nd/album/ui/task/DelPhotoTask/mProgressDlg Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/hide()V
aload 0
aconst_null
putfield com/nd/album/ui/task/DelPhotoTask/mProgressDlg Landroid/app/ProgressDialog;
L1:
return
.limit locals 2
.limit stack 4
.end method

.method protected volatile synthetic onPostExecute(Ljava/lang/Object;)V
aload 0
aload 1
checkcast java/lang/Integer
invokevirtual com/nd/album/ui/task/DelPhotoTask/onPostExecute(Ljava/lang/Integer;)V
return
.limit locals 2
.limit stack 2
.end method

.method protected onPreExecute()V
aload 0
invokespecial android/os/AsyncTask/onPreExecute()V
aload 0
getfield com/nd/album/ui/task/DelPhotoTask/mProgressDlg Landroid/app/ProgressDialog;
ifnonnull L0
aload 0
aload 0
getfield com/nd/album/ui/task/DelPhotoTask/mContext Landroid/content/Context;
aload 0
getfield com/nd/album/ui/task/DelPhotoTask/mContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/album/R$string/delete_this_pic I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
aload 0
getfield com/nd/album/ui/task/DelPhotoTask/mContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/album/R$string/waiting_for_delete I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
iconst_1
invokestatic android/app/ProgressDialog/show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;
putfield com/nd/album/ui/task/DelPhotoTask/mProgressDlg Landroid/app/ProgressDialog;
L1:
return
L0:
aload 0
getfield com/nd/album/ui/task/DelPhotoTask/mProgressDlg Landroid/app/ProgressDialog;
ifnull L1
aload 0
getfield com/nd/album/ui/task/DelPhotoTask/mProgressDlg Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/isShowing()Z
ifne L1
aload 0
getfield com/nd/album/ui/task/DelPhotoTask/mProgressDlg Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/show()V
return
.limit locals 1
.limit stack 5
.end method
