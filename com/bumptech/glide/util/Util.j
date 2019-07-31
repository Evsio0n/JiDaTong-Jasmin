.bytecode 50.0
.class public final synchronized com/bumptech/glide/util/Util
.super java/lang/Object
.inner class static synthetic inner com/bumptech/glide/util/Util$1

.field private static final 'HEX_CHAR_ARRAY' [C

.field private static final 'SHA_1_CHARS' [C

.field private static final 'SHA_256_CHARS' [C

.method static <clinit>()V
ldc "0123456789abcdef"
invokevirtual java/lang/String/toCharArray()[C
putstatic com/bumptech/glide/util/Util/HEX_CHAR_ARRAY [C
bipush 64
newarray char
putstatic com/bumptech/glide/util/Util/SHA_256_CHARS [C
bipush 40
newarray char
putstatic com/bumptech/glide/util/Util/SHA_1_CHARS [C
return
.limit locals 0
.limit stack 1
.end method

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static assertBackgroundThread()V
invokestatic com/bumptech/glide/util/Util/isOnBackgroundThread()Z
ifne L0
new java/lang/IllegalArgumentException
dup
ldc "YOu must call this method on a background thread"
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;)V
athrow
L0:
return
.limit locals 0
.limit stack 3
.end method

.method public static assertMainThread()V
invokestatic com/bumptech/glide/util/Util/isOnMainThread()Z
ifne L0
new java/lang/IllegalArgumentException
dup
ldc "You must call this method on the main thread"
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;)V
athrow
L0:
return
.limit locals 0
.limit stack 3
.end method

.method private static bytesToHex([B[C)Ljava/lang/String;
iconst_0
istore 2
L0:
iload 2
aload 0
arraylength
if_icmpge L1
aload 0
iload 2
baload
sipush 255
iand
istore 3
aload 1
iload 2
iconst_2
imul
getstatic com/bumptech/glide/util/Util/HEX_CHAR_ARRAY [C
iload 3
iconst_4
iushr
caload
castore
aload 1
iload 2
iconst_2
imul
iconst_1
iadd
getstatic com/bumptech/glide/util/Util/HEX_CHAR_ARRAY [C
iload 3
bipush 15
iand
caload
castore
iload 2
iconst_1
iadd
istore 2
goto L0
L1:
new java/lang/String
dup
aload 1
invokespecial java/lang/String/<init>([C)V
areturn
.limit locals 4
.limit stack 5
.end method

.method public static createQueue(I)Ljava/util/Queue;
.signature "<T:Ljava/lang/Object;>(I)Ljava/util/Queue<TT;>;"
new java/util/ArrayDeque
dup
iload 0
invokespecial java/util/ArrayDeque/<init>(I)V
areturn
.limit locals 1
.limit stack 3
.end method

.method public static getBitmapByteSize(IILandroid/graphics/Bitmap$Config;)I
iload 0
iload 1
imul
aload 2
invokestatic com/bumptech/glide/util/Util/getBytesPerPixel(Landroid/graphics/Bitmap$Config;)I
imul
ireturn
.limit locals 3
.limit stack 2
.end method

.method public static getBitmapByteSize(Landroid/graphics/Bitmap;)I
.annotation invisible Landroid/annotation/TargetApi;
value I = 19
.end annotation
.catch java/lang/NullPointerException from L0 to L1 using L2
getstatic android/os/Build$VERSION/SDK_INT I
bipush 19
if_icmplt L3
L0:
aload 0
invokevirtual android/graphics/Bitmap/getAllocationByteCount()I
istore 1
L1:
iload 1
ireturn
L2:
astore 2
L3:
aload 0
invokevirtual android/graphics/Bitmap/getHeight()I
aload 0
invokevirtual android/graphics/Bitmap/getRowBytes()I
imul
ireturn
.limit locals 3
.limit stack 2
.end method

.method private static getBytesPerPixel(Landroid/graphics/Bitmap$Config;)I
aload 0
astore 1
aload 0
ifnonnull L0
getstatic android/graphics/Bitmap$Config/ARGB_8888 Landroid/graphics/Bitmap$Config;
astore 1
L0:
getstatic com/bumptech/glide/util/Util$1/$SwitchMap$android$graphics$Bitmap$Config [I
aload 1
invokevirtual android/graphics/Bitmap$Config/ordinal()I
iaload
tableswitch 1
L1
L2
L2
default : L3
L3:
iconst_4
ireturn
L1:
iconst_1
ireturn
L2:
iconst_2
ireturn
.limit locals 2
.limit stack 2
.end method

.method public static getSize(Landroid/graphics/Bitmap;)I
.annotation visible Ljava/lang/Deprecated;
.end annotation
aload 0
invokestatic com/bumptech/glide/util/Util/getBitmapByteSize(Landroid/graphics/Bitmap;)I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public static getSnapshot(Ljava/util/Collection;)Ljava/util/List;
.signature "<T:Ljava/lang/Object;>(Ljava/util/Collection<TT;>;)Ljava/util/List<TT;>;"
new java/util/ArrayList
dup
aload 0
invokeinterface java/util/Collection/size()I 0
invokespecial java/util/ArrayList/<init>(I)V
astore 1
aload 0
invokeinterface java/util/Collection/iterator()Ljava/util/Iterator; 0
astore 0
L0:
aload 0
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 1
aload 0
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
goto L0
L1:
aload 1
areturn
.limit locals 2
.limit stack 3
.end method

.method public static isOnBackgroundThread()Z
invokestatic com/bumptech/glide/util/Util/isOnMainThread()Z
ifne L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 0
.limit stack 1
.end method

.method public static isOnMainThread()Z
invokestatic android/os/Looper/myLooper()Landroid/os/Looper;
invokestatic android/os/Looper/getMainLooper()Landroid/os/Looper;
if_acmpne L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 0
.limit stack 2
.end method

.method private static isValidDimension(I)Z
iload 0
ifgt L0
iload 0
ldc_w -2147483648
if_icmpne L1
L0:
iconst_1
ireturn
L1:
iconst_0
ireturn
.limit locals 1
.limit stack 2
.end method

.method public static isValidDimensions(II)Z
iload 0
invokestatic com/bumptech/glide/util/Util/isValidDimension(I)Z
ifeq L0
iload 1
invokestatic com/bumptech/glide/util/Util/isValidDimension(I)Z
ifeq L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 2
.limit stack 1
.end method

.method public static sha1BytesToHex([B)Ljava/lang/String;
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
getstatic com/bumptech/glide/util/Util/SHA_1_CHARS [C
astore 1
aload 1
monitorenter
L0:
aload 0
getstatic com/bumptech/glide/util/Util/SHA_1_CHARS [C
invokestatic com/bumptech/glide/util/Util/bytesToHex([B[C)Ljava/lang/String;
astore 0
aload 1
monitorexit
L1:
aload 0
areturn
L2:
astore 0
L3:
aload 1
monitorexit
L4:
aload 0
athrow
.limit locals 2
.limit stack 2
.end method

.method public static sha256BytesToHex([B)Ljava/lang/String;
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
getstatic com/bumptech/glide/util/Util/SHA_256_CHARS [C
astore 1
aload 1
monitorenter
L0:
aload 0
getstatic com/bumptech/glide/util/Util/SHA_256_CHARS [C
invokestatic com/bumptech/glide/util/Util/bytesToHex([B[C)Ljava/lang/String;
astore 0
aload 1
monitorexit
L1:
aload 0
areturn
L2:
astore 0
L3:
aload 1
monitorexit
L4:
aload 0
athrow
.limit locals 2
.limit stack 2
.end method
