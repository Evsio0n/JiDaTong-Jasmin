.bytecode 50.0
.class public synchronized com/nd/teamfile/helper/FileIconLoader
.super java/lang/Object
.implements android/os/Handler$Callback
.inner class static synthetic inner com/nd/teamfile/helper/FileIconLoader$1
.inner class private static BitmapHolder inner com/nd/teamfile/helper/FileIconLoader$BitmapHolder outer com/nd/teamfile/helper/FileIconLoader
.inner class private static DrawableHolder inner com/nd/teamfile/helper/FileIconLoader$DrawableHolder outer com/nd/teamfile/helper/FileIconLoader
.inner class public static FileId inner com/nd/teamfile/helper/FileIconLoader$FileId outer com/nd/teamfile/helper/FileIconLoader
.inner class private static abstract ImageHolder inner com/nd/teamfile/helper/FileIconLoader$ImageHolder outer com/nd/teamfile/helper/FileIconLoader
.inner class private LoaderThread inner com/nd/teamfile/helper/FileIconLoader$LoaderThread outer com/nd/teamfile/helper/FileIconLoader

.field private static final 'LOADER_THREAD_NAME' Ljava/lang/String; = "FileIconLoader"

.field private static final 'MESSAGE_ICON_LOADED' I = 2


.field private static final 'MESSAGE_REQUEST_LOADING' I = 1


.field private static final 'MICRO_KIND' I = 3


.field private static final 'mImageCache' Ljava/util/concurrent/ConcurrentHashMap; signature "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Lcom/nd/teamfile/helper/FileIconLoader$ImageHolder;>;"

.field private final 'mContext' Landroid/content/Context;

.field private 'mLoaderThread' Lcom/nd/teamfile/helper/FileIconLoader$LoaderThread;

.field private 'mLoadingRequested' Z

.field private final 'mMainThreadHandler' Landroid/os/Handler;

.field private 'mPaused' Z

.field private final 'mPendingRequests' Ljava/util/concurrent/ConcurrentHashMap; signature "Ljava/util/concurrent/ConcurrentHashMap<Landroid/widget/ImageView;Lcom/nd/teamfile/helper/FileIconLoader$FileId;>;"

.method static <clinit>()V
new java/util/concurrent/ConcurrentHashMap
dup
invokespecial java/util/concurrent/ConcurrentHashMap/<init>()V
putstatic com/nd/teamfile/helper/FileIconLoader/mImageCache Ljava/util/concurrent/ConcurrentHashMap;
return
.limit locals 0
.limit stack 2
.end method

.method public <init>(Landroid/content/Context;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new java/util/concurrent/ConcurrentHashMap
dup
invokespecial java/util/concurrent/ConcurrentHashMap/<init>()V
putfield com/nd/teamfile/helper/FileIconLoader/mPendingRequests Ljava/util/concurrent/ConcurrentHashMap;
aload 0
new android/os/Handler
dup
aload 0
invokespecial android/os/Handler/<init>(Landroid/os/Handler$Callback;)V
putfield com/nd/teamfile/helper/FileIconLoader/mMainThreadHandler Landroid/os/Handler;
aload 0
aload 1
putfield com/nd/teamfile/helper/FileIconLoader/mContext Landroid/content/Context;
return
.limit locals 2
.limit stack 4
.end method

.method static synthetic access$300(Lcom/nd/teamfile/helper/FileIconLoader;)Ljava/util/concurrent/ConcurrentHashMap;
aload 0
getfield com/nd/teamfile/helper/FileIconLoader/mPendingRequests Ljava/util/concurrent/ConcurrentHashMap;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$400()Ljava/util/concurrent/ConcurrentHashMap;
getstatic com/nd/teamfile/helper/FileIconLoader/mImageCache Ljava/util/concurrent/ConcurrentHashMap;
areturn
.limit locals 0
.limit stack 1
.end method

.method static synthetic access$500(Lcom/nd/teamfile/helper/FileIconLoader;)Landroid/content/Context;
aload 0
getfield com/nd/teamfile/helper/FileIconLoader/mContext Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$600(Lcom/nd/teamfile/helper/FileIconLoader;)Landroid/os/Handler;
aload 0
getfield com/nd/teamfile/helper/FileIconLoader/mMainThreadHandler Landroid/os/Handler;
areturn
.limit locals 1
.limit stack 1
.end method

.method private loadCachedIcon(Landroid/widget/ImageView;Ljava/lang/String;Lcom/nd/teamfile/helper/FileCategoryHelper$FileCategory;)Z
getstatic com/nd/teamfile/helper/FileIconLoader/mImageCache Ljava/util/concurrent/ConcurrentHashMap;
aload 2
invokevirtual java/util/concurrent/ConcurrentHashMap/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast com/nd/teamfile/helper/FileIconLoader$ImageHolder
astore 4
aload 4
ifnonnull L0
aload 3
invokestatic com/nd/teamfile/helper/FileIconLoader$ImageHolder/create(Lcom/nd/teamfile/helper/FileCategoryHelper$FileCategory;)Lcom/nd/teamfile/helper/FileIconLoader$ImageHolder;
astore 1
aload 1
ifnonnull L1
iconst_0
ireturn
L1:
getstatic com/nd/teamfile/helper/FileIconLoader/mImageCache Ljava/util/concurrent/ConcurrentHashMap;
aload 2
aload 1
invokevirtual java/util/concurrent/ConcurrentHashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
aload 1
astore 2
L2:
aload 2
iconst_0
putfield com/nd/teamfile/helper/FileIconLoader$ImageHolder/state I
iconst_0
ireturn
L0:
aload 4
astore 2
aload 4
getfield com/nd/teamfile/helper/FileIconLoader$ImageHolder/state I
iconst_2
if_icmpne L2
aload 4
invokevirtual com/nd/teamfile/helper/FileIconLoader$ImageHolder/isNull()Z
ifeq L3
iconst_1
ireturn
L3:
aload 4
astore 2
aload 4
aload 1
invokevirtual com/nd/teamfile/helper/FileIconLoader$ImageHolder/setImageView(Landroid/widget/ImageView;)Z
ifeq L2
iconst_1
ireturn
.limit locals 5
.limit stack 3
.end method

.method private processLoadedIcons()V
aload 0
getfield com/nd/teamfile/helper/FileIconLoader/mPendingRequests Ljava/util/concurrent/ConcurrentHashMap;
invokevirtual java/util/concurrent/ConcurrentHashMap/keySet()Ljava/util/Set;
invokeinterface java/util/Set/iterator()Ljava/util/Iterator; 0
astore 1
L0:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast android/widget/ImageView
astore 2
aload 0
getfield com/nd/teamfile/helper/FileIconLoader/mPendingRequests Ljava/util/concurrent/ConcurrentHashMap;
aload 2
invokevirtual java/util/concurrent/ConcurrentHashMap/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast com/nd/teamfile/helper/FileIconLoader$FileId
astore 3
aload 0
aload 2
aload 3
getfield com/nd/teamfile/helper/FileIconLoader$FileId/mPath Ljava/lang/String;
aload 3
getfield com/nd/teamfile/helper/FileIconLoader$FileId/mCategory Lcom/nd/teamfile/helper/FileCategoryHelper$FileCategory;
invokespecial com/nd/teamfile/helper/FileIconLoader/loadCachedIcon(Landroid/widget/ImageView;Ljava/lang/String;Lcom/nd/teamfile/helper/FileCategoryHelper$FileCategory;)Z
ifeq L0
aload 1
invokeinterface java/util/Iterator/remove()V 0
goto L0
L1:
aload 0
getfield com/nd/teamfile/helper/FileIconLoader/mPendingRequests Ljava/util/concurrent/ConcurrentHashMap;
invokevirtual java/util/concurrent/ConcurrentHashMap/isEmpty()Z
ifne L2
aload 0
invokespecial com/nd/teamfile/helper/FileIconLoader/requestLoading()V
L2:
return
.limit locals 4
.limit stack 4
.end method

.method private requestLoading()V
aload 0
getfield com/nd/teamfile/helper/FileIconLoader/mLoadingRequested Z
ifne L0
aload 0
iconst_1
putfield com/nd/teamfile/helper/FileIconLoader/mLoadingRequested Z
aload 0
getfield com/nd/teamfile/helper/FileIconLoader/mMainThreadHandler Landroid/os/Handler;
iconst_1
invokevirtual android/os/Handler/sendEmptyMessage(I)Z
pop
L0:
return
.limit locals 1
.limit stack 2
.end method

.method public cancelRequest(Landroid/widget/ImageView;)V
aload 0
getfield com/nd/teamfile/helper/FileIconLoader/mPendingRequests Ljava/util/concurrent/ConcurrentHashMap;
aload 1
invokevirtual java/util/concurrent/ConcurrentHashMap/remove(Ljava/lang/Object;)Ljava/lang/Object;
pop
return
.limit locals 2
.limit stack 2
.end method

.method public clear()V
aload 0
getfield com/nd/teamfile/helper/FileIconLoader/mPendingRequests Ljava/util/concurrent/ConcurrentHashMap;
invokevirtual java/util/concurrent/ConcurrentHashMap/clear()V
getstatic com/nd/teamfile/helper/FileIconLoader/mImageCache Ljava/util/concurrent/ConcurrentHashMap;
invokevirtual java/util/concurrent/ConcurrentHashMap/clear()V
return
.limit locals 1
.limit stack 1
.end method

.method public getDbId(Ljava/lang/String;Z)J
iload 2
ifeq L0
ldc "external"
invokestatic android/provider/MediaStore$Video$Media/getContentUri(Ljava/lang/String;)Landroid/net/Uri;
astore 5
L1:
aload 0
getfield com/nd/teamfile/helper/FileIconLoader/mContext Landroid/content/Context;
invokevirtual android/content/Context/getContentResolver()Landroid/content/ContentResolver;
aload 5
iconst_2
anewarray java/lang/String
dup
iconst_0
ldc "_id"
aastore
dup
iconst_1
ldc "_data"
aastore
ldc "_data=?"
iconst_1
anewarray java/lang/String
dup
iconst_0
aload 1
aastore
aconst_null
invokevirtual android/content/ContentResolver/query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
astore 1
aload 1
ifnonnull L2
lconst_0
lreturn
L0:
ldc "external"
invokestatic android/provider/MediaStore$Images$Media/getContentUri(Ljava/lang/String;)Landroid/net/Uri;
astore 5
goto L1
L2:
lconst_0
lstore 3
aload 1
invokeinterface android/database/Cursor/moveToNext()Z 0
ifeq L3
aload 1
iconst_0
invokeinterface android/database/Cursor/getLong(I)J 1
lstore 3
L3:
aload 1
invokeinterface android/database/Cursor/close()V 0
lload 3
lreturn
.limit locals 6
.limit stack 8
.end method

.method public handleMessage(Landroid/os/Message;)Z
iconst_1
istore 2
aload 1
getfield android/os/Message/what I
tableswitch 1
L0
L1
default : L2
L2:
iconst_0
istore 2
L3:
iload 2
ireturn
L0:
aload 0
iconst_0
putfield com/nd/teamfile/helper/FileIconLoader/mLoadingRequested Z
aload 0
getfield com/nd/teamfile/helper/FileIconLoader/mPaused Z
ifne L3
aload 0
getfield com/nd/teamfile/helper/FileIconLoader/mLoaderThread Lcom/nd/teamfile/helper/FileIconLoader$LoaderThread;
ifnonnull L4
aload 0
new com/nd/teamfile/helper/FileIconLoader$LoaderThread
dup
aload 0
invokespecial com/nd/teamfile/helper/FileIconLoader$LoaderThread/<init>(Lcom/nd/teamfile/helper/FileIconLoader;)V
putfield com/nd/teamfile/helper/FileIconLoader/mLoaderThread Lcom/nd/teamfile/helper/FileIconLoader$LoaderThread;
aload 0
getfield com/nd/teamfile/helper/FileIconLoader/mLoaderThread Lcom/nd/teamfile/helper/FileIconLoader$LoaderThread;
invokevirtual com/nd/teamfile/helper/FileIconLoader$LoaderThread/start()V
L4:
aload 0
getfield com/nd/teamfile/helper/FileIconLoader/mLoaderThread Lcom/nd/teamfile/helper/FileIconLoader$LoaderThread;
invokevirtual com/nd/teamfile/helper/FileIconLoader$LoaderThread/requestLoading()V
iconst_1
ireturn
L1:
aload 0
getfield com/nd/teamfile/helper/FileIconLoader/mPaused Z
ifne L3
aload 0
invokespecial com/nd/teamfile/helper/FileIconLoader/processLoadedIcons()V
iconst_1
ireturn
.limit locals 3
.limit stack 4
.end method

.method public loadIcon(Landroid/widget/ImageView;Ljava/lang/String;JLcom/nd/teamfile/helper/FileCategoryHelper$FileCategory;)Z
aload 0
aload 1
aload 2
aload 5
invokespecial com/nd/teamfile/helper/FileIconLoader/loadCachedIcon(Landroid/widget/ImageView;Ljava/lang/String;Lcom/nd/teamfile/helper/FileCategoryHelper$FileCategory;)Z
istore 6
iload 6
ifeq L0
aload 0
getfield com/nd/teamfile/helper/FileIconLoader/mPendingRequests Ljava/util/concurrent/ConcurrentHashMap;
aload 1
invokevirtual java/util/concurrent/ConcurrentHashMap/remove(Ljava/lang/Object;)Ljava/lang/Object;
pop
L1:
iload 6
ireturn
L0:
new com/nd/teamfile/helper/FileIconLoader$FileId
dup
aload 2
lload 3
aload 5
invokespecial com/nd/teamfile/helper/FileIconLoader$FileId/<init>(Ljava/lang/String;JLcom/nd/teamfile/helper/FileCategoryHelper$FileCategory;)V
astore 2
aload 0
getfield com/nd/teamfile/helper/FileIconLoader/mPendingRequests Ljava/util/concurrent/ConcurrentHashMap;
aload 1
aload 2
invokevirtual java/util/concurrent/ConcurrentHashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
aload 0
getfield com/nd/teamfile/helper/FileIconLoader/mPaused Z
ifne L1
aload 0
invokespecial com/nd/teamfile/helper/FileIconLoader/requestLoading()V
iload 6
ireturn
.limit locals 7
.limit stack 6
.end method

.method public pause()V
aload 0
iconst_1
putfield com/nd/teamfile/helper/FileIconLoader/mPaused Z
return
.limit locals 1
.limit stack 2
.end method

.method public resume()V
aload 0
iconst_0
putfield com/nd/teamfile/helper/FileIconLoader/mPaused Z
aload 0
getfield com/nd/teamfile/helper/FileIconLoader/mPendingRequests Ljava/util/concurrent/ConcurrentHashMap;
invokevirtual java/util/concurrent/ConcurrentHashMap/isEmpty()Z
ifne L0
aload 0
invokespecial com/nd/teamfile/helper/FileIconLoader/requestLoading()V
L0:
return
.limit locals 1
.limit stack 2
.end method

.method public stop()V
aload 0
invokevirtual com/nd/teamfile/helper/FileIconLoader/pause()V
aload 0
getfield com/nd/teamfile/helper/FileIconLoader/mLoaderThread Lcom/nd/teamfile/helper/FileIconLoader$LoaderThread;
ifnull L0
aload 0
getfield com/nd/teamfile/helper/FileIconLoader/mLoaderThread Lcom/nd/teamfile/helper/FileIconLoader$LoaderThread;
invokevirtual com/nd/teamfile/helper/FileIconLoader$LoaderThread/quit()Z
pop
aload 0
aconst_null
putfield com/nd/teamfile/helper/FileIconLoader/mLoaderThread Lcom/nd/teamfile/helper/FileIconLoader$LoaderThread;
L0:
aload 0
invokevirtual com/nd/teamfile/helper/FileIconLoader/clear()V
return
.limit locals 1
.limit stack 2
.end method
