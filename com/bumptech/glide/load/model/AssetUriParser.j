.bytecode 50.0
.class final synchronized com/bumptech/glide/load/model/AssetUriParser
.super java/lang/Object

.field private static final 'ASSET_PATH_SEGMENT' Ljava/lang/String; = "android_asset"

.field private static final 'ASSET_PREFIX' Ljava/lang/String; = "file:///android_asset/"

.field private static final 'ASSET_PREFIX_LENGTH' I

.method static <clinit>()V
ldc "file:///android_asset/"
invokevirtual java/lang/String/length()I
putstatic com/bumptech/glide/load/model/AssetUriParser/ASSET_PREFIX_LENGTH I
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

.method public static isAssetUri(Landroid/net/Uri;)Z
iconst_0
istore 2
iload 2
istore 1
ldc "file"
aload 0
invokevirtual android/net/Uri/getScheme()Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L0
iload 2
istore 1
aload 0
invokevirtual android/net/Uri/getPathSegments()Ljava/util/List;
invokeinterface java/util/List/isEmpty()Z 0
ifne L0
iload 2
istore 1
ldc "android_asset"
aload 0
invokevirtual android/net/Uri/getPathSegments()Ljava/util/List;
iconst_0
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L0
iconst_1
istore 1
L0:
iload 1
ireturn
.limit locals 3
.limit stack 3
.end method

.method public static toAssetPath(Landroid/net/Uri;)Ljava/lang/String;
aload 0
invokevirtual android/net/Uri/toString()Ljava/lang/String;
getstatic com/bumptech/glide/load/model/AssetUriParser/ASSET_PREFIX_LENGTH I
invokevirtual java/lang/String/substring(I)Ljava/lang/String;
areturn
.limit locals 1
.limit stack 2
.end method
