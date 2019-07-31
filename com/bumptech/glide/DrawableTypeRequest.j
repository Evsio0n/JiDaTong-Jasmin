.bytecode 50.0
.class public synchronized com/bumptech/glide/DrawableTypeRequest
.super com/bumptech/glide/DrawableRequestBuilder
.implements com/bumptech/glide/DownloadOptions
.signature "<ModelType:Ljava/lang/Object;>Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;Lcom/bumptech/glide/DownloadOptions;"

.field private final 'fileDescriptorModelLoader' Lcom/bumptech/glide/load/model/ModelLoader; signature "Lcom/bumptech/glide/load/model/ModelLoader<TModelType;Landroid/os/ParcelFileDescriptor;>;"

.field private final 'optionsApplier' Lcom/bumptech/glide/RequestManager$OptionsApplier;

.field private final 'streamModelLoader' Lcom/bumptech/glide/load/model/ModelLoader; signature "Lcom/bumptech/glide/load/model/ModelLoader<TModelType;Ljava/io/InputStream;>;"

.method <init>(Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoader;Lcom/bumptech/glide/load/model/ModelLoader;Landroid/content/Context;Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/manager/RequestTracker;Lcom/bumptech/glide/manager/Lifecycle;Lcom/bumptech/glide/RequestManager$OptionsApplier;)V
.signature "(Ljava/lang/Class<TModelType;>;Lcom/bumptech/glide/load/model/ModelLoader<TModelType;Ljava/io/InputStream;>;Lcom/bumptech/glide/load/model/ModelLoader<TModelType;Landroid/os/ParcelFileDescriptor;>;Landroid/content/Context;Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/manager/RequestTracker;Lcom/bumptech/glide/manager/Lifecycle;Lcom/bumptech/glide/RequestManager$OptionsApplier;)V"
aload 0
aload 4
aload 1
aload 5
aload 2
aload 3
ldc com/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper
ldc com/bumptech/glide/load/resource/drawable/GlideDrawable
aconst_null
invokestatic com/bumptech/glide/DrawableTypeRequest/buildProvider(Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/load/model/ModelLoader;Lcom/bumptech/glide/load/model/ModelLoader;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)Lcom/bumptech/glide/provider/FixedLoadProvider;
aload 5
aload 6
aload 7
invokespecial com/bumptech/glide/DrawableRequestBuilder/<init>(Landroid/content/Context;Ljava/lang/Class;Lcom/bumptech/glide/provider/LoadProvider;Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/manager/RequestTracker;Lcom/bumptech/glide/manager/Lifecycle;)V
aload 0
aload 2
putfield com/bumptech/glide/DrawableTypeRequest/streamModelLoader Lcom/bumptech/glide/load/model/ModelLoader;
aload 0
aload 3
putfield com/bumptech/glide/DrawableTypeRequest/fileDescriptorModelLoader Lcom/bumptech/glide/load/model/ModelLoader;
aload 0
aload 8
putfield com/bumptech/glide/DrawableTypeRequest/optionsApplier Lcom/bumptech/glide/RequestManager$OptionsApplier;
return
.limit locals 9
.limit stack 9
.end method

.method private static buildProvider(Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/load/model/ModelLoader;Lcom/bumptech/glide/load/model/ModelLoader;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)Lcom/bumptech/glide/provider/FixedLoadProvider;
.signature "<A:Ljava/lang/Object;Z:Ljava/lang/Object;R:Ljava/lang/Object;>(Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/load/model/ModelLoader<TA;Ljava/io/InputStream;>;Lcom/bumptech/glide/load/model/ModelLoader<TA;Landroid/os/ParcelFileDescriptor;>;Ljava/lang/Class<TZ;>;Ljava/lang/Class<TR;>;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder<TZ;TR;>;)Lcom/bumptech/glide/provider/FixedLoadProvider<TA;Lcom/bumptech/glide/load/model/ImageVideoWrapper;TZ;TR;>;"
aload 1
ifnonnull L0
aload 2
ifnonnull L0
aconst_null
areturn
L0:
aload 5
astore 6
aload 5
ifnonnull L1
aload 0
aload 3
aload 4
invokevirtual com/bumptech/glide/Glide/buildTranscoder(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;
astore 6
L1:
aload 0
ldc com/bumptech/glide/load/model/ImageVideoWrapper
aload 3
invokevirtual com/bumptech/glide/Glide/buildDataProvider(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/provider/DataLoadProvider;
astore 0
new com/bumptech/glide/provider/FixedLoadProvider
dup
new com/bumptech/glide/load/model/ImageVideoModelLoader
dup
aload 1
aload 2
invokespecial com/bumptech/glide/load/model/ImageVideoModelLoader/<init>(Lcom/bumptech/glide/load/model/ModelLoader;Lcom/bumptech/glide/load/model/ModelLoader;)V
aload 6
aload 0
invokespecial com/bumptech/glide/provider/FixedLoadProvider/<init>(Lcom/bumptech/glide/load/model/ModelLoader;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;Lcom/bumptech/glide/provider/DataLoadProvider;)V
areturn
.limit locals 7
.limit stack 6
.end method

.method private getDownloadOnlyRequest()Lcom/bumptech/glide/GenericTranscodeRequest;
.signature "()Lcom/bumptech/glide/GenericTranscodeRequest<TModelType;Ljava/io/InputStream;Ljava/io/File;>;"
aload 0
getfield com/bumptech/glide/DrawableTypeRequest/optionsApplier Lcom/bumptech/glide/RequestManager$OptionsApplier;
new com/bumptech/glide/GenericTranscodeRequest
dup
ldc java/io/File
aload 0
aload 0
getfield com/bumptech/glide/DrawableTypeRequest/streamModelLoader Lcom/bumptech/glide/load/model/ModelLoader;
ldc java/io/InputStream
ldc java/io/File
aload 0
getfield com/bumptech/glide/DrawableTypeRequest/optionsApplier Lcom/bumptech/glide/RequestManager$OptionsApplier;
invokespecial com/bumptech/glide/GenericTranscodeRequest/<init>(Ljava/lang/Class;Lcom/bumptech/glide/GenericRequestBuilder;Lcom/bumptech/glide/load/model/ModelLoader;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/RequestManager$OptionsApplier;)V
invokevirtual com/bumptech/glide/RequestManager$OptionsApplier/apply(Lcom/bumptech/glide/GenericRequestBuilder;)Lcom/bumptech/glide/GenericRequestBuilder;
checkcast com/bumptech/glide/GenericTranscodeRequest
areturn
.limit locals 1
.limit stack 9
.end method

.method public asBitmap()Lcom/bumptech/glide/BitmapTypeRequest;
.signature "()Lcom/bumptech/glide/BitmapTypeRequest<TModelType;>;"
aload 0
getfield com/bumptech/glide/DrawableTypeRequest/optionsApplier Lcom/bumptech/glide/RequestManager$OptionsApplier;
new com/bumptech/glide/BitmapTypeRequest
dup
aload 0
aload 0
getfield com/bumptech/glide/DrawableTypeRequest/streamModelLoader Lcom/bumptech/glide/load/model/ModelLoader;
aload 0
getfield com/bumptech/glide/DrawableTypeRequest/fileDescriptorModelLoader Lcom/bumptech/glide/load/model/ModelLoader;
aload 0
getfield com/bumptech/glide/DrawableTypeRequest/optionsApplier Lcom/bumptech/glide/RequestManager$OptionsApplier;
invokespecial com/bumptech/glide/BitmapTypeRequest/<init>(Lcom/bumptech/glide/GenericRequestBuilder;Lcom/bumptech/glide/load/model/ModelLoader;Lcom/bumptech/glide/load/model/ModelLoader;Lcom/bumptech/glide/RequestManager$OptionsApplier;)V
invokevirtual com/bumptech/glide/RequestManager$OptionsApplier/apply(Lcom/bumptech/glide/GenericRequestBuilder;)Lcom/bumptech/glide/GenericRequestBuilder;
checkcast com/bumptech/glide/BitmapTypeRequest
areturn
.limit locals 1
.limit stack 7
.end method

.method public asGif()Lcom/bumptech/glide/GifTypeRequest;
.signature "()Lcom/bumptech/glide/GifTypeRequest<TModelType;>;"
aload 0
getfield com/bumptech/glide/DrawableTypeRequest/optionsApplier Lcom/bumptech/glide/RequestManager$OptionsApplier;
new com/bumptech/glide/GifTypeRequest
dup
aload 0
aload 0
getfield com/bumptech/glide/DrawableTypeRequest/streamModelLoader Lcom/bumptech/glide/load/model/ModelLoader;
aload 0
getfield com/bumptech/glide/DrawableTypeRequest/optionsApplier Lcom/bumptech/glide/RequestManager$OptionsApplier;
invokespecial com/bumptech/glide/GifTypeRequest/<init>(Lcom/bumptech/glide/GenericRequestBuilder;Lcom/bumptech/glide/load/model/ModelLoader;Lcom/bumptech/glide/RequestManager$OptionsApplier;)V
invokevirtual com/bumptech/glide/RequestManager$OptionsApplier/apply(Lcom/bumptech/glide/GenericRequestBuilder;)Lcom/bumptech/glide/GenericRequestBuilder;
checkcast com/bumptech/glide/GifTypeRequest
areturn
.limit locals 1
.limit stack 6
.end method

.method public downloadOnly(II)Lcom/bumptech/glide/request/FutureTarget;
.signature "(II)Lcom/bumptech/glide/request/FutureTarget<Ljava/io/File;>;"
aload 0
invokespecial com/bumptech/glide/DrawableTypeRequest/getDownloadOnlyRequest()Lcom/bumptech/glide/GenericTranscodeRequest;
iload 1
iload 2
invokevirtual com/bumptech/glide/GenericTranscodeRequest/downloadOnly(II)Lcom/bumptech/glide/request/FutureTarget;
areturn
.limit locals 3
.limit stack 3
.end method

.method public downloadOnly(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;
.signature "<Y::Lcom/bumptech/glide/request/target/Target<Ljava/io/File;>;>(TY;)TY;"
aload 0
invokespecial com/bumptech/glide/DrawableTypeRequest/getDownloadOnlyRequest()Lcom/bumptech/glide/GenericTranscodeRequest;
aload 1
invokevirtual com/bumptech/glide/GenericTranscodeRequest/downloadOnly(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;
areturn
.limit locals 2
.limit stack 2
.end method
