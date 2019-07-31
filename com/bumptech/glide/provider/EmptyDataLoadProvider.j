.bytecode 50.0
.class public synchronized com/bumptech/glide/provider/EmptyDataLoadProvider
.super java/lang/Object
.implements com/bumptech/glide/provider/DataLoadProvider
.signature "<T:Ljava/lang/Object;Z:Ljava/lang/Object;>Ljava/lang/Object;Lcom/bumptech/glide/provider/DataLoadProvider<TT;TZ;>;"

.field private static final 'EMPTY_DATA_LOAD_PROVIDER' Lcom/bumptech/glide/provider/DataLoadProvider; signature "Lcom/bumptech/glide/provider/DataLoadProvider<**>;"

.method static <clinit>()V
new com/bumptech/glide/provider/EmptyDataLoadProvider
dup
invokespecial com/bumptech/glide/provider/EmptyDataLoadProvider/<init>()V
putstatic com/bumptech/glide/provider/EmptyDataLoadProvider/EMPTY_DATA_LOAD_PROVIDER Lcom/bumptech/glide/provider/DataLoadProvider;
return
.limit locals 0
.limit stack 2
.end method

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static get()Lcom/bumptech/glide/provider/DataLoadProvider;
.signature "<T:Ljava/lang/Object;Z:Ljava/lang/Object;>()Lcom/bumptech/glide/provider/DataLoadProvider<TT;TZ;>;"
getstatic com/bumptech/glide/provider/EmptyDataLoadProvider/EMPTY_DATA_LOAD_PROVIDER Lcom/bumptech/glide/provider/DataLoadProvider;
areturn
.limit locals 0
.limit stack 1
.end method

.method public getCacheDecoder()Lcom/bumptech/glide/load/ResourceDecoder;
.signature "()Lcom/bumptech/glide/load/ResourceDecoder<Ljava/io/File;TZ;>;"
aconst_null
areturn
.limit locals 1
.limit stack 1
.end method

.method public getEncoder()Lcom/bumptech/glide/load/ResourceEncoder;
.signature "()Lcom/bumptech/glide/load/ResourceEncoder<TZ;>;"
aconst_null
areturn
.limit locals 1
.limit stack 1
.end method

.method public getSourceDecoder()Lcom/bumptech/glide/load/ResourceDecoder;
.signature "()Lcom/bumptech/glide/load/ResourceDecoder<TT;TZ;>;"
aconst_null
areturn
.limit locals 1
.limit stack 1
.end method

.method public getSourceEncoder()Lcom/bumptech/glide/load/Encoder;
.signature "()Lcom/bumptech/glide/load/Encoder<TT;>;"
aconst_null
areturn
.limit locals 1
.limit stack 1
.end method
