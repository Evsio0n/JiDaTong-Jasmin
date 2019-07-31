.bytecode 50.0
.class public synchronized abstract com/nostra13/universalimageloader/cache/disc/impl/BaseDiskCache
.super java/lang/Object
.implements com/nostra13/universalimageloader/cache/disc/DiskCache
.implements com/nostra13/universalimageloader/cache/disc/DiscCacheAware

.field public static final 'DEFAULT_BUFFER_SIZE' I = 32768


.field public static final 'DEFAULT_COMPRESS_FORMAT' Landroid/graphics/Bitmap$CompressFormat;

.field public static final 'DEFAULT_COMPRESS_QUALITY' I = 100


.field private static final 'ERROR_ARG_NULL' Ljava/lang/String; = " argument must be not null"

.field private static final 'TEMP_IMAGE_POSTFIX' Ljava/lang/String; = ".tmp"

.field protected 'bufferSize' I

.field protected final 'cacheDir' Ljava/io/File;

.field protected 'compressFormat' Landroid/graphics/Bitmap$CompressFormat;

.field protected 'compressQuality' I

.field protected final 'fileNameGenerator' Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;

.field protected final 'reserveCacheDir' Ljava/io/File;

.method static <clinit>()V
getstatic android/graphics/Bitmap$CompressFormat/PNG Landroid/graphics/Bitmap$CompressFormat;
putstatic com/nostra13/universalimageloader/cache/disc/impl/BaseDiskCache/DEFAULT_COMPRESS_FORMAT Landroid/graphics/Bitmap$CompressFormat;
return
.limit locals 0
.limit stack 1
.end method

.method public <init>(Ljava/io/File;)V
aload 0
aload 1
aconst_null
invokespecial com/nostra13/universalimageloader/cache/disc/impl/BaseDiskCache/<init>(Ljava/io/File;Ljava/io/File;)V
return
.limit locals 2
.limit stack 3
.end method

.method public <init>(Ljava/io/File;Ljava/io/File;)V
aload 0
aload 1
aload 2
invokestatic com/nostra13/universalimageloader/core/DefaultConfigurationFactory/createFileNameGenerator()Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;
invokespecial com/nostra13/universalimageloader/cache/disc/impl/BaseDiskCache/<init>(Ljava/io/File;Ljava/io/File;Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;)V
return
.limit locals 3
.limit stack 4
.end method

.method public <init>(Ljava/io/File;Ljava/io/File;Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
ldc_w 32768
putfield com/nostra13/universalimageloader/cache/disc/impl/BaseDiskCache/bufferSize I
aload 0
getstatic com/nostra13/universalimageloader/cache/disc/impl/BaseDiskCache/DEFAULT_COMPRESS_FORMAT Landroid/graphics/Bitmap$CompressFormat;
putfield com/nostra13/universalimageloader/cache/disc/impl/BaseDiskCache/compressFormat Landroid/graphics/Bitmap$CompressFormat;
aload 0
bipush 100
putfield com/nostra13/universalimageloader/cache/disc/impl/BaseDiskCache/compressQuality I
aload 1
ifnonnull L0
new java/lang/IllegalArgumentException
dup
ldc "cacheDir argument must be not null"
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 3
ifnonnull L1
new java/lang/IllegalArgumentException
dup
ldc "fileNameGenerator argument must be not null"
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;)V
athrow
L1:
aload 0
aload 1
putfield com/nostra13/universalimageloader/cache/disc/impl/BaseDiskCache/cacheDir Ljava/io/File;
aload 0
aload 2
putfield com/nostra13/universalimageloader/cache/disc/impl/BaseDiskCache/reserveCacheDir Ljava/io/File;
aload 0
aload 3
putfield com/nostra13/universalimageloader/cache/disc/impl/BaseDiskCache/fileNameGenerator Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;
return
.limit locals 4
.limit stack 3
.end method

.method public clear()V
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/BaseDiskCache/cacheDir Ljava/io/File;
invokevirtual java/io/File/listFiles()[Ljava/io/File;
astore 3
aload 3
ifnull L0
aload 3
arraylength
istore 2
iconst_0
istore 1
L1:
iload 1
iload 2
if_icmplt L2
L0:
return
L2:
aload 3
iload 1
aaload
invokevirtual java/io/File/delete()Z
pop
iload 1
iconst_1
iadd
istore 1
goto L1
.limit locals 4
.limit stack 2
.end method

.method public close()V
return
.limit locals 1
.limit stack 0
.end method

.method public get(Ljava/lang/String;)Ljava/io/File;
aload 0
aload 1
invokevirtual com/nostra13/universalimageloader/cache/disc/impl/BaseDiskCache/getFile(Ljava/lang/String;)Ljava/io/File;
areturn
.limit locals 2
.limit stack 2
.end method

.method public getDirectory()Ljava/io/File;
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/BaseDiskCache/cacheDir Ljava/io/File;
areturn
.limit locals 1
.limit stack 1
.end method

.method protected getFile(Ljava/lang/String;)Ljava/io/File;
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/BaseDiskCache/fileNameGenerator Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;
aload 1
invokeinterface com/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator/generate(Ljava/lang/String;)Ljava/lang/String; 1
astore 3
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/BaseDiskCache/cacheDir Ljava/io/File;
astore 2
aload 2
astore 1
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/BaseDiskCache/cacheDir Ljava/io/File;
invokevirtual java/io/File/exists()Z
ifne L0
aload 2
astore 1
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/BaseDiskCache/cacheDir Ljava/io/File;
invokevirtual java/io/File/mkdirs()Z
ifne L0
aload 2
astore 1
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/BaseDiskCache/reserveCacheDir Ljava/io/File;
ifnull L0
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/BaseDiskCache/reserveCacheDir Ljava/io/File;
invokevirtual java/io/File/exists()Z
ifne L1
aload 2
astore 1
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/BaseDiskCache/reserveCacheDir Ljava/io/File;
invokevirtual java/io/File/mkdirs()Z
ifeq L0
L1:
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/BaseDiskCache/reserveCacheDir Ljava/io/File;
astore 1
L0:
new java/io/File
dup
aload 1
aload 3
invokespecial java/io/File/<init>(Ljava/io/File;Ljava/lang/String;)V
areturn
.limit locals 4
.limit stack 4
.end method

.method public remove(Ljava/lang/String;)Z
aload 0
aload 1
invokevirtual com/nostra13/universalimageloader/cache/disc/impl/BaseDiskCache/getFile(Ljava/lang/String;)Ljava/io/File;
invokevirtual java/io/File/delete()Z
ireturn
.limit locals 2
.limit stack 2
.end method

.method public save(Ljava/lang/String;Landroid/graphics/Bitmap;)Z
.throws java/io/IOException
.catch all from L0 to L1 using L2
aload 0
aload 1
invokevirtual com/nostra13/universalimageloader/cache/disc/impl/BaseDiskCache/getFile(Ljava/lang/String;)Ljava/io/File;
astore 1
new java/io/File
dup
new java/lang/StringBuilder
dup
aload 1
invokevirtual java/io/File/getAbsolutePath()Ljava/lang/String;
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
ldc ".tmp"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/io/File/<init>(Ljava/lang/String;)V
astore 5
new java/io/BufferedOutputStream
dup
new java/io/FileOutputStream
dup
aload 5
invokespecial java/io/FileOutputStream/<init>(Ljava/io/File;)V
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/BaseDiskCache/bufferSize I
invokespecial java/io/BufferedOutputStream/<init>(Ljava/io/OutputStream;I)V
astore 6
L0:
aload 2
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/BaseDiskCache/compressFormat Landroid/graphics/Bitmap$CompressFormat;
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/BaseDiskCache/compressQuality I
aload 6
invokevirtual android/graphics/Bitmap/compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
istore 3
L1:
aload 6
invokestatic com/nostra13/universalimageloader/utils/IoUtils/closeSilently(Ljava/io/Closeable;)V
iload 3
istore 4
iload 3
ifeq L3
iload 3
istore 4
aload 5
aload 1
invokevirtual java/io/File/renameTo(Ljava/io/File;)Z
ifne L3
iconst_0
istore 4
L3:
iload 4
ifne L4
aload 5
invokevirtual java/io/File/delete()Z
pop
L4:
aload 2
invokevirtual android/graphics/Bitmap/recycle()V
iload 4
ireturn
L2:
astore 2
aload 6
invokestatic com/nostra13/universalimageloader/utils/IoUtils/closeSilently(Ljava/io/Closeable;)V
iconst_0
ifeq L5
aload 5
aload 1
invokevirtual java/io/File/renameTo(Ljava/io/File;)Z
ifne L5
L5:
iconst_0
ifne L6
aload 5
invokevirtual java/io/File/delete()Z
pop
L6:
aload 2
athrow
.limit locals 7
.limit stack 5
.end method

.method public save(Ljava/lang/String;Ljava/io/InputStream;Lcom/nostra13/universalimageloader/utils/IoUtils$CopyListener;)Z
.throws java/io/IOException
.catch all from L0 to L1 using L2
.catch all from L1 to L3 using L4
.catch all from L5 to L6 using L2
.catch all from L7 to L8 using L2
.catch all from L9 to L2 using L2
aload 0
aload 1
invokevirtual com/nostra13/universalimageloader/cache/disc/impl/BaseDiskCache/getFile(Ljava/lang/String;)Ljava/io/File;
astore 1
new java/io/File
dup
new java/lang/StringBuilder
dup
aload 1
invokevirtual java/io/File/getAbsolutePath()Ljava/lang/String;
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
ldc ".tmp"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/io/File/<init>(Ljava/lang/String;)V
astore 6
iconst_0
istore 5
iload 5
istore 4
L0:
new java/io/BufferedOutputStream
dup
new java/io/FileOutputStream
dup
aload 6
invokespecial java/io/FileOutputStream/<init>(Ljava/io/File;)V
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/BaseDiskCache/bufferSize I
invokespecial java/io/BufferedOutputStream/<init>(Ljava/io/OutputStream;I)V
astore 7
L1:
aload 2
aload 7
aload 3
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/BaseDiskCache/bufferSize I
invokestatic com/nostra13/universalimageloader/utils/IoUtils/copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/nostra13/universalimageloader/utils/IoUtils$CopyListener;I)Z
istore 4
L3:
iload 4
istore 5
iload 5
istore 4
L5:
aload 7
invokestatic com/nostra13/universalimageloader/utils/IoUtils/closeSilently(Ljava/io/Closeable;)V
L6:
iload 5
istore 4
iload 5
ifeq L10
iload 5
istore 4
aload 6
aload 1
invokevirtual java/io/File/renameTo(Ljava/io/File;)Z
ifne L10
iconst_0
istore 4
L10:
iload 4
ifne L11
aload 6
invokevirtual java/io/File/delete()Z
pop
L11:
iload 4
ireturn
L4:
astore 2
iload 5
istore 4
L7:
aload 7
invokestatic com/nostra13/universalimageloader/utils/IoUtils/closeSilently(Ljava/io/Closeable;)V
L8:
iload 5
istore 4
L9:
aload 2
athrow
L2:
astore 2
iload 4
istore 5
iload 4
ifeq L12
iload 4
istore 5
aload 6
aload 1
invokevirtual java/io/File/renameTo(Ljava/io/File;)Z
ifne L12
iconst_0
istore 5
L12:
iload 5
ifne L13
aload 6
invokevirtual java/io/File/delete()Z
pop
L13:
aload 2
athrow
.limit locals 8
.limit stack 5
.end method

.method public save(Ljava/lang/String;Ljava/io/InputStream;Lcom/nostra13/universalimageloader/utils/IoUtils$CopyListener;Ljava/io/File;Lcom/nostra13/universalimageloader/core/download/ImageDownloader;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)Z
.throws java/io/IOException
aload 2
aload 3
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/BaseDiskCache/bufferSize I
aload 1
aload 4
aload 5
aload 6
invokestatic com/nostra13/universalimageloader/utils/IoUtils/copyStream(Ljava/io/InputStream;Lcom/nostra13/universalimageloader/utils/IoUtils$CopyListener;ILjava/lang/String;Ljava/io/File;Lcom/nostra13/universalimageloader/core/download/ImageDownloader;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)Z
ireturn
.limit locals 7
.limit stack 7
.end method

.method public setBufferSize(I)V
aload 0
iload 1
putfield com/nostra13/universalimageloader/cache/disc/impl/BaseDiskCache/bufferSize I
return
.limit locals 2
.limit stack 2
.end method

.method public setCompressFormat(Landroid/graphics/Bitmap$CompressFormat;)V
aload 0
aload 1
putfield com/nostra13/universalimageloader/cache/disc/impl/BaseDiskCache/compressFormat Landroid/graphics/Bitmap$CompressFormat;
return
.limit locals 2
.limit stack 2
.end method

.method public setCompressQuality(I)V
aload 0
iload 1
putfield com/nostra13/universalimageloader/cache/disc/impl/BaseDiskCache/compressQuality I
return
.limit locals 2
.limit stack 2
.end method
