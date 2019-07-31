.bytecode 50.0
.class public synchronized com/nd/album/ui/task/SavePhotoTask
.super android/os/AsyncTask
.signature "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Integer;>;"

.field private 'mContext' Landroid/content/Context;

.field private 'mImage' Lcom/product/android/commonInterface/album/Image;

.field private 'savePath' Ljava/lang/String;

.method public <init>(Landroid/content/Context;Lcom/product/android/commonInterface/album/Image;)V
aload 0
invokespecial android/os/AsyncTask/<init>()V
aload 0
aload 2
putfield com/nd/album/ui/task/SavePhotoTask/mImage Lcom/product/android/commonInterface/album/Image;
aload 0
aload 1
putfield com/nd/album/ui/task/SavePhotoTask/mContext Landroid/content/Context;
return
.limit locals 3
.limit stack 2
.end method

.method protected transient doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic android/os/Environment/getExternalStorageDirectory()Ljava/io/File;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
ldc "/DCIM/camera/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 3
aload 0
getfield com/nd/album/ui/task/SavePhotoTask/mImage Lcom/product/android/commonInterface/album/Image;
invokevirtual com/product/android/commonInterface/album/Image/getUrl_480()Ljava/lang/String;
invokestatic com/product/android/commonInterface/album/Image/appendSid(Ljava/lang/String;)Ljava/lang/String;
astore 2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic com/nostra13/universalimageloader/core/ImageLoader/getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;
aload 0
getfield com/nd/album/ui/task/SavePhotoTask/mContext Landroid/content/Context;
invokestatic com/nd/album/data/ImageCacheOpt/getAlbumNoCacheOpt(Landroid/content/Context;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
aload 2
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/getDiscCacheFileName(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ".jpg"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 1
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 3
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putfield com/nd/album/ui/task/SavePhotoTask/savePath Ljava/lang/String;
new java/io/File
dup
aload 0
getfield com/nd/album/ui/task/SavePhotoTask/savePath Ljava/lang/String;
invokespecial java/io/File/<init>(Ljava/lang/String;)V
astore 3
invokestatic com/nostra13/universalimageloader/core/ImageLoader/getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;
aload 0
getfield com/nd/album/ui/task/SavePhotoTask/mContext Landroid/content/Context;
invokestatic com/nd/album/data/ImageCacheOpt/getAlbumNoCacheOpt(Landroid/content/Context;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
aload 2
aload 3
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/saveDiscCacheFile(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Ljava/lang/String;Ljava/io/File;)Z
ifeq L0
new android/content/ContentValues
dup
invokespecial android/content/ContentValues/<init>()V
astore 2
aload 2
ldc "_data"
aload 0
getfield com/nd/album/ui/task/SavePhotoTask/savePath Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "_display_name"
aload 1
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "description"
ldc "save image ---"
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "mime_type"
ldc "image/jpeg"
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "datetaken"
new java/util/Date
dup
invokespecial java/util/Date/<init>()V
invokevirtual java/util/Date/getTime()J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Long;)V
aload 0
getfield com/nd/album/ui/task/SavePhotoTask/mContext Landroid/content/Context;
invokevirtual android/content/Context/getContentResolver()Landroid/content/ContentResolver;
getstatic android/provider/MediaStore$Images$Media/EXTERNAL_CONTENT_URI Landroid/net/Uri;
aload 2
invokevirtual android/content/ContentResolver/insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
pop
iconst_0
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
areturn
L0:
iconst_m1
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
areturn
.limit locals 4
.limit stack 4
.end method

.method protected volatile synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
aload 0
aload 1
checkcast [Ljava/lang/Void;
invokevirtual com/nd/album/ui/task/SavePhotoTask/doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
areturn
.limit locals 2
.limit stack 2
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
aload 0
aload 1
invokespecial android/os/AsyncTask/onPostExecute(Ljava/lang/Object;)V
aload 1
invokevirtual java/lang/Integer/intValue()I
ifne L0
aload 0
getfield com/nd/album/ui/task/SavePhotoTask/mContext Landroid/content/Context;
aload 0
getfield com/nd/album/ui/task/SavePhotoTask/mContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/album/R$string/save_pic_success_in I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 0
getfield com/nd/album/ui/task/SavePhotoTask/savePath Ljava/lang/String;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;Ljava/lang/String;)V
return
L0:
aload 0
getfield com/nd/album/ui/task/SavePhotoTask/mContext Landroid/content/Context;
getstatic com/nd/album/R$string/save_pic_fail I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
return
.limit locals 2
.limit stack 6
.end method

.method protected volatile synthetic onPostExecute(Ljava/lang/Object;)V
aload 0
aload 1
checkcast java/lang/Integer
invokevirtual com/nd/album/ui/task/SavePhotoTask/onPostExecute(Ljava/lang/Integer;)V
return
.limit locals 2
.limit stack 2
.end method

.method protected onPreExecute()V
aload 0
invokespecial android/os/AsyncTask/onPreExecute()V
aload 0
getfield com/nd/album/ui/task/SavePhotoTask/mContext Landroid/content/Context;
getstatic com/nd/album/R$string/start_save_pic I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
return
.limit locals 1
.limit stack 2
.end method
