.bytecode 50.0
.class synchronized com/bumptech/glide/load/engine/DecodeJob$SourceWriter
.super java/lang/Object
.implements com/bumptech/glide/load/engine/cache/DiskCache$Writer
.signature "<DataType:Ljava/lang/Object;>Ljava/lang/Object;Lcom/bumptech/glide/load/engine/cache/DiskCache$Writer;"
.inner class SourceWriter inner com/bumptech/glide/load/engine/DecodeJob$SourceWriter outer com/bumptech/glide/load/engine/DecodeJob

.field private final 'data' Ljava/lang/Object; signature "TDataType;"

.field private final 'encoder' Lcom/bumptech/glide/load/Encoder; signature "Lcom/bumptech/glide/load/Encoder<TDataType;>;"

.field final synthetic 'this$0' Lcom/bumptech/glide/load/engine/DecodeJob;

.method public <init>(Lcom/bumptech/glide/load/engine/DecodeJob;Lcom/bumptech/glide/load/Encoder;Ljava/lang/Object;)V
.signature "(Lcom/bumptech/glide/load/Encoder<TDataType;>;TDataType;)V"
aload 0
aload 1
putfield com/bumptech/glide/load/engine/DecodeJob$SourceWriter/this$0 Lcom/bumptech/glide/load/engine/DecodeJob;
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 2
putfield com/bumptech/glide/load/engine/DecodeJob$SourceWriter/encoder Lcom/bumptech/glide/load/Encoder;
aload 0
aload 3
putfield com/bumptech/glide/load/engine/DecodeJob$SourceWriter/data Ljava/lang/Object;
return
.limit locals 4
.limit stack 2
.end method

.method public write(Ljava/io/File;)Z
.catch java/io/FileNotFoundException from L0 to L1 using L2
.catch all from L0 to L1 using L3
.catch java/io/FileNotFoundException from L4 to L5 using L2
.catch all from L4 to L5 using L3
.catch java/io/IOException from L6 to L7 using L8
.catch all from L9 to L10 using L3
.catch all from L11 to L12 using L3
.catch java/io/IOException from L13 to L14 using L15
.catch java/io/IOException from L16 to L17 using L18
iconst_0
istore 3
aconst_null
astore 5
aconst_null
astore 4
L0:
aload 0
getfield com/bumptech/glide/load/engine/DecodeJob$SourceWriter/this$0 Lcom/bumptech/glide/load/engine/DecodeJob;
invokestatic com/bumptech/glide/load/engine/DecodeJob/access$000(Lcom/bumptech/glide/load/engine/DecodeJob;)Lcom/bumptech/glide/load/engine/DecodeJob$FileOpener;
aload 1
invokevirtual com/bumptech/glide/load/engine/DecodeJob$FileOpener/open(Ljava/io/File;)Ljava/io/OutputStream;
astore 1
L1:
aload 1
astore 4
aload 1
astore 5
L4:
aload 0
getfield com/bumptech/glide/load/engine/DecodeJob$SourceWriter/encoder Lcom/bumptech/glide/load/Encoder;
aload 0
getfield com/bumptech/glide/load/engine/DecodeJob$SourceWriter/data Ljava/lang/Object;
aload 1
invokeinterface com/bumptech/glide/load/Encoder/encode(Ljava/lang/Object;Ljava/io/OutputStream;)Z 2
istore 2
L5:
iload 2
istore 3
aload 1
ifnull L19
L6:
aload 1
invokevirtual java/io/OutputStream/close()V
L7:
iload 2
istore 3
L19:
iload 3
ireturn
L2:
astore 1
aload 4
astore 5
L9:
ldc "DecodeJob"
iconst_3
invokestatic android/util/Log/isLoggable(Ljava/lang/String;I)Z
ifeq L12
L10:
aload 4
astore 5
L11:
ldc "DecodeJob"
ldc "Failed to find file to write to disk cache"
aload 1
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
pop
L12:
aload 4
ifnull L19
L13:
aload 4
invokevirtual java/io/OutputStream/close()V
L14:
iconst_0
ireturn
L15:
astore 1
iconst_0
ireturn
L3:
astore 1
aload 5
ifnull L17
L16:
aload 5
invokevirtual java/io/OutputStream/close()V
L17:
aload 1
athrow
L8:
astore 1
iload 2
ireturn
L18:
astore 4
goto L17
.limit locals 6
.limit stack 3
.end method
