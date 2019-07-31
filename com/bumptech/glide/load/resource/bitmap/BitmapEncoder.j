.bytecode 50.0
.class public synchronized com/bumptech/glide/load/resource/bitmap/BitmapEncoder
.super java/lang/Object
.implements com/bumptech/glide/load/ResourceEncoder
.signature "Ljava/lang/Object;Lcom/bumptech/glide/load/ResourceEncoder<Landroid/graphics/Bitmap;>;"

.field private static final 'DEFAULT_COMPRESSION_QUALITY' I = 90


.field private static final 'TAG' Ljava/lang/String; = "BitmapEncoder"

.field private 'compressFormat' Landroid/graphics/Bitmap$CompressFormat;

.field private 'quality' I

.method public <init>()V
aload 0
aconst_null
bipush 90
invokespecial com/bumptech/glide/load/resource/bitmap/BitmapEncoder/<init>(Landroid/graphics/Bitmap$CompressFormat;I)V
return
.limit locals 1
.limit stack 3
.end method

.method public <init>(Landroid/graphics/Bitmap$CompressFormat;I)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/bumptech/glide/load/resource/bitmap/BitmapEncoder/compressFormat Landroid/graphics/Bitmap$CompressFormat;
aload 0
iload 2
putfield com/bumptech/glide/load/resource/bitmap/BitmapEncoder/quality I
return
.limit locals 3
.limit stack 2
.end method

.method private getFormat(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$CompressFormat;
aload 0
getfield com/bumptech/glide/load/resource/bitmap/BitmapEncoder/compressFormat Landroid/graphics/Bitmap$CompressFormat;
ifnull L0
aload 0
getfield com/bumptech/glide/load/resource/bitmap/BitmapEncoder/compressFormat Landroid/graphics/Bitmap$CompressFormat;
areturn
L0:
aload 1
invokevirtual android/graphics/Bitmap/hasAlpha()Z
ifeq L1
getstatic android/graphics/Bitmap$CompressFormat/PNG Landroid/graphics/Bitmap$CompressFormat;
areturn
L1:
getstatic android/graphics/Bitmap$CompressFormat/JPEG Landroid/graphics/Bitmap$CompressFormat;
areturn
.limit locals 2
.limit stack 1
.end method

.method public encode(Lcom/bumptech/glide/load/engine/Resource;Ljava/io/OutputStream;)Z
.signature "(Lcom/bumptech/glide/load/engine/Resource<Landroid/graphics/Bitmap;>;Ljava/io/OutputStream;)Z"
aload 1
invokeinterface com/bumptech/glide/load/engine/Resource/get()Ljava/lang/Object; 0
checkcast android/graphics/Bitmap
astore 1
invokestatic com/bumptech/glide/util/LogTime/getLogTime()J
lstore 3
aload 0
aload 1
invokespecial com/bumptech/glide/load/resource/bitmap/BitmapEncoder/getFormat(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$CompressFormat;
astore 5
aload 1
aload 5
aload 0
getfield com/bumptech/glide/load/resource/bitmap/BitmapEncoder/quality I
aload 2
invokevirtual android/graphics/Bitmap/compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
pop
ldc "BitmapEncoder"
iconst_2
invokestatic android/util/Log/isLoggable(Ljava/lang/String;I)Z
ifeq L0
ldc "BitmapEncoder"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Compressed with type: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 5
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
ldc " of size "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokestatic com/bumptech/glide/util/Util/getBitmapByteSize(Landroid/graphics/Bitmap;)I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc " in "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 3
invokestatic com/bumptech/glide/util/LogTime/getElapsedMillis(J)D
invokevirtual java/lang/StringBuilder/append(D)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
L0:
iconst_1
ireturn
.limit locals 6
.limit stack 4
.end method

.method public volatile synthetic encode(Ljava/lang/Object;Ljava/io/OutputStream;)Z
aload 0
aload 1
checkcast com/bumptech/glide/load/engine/Resource
aload 2
invokevirtual com/bumptech/glide/load/resource/bitmap/BitmapEncoder/encode(Lcom/bumptech/glide/load/engine/Resource;Ljava/io/OutputStream;)Z
ireturn
.limit locals 3
.limit stack 3
.end method

.method public getId()Ljava/lang/String;
ldc "BitmapEncoder.com.bumptech.glide.load.resource.bitmap"
areturn
.limit locals 1
.limit stack 1
.end method
