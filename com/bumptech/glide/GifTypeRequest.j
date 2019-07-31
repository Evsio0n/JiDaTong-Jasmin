.bytecode 50.0
.class public synchronized com/bumptech/glide/GifTypeRequest
.super com/bumptech/glide/GifRequestBuilder
.signature "<ModelType:Ljava/lang/Object;>Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"

.field private final 'optionsApplier' Lcom/bumptech/glide/RequestManager$OptionsApplier;

.field private final 'streamModelLoader' Lcom/bumptech/glide/load/model/ModelLoader; signature "Lcom/bumptech/glide/load/model/ModelLoader<TModelType;Ljava/io/InputStream;>;"

.method <init>(Lcom/bumptech/glide/GenericRequestBuilder;Lcom/bumptech/glide/load/model/ModelLoader;Lcom/bumptech/glide/RequestManager$OptionsApplier;)V
.signature "(Lcom/bumptech/glide/GenericRequestBuilder<TModelType;***>;Lcom/bumptech/glide/load/model/ModelLoader<TModelType;Ljava/io/InputStream;>;Lcom/bumptech/glide/RequestManager$OptionsApplier;)V"
aload 0
aload 1
getfield com/bumptech/glide/GenericRequestBuilder/glide Lcom/bumptech/glide/Glide;
aload 2
ldc com/bumptech/glide/load/resource/gif/GifDrawable
aconst_null
invokestatic com/bumptech/glide/GifTypeRequest/buildProvider(Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/load/model/ModelLoader;Ljava/lang/Class;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)Lcom/bumptech/glide/provider/FixedLoadProvider;
ldc com/bumptech/glide/load/resource/gif/GifDrawable
aload 1
invokespecial com/bumptech/glide/GifRequestBuilder/<init>(Lcom/bumptech/glide/provider/LoadProvider;Ljava/lang/Class;Lcom/bumptech/glide/GenericRequestBuilder;)V
aload 0
aload 2
putfield com/bumptech/glide/GifTypeRequest/streamModelLoader Lcom/bumptech/glide/load/model/ModelLoader;
aload 0
aload 3
putfield com/bumptech/glide/GifTypeRequest/optionsApplier Lcom/bumptech/glide/RequestManager$OptionsApplier;
aload 0
invokevirtual com/bumptech/glide/GifTypeRequest/crossFade()Lcom/bumptech/glide/GifRequestBuilder;
pop
return
.limit locals 4
.limit stack 5
.end method

.method private static buildProvider(Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/load/model/ModelLoader;Ljava/lang/Class;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)Lcom/bumptech/glide/provider/FixedLoadProvider;
.signature "<A:Ljava/lang/Object;R:Ljava/lang/Object;>(Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/load/model/ModelLoader<TA;Ljava/io/InputStream;>;Ljava/lang/Class<TR;>;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder<Lcom/bumptech/glide/load/resource/gif/GifDrawable;TR;>;)Lcom/bumptech/glide/provider/FixedLoadProvider<TA;Ljava/io/InputStream;Lcom/bumptech/glide/load/resource/gif/GifDrawable;TR;>;"
aload 1
ifnonnull L0
aconst_null
areturn
L0:
aload 3
astore 4
aload 3
ifnonnull L1
aload 0
ldc com/bumptech/glide/load/resource/gif/GifDrawable
aload 2
invokevirtual com/bumptech/glide/Glide/buildTranscoder(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;
astore 4
L1:
new com/bumptech/glide/provider/FixedLoadProvider
dup
aload 1
aload 4
aload 0
ldc java/io/InputStream
ldc com/bumptech/glide/load/resource/gif/GifDrawable
invokevirtual com/bumptech/glide/Glide/buildDataProvider(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/provider/DataLoadProvider;
invokespecial com/bumptech/glide/provider/FixedLoadProvider/<init>(Lcom/bumptech/glide/load/model/ModelLoader;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;Lcom/bumptech/glide/provider/DataLoadProvider;)V
areturn
.limit locals 5
.limit stack 7
.end method

.method public toBytes()Lcom/bumptech/glide/GenericRequestBuilder;
.signature "()Lcom/bumptech/glide/GenericRequestBuilder<TModelType;Ljava/io/InputStream;Lcom/bumptech/glide/load/resource/gif/GifDrawable;[B>;"
aload 0
new com/bumptech/glide/load/resource/transcode/GifDrawableBytesTranscoder
dup
invokespecial com/bumptech/glide/load/resource/transcode/GifDrawableBytesTranscoder/<init>()V
ldc [B
invokevirtual com/bumptech/glide/GifTypeRequest/transcode(Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;Ljava/lang/Class;)Lcom/bumptech/glide/GenericRequestBuilder;
areturn
.limit locals 1
.limit stack 3
.end method

.method public transcode(Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;Ljava/lang/Class;)Lcom/bumptech/glide/GenericRequestBuilder;
.signature "<R:Ljava/lang/Object;>(Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder<Lcom/bumptech/glide/load/resource/gif/GifDrawable;TR;>;Ljava/lang/Class<TR;>;)Lcom/bumptech/glide/GenericRequestBuilder<TModelType;Ljava/io/InputStream;Lcom/bumptech/glide/load/resource/gif/GifDrawable;TR;>;"
aload 0
getfield com/bumptech/glide/GifTypeRequest/glide Lcom/bumptech/glide/Glide;
aload 0
getfield com/bumptech/glide/GifTypeRequest/streamModelLoader Lcom/bumptech/glide/load/model/ModelLoader;
aload 2
aload 1
invokestatic com/bumptech/glide/GifTypeRequest/buildProvider(Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/load/model/ModelLoader;Ljava/lang/Class;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)Lcom/bumptech/glide/provider/FixedLoadProvider;
astore 1
aload 0
getfield com/bumptech/glide/GifTypeRequest/optionsApplier Lcom/bumptech/glide/RequestManager$OptionsApplier;
new com/bumptech/glide/GenericRequestBuilder
dup
aload 1
aload 2
aload 0
invokespecial com/bumptech/glide/GenericRequestBuilder/<init>(Lcom/bumptech/glide/provider/LoadProvider;Ljava/lang/Class;Lcom/bumptech/glide/GenericRequestBuilder;)V
invokevirtual com/bumptech/glide/RequestManager$OptionsApplier/apply(Lcom/bumptech/glide/GenericRequestBuilder;)Lcom/bumptech/glide/GenericRequestBuilder;
areturn
.limit locals 3
.limit stack 6
.end method
