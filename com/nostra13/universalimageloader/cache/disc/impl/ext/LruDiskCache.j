.bytecode 50.0
.class public synchronized com/nostra13/universalimageloader/cache/disc/impl/ext/LruDiskCache
.super java/lang/Object
.implements com/nostra13/universalimageloader/cache/disc/DiskCache

.field public static final 'DEFAULT_BUFFER_SIZE' I = 32768


.field public static final 'DEFAULT_COMPRESS_FORMAT' Landroid/graphics/Bitmap$CompressFormat;

.field public static final 'DEFAULT_COMPRESS_QUALITY' I = 100


.field private static final 'ERROR_ARG_NEGATIVE' Ljava/lang/String; = " argument must be positive number"

.field private static final 'ERROR_ARG_NULL' Ljava/lang/String; = " argument must be not null"

.field protected 'bufferSize' I

.field protected 'cache' Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;

.field protected 'compressFormat' Landroid/graphics/Bitmap$CompressFormat;

.field protected 'compressQuality' I

.field protected final 'fileNameGenerator' Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;

.field private 'reserveCacheDir' Ljava/io/File;

.method static <clinit>()V
getstatic android/graphics/Bitmap$CompressFormat/PNG Landroid/graphics/Bitmap$CompressFormat;
putstatic com/nostra13/universalimageloader/cache/disc/impl/ext/LruDiskCache/DEFAULT_COMPRESS_FORMAT Landroid/graphics/Bitmap$CompressFormat;
return
.limit locals 0
.limit stack 1
.end method

.method public <init>(Ljava/io/File;Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;J)V
.throws java/io/IOException
aload 0
aload 1
aconst_null
aload 2
lload 3
iconst_0
invokespecial com/nostra13/universalimageloader/cache/disc/impl/ext/LruDiskCache/<init>(Ljava/io/File;Ljava/io/File;Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;JI)V
return
.limit locals 5
.limit stack 7
.end method

.method public <init>(Ljava/io/File;Ljava/io/File;Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;JI)V
.throws java/io/IOException
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
ldc_w 32768
putfield com/nostra13/universalimageloader/cache/disc/impl/ext/LruDiskCache/bufferSize I
aload 0
getstatic com/nostra13/universalimageloader/cache/disc/impl/ext/LruDiskCache/DEFAULT_COMPRESS_FORMAT Landroid/graphics/Bitmap$CompressFormat;
putfield com/nostra13/universalimageloader/cache/disc/impl/ext/LruDiskCache/compressFormat Landroid/graphics/Bitmap$CompressFormat;
aload 0
bipush 100
putfield com/nostra13/universalimageloader/cache/disc/impl/ext/LruDiskCache/compressQuality I
aload 1
ifnonnull L0
new java/lang/IllegalArgumentException
dup
ldc "cacheDir argument must be not null"
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;)V
athrow
L0:
lload 4
lconst_0
lcmp
ifge L1
new java/lang/IllegalArgumentException
dup
ldc "cacheMaxSize argument must be positive number"
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;)V
athrow
L1:
iload 6
ifge L2
new java/lang/IllegalArgumentException
dup
ldc "cacheMaxFileCount argument must be positive number"
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;)V
athrow
L2:
aload 3
ifnonnull L3
new java/lang/IllegalArgumentException
dup
ldc "fileNameGenerator argument must be not null"
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;)V
athrow
L3:
lload 4
lstore 8
lload 4
lconst_0
lcmp
ifne L4
ldc2_w 9223372036854775807L
lstore 8
L4:
iload 6
istore 7
iload 6
ifne L5
ldc_w 2147483647
istore 7
L5:
aload 0
aload 2
putfield com/nostra13/universalimageloader/cache/disc/impl/ext/LruDiskCache/reserveCacheDir Ljava/io/File;
aload 0
aload 3
putfield com/nostra13/universalimageloader/cache/disc/impl/ext/LruDiskCache/fileNameGenerator Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;
aload 0
aload 1
aload 2
lload 8
iload 7
invokespecial com/nostra13/universalimageloader/cache/disc/impl/ext/LruDiskCache/initCache(Ljava/io/File;Ljava/io/File;JI)V
return
.limit locals 10
.limit stack 6
.end method

.method private getKey(Ljava/lang/String;)Ljava/lang/String;
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/LruDiskCache/fileNameGenerator Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;
aload 1
invokeinterface com/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator/generate(Ljava/lang/String;)Ljava/lang/String; 1
areturn
.limit locals 2
.limit stack 2
.end method

.method private initCache(Ljava/io/File;Ljava/io/File;JI)V
.throws java/io/IOException
.catch java/io/IOException from L0 to L1 using L2
L0:
aload 0
aload 1
iconst_1
iconst_1
lload 3
iload 5
invokestatic com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/open(Ljava/io/File;IIJI)Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;
putfield com/nostra13/universalimageloader/cache/disc/impl/ext/LruDiskCache/cache Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;
L1:
return
L2:
astore 1
aload 1
invokestatic com/nostra13/universalimageloader/utils/L/e(Ljava/lang/Throwable;)V
aload 2
ifnull L3
aload 0
aload 2
aconst_null
lload 3
iload 5
invokespecial com/nostra13/universalimageloader/cache/disc/impl/ext/LruDiskCache/initCache(Ljava/io/File;Ljava/io/File;JI)V
L3:
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/LruDiskCache/cache Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;
ifnonnull L1
aload 1
athrow
.limit locals 6
.limit stack 7
.end method

.method public clear()V
.catch java/io/IOException from L0 to L1 using L2
.catch java/io/IOException from L1 to L3 using L4
L0:
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/LruDiskCache/cache Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;
invokevirtual com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/delete()V
L1:
aload 0
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/LruDiskCache/cache Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;
invokevirtual com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/getDirectory()Ljava/io/File;
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/LruDiskCache/reserveCacheDir Ljava/io/File;
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/LruDiskCache/cache Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;
invokevirtual com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/getMaxSize()J
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/LruDiskCache/cache Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;
invokevirtual com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/getMaxFileCount()I
invokespecial com/nostra13/universalimageloader/cache/disc/impl/ext/LruDiskCache/initCache(Ljava/io/File;Ljava/io/File;JI)V
L3:
return
L2:
astore 1
aload 1
invokestatic com/nostra13/universalimageloader/utils/L/e(Ljava/lang/Throwable;)V
goto L1
L4:
astore 1
aload 1
invokestatic com/nostra13/universalimageloader/utils/L/e(Ljava/lang/Throwable;)V
return
.limit locals 2
.limit stack 6
.end method

.method public close()V
.catch java/io/IOException from L0 to L1 using L2
L0:
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/LruDiskCache/cache Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;
invokevirtual com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/close()V
L1:
aload 0
aconst_null
putfield com/nostra13/universalimageloader/cache/disc/impl/ext/LruDiskCache/cache Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;
return
L2:
astore 1
aload 1
invokestatic com/nostra13/universalimageloader/utils/L/e(Ljava/lang/Throwable;)V
goto L1
.limit locals 2
.limit stack 2
.end method

.method public get(Ljava/lang/String;)Ljava/io/File;
.catch java/io/IOException from L0 to L1 using L2
.catch all from L0 to L1 using L3
.catch java/io/IOException from L4 to L5 using L2
.catch all from L4 to L5 using L3
.catch all from L6 to L7 using L3
aconst_null
astore 4
aconst_null
astore 5
aconst_null
astore 3
aconst_null
astore 2
L0:
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/LruDiskCache/cache Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;
aload 0
aload 1
invokespecial com/nostra13/universalimageloader/cache/disc/impl/ext/LruDiskCache/getKey(Ljava/lang/String;)Ljava/lang/String;
invokevirtual com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/get(Ljava/lang/String;)Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Snapshot;
astore 1
L1:
aload 1
ifnonnull L8
aload 5
astore 2
L9:
aload 2
astore 3
aload 1
ifnull L10
aload 1
invokevirtual com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Snapshot/close()V
aload 2
astore 3
L10:
aload 3
areturn
L8:
aload 1
astore 2
aload 1
astore 3
L4:
aload 1
iconst_0
invokevirtual com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Snapshot/getFile(I)Ljava/io/File;
astore 5
L5:
aload 5
astore 2
goto L9
L2:
astore 1
aload 2
astore 3
L6:
aload 1
invokestatic com/nostra13/universalimageloader/utils/L/e(Ljava/lang/Throwable;)V
L7:
aload 4
astore 3
aload 2
ifnull L10
aload 2
invokevirtual com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Snapshot/close()V
aconst_null
areturn
L3:
astore 1
aload 3
ifnull L11
aload 3
invokevirtual com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Snapshot/close()V
L11:
aload 1
athrow
.limit locals 6
.limit stack 3
.end method

.method public getDirectory()Ljava/io/File;
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/LruDiskCache/cache Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;
invokevirtual com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/getDirectory()Ljava/io/File;
areturn
.limit locals 1
.limit stack 1
.end method

.method public remove(Ljava/lang/String;)Z
.catch java/io/IOException from L0 to L1 using L2
L0:
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/LruDiskCache/cache Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;
aload 0
aload 1
invokespecial com/nostra13/universalimageloader/cache/disc/impl/ext/LruDiskCache/getKey(Ljava/lang/String;)Ljava/lang/String;
invokevirtual com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/remove(Ljava/lang/String;)Z
istore 2
L1:
iload 2
ireturn
L2:
astore 1
aload 1
invokestatic com/nostra13/universalimageloader/utils/L/e(Ljava/lang/Throwable;)V
iconst_0
ireturn
.limit locals 3
.limit stack 3
.end method

.method public save(Ljava/lang/String;Landroid/graphics/Bitmap;)Z
.throws java/io/IOException
.catch all from L0 to L1 using L2
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/LruDiskCache/cache Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;
aload 0
aload 1
invokespecial com/nostra13/universalimageloader/cache/disc/impl/ext/LruDiskCache/getKey(Ljava/lang/String;)Ljava/lang/String;
invokevirtual com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/edit(Ljava/lang/String;)Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;
astore 4
aload 4
ifnonnull L3
iconst_0
ireturn
L3:
new java/io/BufferedOutputStream
dup
aload 4
iconst_0
invokevirtual com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor/newOutputStream(I)Ljava/io/OutputStream;
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/LruDiskCache/bufferSize I
invokespecial java/io/BufferedOutputStream/<init>(Ljava/io/OutputStream;I)V
astore 1
L0:
aload 2
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/LruDiskCache/compressFormat Landroid/graphics/Bitmap$CompressFormat;
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/LruDiskCache/compressQuality I
aload 1
invokevirtual android/graphics/Bitmap/compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
istore 3
L1:
aload 1
invokestatic com/nostra13/universalimageloader/utils/IoUtils/closeSilently(Ljava/io/Closeable;)V
iload 3
ifeq L4
aload 4
invokevirtual com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor/commit()V
iload 3
ireturn
L2:
astore 2
aload 1
invokestatic com/nostra13/universalimageloader/utils/IoUtils/closeSilently(Ljava/io/Closeable;)V
aload 2
athrow
L4:
aload 4
invokevirtual com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor/abort()V
iload 3
ireturn
.limit locals 5
.limit stack 4
.end method

.method public save(Ljava/lang/String;Ljava/io/InputStream;Lcom/nostra13/universalimageloader/utils/IoUtils$CopyListener;)Z
.throws java/io/IOException
.catch all from L0 to L1 using L2
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/LruDiskCache/cache Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;
aload 0
aload 1
invokespecial com/nostra13/universalimageloader/cache/disc/impl/ext/LruDiskCache/getKey(Ljava/lang/String;)Ljava/lang/String;
invokevirtual com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/edit(Ljava/lang/String;)Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;
astore 1
aload 1
ifnonnull L3
iconst_0
ireturn
L3:
new java/io/BufferedOutputStream
dup
aload 1
iconst_0
invokevirtual com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor/newOutputStream(I)Ljava/io/OutputStream;
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/LruDiskCache/bufferSize I
invokespecial java/io/BufferedOutputStream/<init>(Ljava/io/OutputStream;I)V
astore 5
L0:
aload 2
aload 5
aload 3
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/LruDiskCache/bufferSize I
invokestatic com/nostra13/universalimageloader/utils/IoUtils/copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/nostra13/universalimageloader/utils/IoUtils$CopyListener;I)Z
istore 4
L1:
aload 5
invokestatic com/nostra13/universalimageloader/utils/IoUtils/closeSilently(Ljava/io/Closeable;)V
iload 4
ifeq L4
aload 1
invokevirtual com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor/commit()V
iload 4
ireturn
L2:
astore 2
aload 5
invokestatic com/nostra13/universalimageloader/utils/IoUtils/closeSilently(Ljava/io/Closeable;)V
iconst_0
ifeq L5
aload 1
invokevirtual com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor/commit()V
L6:
aload 2
athrow
L5:
aload 1
invokevirtual com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor/abort()V
goto L6
L4:
aload 1
invokevirtual com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor/abort()V
iload 4
ireturn
.limit locals 6
.limit stack 4
.end method

.method public save(Ljava/lang/String;Ljava/io/InputStream;Lcom/nostra13/universalimageloader/utils/IoUtils$CopyListener;Ljava/io/File;Lcom/nostra13/universalimageloader/core/download/ImageDownloader;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)Z
.throws java/io/IOException
.catch all from L0 to L1 using L2
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/LruDiskCache/cache Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;
aload 0
aload 1
invokespecial com/nostra13/universalimageloader/cache/disc/impl/ext/LruDiskCache/getKey(Ljava/lang/String;)Ljava/lang/String;
invokevirtual com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/edit(Ljava/lang/String;)Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;
astore 8
aload 8
ifnonnull L0
iconst_0
ireturn
L0:
aload 2
aload 3
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/LruDiskCache/bufferSize I
aload 1
aload 4
aload 5
aload 6
invokestatic com/nostra13/universalimageloader/utils/IoUtils/copyStream(Ljava/io/InputStream;Lcom/nostra13/universalimageloader/utils/IoUtils$CopyListener;ILjava/lang/String;Ljava/io/File;Lcom/nostra13/universalimageloader/core/download/ImageDownloader;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)Z
istore 7
L1:
iload 7
ifeq L3
aload 8
invokevirtual com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor/commit()V
iload 7
ireturn
L2:
astore 1
iconst_0
ifeq L4
aload 8
invokevirtual com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor/commit()V
L5:
aload 1
athrow
L4:
aload 8
invokevirtual com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor/abort()V
goto L5
L3:
aload 8
invokevirtual com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor/abort()V
iload 7
ireturn
.limit locals 9
.limit stack 7
.end method

.method public setBufferSize(I)V
aload 0
iload 1
putfield com/nostra13/universalimageloader/cache/disc/impl/ext/LruDiskCache/bufferSize I
return
.limit locals 2
.limit stack 2
.end method

.method public setCompressFormat(Landroid/graphics/Bitmap$CompressFormat;)V
aload 0
aload 1
putfield com/nostra13/universalimageloader/cache/disc/impl/ext/LruDiskCache/compressFormat Landroid/graphics/Bitmap$CompressFormat;
return
.limit locals 2
.limit stack 2
.end method

.method public setCompressQuality(I)V
aload 0
iload 1
putfield com/nostra13/universalimageloader/cache/disc/impl/ext/LruDiskCache/compressQuality I
return
.limit locals 2
.limit stack 2
.end method
