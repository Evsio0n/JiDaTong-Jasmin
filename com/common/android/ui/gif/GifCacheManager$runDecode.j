.bytecode 50.0
.class synchronized com/common/android/ui/gif/GifCacheManager$runDecode
.super java/lang/Object
.implements java/lang/Runnable
.inner class private runDecode inner com/common/android/ui/gif/GifCacheManager$runDecode outer com/common/android/ui/gif/GifCacheManager

.field private 'mGenerateId' Ljava/lang/String;

.field private 'mKey' Ljava/lang/Object;

.field final synthetic 'this$0' Lcom/common/android/ui/gif/GifCacheManager;

.method public <init>(Lcom/common/android/ui/gif/GifCacheManager;Ljava/lang/String;Ljava/lang/Object;)V
aload 0
aload 1
putfield com/common/android/ui/gif/GifCacheManager$runDecode/this$0 Lcom/common/android/ui/gif/GifCacheManager;
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 2
putfield com/common/android/ui/gif/GifCacheManager$runDecode/mGenerateId Ljava/lang/String;
aload 0
aload 3
putfield com/common/android/ui/gif/GifCacheManager$runDecode/mKey Ljava/lang/Object;
return
.limit locals 4
.limit stack 2
.end method

.method private decodeFile(Ljava/lang/String;)V
.catch java/io/FileNotFoundException from L0 to L1 using L2
.catch all from L0 to L1 using L3
.catch java/io/IOException from L4 to L5 using L6
.catch java/io/FileNotFoundException from L7 to L8 using L2
.catch all from L7 to L8 using L3
.catch java/io/FileNotFoundException from L9 to L10 using L2
.catch all from L9 to L10 using L3
.catch java/io/FileNotFoundException from L11 to L12 using L2
.catch all from L11 to L12 using L3
.catch java/io/IOException from L13 to L14 using L15
.catch java/io/FileNotFoundException from L13 to L14 using L2
.catch all from L13 to L14 using L3
.catch java/io/FileNotFoundException from L16 to L17 using L2
.catch all from L16 to L17 using L3
.catch java/io/IOException from L18 to L19 using L20
.catch java/io/FileNotFoundException from L21 to L22 using L2
.catch all from L21 to L22 using L3
.catch java/io/IOException from L23 to L24 using L25
.catch java/io/FileNotFoundException from L26 to L27 using L2
.catch all from L26 to L27 using L3
.catch java/io/FileNotFoundException from L28 to L29 using L2
.catch all from L28 to L29 using L3
.catch java/io/IOException from L30 to L31 using L32
.catch java/io/FileNotFoundException from L33 to L34 using L2
.catch all from L33 to L34 using L3
.catch java/io/IOException from L35 to L36 using L37
aconst_null
astore 3
aconst_null
astore 6
aconst_null
astore 7
aload 3
astore 4
aload 6
astore 5
L0:
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
istore 2
L1:
iload 2
ifeq L38
iconst_0
ifeq L5
L4:
new java/lang/NullPointerException
dup
invokespecial java/lang/NullPointerException/<init>()V
athrow
L5:
iconst_0
ifeq L39
aload 0
getfield com/common/android/ui/gif/GifCacheManager$runDecode/this$0 Lcom/common/android/ui/gif/GifCacheManager;
aload 0
getfield com/common/android/ui/gif/GifCacheManager$runDecode/mKey Ljava/lang/Object;
aconst_null
invokevirtual com/common/android/ui/gif/GifCacheManager/put(Ljava/lang/Object;Ljava/util/Vector;)V
aload 0
getfield com/common/android/ui/gif/GifCacheManager$runDecode/this$0 Lcom/common/android/ui/gif/GifCacheManager;
aload 0
getfield com/common/android/ui/gif/GifCacheManager$runDecode/mKey Ljava/lang/Object;
aload 0
getfield com/common/android/ui/gif/GifCacheManager$runDecode/mGenerateId Ljava/lang/String;
invokevirtual com/common/android/ui/gif/GifCacheManager/notifyDeocdeResult(Ljava/lang/Object;Ljava/lang/String;)V
L39:
return
L6:
astore 1
aload 1
invokevirtual java/io/IOException/printStackTrace()V
goto L5
L38:
aload 3
astore 4
aload 6
astore 5
L7:
aload 1
ldc "smiley/smily_cat"
invokevirtual java/lang/String/startsWith(Ljava/lang/String;)Z
ifne L10
L8:
aload 3
astore 4
aload 6
astore 5
L9:
aload 1
ldc "smiley/smily_cos"
invokevirtual java/lang/String/startsWith(Ljava/lang/String;)Z
ifeq L40
L10:
aload 3
astore 4
aload 6
astore 5
L11:
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
invokevirtual android/content/res/Resources/getAssets()Landroid/content/res/AssetManager;
astore 8
L12:
aload 3
astore 4
aload 6
astore 5
L13:
aload 8
aload 1
invokevirtual android/content/res/AssetManager/open(Ljava/lang/String;)Ljava/io/InputStream;
astore 8
L14:
aload 8
astore 3
L41:
aload 3
astore 4
aload 3
astore 5
L16:
aload 0
getfield com/common/android/ui/gif/GifCacheManager$runDecode/this$0 Lcom/common/android/ui/gif/GifCacheManager;
aload 1
aload 3
invokestatic com/common/android/ui/gif/GifCacheManager/access$000(Lcom/common/android/ui/gif/GifCacheManager;Ljava/lang/Object;Ljava/io/InputStream;)Ljava/util/Vector;
astore 1
L17:
aload 3
ifnull L19
L18:
aload 3
invokevirtual java/io/InputStream/close()V
L19:
aload 1
ifnull L39
aload 0
getfield com/common/android/ui/gif/GifCacheManager$runDecode/this$0 Lcom/common/android/ui/gif/GifCacheManager;
aload 0
getfield com/common/android/ui/gif/GifCacheManager$runDecode/mKey Ljava/lang/Object;
aload 1
invokevirtual com/common/android/ui/gif/GifCacheManager/put(Ljava/lang/Object;Ljava/util/Vector;)V
aload 0
getfield com/common/android/ui/gif/GifCacheManager$runDecode/this$0 Lcom/common/android/ui/gif/GifCacheManager;
aload 0
getfield com/common/android/ui/gif/GifCacheManager$runDecode/mKey Ljava/lang/Object;
aload 0
getfield com/common/android/ui/gif/GifCacheManager$runDecode/mGenerateId Ljava/lang/String;
invokevirtual com/common/android/ui/gif/GifCacheManager/notifyDeocdeResult(Ljava/lang/Object;Ljava/lang/String;)V
return
L15:
astore 8
aload 3
astore 4
aload 6
astore 5
L21:
aload 8
invokevirtual java/io/IOException/printStackTrace()V
L22:
aload 7
astore 3
goto L41
L2:
astore 1
aload 4
ifnull L24
L23:
aload 4
invokevirtual java/io/InputStream/close()V
L24:
iconst_0
ifeq L39
aload 0
getfield com/common/android/ui/gif/GifCacheManager$runDecode/this$0 Lcom/common/android/ui/gif/GifCacheManager;
aload 0
getfield com/common/android/ui/gif/GifCacheManager$runDecode/mKey Ljava/lang/Object;
aconst_null
invokevirtual com/common/android/ui/gif/GifCacheManager/put(Ljava/lang/Object;Ljava/util/Vector;)V
aload 0
getfield com/common/android/ui/gif/GifCacheManager$runDecode/this$0 Lcom/common/android/ui/gif/GifCacheManager;
aload 0
getfield com/common/android/ui/gif/GifCacheManager$runDecode/mKey Ljava/lang/Object;
aload 0
getfield com/common/android/ui/gif/GifCacheManager$runDecode/mGenerateId Ljava/lang/String;
invokevirtual com/common/android/ui/gif/GifCacheManager/notifyDeocdeResult(Ljava/lang/Object;Ljava/lang/String;)V
return
L40:
aload 3
astore 4
aload 6
astore 5
L26:
new java/io/File
dup
aload 1
invokespecial java/io/File/<init>(Ljava/lang/String;)V
astore 7
L27:
aload 7
ifnull L42
aload 3
astore 4
aload 6
astore 5
L28:
aload 7
invokevirtual java/io/File/exists()Z
istore 2
L29:
iload 2
ifne L43
L42:
iconst_0
ifeq L31
L30:
new java/lang/NullPointerException
dup
invokespecial java/lang/NullPointerException/<init>()V
athrow
L31:
iconst_0
ifeq L39
aload 0
getfield com/common/android/ui/gif/GifCacheManager$runDecode/this$0 Lcom/common/android/ui/gif/GifCacheManager;
aload 0
getfield com/common/android/ui/gif/GifCacheManager$runDecode/mKey Ljava/lang/Object;
aconst_null
invokevirtual com/common/android/ui/gif/GifCacheManager/put(Ljava/lang/Object;Ljava/util/Vector;)V
aload 0
getfield com/common/android/ui/gif/GifCacheManager$runDecode/this$0 Lcom/common/android/ui/gif/GifCacheManager;
aload 0
getfield com/common/android/ui/gif/GifCacheManager$runDecode/mKey Ljava/lang/Object;
aload 0
getfield com/common/android/ui/gif/GifCacheManager$runDecode/mGenerateId Ljava/lang/String;
invokevirtual com/common/android/ui/gif/GifCacheManager/notifyDeocdeResult(Ljava/lang/Object;Ljava/lang/String;)V
return
L32:
astore 1
aload 1
invokevirtual java/io/IOException/printStackTrace()V
goto L31
L43:
aload 3
astore 4
aload 6
astore 5
L33:
new java/io/FileInputStream
dup
aload 7
invokespecial java/io/FileInputStream/<init>(Ljava/io/File;)V
astore 3
L34:
goto L41
L20:
astore 3
aload 3
invokevirtual java/io/IOException/printStackTrace()V
goto L19
L25:
astore 1
aload 1
invokevirtual java/io/IOException/printStackTrace()V
goto L24
L3:
astore 1
aload 5
ifnull L36
L35:
aload 5
invokevirtual java/io/InputStream/close()V
L36:
iconst_0
ifeq L44
aload 0
getfield com/common/android/ui/gif/GifCacheManager$runDecode/this$0 Lcom/common/android/ui/gif/GifCacheManager;
aload 0
getfield com/common/android/ui/gif/GifCacheManager$runDecode/mKey Ljava/lang/Object;
aconst_null
invokevirtual com/common/android/ui/gif/GifCacheManager/put(Ljava/lang/Object;Ljava/util/Vector;)V
aload 0
getfield com/common/android/ui/gif/GifCacheManager$runDecode/this$0 Lcom/common/android/ui/gif/GifCacheManager;
aload 0
getfield com/common/android/ui/gif/GifCacheManager$runDecode/mKey Ljava/lang/Object;
aload 0
getfield com/common/android/ui/gif/GifCacheManager$runDecode/mGenerateId Ljava/lang/String;
invokevirtual com/common/android/ui/gif/GifCacheManager/notifyDeocdeResult(Ljava/lang/Object;Ljava/lang/String;)V
L44:
aload 1
athrow
L37:
astore 3
aload 3
invokevirtual java/io/IOException/printStackTrace()V
goto L36
.limit locals 9
.limit stack 3
.end method

.method private decodeRes(I)V
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
iload 1
invokevirtual android/content/res/Resources/openRawResource(I)Ljava/io/InputStream;
astore 2
aload 0
getfield com/common/android/ui/gif/GifCacheManager$runDecode/this$0 Lcom/common/android/ui/gif/GifCacheManager;
iload 1
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aload 2
invokestatic com/common/android/ui/gif/GifCacheManager/access$000(Lcom/common/android/ui/gif/GifCacheManager;Ljava/lang/Object;Ljava/io/InputStream;)Ljava/util/Vector;
astore 2
aload 2
ifnull L0
aload 0
getfield com/common/android/ui/gif/GifCacheManager$runDecode/this$0 Lcom/common/android/ui/gif/GifCacheManager;
aload 0
getfield com/common/android/ui/gif/GifCacheManager$runDecode/mKey Ljava/lang/Object;
aload 0
getfield com/common/android/ui/gif/GifCacheManager$runDecode/mGenerateId Ljava/lang/String;
invokevirtual com/common/android/ui/gif/GifCacheManager/notifyDeocdeResult(Ljava/lang/Object;Ljava/lang/String;)V
aload 0
getfield com/common/android/ui/gif/GifCacheManager$runDecode/this$0 Lcom/common/android/ui/gif/GifCacheManager;
aload 0
getfield com/common/android/ui/gif/GifCacheManager$runDecode/mKey Ljava/lang/Object;
aload 2
invokevirtual com/common/android/ui/gif/GifCacheManager/put(Ljava/lang/Object;Ljava/util/Vector;)V
L0:
return
.limit locals 3
.limit stack 3
.end method

.method public run()V
.catch java/lang/InterruptedException from L0 to L1 using L2
L3:
aload 0
getfield com/common/android/ui/gif/GifCacheManager$runDecode/this$0 Lcom/common/android/ui/gif/GifCacheManager;
invokestatic com/common/android/ui/gif/GifCacheManager/access$100(Lcom/common/android/ui/gif/GifCacheManager;)Z
ifeq L4
L0:
ldc2_w 100L
invokestatic java/lang/Thread/sleep(J)V
L1:
goto L3
L2:
astore 1
aload 1
invokevirtual java/lang/InterruptedException/printStackTrace()V
L5:
return
L4:
aload 0
getfield com/common/android/ui/gif/GifCacheManager$runDecode/mKey Ljava/lang/Object;
instanceof java/lang/String
ifeq L6
aload 0
aload 0
getfield com/common/android/ui/gif/GifCacheManager$runDecode/mKey Ljava/lang/Object;
checkcast java/lang/String
invokespecial com/common/android/ui/gif/GifCacheManager$runDecode/decodeFile(Ljava/lang/String;)V
L7:
aload 0
getfield com/common/android/ui/gif/GifCacheManager$runDecode/this$0 Lcom/common/android/ui/gif/GifCacheManager;
invokestatic com/common/android/ui/gif/GifCacheManager/access$200(Lcom/common/android/ui/gif/GifCacheManager;)Ljava/util/Map;
aload 0
getfield com/common/android/ui/gif/GifCacheManager$runDecode/mKey Ljava/lang/Object;
invokeinterface java/util/Map/containsKey(Ljava/lang/Object;)Z 1
ifne L5
aload 0
getfield com/common/android/ui/gif/GifCacheManager$runDecode/this$0 Lcom/common/android/ui/gif/GifCacheManager;
invokestatic com/common/android/ui/gif/GifCacheManager/access$100(Lcom/common/android/ui/gif/GifCacheManager;)Z
ifne L5
aload 0
getfield com/common/android/ui/gif/GifCacheManager$runDecode/this$0 Lcom/common/android/ui/gif/GifCacheManager;
invokestatic com/common/android/ui/gif/GifCacheManager/access$300(Lcom/common/android/ui/gif/GifCacheManager;)Ljava/util/ArrayList;
aload 0
getfield com/common/android/ui/gif/GifCacheManager$runDecode/mKey Ljava/lang/Object;
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
return
L6:
aload 0
aload 0
getfield com/common/android/ui/gif/GifCacheManager$runDecode/mKey Ljava/lang/Object;
checkcast java/lang/Integer
invokevirtual java/lang/Integer/intValue()I
invokespecial com/common/android/ui/gif/GifCacheManager$runDecode/decodeRes(I)V
goto L7
.limit locals 2
.limit stack 2
.end method
