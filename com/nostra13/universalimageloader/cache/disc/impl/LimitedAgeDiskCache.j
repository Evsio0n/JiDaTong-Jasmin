.bytecode 50.0
.class public synchronized com/nostra13/universalimageloader/cache/disc/impl/LimitedAgeDiskCache
.super com/nostra13/universalimageloader/cache/disc/impl/BaseDiskCache

.field private final 'loadingDates' Ljava/util/Map; signature "Ljava/util/Map<Ljava/io/File;Ljava/lang/Long;>;"

.field private final 'maxFileAge' J

.method public <init>(Ljava/io/File;J)V
aload 0
aload 1
aconst_null
invokestatic com/nostra13/universalimageloader/core/DefaultConfigurationFactory/createFileNameGenerator()Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;
lload 2
invokespecial com/nostra13/universalimageloader/cache/disc/impl/LimitedAgeDiskCache/<init>(Ljava/io/File;Ljava/io/File;Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;J)V
return
.limit locals 4
.limit stack 6
.end method

.method public <init>(Ljava/io/File;Ljava/io/File;J)V
aload 0
aload 1
aload 2
invokestatic com/nostra13/universalimageloader/core/DefaultConfigurationFactory/createFileNameGenerator()Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;
lload 3
invokespecial com/nostra13/universalimageloader/cache/disc/impl/LimitedAgeDiskCache/<init>(Ljava/io/File;Ljava/io/File;Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;J)V
return
.limit locals 5
.limit stack 6
.end method

.method public <init>(Ljava/io/File;Ljava/io/File;Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;J)V
aload 0
aload 1
aload 2
aload 3
invokespecial com/nostra13/universalimageloader/cache/disc/impl/BaseDiskCache/<init>(Ljava/io/File;Ljava/io/File;Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;)V
aload 0
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
invokestatic java/util/Collections/synchronizedMap(Ljava/util/Map;)Ljava/util/Map;
putfield com/nostra13/universalimageloader/cache/disc/impl/LimitedAgeDiskCache/loadingDates Ljava/util/Map;
aload 0
ldc2_w 1000L
lload 4
lmul
putfield com/nostra13/universalimageloader/cache/disc/impl/LimitedAgeDiskCache/maxFileAge J
return
.limit locals 6
.limit stack 5
.end method

.method private rememberUsage(Ljava/lang/String;)V
aload 0
aload 1
invokevirtual com/nostra13/universalimageloader/cache/disc/impl/LimitedAgeDiskCache/getFile(Ljava/lang/String;)Ljava/io/File;
astore 1
invokestatic java/lang/System/currentTimeMillis()J
lstore 2
aload 1
lload 2
invokevirtual java/io/File/setLastModified(J)Z
pop
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/LimitedAgeDiskCache/loadingDates Ljava/util/Map;
aload 1
lload 2
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
return
.limit locals 4
.limit stack 4
.end method

.method public clear()V
aload 0
invokespecial com/nostra13/universalimageloader/cache/disc/impl/BaseDiskCache/clear()V
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/LimitedAgeDiskCache/loadingDates Ljava/util/Map;
invokeinterface java/util/Map/clear()V 0
return
.limit locals 1
.limit stack 1
.end method

.method public get(Ljava/lang/String;)Ljava/io/File;
aload 0
aload 1
invokespecial com/nostra13/universalimageloader/cache/disc/impl/BaseDiskCache/get(Ljava/lang/String;)Ljava/io/File;
astore 3
aload 3
ifnull L0
aload 3
invokevirtual java/io/File/exists()Z
ifeq L0
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/LimitedAgeDiskCache/loadingDates Ljava/util/Map;
aload 3
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast java/lang/Long
astore 1
aload 1
ifnonnull L1
iconst_0
istore 2
aload 3
invokevirtual java/io/File/lastModified()J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
astore 1
L2:
invokestatic java/lang/System/currentTimeMillis()J
aload 1
invokevirtual java/lang/Long/longValue()J
lsub
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/LimitedAgeDiskCache/maxFileAge J
lcmp
ifle L3
aload 3
invokevirtual java/io/File/delete()Z
pop
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/LimitedAgeDiskCache/loadingDates Ljava/util/Map;
aload 3
invokeinterface java/util/Map/remove(Ljava/lang/Object;)Ljava/lang/Object; 1
pop
L0:
aload 3
areturn
L1:
iconst_1
istore 2
goto L2
L3:
iload 2
ifne L0
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/LimitedAgeDiskCache/loadingDates Ljava/util/Map;
aload 3
aload 1
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
aload 3
areturn
.limit locals 4
.limit stack 4
.end method

.method public remove(Ljava/lang/String;)Z
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/LimitedAgeDiskCache/loadingDates Ljava/util/Map;
aload 0
aload 1
invokevirtual com/nostra13/universalimageloader/cache/disc/impl/LimitedAgeDiskCache/getFile(Ljava/lang/String;)Ljava/io/File;
invokeinterface java/util/Map/remove(Ljava/lang/Object;)Ljava/lang/Object; 1
pop
aload 0
aload 1
invokespecial com/nostra13/universalimageloader/cache/disc/impl/BaseDiskCache/remove(Ljava/lang/String;)Z
ireturn
.limit locals 2
.limit stack 3
.end method

.method public save(Ljava/lang/String;Landroid/graphics/Bitmap;)Z
.throws java/io/IOException
aload 0
aload 1
aload 2
invokespecial com/nostra13/universalimageloader/cache/disc/impl/BaseDiskCache/save(Ljava/lang/String;Landroid/graphics/Bitmap;)Z
istore 3
aload 0
aload 1
invokespecial com/nostra13/universalimageloader/cache/disc/impl/LimitedAgeDiskCache/rememberUsage(Ljava/lang/String;)V
iload 3
ireturn
.limit locals 4
.limit stack 3
.end method

.method public save(Ljava/lang/String;Ljava/io/InputStream;Lcom/nostra13/universalimageloader/utils/IoUtils$CopyListener;)Z
.throws java/io/IOException
aload 0
aload 1
aload 2
aload 3
invokespecial com/nostra13/universalimageloader/cache/disc/impl/BaseDiskCache/save(Ljava/lang/String;Ljava/io/InputStream;Lcom/nostra13/universalimageloader/utils/IoUtils$CopyListener;)Z
istore 4
aload 0
aload 1
invokespecial com/nostra13/universalimageloader/cache/disc/impl/LimitedAgeDiskCache/rememberUsage(Ljava/lang/String;)V
iload 4
ireturn
.limit locals 5
.limit stack 4
.end method
