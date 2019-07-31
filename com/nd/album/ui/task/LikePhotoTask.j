.bytecode 50.0
.class public synchronized com/nd/album/ui/task/LikePhotoTask
.super android/os/AsyncTask
.signature "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Integer;>;"

.field private 'mCallBack' Lcom/nd/album/ui/task/DelPhotoTask$ImageActionCallBack;

.field private 'mImage' Lcom/product/android/commonInterface/album/Image;

.field private 'mPos' I

.method public <init>(Lcom/product/android/commonInterface/album/Image;ILcom/nd/album/ui/task/DelPhotoTask$ImageActionCallBack;)V
aload 0
invokespecial android/os/AsyncTask/<init>()V
aload 0
aload 1
putfield com/nd/album/ui/task/LikePhotoTask/mImage Lcom/product/android/commonInterface/album/Image;
aload 0
aload 3
putfield com/nd/album/ui/task/LikePhotoTask/mCallBack Lcom/nd/album/ui/task/DelPhotoTask$ImageActionCallBack;
aload 0
iload 2
putfield com/nd/album/ui/task/LikePhotoTask/mPos I
return
.limit locals 4
.limit stack 2
.end method

.method protected transient doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
aload 0
getfield com/nd/album/ui/task/LikePhotoTask/mImage Lcom/product/android/commonInterface/album/Image;
invokevirtual com/product/android/commonInterface/album/Image/isMyPraise()I
ifne L0
new com/nd/album/com/PraiseCom
dup
invokespecial com/nd/album/com/PraiseCom/<init>()V
aload 0
getfield com/nd/album/ui/task/LikePhotoTask/mImage Lcom/product/android/commonInterface/album/Image;
invokevirtual com/product/android/commonInterface/album/Image/getImageId()J
invokevirtual com/nd/album/com/PraiseCom/praisePic(J)Z
istore 4
L1:
iload 4
ifeq L2
aload 0
getfield com/nd/album/ui/task/LikePhotoTask/mImage Lcom/product/android/commonInterface/album/Image;
invokevirtual com/product/android/commonInterface/album/Image/isMyPraise()I
istore 2
aload 0
getfield com/nd/album/ui/task/LikePhotoTask/mImage Lcom/product/android/commonInterface/album/Image;
invokevirtual com/product/android/commonInterface/album/Image/getPraisecnt()I
istore 3
aload 0
getfield com/nd/album/ui/task/LikePhotoTask/mImage Lcom/product/android/commonInterface/album/Image;
iconst_1
iload 2
isub
invokevirtual com/product/android/commonInterface/album/Image/setMyPraise(I)V
iload 2
ifne L3
aload 0
getfield com/nd/album/ui/task/LikePhotoTask/mImage Lcom/product/android/commonInterface/album/Image;
iload 3
iconst_1
iadd
invokevirtual com/product/android/commonInterface/album/Image/setPraisecnt(I)V
L4:
getstatic com/nd/album/db/dao/AlbumDAOImpl/INSTANCE Lcom/nd/album/db/dao/AlbumDAOImpl;
aload 0
getfield com/nd/album/ui/task/LikePhotoTask/mImage Lcom/product/android/commonInterface/album/Image;
invokevirtual com/nd/album/db/dao/AlbumDAOImpl/updateImageInfo(Lcom/product/android/commonInterface/album/Image;)V
iconst_0
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
areturn
L0:
new com/nd/album/com/PraiseCom
dup
invokespecial com/nd/album/com/PraiseCom/<init>()V
aload 0
getfield com/nd/album/ui/task/LikePhotoTask/mImage Lcom/product/android/commonInterface/album/Image;
invokevirtual com/product/android/commonInterface/album/Image/getImageId()J
invokevirtual com/nd/album/com/PraiseCom/delPraisePic(J)Z
istore 4
goto L1
L3:
aload 0
getfield com/nd/album/ui/task/LikePhotoTask/mImage Lcom/product/android/commonInterface/album/Image;
iload 3
iconst_1
isub
invokevirtual com/product/android/commonInterface/album/Image/setPraisecnt(I)V
goto L4
L2:
iconst_m1
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
areturn
.limit locals 5
.limit stack 3
.end method

.method protected volatile synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
aload 0
aload 1
checkcast [Ljava/lang/Void;
invokevirtual com/nd/album/ui/task/LikePhotoTask/doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
areturn
.limit locals 2
.limit stack 2
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
aload 0
aload 1
invokespecial android/os/AsyncTask/onPostExecute(Ljava/lang/Object;)V
aload 0
getfield com/nd/album/ui/task/LikePhotoTask/mCallBack Lcom/nd/album/ui/task/DelPhotoTask$ImageActionCallBack;
ifnull L0
aload 0
getfield com/nd/album/ui/task/LikePhotoTask/mCallBack Lcom/nd/album/ui/task/DelPhotoTask$ImageActionCallBack;
aload 0
getfield com/nd/album/ui/task/LikePhotoTask/mImage Lcom/product/android/commonInterface/album/Image;
aload 0
getfield com/nd/album/ui/task/LikePhotoTask/mPos I
aload 1
invokevirtual java/lang/Integer/intValue()I
invokeinterface com/nd/album/ui/task/DelPhotoTask$ImageActionCallBack/afterDoAction(Lcom/product/android/commonInterface/album/Image;II)V 3
L0:
return
.limit locals 2
.limit stack 4
.end method

.method protected volatile synthetic onPostExecute(Ljava/lang/Object;)V
aload 0
aload 1
checkcast java/lang/Integer
invokevirtual com/nd/album/ui/task/LikePhotoTask/onPostExecute(Ljava/lang/Integer;)V
return
.limit locals 2
.limit stack 2
.end method

.method protected onPreExecute()V
aload 0
invokespecial android/os/AsyncTask/onPreExecute()V
aload 0
getfield com/nd/album/ui/task/LikePhotoTask/mCallBack Lcom/nd/album/ui/task/DelPhotoTask$ImageActionCallBack;
ifnull L0
aload 0
getfield com/nd/album/ui/task/LikePhotoTask/mCallBack Lcom/nd/album/ui/task/DelPhotoTask$ImageActionCallBack;
invokeinterface com/nd/album/ui/task/DelPhotoTask$ImageActionCallBack/beforeDoAction()V 0
L0:
return
.limit locals 1
.limit stack 1
.end method
