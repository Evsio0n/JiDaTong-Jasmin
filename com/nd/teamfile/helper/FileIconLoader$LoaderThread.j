.bytecode 50.0
.class synchronized com/nd/teamfile/helper/FileIconLoader$LoaderThread
.super android/os/HandlerThread
.implements android/os/Handler$Callback
.inner class private LoaderThread inner com/nd/teamfile/helper/FileIconLoader$LoaderThread outer com/nd/teamfile/helper/FileIconLoader

.field private 'mLoaderThreadHandler' Landroid/os/Handler;

.field final synthetic 'this$0' Lcom/nd/teamfile/helper/FileIconLoader;

.method public <init>(Lcom/nd/teamfile/helper/FileIconLoader;)V
aload 0
aload 1
putfield com/nd/teamfile/helper/FileIconLoader$LoaderThread/this$0 Lcom/nd/teamfile/helper/FileIconLoader;
aload 0
ldc "FileIconLoader"
invokespecial android/os/HandlerThread/<init>(Ljava/lang/String;)V
return
.limit locals 2
.limit stack 2
.end method

.method private getImageThumbnail(J)Landroid/graphics/Bitmap;
aload 0
getfield com/nd/teamfile/helper/FileIconLoader$LoaderThread/this$0 Lcom/nd/teamfile/helper/FileIconLoader;
invokestatic com/nd/teamfile/helper/FileIconLoader/access$500(Lcom/nd/teamfile/helper/FileIconLoader;)Landroid/content/Context;
invokevirtual android/content/Context/getContentResolver()Landroid/content/ContentResolver;
lload 1
iconst_3
aconst_null
invokestatic android/provider/MediaStore$Images$Thumbnails/getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
areturn
.limit locals 3
.limit stack 5
.end method

.method private getVideoThumbnail(J)Landroid/graphics/Bitmap;
aload 0
getfield com/nd/teamfile/helper/FileIconLoader$LoaderThread/this$0 Lcom/nd/teamfile/helper/FileIconLoader;
invokestatic com/nd/teamfile/helper/FileIconLoader/access$500(Lcom/nd/teamfile/helper/FileIconLoader;)Landroid/content/Context;
invokevirtual android/content/Context/getContentResolver()Landroid/content/ContentResolver;
lload 1
iconst_3
aconst_null
invokestatic android/provider/MediaStore$Video$Thumbnails/getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
areturn
.limit locals 3
.limit stack 5
.end method

.method public handleMessage(Landroid/os/Message;)Z
aload 0
getfield com/nd/teamfile/helper/FileIconLoader$LoaderThread/this$0 Lcom/nd/teamfile/helper/FileIconLoader;
invokestatic com/nd/teamfile/helper/FileIconLoader/access$300(Lcom/nd/teamfile/helper/FileIconLoader;)Ljava/util/concurrent/ConcurrentHashMap;
invokevirtual java/util/concurrent/ConcurrentHashMap/values()Ljava/util/Collection;
invokeinterface java/util/Collection/iterator()Ljava/util/Iterator; 0
astore 3
L0:
aload 3
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 3
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/teamfile/helper/FileIconLoader$FileId
astore 4
invokestatic com/nd/teamfile/helper/FileIconLoader/access$400()Ljava/util/concurrent/ConcurrentHashMap;
aload 4
getfield com/nd/teamfile/helper/FileIconLoader$FileId/mPath Ljava/lang/String;
invokevirtual java/util/concurrent/ConcurrentHashMap/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast com/nd/teamfile/helper/FileIconLoader$ImageHolder
astore 5
aload 5
ifnull L0
aload 5
getfield com/nd/teamfile/helper/FileIconLoader$ImageHolder/state I
ifne L0
aload 5
iconst_1
putfield com/nd/teamfile/helper/FileIconLoader$ImageHolder/state I
getstatic com/nd/teamfile/helper/FileIconLoader$1/$SwitchMap$com$nd$teamfile$helper$FileCategoryHelper$FileCategory [I
aload 4
getfield com/nd/teamfile/helper/FileIconLoader$FileId/mCategory Lcom/nd/teamfile/helper/FileCategoryHelper$FileCategory;
invokevirtual com/nd/teamfile/helper/FileCategoryHelper$FileCategory/ordinal()I
iaload
tableswitch 1
L2
L3
L3
default : L4
L4:
aload 5
iconst_2
putfield com/nd/teamfile/helper/FileIconLoader$ImageHolder/state I
invokestatic com/nd/teamfile/helper/FileIconLoader/access$400()Ljava/util/concurrent/ConcurrentHashMap;
aload 4
getfield com/nd/teamfile/helper/FileIconLoader$FileId/mPath Ljava/lang/String;
aload 5
invokevirtual java/util/concurrent/ConcurrentHashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
goto L0
L2:
aload 5
aload 0
getfield com/nd/teamfile/helper/FileIconLoader$LoaderThread/this$0 Lcom/nd/teamfile/helper/FileIconLoader;
invokestatic com/nd/teamfile/helper/FileIconLoader/access$500(Lcom/nd/teamfile/helper/FileIconLoader;)Landroid/content/Context;
aload 4
getfield com/nd/teamfile/helper/FileIconLoader$FileId/mPath Ljava/lang/String;
invokestatic com/nd/teamfile/util/FileExplorerUtil/getApkIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
invokevirtual com/nd/teamfile/helper/FileIconLoader$ImageHolder/setImage(Ljava/lang/Object;)V
goto L4
L3:
aload 4
getfield com/nd/teamfile/helper/FileIconLoader$FileId/mCategory Lcom/nd/teamfile/helper/FileCategoryHelper$FileCategory;
getstatic com/nd/teamfile/helper/FileCategoryHelper$FileCategory/Video Lcom/nd/teamfile/helper/FileCategoryHelper$FileCategory;
if_acmpne L5
iconst_1
istore 2
L6:
aload 4
getfield com/nd/teamfile/helper/FileIconLoader$FileId/mId J
lconst_0
lcmp
ifne L7
aload 4
aload 0
getfield com/nd/teamfile/helper/FileIconLoader$LoaderThread/this$0 Lcom/nd/teamfile/helper/FileIconLoader;
aload 4
getfield com/nd/teamfile/helper/FileIconLoader$FileId/mPath Ljava/lang/String;
iload 2
invokevirtual com/nd/teamfile/helper/FileIconLoader/getDbId(Ljava/lang/String;Z)J
putfield com/nd/teamfile/helper/FileIconLoader$FileId/mId J
L7:
aload 4
getfield com/nd/teamfile/helper/FileIconLoader$FileId/mId J
lconst_0
lcmp
ifne L8
L8:
iload 2
ifeq L9
aload 0
aload 4
getfield com/nd/teamfile/helper/FileIconLoader$FileId/mId J
invokespecial com/nd/teamfile/helper/FileIconLoader$LoaderThread/getVideoThumbnail(J)Landroid/graphics/Bitmap;
astore 1
L10:
aload 5
aload 1
invokevirtual com/nd/teamfile/helper/FileIconLoader$ImageHolder/setImage(Ljava/lang/Object;)V
goto L4
L5:
iconst_0
istore 2
goto L6
L9:
aload 0
aload 4
getfield com/nd/teamfile/helper/FileIconLoader$FileId/mId J
invokespecial com/nd/teamfile/helper/FileIconLoader$LoaderThread/getImageThumbnail(J)Landroid/graphics/Bitmap;
astore 1
goto L10
L1:
aload 0
getfield com/nd/teamfile/helper/FileIconLoader$LoaderThread/this$0 Lcom/nd/teamfile/helper/FileIconLoader;
invokestatic com/nd/teamfile/helper/FileIconLoader/access$600(Lcom/nd/teamfile/helper/FileIconLoader;)Landroid/os/Handler;
iconst_2
invokevirtual android/os/Handler/sendEmptyMessage(I)Z
pop
iconst_1
ireturn
.limit locals 6
.limit stack 4
.end method

.method public requestLoading()V
aload 0
getfield com/nd/teamfile/helper/FileIconLoader$LoaderThread/mLoaderThreadHandler Landroid/os/Handler;
ifnonnull L0
aload 0
new android/os/Handler
dup
aload 0
invokevirtual com/nd/teamfile/helper/FileIconLoader$LoaderThread/getLooper()Landroid/os/Looper;
aload 0
invokespecial android/os/Handler/<init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V
putfield com/nd/teamfile/helper/FileIconLoader$LoaderThread/mLoaderThreadHandler Landroid/os/Handler;
L0:
aload 0
getfield com/nd/teamfile/helper/FileIconLoader$LoaderThread/mLoaderThreadHandler Landroid/os/Handler;
iconst_0
invokevirtual android/os/Handler/sendEmptyMessage(I)Z
pop
return
.limit locals 1
.limit stack 5
.end method
