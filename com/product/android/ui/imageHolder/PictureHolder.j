.bytecode 50.0
.class public synchronized com/product/android/ui/imageHolder/PictureHolder
.super com/product/android/ui/imageHolder/Picture

.field public 'image_ext' Ljava/lang/String;

.method public <init>()V
aload 0
invokespecial com/product/android/ui/imageHolder/Picture/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method private checkGifFile(Ljava/lang/String;)Z
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L5
L0:
new java/net/URL
dup
aload 1
invokespecial java/net/URL/<init>(Ljava/lang/String;)V
astore 2
L1:
aconst_null
astore 1
aload 2
ifnull L4
L3:
new java/io/File
dup
aload 2
invokevirtual java/net/URL/toURI()Ljava/net/URI;
invokespecial java/io/File/<init>(Ljava/net/URI;)V
astore 1
L4:
aload 1
ifnonnull L6
iconst_0
ireturn
L2:
astore 1
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
aconst_null
astore 2
goto L1
L5:
astore 1
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
aconst_null
astore 1
goto L4
L6:
aload 1
invokevirtual java/io/File/getPath()Ljava/lang/String;
invokestatic com/common/android/utils/ImageUtils/isGifFile(Ljava/lang/String;)Z
ireturn
.limit locals 3
.limit stack 3
.end method

.method public isGif()Z
aload 0
getfield com/product/android/ui/imageHolder/PictureHolder/image_ext Ljava/lang/String;
aload 0
getfield com/product/android/ui/imageHolder/PictureHolder/url Ljava/lang/String;
invokestatic com/common/android/utils/ImageUtils/isGifForWeibo(Ljava/lang/String;Ljava/lang/String;)Z
ifeq L0
iconst_1
ireturn
L0:
aload 0
aload 0
getfield com/product/android/ui/imageHolder/PictureHolder/url Ljava/lang/String;
invokespecial com/product/android/ui/imageHolder/PictureHolder/checkGifFile(Ljava/lang/String;)Z
ireturn
.limit locals 1
.limit stack 2
.end method
