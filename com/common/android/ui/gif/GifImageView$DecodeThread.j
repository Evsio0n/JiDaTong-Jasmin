.bytecode 50.0
.class synchronized com/common/android/ui/gif/GifImageView$DecodeThread
.super java/lang/Thread
.inner class private DecodeThread inner com/common/android/ui/gif/GifImageView$DecodeThread outer com/common/android/ui/gif/GifImageView
.inner class inner com/common/android/ui/gif/GifImageView$DecodeThread$1

.field 'mIsQuit' Z

.field private 'mLastDecodedTime' J

.field final synthetic 'this$0' Lcom/common/android/ui/gif/GifImageView;

.method private <init>(Lcom/common/android/ui/gif/GifImageView;)V
aload 0
aload 1
putfield com/common/android/ui/gif/GifImageView$DecodeThread/this$0 Lcom/common/android/ui/gif/GifImageView;
aload 0
invokespecial java/lang/Thread/<init>()V
aload 0
iconst_0
putfield com/common/android/ui/gif/GifImageView$DecodeThread/mIsQuit Z
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/common/android/ui/gif/GifImageView;Lcom/common/android/ui/gif/GifImageView$1;)V
aload 0
aload 1
invokespecial com/common/android/ui/gif/GifImageView$DecodeThread/<init>(Lcom/common/android/ui/gif/GifImageView;)V
return
.limit locals 3
.limit stack 2
.end method

.method static synthetic access$600(Lcom/common/android/ui/gif/GifImageView$DecodeThread;)J
aload 0
getfield com/common/android/ui/gif/GifImageView$DecodeThread/mLastDecodedTime J
lreturn
.limit locals 1
.limit stack 2
.end method

.method static synthetic access$602(Lcom/common/android/ui/gif/GifImageView$DecodeThread;J)J
aload 0
lload 1
putfield com/common/android/ui/gif/GifImageView$DecodeThread/mLastDecodedTime J
lload 1
lreturn
.limit locals 3
.limit stack 3
.end method

.method private play(Ljava/io/InputStream;)I
.catch java/lang/OutOfMemoryError from L0 to L1 using L2
.catch java/lang/Exception from L0 to L1 using L3
new com/common/android/ui/gif/GifDecoder
dup
invokespecial com/common/android/ui/gif/GifDecoder/<init>()V
astore 3
aload 0
lconst_0
putfield com/common/android/ui/gif/GifImageView$DecodeThread/mLastDecodedTime J
aload 3
new com/common/android/ui/gif/GifImageView$DecodeThread$1
dup
aload 0
aload 3
invokespecial com/common/android/ui/gif/GifImageView$DecodeThread$1/<init>(Lcom/common/android/ui/gif/GifImageView$DecodeThread;Lcom/common/android/ui/gif/GifDecoder;)V
invokevirtual com/common/android/ui/gif/GifDecoder/setBitmapDecodeCallback(Lcom/common/android/ui/gif/GifDecoder$BitmapDecodeCallback;)V
L0:
aload 3
aload 1
invokevirtual com/common/android/ui/gif/GifDecoder/read(Ljava/io/InputStream;)I
istore 2
L1:
iload 2
ifeq L4
L5:
iload 2
ireturn
L2:
astore 1
iconst_0
ireturn
L3:
astore 1
iconst_0
ireturn
L4:
aload 0
getfield com/common/android/ui/gif/GifImageView$DecodeThread/this$0 Lcom/common/android/ui/gif/GifImageView;
invokestatic com/common/android/ui/gif/GifImageView/access$700(Lcom/common/android/ui/gif/GifImageView;)Z
ifeq L5
getstatic com/common/android/ui/gif/GifCacheManager/INSTANCE Lcom/common/android/ui/gif/GifCacheManager;
aload 0
getfield com/common/android/ui/gif/GifImageView$DecodeThread/this$0 Lcom/common/android/ui/gif/GifImageView;
invokestatic com/common/android/ui/gif/GifImageView/access$800(Lcom/common/android/ui/gif/GifImageView;)Ljava/lang/Object;
ldc ""
invokevirtual com/common/android/ui/gif/GifCacheManager/notifyDeocdeResult(Ljava/lang/Object;Ljava/lang/String;)V
aload 0
getfield com/common/android/ui/gif/GifImageView$DecodeThread/this$0 Lcom/common/android/ui/gif/GifImageView;
iconst_0
invokestatic com/common/android/ui/gif/GifImageView/access$702(Lcom/common/android/ui/gif/GifImageView;Z)Z
pop
goto L5
.limit locals 4
.limit stack 5
.end method

.method public quit()V
aload 0
iconst_1
putfield com/common/android/ui/gif/GifImageView$DecodeThread/mIsQuit Z
return
.limit locals 1
.limit stack 2
.end method

.method public run()V
.catch java/io/FileNotFoundException from L0 to L1 using L2
iconst_0
istore 1
L3:
iload 1
ifne L4
aload 0
getfield com/common/android/ui/gif/GifImageView$DecodeThread/mIsQuit Z
ifne L4
aconst_null
astore 2
aload 0
getfield com/common/android/ui/gif/GifImageView$DecodeThread/this$0 Lcom/common/android/ui/gif/GifImageView;
invokestatic com/common/android/ui/gif/GifImageView/access$300(Lcom/common/android/ui/gif/GifImageView;)I
ifeq L5
aload 0
getfield com/common/android/ui/gif/GifImageView$DecodeThread/this$0 Lcom/common/android/ui/gif/GifImageView;
invokevirtual com/common/android/ui/gif/GifImageView/getContext()Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
aload 0
getfield com/common/android/ui/gif/GifImageView$DecodeThread/this$0 Lcom/common/android/ui/gif/GifImageView;
invokestatic com/common/android/ui/gif/GifImageView/access$300(Lcom/common/android/ui/gif/GifImageView;)I
invokevirtual android/content/res/Resources/openRawResource(I)Ljava/io/InputStream;
astore 2
L6:
aload 2
ifnull L4
aload 0
aload 2
invokespecial com/common/android/ui/gif/GifImageView$DecodeThread/play(Ljava/io/InputStream;)I
istore 1
goto L3
L5:
aload 0
getfield com/common/android/ui/gif/GifImageView$DecodeThread/this$0 Lcom/common/android/ui/gif/GifImageView;
invokestatic com/common/android/ui/gif/GifImageView/access$400(Lcom/common/android/ui/gif/GifImageView;)Ljava/io/File;
ifnull L6
L0:
new java/io/FileInputStream
dup
aload 0
getfield com/common/android/ui/gif/GifImageView$DecodeThread/this$0 Lcom/common/android/ui/gif/GifImageView;
invokestatic com/common/android/ui/gif/GifImageView/access$400(Lcom/common/android/ui/gif/GifImageView;)Ljava/io/File;
invokespecial java/io/FileInputStream/<init>(Ljava/io/File;)V
astore 2
L1:
goto L6
L2:
astore 2
aload 2
invokevirtual java/io/FileNotFoundException/printStackTrace()V
L4:
return
.limit locals 3
.limit stack 3
.end method
