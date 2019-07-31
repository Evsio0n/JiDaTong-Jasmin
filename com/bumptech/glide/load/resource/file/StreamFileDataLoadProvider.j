.bytecode 50.0
.class public synchronized com/bumptech/glide/load/resource/file/StreamFileDataLoadProvider
.super java/lang/Object
.implements com/bumptech/glide/provider/DataLoadProvider
.signature "Ljava/lang/Object;Lcom/bumptech/glide/provider/DataLoadProvider<Ljava/io/InputStream;Ljava/io/File;>;"
.inner class static synthetic inner com/bumptech/glide/load/resource/file/StreamFileDataLoadProvider$1
.inner class private static ErrorSourceDecoder inner com/bumptech/glide/load/resource/file/StreamFileDataLoadProvider$ErrorSourceDecoder outer com/bumptech/glide/load/resource/file/StreamFileDataLoadProvider

.field private static final 'ERROR_DECODER' Lcom/bumptech/glide/load/resource/file/StreamFileDataLoadProvider$ErrorSourceDecoder;

.field private final 'cacheDecoder' Lcom/bumptech/glide/load/ResourceDecoder; signature "Lcom/bumptech/glide/load/ResourceDecoder<Ljava/io/File;Ljava/io/File;>;"

.field private final 'encoder' Lcom/bumptech/glide/load/Encoder; signature "Lcom/bumptech/glide/load/Encoder<Ljava/io/InputStream;>;"

.method static <clinit>()V
new com/bumptech/glide/load/resource/file/StreamFileDataLoadProvider$ErrorSourceDecoder
dup
aconst_null
invokespecial com/bumptech/glide/load/resource/file/StreamFileDataLoadProvider$ErrorSourceDecoder/<init>(Lcom/bumptech/glide/load/resource/file/StreamFileDataLoadProvider$1;)V
putstatic com/bumptech/glide/load/resource/file/StreamFileDataLoadProvider/ERROR_DECODER Lcom/bumptech/glide/load/resource/file/StreamFileDataLoadProvider$ErrorSourceDecoder;
return
.limit locals 0
.limit stack 3
.end method

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new com/bumptech/glide/load/resource/file/FileDecoder
dup
invokespecial com/bumptech/glide/load/resource/file/FileDecoder/<init>()V
putfield com/bumptech/glide/load/resource/file/StreamFileDataLoadProvider/cacheDecoder Lcom/bumptech/glide/load/ResourceDecoder;
aload 0
new com/bumptech/glide/load/model/StreamEncoder
dup
invokespecial com/bumptech/glide/load/model/StreamEncoder/<init>()V
putfield com/bumptech/glide/load/resource/file/StreamFileDataLoadProvider/encoder Lcom/bumptech/glide/load/Encoder;
return
.limit locals 1
.limit stack 3
.end method

.method public getCacheDecoder()Lcom/bumptech/glide/load/ResourceDecoder;
.signature "()Lcom/bumptech/glide/load/ResourceDecoder<Ljava/io/File;Ljava/io/File;>;"
aload 0
getfield com/bumptech/glide/load/resource/file/StreamFileDataLoadProvider/cacheDecoder Lcom/bumptech/glide/load/ResourceDecoder;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getEncoder()Lcom/bumptech/glide/load/ResourceEncoder;
.signature "()Lcom/bumptech/glide/load/ResourceEncoder<Ljava/io/File;>;"
invokestatic com/bumptech/glide/load/resource/NullResourceEncoder/get()Lcom/bumptech/glide/load/resource/NullResourceEncoder;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getSourceDecoder()Lcom/bumptech/glide/load/ResourceDecoder;
.signature "()Lcom/bumptech/glide/load/ResourceDecoder<Ljava/io/InputStream;Ljava/io/File;>;"
getstatic com/bumptech/glide/load/resource/file/StreamFileDataLoadProvider/ERROR_DECODER Lcom/bumptech/glide/load/resource/file/StreamFileDataLoadProvider$ErrorSourceDecoder;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getSourceEncoder()Lcom/bumptech/glide/load/Encoder;
.signature "()Lcom/bumptech/glide/load/Encoder<Ljava/io/InputStream;>;"
aload 0
getfield com/bumptech/glide/load/resource/file/StreamFileDataLoadProvider/encoder Lcom/bumptech/glide/load/Encoder;
areturn
.limit locals 1
.limit stack 1
.end method
