.bytecode 50.0
.class public final synchronized com/nd/schoollife/ui/common/util/CommunityUtils
.super java/lang/Object
.inner class public static MaxLengthWatcher inner com/nd/schoollife/ui/common/util/CommunityUtils$MaxLengthWatcher outer com/nd/schoollife/ui/common/util/CommunityUtils

.field private static final 'TAG' Ljava/lang/String; = "CommunityUtils"

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static getAvatarPathByKey(JLjava/lang/String;)Ljava/lang/String;
new java/lang/StringBuilder
dup
getstatic com/nd/schoollife/common/constant/SchoolLifeHttpConfig/SERVER_DOMAIN Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
astore 3
aload 3
ldc "communities/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 3
lload 0
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
pop
aload 3
ldc "/avatar/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 3
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 2
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
ldc "CommunityUtils"
ldc "key is empty!"
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L0:
aload 3
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 4
.limit stack 3
.end method

.method public static getDefaultAvatarPath(Landroid/content/Context;)Ljava/lang/String;
.catch java/io/IOException from L0 to L1 using L2
new java/io/File
dup
aload 0
invokevirtual android/content/Context/getFilesDir()Ljava/io/File;
invokevirtual java/io/File/getAbsolutePath()Ljava/lang/String;
ldc "default_community_header.png"
invokespecial java/io/File/<init>(Ljava/lang/String;Ljava/lang/String;)V
astore 1
aload 1
invokevirtual java/io/File/exists()Z
ifne L1
L0:
aload 0
invokevirtual android/content/Context/getAssets()Landroid/content/res/AssetManager;
ldc "img/default_community_header.png"
invokevirtual android/content/res/AssetManager/open(Ljava/lang/String;)Ljava/io/InputStream;
astore 0
new java/io/FileOutputStream
dup
aload 1
invokespecial java/io/FileOutputStream/<init>(Ljava/io/File;)V
astore 2
aload 0
invokestatic com/nd/schoollife/common/utils/common/FileUtil/decodeInputStreamAsBitmap(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
getstatic android/graphics/Bitmap$CompressFormat/PNG Landroid/graphics/Bitmap$CompressFormat;
bipush 100
aload 2
invokevirtual android/graphics/Bitmap/compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
pop
aload 2
invokevirtual java/io/OutputStream/flush()V
aload 2
invokevirtual java/io/OutputStream/close()V
aload 0
invokevirtual java/io/InputStream/close()V
L1:
aload 1
invokevirtual java/io/File/getAbsolutePath()Ljava/lang/String;
areturn
L2:
astore 0
aload 0
invokevirtual java/io/IOException/printStackTrace()V
goto L1
.limit locals 3
.limit stack 4
.end method

.method public static showAvatar(JLjava/lang/String;Landroid/widget/ImageView;)V
lload 0
aload 2
aload 3
aconst_null
invokestatic com/nd/schoollife/ui/common/util/CommunityUtils/showAvatar(JLjava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V
return
.limit locals 4
.limit stack 5
.end method

.method public static showAvatar(JLjava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V
lload 0
aload 2
invokestatic com/nd/schoollife/ui/common/util/CommunityUtils/getAvatarPathByKey(JLjava/lang/String;)Ljava/lang/String;
astore 2
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
astore 5
aload 5
ldc "COOKIE"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "PHPSESSID="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getLocalSid()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
invokestatic com/nostra13/universalimageloader/core/ImageLoader/getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;
aload 2
aload 3
getstatic com/nd/schoollife/common/utils/ui/SchoolLifeGlobal/imgLoaderOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
aload 4
aload 5
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Ljava/util/HashMap;)V
return
.limit locals 6
.limit stack 6
.end method
