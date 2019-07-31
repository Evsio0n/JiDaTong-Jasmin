.bytecode 50.0
.class public final synchronized com/nostra13/universalimageloader/utils/DiskCacheUtils
.super java/lang/Object

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static findInCache(Ljava/lang/String;Lcom/nostra13/universalimageloader/cache/disc/DiskCache;)Ljava/io/File;
aload 1
aload 0
invokeinterface com/nostra13/universalimageloader/cache/disc/DiskCache/get(Ljava/lang/String;)Ljava/io/File; 1
astore 0
aload 0
ifnull L0
aload 0
invokevirtual java/io/File/exists()Z
ifeq L0
aload 0
areturn
L0:
aconst_null
areturn
.limit locals 2
.limit stack 2
.end method

.method public static removeFromCache(Ljava/lang/String;Lcom/nostra13/universalimageloader/cache/disc/DiskCache;)Z
aload 1
aload 0
invokeinterface com/nostra13/universalimageloader/cache/disc/DiskCache/get(Ljava/lang/String;)Ljava/io/File; 1
astore 0
aload 0
ifnull L0
aload 0
invokevirtual java/io/File/exists()Z
ifeq L0
aload 0
invokevirtual java/io/File/delete()Z
ifeq L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 2
.limit stack 2
.end method
