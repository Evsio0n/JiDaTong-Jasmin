.bytecode 50.0
.class public synchronized com/common/android/ui/gif/GifPlayer
.super java/lang/Object
.inner class static synthetic inner com/common/android/ui/gif/GifPlayer$1
.inner class private PlayTask inner com/common/android/ui/gif/GifPlayer$PlayTask outer com/common/android/ui/gif/GifPlayer

.field private static final 'serialVersionUID' J = 1L


.field public 'isGif' Z

.field private 'mGifInterface' Lcom/common/android/ui/gif/IGifPlayInterface;

.field private volatile 'mIsPlaying' Z

.field private 'mKey' Ljava/lang/Object;

.field private 'mPlayTask' Lcom/common/android/ui/gif/GifPlayer$PlayTask;

.field private 'mScheduledFuture' Ljava/util/concurrent/Future; signature "Ljava/util/concurrent/Future<*>;"

.method public <init>(I)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_0
putfield com/common/android/ui/gif/GifPlayer/isGif Z
aload 0
iconst_0
putfield com/common/android/ui/gif/GifPlayer/mIsPlaying Z
aload 0
new com/common/android/ui/gif/GifPlayer$PlayTask
dup
aload 0
aconst_null
invokespecial com/common/android/ui/gif/GifPlayer$PlayTask/<init>(Lcom/common/android/ui/gif/GifPlayer;Lcom/common/android/ui/gif/GifPlayer$1;)V
putfield com/common/android/ui/gif/GifPlayer/mPlayTask Lcom/common/android/ui/gif/GifPlayer$PlayTask;
iload 1
ifgt L0
aload 0
iconst_0
putfield com/common/android/ui/gif/GifPlayer/isGif Z
return
L0:
aload 0
iload 1
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
putfield com/common/android/ui/gif/GifPlayer/mKey Ljava/lang/Object;
return
.limit locals 2
.limit stack 5
.end method

.method public <init>(Ljava/lang/String;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_0
putfield com/common/android/ui/gif/GifPlayer/isGif Z
aload 0
iconst_0
putfield com/common/android/ui/gif/GifPlayer/mIsPlaying Z
aload 0
new com/common/android/ui/gif/GifPlayer$PlayTask
dup
aload 0
aconst_null
invokespecial com/common/android/ui/gif/GifPlayer$PlayTask/<init>(Lcom/common/android/ui/gif/GifPlayer;Lcom/common/android/ui/gif/GifPlayer$1;)V
putfield com/common/android/ui/gif/GifPlayer/mPlayTask Lcom/common/android/ui/gif/GifPlayer$PlayTask;
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
aload 0
iconst_0
putfield com/common/android/ui/gif/GifPlayer/isGif Z
return
L0:
aload 0
aload 1
putfield com/common/android/ui/gif/GifPlayer/mKey Ljava/lang/Object;
return
.limit locals 2
.limit stack 5
.end method

.method static synthetic access$100(Lcom/common/android/ui/gif/GifPlayer;)Ljava/lang/Object;
aload 0
getfield com/common/android/ui/gif/GifPlayer/mKey Ljava/lang/Object;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/common/android/ui/gif/GifPlayer;)Z
aload 0
getfield com/common/android/ui/gif/GifPlayer/mIsPlaying Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/common/android/ui/gif/GifPlayer;)Lcom/common/android/ui/gif/IGifPlayInterface;
aload 0
getfield com/common/android/ui/gif/GifPlayer/mGifInterface Lcom/common/android/ui/gif/IGifPlayInterface;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getKey()Ljava/lang/Object;
aload 0
getfield com/common/android/ui/gif/GifPlayer/mKey Ljava/lang/Object;
areturn
.limit locals 1
.limit stack 1
.end method

.method public setGifInterface(Lcom/common/android/ui/gif/IGifPlayInterface;)V
aload 0
aload 1
putfield com/common/android/ui/gif/GifPlayer/mGifInterface Lcom/common/android/ui/gif/IGifPlayInterface;
return
.limit locals 2
.limit stack 2
.end method

.method public start()V
aload 0
getfield com/common/android/ui/gif/GifPlayer/mScheduledFuture Ljava/util/concurrent/Future;
ifnull L0
L1:
return
L0:
getstatic com/common/android/ui/gif/GifCacheManager/INSTANCE Lcom/common/android/ui/gif/GifCacheManager;
aload 0
getfield com/common/android/ui/gif/GifPlayer/mKey Ljava/lang/Object;
invokevirtual com/common/android/ui/gif/GifCacheManager/get(Ljava/lang/Object;)Ljava/util/Vector;
ifnull L1
aload 0
iconst_1
putfield com/common/android/ui/gif/GifPlayer/mIsPlaying Z
aload 0
getstatic com/common/android/ui/gif/GifCacheManager/INSTANCE Lcom/common/android/ui/gif/GifCacheManager;
aload 0
getfield com/common/android/ui/gif/GifPlayer/mPlayTask Lcom/common/android/ui/gif/GifPlayer$PlayTask;
invokevirtual com/common/android/ui/gif/GifCacheManager/createNewFutureTask(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
putfield com/common/android/ui/gif/GifPlayer/mScheduledFuture Ljava/util/concurrent/Future;
return
.limit locals 1
.limit stack 3
.end method

.method public stop()V
aload 0
iconst_0
putfield com/common/android/ui/gif/GifPlayer/mIsPlaying Z
aload 0
getfield com/common/android/ui/gif/GifPlayer/mScheduledFuture Ljava/util/concurrent/Future;
ifnull L0
aload 0
getfield com/common/android/ui/gif/GifPlayer/mScheduledFuture Ljava/util/concurrent/Future;
iconst_1
invokeinterface java/util/concurrent/Future/cancel(Z)Z 1
pop
L0:
aload 0
aconst_null
putfield com/common/android/ui/gif/GifPlayer/mScheduledFuture Ljava/util/concurrent/Future;
return
.limit locals 1
.limit stack 2
.end method
