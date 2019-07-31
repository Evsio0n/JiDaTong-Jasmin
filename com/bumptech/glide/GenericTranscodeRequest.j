.bytecode 50.0
.class public synchronized com/bumptech/glide/GenericTranscodeRequest
.super com/bumptech/glide/GenericRequestBuilder
.implements com/bumptech/glide/DownloadOptions
.signature "<ModelType:Ljava/lang/Object;DataType:Ljava/lang/Object;ResourceType:Ljava/lang/Object;>Lcom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TResourceType;>;Lcom/bumptech/glide/DownloadOptions;"

.field private final 'dataClass' Ljava/lang/Class; signature "Ljava/lang/Class<TDataType;>;"

.field private final 'modelLoader' Lcom/bumptech/glide/load/model/ModelLoader; signature "Lcom/bumptech/glide/load/model/ModelLoader<TModelType;TDataType;>;"

.field private final 'optionsApplier' Lcom/bumptech/glide/RequestManager$OptionsApplier;

.field private final 'resourceClass' Ljava/lang/Class; signature "Ljava/lang/Class<TResourceType;>;"

.method <init>(Landroid/content/Context;Lcom/bumptech/glide/Glide;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoader;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/manager/RequestTracker;Lcom/bumptech/glide/manager/Lifecycle;Lcom/bumptech/glide/RequestManager$OptionsApplier;)V
.signature "(Landroid/content/Context;Lcom/bumptech/glide/Glide;Ljava/lang/Class<TModelType;>;Lcom/bumptech/glide/load/model/ModelLoader<TModelType;TDataType;>;Ljava/lang/Class<TDataType;>;Ljava/lang/Class<TResourceType;>;Lcom/bumptech/glide/manager/RequestTracker;Lcom/bumptech/glide/manager/Lifecycle;Lcom/bumptech/glide/RequestManager$OptionsApplier;)V"
aload 0
aload 1
aload 3
aload 2
aload 4
aload 5
aload 6
invokestatic com/bumptech/glide/load/resource/transcode/UnitTranscoder/get()Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;
invokestatic com/bumptech/glide/GenericTranscodeRequest/build(Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/load/model/ModelLoader;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)Lcom/bumptech/glide/provider/LoadProvider;
aload 6
aload 2
aload 7
aload 8
invokespecial com/bumptech/glide/GenericRequestBuilder/<init>(Landroid/content/Context;Ljava/lang/Class;Lcom/bumptech/glide/provider/LoadProvider;Ljava/lang/Class;Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/manager/RequestTracker;Lcom/bumptech/glide/manager/Lifecycle;)V
aload 0
aload 4
putfield com/bumptech/glide/GenericTranscodeRequest/modelLoader Lcom/bumptech/glide/load/model/ModelLoader;
aload 0
aload 5
putfield com/bumptech/glide/GenericTranscodeRequest/dataClass Ljava/lang/Class;
aload 0
aload 6
putfield com/bumptech/glide/GenericTranscodeRequest/resourceClass Ljava/lang/Class;
aload 0
aload 9
putfield com/bumptech/glide/GenericTranscodeRequest/optionsApplier Lcom/bumptech/glide/RequestManager$OptionsApplier;
return
.limit locals 10
.limit stack 8
.end method

.method <init>(Ljava/lang/Class;Lcom/bumptech/glide/GenericRequestBuilder;Lcom/bumptech/glide/load/model/ModelLoader;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/RequestManager$OptionsApplier;)V
.signature "(Ljava/lang/Class<TResourceType;>;Lcom/bumptech/glide/GenericRequestBuilder<TModelType;***>;Lcom/bumptech/glide/load/model/ModelLoader<TModelType;TDataType;>;Ljava/lang/Class<TDataType;>;Ljava/lang/Class<TResourceType;>;Lcom/bumptech/glide/RequestManager$OptionsApplier;)V"
aload 0
aload 2
getfield com/bumptech/glide/GenericRequestBuilder/glide Lcom/bumptech/glide/Glide;
aload 3
aload 4
aload 5
invokestatic com/bumptech/glide/load/resource/transcode/UnitTranscoder/get()Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;
invokestatic com/bumptech/glide/GenericTranscodeRequest/build(Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/load/model/ModelLoader;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)Lcom/bumptech/glide/provider/LoadProvider;
aload 1
aload 2
invokespecial com/bumptech/glide/GenericRequestBuilder/<init>(Lcom/bumptech/glide/provider/LoadProvider;Ljava/lang/Class;Lcom/bumptech/glide/GenericRequestBuilder;)V
aload 0
aload 3
putfield com/bumptech/glide/GenericTranscodeRequest/modelLoader Lcom/bumptech/glide/load/model/ModelLoader;
aload 0
aload 4
putfield com/bumptech/glide/GenericTranscodeRequest/dataClass Ljava/lang/Class;
aload 0
aload 5
putfield com/bumptech/glide/GenericTranscodeRequest/resourceClass Ljava/lang/Class;
aload 0
aload 6
putfield com/bumptech/glide/GenericTranscodeRequest/optionsApplier Lcom/bumptech/glide/RequestManager$OptionsApplier;
return
.limit locals 7
.limit stack 6
.end method

.method private static build(Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/load/model/ModelLoader;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)Lcom/bumptech/glide/provider/LoadProvider;
.signature "<A:Ljava/lang/Object;T:Ljava/lang/Object;Z:Ljava/lang/Object;R:Ljava/lang/Object;>(Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/load/model/ModelLoader<TA;TT;>;Ljava/lang/Class<TT;>;Ljava/lang/Class<TZ;>;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder<TZ;TR;>;)Lcom/bumptech/glide/provider/LoadProvider<TA;TT;TZ;TR;>;"
new com/bumptech/glide/provider/FixedLoadProvider
dup
aload 1
aload 4
aload 0
aload 2
aload 3
invokevirtual com/bumptech/glide/Glide/buildDataProvider(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/provider/DataLoadProvider;
invokespecial com/bumptech/glide/provider/FixedLoadProvider/<init>(Lcom/bumptech/glide/load/model/ModelLoader;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;Lcom/bumptech/glide/provider/DataLoadProvider;)V
areturn
.limit locals 5
.limit stack 7
.end method

.method private getDownloadOnlyRequest()Lcom/bumptech/glide/GenericRequestBuilder;
.signature "()Lcom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;Ljava/io/File;Ljava/io/File;>;"
invokestatic com/bumptech/glide/load/resource/transcode/UnitTranscoder/get()Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;
astore 1
aload 0
getfield com/bumptech/glide/GenericTranscodeRequest/glide Lcom/bumptech/glide/Glide;
aload 0
getfield com/bumptech/glide/GenericTranscodeRequest/dataClass Ljava/lang/Class;
ldc java/io/File
invokevirtual com/bumptech/glide/Glide/buildDataProvider(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/provider/DataLoadProvider;
astore 2
new com/bumptech/glide/provider/FixedLoadProvider
dup
aload 0
getfield com/bumptech/glide/GenericTranscodeRequest/modelLoader Lcom/bumptech/glide/load/model/ModelLoader;
aload 1
aload 2
invokespecial com/bumptech/glide/provider/FixedLoadProvider/<init>(Lcom/bumptech/glide/load/model/ModelLoader;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;Lcom/bumptech/glide/provider/DataLoadProvider;)V
astore 1
aload 0
getfield com/bumptech/glide/GenericTranscodeRequest/optionsApplier Lcom/bumptech/glide/RequestManager$OptionsApplier;
new com/bumptech/glide/GenericRequestBuilder
dup
aload 1
ldc java/io/File
aload 0
invokespecial com/bumptech/glide/GenericRequestBuilder/<init>(Lcom/bumptech/glide/provider/LoadProvider;Ljava/lang/Class;Lcom/bumptech/glide/GenericRequestBuilder;)V
invokevirtual com/bumptech/glide/RequestManager$OptionsApplier/apply(Lcom/bumptech/glide/GenericRequestBuilder;)Lcom/bumptech/glide/GenericRequestBuilder;
getstatic com/bumptech/glide/Priority/LOW Lcom/bumptech/glide/Priority;
invokevirtual com/bumptech/glide/GenericRequestBuilder/priority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/GenericRequestBuilder;
getstatic com/bumptech/glide/load/engine/DiskCacheStrategy/SOURCE Lcom/bumptech/glide/load/engine/DiskCacheStrategy;
invokevirtual com/bumptech/glide/GenericRequestBuilder/diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/GenericRequestBuilder;
iconst_1
invokevirtual com/bumptech/glide/GenericRequestBuilder/skipMemoryCache(Z)Lcom/bumptech/glide/GenericRequestBuilder;
areturn
.limit locals 3
.limit stack 6
.end method

.method public downloadOnly(II)Lcom/bumptech/glide/request/FutureTarget;
.signature "(II)Lcom/bumptech/glide/request/FutureTarget<Ljava/io/File;>;"
aload 0
invokespecial com/bumptech/glide/GenericTranscodeRequest/getDownloadOnlyRequest()Lcom/bumptech/glide/GenericRequestBuilder;
iload 1
iload 2
invokevirtual com/bumptech/glide/GenericRequestBuilder/into(II)Lcom/bumptech/glide/request/FutureTarget;
areturn
.limit locals 3
.limit stack 3
.end method

.method public downloadOnly(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;
.signature "<Y::Lcom/bumptech/glide/request/target/Target<Ljava/io/File;>;>(TY;)TY;"
aload 0
invokespecial com/bumptech/glide/GenericTranscodeRequest/getDownloadOnlyRequest()Lcom/bumptech/glide/GenericRequestBuilder;
aload 1
invokevirtual com/bumptech/glide/GenericRequestBuilder/into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;
areturn
.limit locals 2
.limit stack 2
.end method

.method public transcode(Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;Ljava/lang/Class;)Lcom/bumptech/glide/GenericRequestBuilder;
.signature "<TranscodeType:Ljava/lang/Object;>(Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder<TResourceType;TTranscodeType;>;Ljava/lang/Class<TTranscodeType;>;)Lcom/bumptech/glide/GenericRequestBuilder<TModelType;TDataType;TResourceType;TTranscodeType;>;"
aload 0
getfield com/bumptech/glide/GenericTranscodeRequest/glide Lcom/bumptech/glide/Glide;
aload 0
getfield com/bumptech/glide/GenericTranscodeRequest/modelLoader Lcom/bumptech/glide/load/model/ModelLoader;
aload 0
getfield com/bumptech/glide/GenericTranscodeRequest/dataClass Ljava/lang/Class;
aload 0
getfield com/bumptech/glide/GenericTranscodeRequest/resourceClass Ljava/lang/Class;
aload 1
invokestatic com/bumptech/glide/GenericTranscodeRequest/build(Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/load/model/ModelLoader;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)Lcom/bumptech/glide/provider/LoadProvider;
astore 1
aload 0
getfield com/bumptech/glide/GenericTranscodeRequest/optionsApplier Lcom/bumptech/glide/RequestManager$OptionsApplier;
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
