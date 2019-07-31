.bytecode 50.0
.class public synchronized com/product/android/utils/SaveTweetImageTask
.super android/os/AsyncTask
.signature "Landroid/os/AsyncTask<Ljava/lang/String;Ljava/lang/Void;Ljava/lang/Void;>;"
.inner class SavePicHandler inner com/product/android/utils/SaveTweetImageTask$SavePicHandler outer com/product/android/utils/SaveTweetImageTask

.field public static final 'SAVE_IMAGE_FAIL' I = 2


.field public static final 'SAVE_IMAGE_NOT_EXIST' I = 3


.field public static final 'SAVE_IMAGE_START' I = 0


.field public static final 'SAVE_IMAGE_SUCCESS' I = 1


.field private 'mContext' Landroid/content/Context;

.field private 'mHandler' Lcom/product/android/utils/SaveTweetImageTask$SavePicHandler;

.field private 'mImageExt' Ljava/lang/String;

.field private 'mImageLoader' Lcom/nostra13/universalimageloader/core/ImageLoader;

.field private 'mOption' Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.field private 'mUrl' Ljava/lang/String;

.method public <init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V
aload 0
invokespecial android/os/AsyncTask/<init>()V
aload 0
invokestatic com/nostra13/universalimageloader/core/ImageLoader/getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;
putfield com/product/android/utils/SaveTweetImageTask/mImageLoader Lcom/nostra13/universalimageloader/core/ImageLoader;
aload 0
aload 1
putfield com/product/android/utils/SaveTweetImageTask/mUrl Ljava/lang/String;
aload 0
aload 3
putfield com/product/android/utils/SaveTweetImageTask/mContext Landroid/content/Context;
aload 0
new com/product/android/utils/SaveTweetImageTask$SavePicHandler
dup
aload 0
aload 3
invokespecial com/product/android/utils/SaveTweetImageTask$SavePicHandler/<init>(Lcom/product/android/utils/SaveTweetImageTask;Landroid/content/Context;)V
putfield com/product/android/utils/SaveTweetImageTask/mHandler Lcom/product/android/utils/SaveTweetImageTask$SavePicHandler;
aload 0
aload 4
putfield com/product/android/utils/SaveTweetImageTask/mOption Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
aload 0
aload 2
putfield com/product/android/utils/SaveTweetImageTask/mImageExt Ljava/lang/String;
return
.limit locals 5
.limit stack 5
.end method

.method protected volatile synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
aload 0
aload 1
checkcast [Ljava/lang/String;
invokevirtual com/product/android/utils/SaveTweetImageTask/doInBackground([Ljava/lang/String;)Ljava/lang/Void;
areturn
.limit locals 2
.limit stack 2
.end method

.method protected transient doInBackground([Ljava/lang/String;)Ljava/lang/Void;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic android/os/Environment/getExternalStorageDirectory()Ljava/io/File;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
ldc "/DCIM/camera/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 1
new java/lang/StringBuilder
dup
aload 0
getfield com/product/android/utils/SaveTweetImageTask/mImageLoader Lcom/nostra13/universalimageloader/core/ImageLoader;
aload 0
getfield com/product/android/utils/SaveTweetImageTask/mOption Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
aload 0
getfield com/product/android/utils/SaveTweetImageTask/mUrl Ljava/lang/String;
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/getDiscCacheFileName(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Ljava/lang/String;)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
astore 2
aload 0
getfield com/product/android/utils/SaveTweetImageTask/mImageExt Ljava/lang/String;
aload 0
getfield com/product/android/utils/SaveTweetImageTask/mUrl Ljava/lang/String;
invokestatic com/common/android/utils/ImageUtils/isGifForWeibo(Ljava/lang/String;Ljava/lang/String;)Z
ifne L0
aload 2
ldc ".jpg"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L1:
new java/io/File
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/io/File/<init>(Ljava/lang/String;)V
astore 1
invokestatic android/os/Message/obtain()Landroid/os/Message;
astore 2
aload 2
iconst_0
putfield android/os/Message/what I
aload 0
getfield com/product/android/utils/SaveTweetImageTask/mHandler Lcom/product/android/utils/SaveTweetImageTask$SavePicHandler;
aload 2
invokevirtual com/product/android/utils/SaveTweetImageTask$SavePicHandler/sendMessage(Landroid/os/Message;)Z
pop
aload 0
getfield com/product/android/utils/SaveTweetImageTask/mImageLoader Lcom/nostra13/universalimageloader/core/ImageLoader;
aload 0
getfield com/product/android/utils/SaveTweetImageTask/mOption Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
aload 0
getfield com/product/android/utils/SaveTweetImageTask/mUrl Ljava/lang/String;
aload 1
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/saveDiscCacheFile(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Ljava/lang/String;Ljava/io/File;)Z
ifeq L2
new android/content/ContentValues
dup
invokespecial android/content/ContentValues/<init>()V
astore 2
aload 2
ldc "_data"
aload 1
invokevirtual java/io/File/toString()Ljava/lang/String;
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
getfield com/product/android/utils/SaveTweetImageTask/mContext Landroid/content/Context;
invokevirtual android/content/Context/getContentResolver()Landroid/content/ContentResolver;
getstatic android/provider/MediaStore$Images$Media/EXTERNAL_CONTENT_URI Landroid/net/Uri;
aload 2
invokevirtual android/content/ContentResolver/insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
pop
invokestatic android/os/Message/obtain()Landroid/os/Message;
astore 2
aload 2
iconst_1
putfield android/os/Message/what I
aload 2
aload 1
invokevirtual java/io/File/getPath()Ljava/lang/String;
putfield android/os/Message/obj Ljava/lang/Object;
aload 0
getfield com/product/android/utils/SaveTweetImageTask/mHandler Lcom/product/android/utils/SaveTweetImageTask$SavePicHandler;
aload 2
invokevirtual com/product/android/utils/SaveTweetImageTask$SavePicHandler/sendMessage(Landroid/os/Message;)Z
pop
L3:
aconst_null
areturn
L0:
aload 2
ldc ".gif"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
goto L1
L2:
invokestatic android/os/Message/obtain()Landroid/os/Message;
astore 1
aload 1
iconst_2
putfield android/os/Message/what I
aload 0
getfield com/product/android/utils/SaveTweetImageTask/mHandler Lcom/product/android/utils/SaveTweetImageTask$SavePicHandler;
aload 1
invokevirtual com/product/android/utils/SaveTweetImageTask$SavePicHandler/sendMessage(Landroid/os/Message;)Z
pop
goto L3
.limit locals 3
.limit stack 5
.end method
