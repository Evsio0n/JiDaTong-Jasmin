.bytecode 50.0
.class public synchronized com/bumptech/glide/BitmapTypeRequest
.super com/bumptech/glide/BitmapRequestBuilder
.signature "<ModelType:Ljava/lang/Object;>Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;Landroid/graphics/Bitmap;>;"

.field private final 'fileDescriptorModelLoader' Lcom/bumptech/glide/load/model/ModelLoader; signature "Lcom/bumptech/glide/load/model/ModelLoader<TModelType;Landroid/os/ParcelFileDescriptor;>;"

.field private final 'glide' Lcom/bumptech/glide/Glide;

.field private final 'optionsApplier' Lcom/bumptech/glide/RequestManager$OptionsApplier;

.field private final 'streamModelLoader' Lcom/bumptech/glide/load/model/ModelLoader; signature "Lcom/bumptech/glide/load/model/ModelLoader<TModelType;Ljava/io/InputStream;>;"

.method <init>(Lcom/bumptech/glide/GenericRequestBuilder;Lcom/bumptech/glide/load/model/ModelLoader;Lcom/bumptech/glide/load/model/ModelLoader;Lcom/bumptech/glide/RequestManager$OptionsApplier;)V
.signature "(Lcom/bumptech/glide/GenericRequestBuilder<TModelType;***>;Lcom/bumptech/glide/load/model/ModelLoader<TModelType;Ljava/io/InputStream;>;Lcom/bumptech/glide/load/model/ModelLoader<TModelType;Landroid/os/ParcelFileDescriptor;>;Lcom/bumptech/glide/RequestManager$OptionsApplier;)V"
aload 0
aload 1
getfield com/bumptech/glide/GenericRequestBuilder/glide Lcom/bumptech/glide/Glide;
aload 2
aload 3
ldc android/graphics/Bitmap
aconst_null
invokestatic com/bumptech/glide/BitmapTypeRequest/buildProvider(Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/load/model/ModelLoader;Lcom/bumptech/glide/load/model/ModelLoader;Ljava/lang/Class;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)Lcom/bumptech/glide/provider/FixedLoadProvider;
ldc android/graphics/Bitmap
aload 1
invokespecial com/bumptech/glide/BitmapRequestBuilder/<init>(Lcom/bumptech/glide/provider/LoadProvider;Ljava/lang/Class;Lcom/bumptech/glide/GenericRequestBuilder;)V
aload 0
aload 2
putfield com/bumptech/glide/BitmapTypeRequest/streamModelLoader Lcom/bumptech/glide/load/model/ModelLoader;
aload 0
aload 3
putfield com/bumptech/glide/BitmapTypeRequest/fileDescriptorModelLoader Lcom/bumptech/glide/load/model/ModelLoader;
aload 0
aload 1
getfield com/bumptech/glide/GenericRequestBuilder/glide Lcom/bumptech/glide/Glide;
putfield com/bumptech/glide/BitmapTypeRequest/glide Lcom/bumptech/glide/Glide;
aload 0
aload 4
putfield com/bumptech/glide/BitmapTypeRequest/optionsApplier Lcom/bumptech/glide/RequestManager$OptionsApplier;
return
.limit locals 5
.limit stack 6
.end method

.method private static buildProvider(Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/load/model/ModelLoader;Lcom/bumptech/glide/load/model/ModelLoader;Ljava/lang/Class;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)Lcom/bumptech/glide/provider/FixedLoadProvider;
.signature "<A:Ljava/lang/Object;R:Ljava/lang/Object;>(Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/load/model/ModelLoader<TA;Ljava/io/InputStream;>;Lcom/bumptech/glide/load/model/ModelLoader<TA;Landroid/os/ParcelFileDescriptor;>;Ljava/lang/Class<TR;>;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder<Landroid/graphics/Bitmap;TR;>;)Lcom/bumptech/glide/provider/FixedLoadProvider<TA;Lcom/bumptech/glide/load/model/ImageVideoWrapper;Landroid/graphics/Bitmap;TR;>;"
aload 1
ifnonnull L0
aload 2
ifnonnull L0
aconst_null
areturn
L0:
aload 4
astore 5
aload 4
ifnonnull L1
aload 0
ldc android/graphics/Bitmap
aload 3
invokevirtual com/bumptech/glide/Glide/buildTranscoder(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;
astore 5
L1:
aload 0
ldc com/bumptech/glide/load/model/ImageVideoWrapper
ldc android/graphics/Bitmap
invokevirtual com/bumptech/glide/Glide/buildDataProvider(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/provider/DataLoadProvider;
astore 0
new com/bumptech/glide/provider/FixedLoadProvider
dup
new com/bumptech/glide/load/model/ImageVideoModelLoader
dup
aload 1
aload 2
invokespecial com/bumptech/glide/load/model/ImageVideoModelLoader/<init>(Lcom/bumptech/glide/load/model/ModelLoader;Lcom/bumptech/glide/load/model/ModelLoader;)V
aload 5
aload 0
invokespecial com/bumptech/glide/provider/FixedLoadProvider/<init>(Lcom/bumptech/glide/load/model/ModelLoader;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;Lcom/bumptech/glide/provider/DataLoadProvider;)V
areturn
.limit locals 6
.limit stack 6
.end method

.method public toBytes()Lcom/bumptech/glide/BitmapRequestBuilder;
.signature "()Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;[B>;"
aload 0
new com/bumptech/glide/load/resource/transcode/BitmapBytesTranscoder
dup
invokespecial com/bumptech/glide/load/resource/transcode/BitmapBytesTranscoder/<init>()V
ldc [B
invokevirtual com/bumptech/glide/BitmapTypeRequest/transcode(Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;Ljava/lang/Class;)Lcom/bumptech/glide/BitmapRequestBuilder;
areturn
.limit locals 1
.limit stack 3
.end method

.method public toBytes(Landroid/graphics/Bitmap$CompressFormat;I)Lcom/bumptech/glide/BitmapRequestBuilder;
.signature "(Landroid/graphics/Bitmap$CompressFormat;I)Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;[B>;"
aload 0
new com/bumptech/glide/load/resource/transcode/BitmapBytesTranscoder
dup
aload 1
iload 2
invokespecial com/bumptech/glide/load/resource/transcode/BitmapBytesTranscoder/<init>(Landroid/graphics/Bitmap$CompressFormat;I)V
ldc [B
invokevirtual com/bumptech/glide/BitmapTypeRequest/transcode(Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;Ljava/lang/Class;)Lcom/bumptech/glide/BitmapRequestBuilder;
areturn
.limit locals 3
.limit stack 5
.end method

.method public transcode(Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;Ljava/lang/Class;)Lcom/bumptech/glide/BitmapRequestBuilder;
.signature "<R:Ljava/lang/Object;>(Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder<Landroid/graphics/Bitmap;TR;>;Ljava/lang/Class<TR;>;)Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TR;>;"
aload 0
getfield com/bumptech/glide/BitmapTypeRequest/optionsApplier Lcom/bumptech/glide/RequestManager$OptionsApplier;
new com/bumptech/glide/BitmapRequestBuilder
dup
aload 0
getfield com/bumptech/glide/BitmapTypeRequest/glide Lcom/bumptech/glide/Glide;
aload 0
getfield com/bumptech/glide/BitmapTypeRequest/streamModelLoader Lcom/bumptech/glide/load/model/ModelLoader;
aload 0
getfield com/bumptech/glide/BitmapTypeRequest/fileDescriptorModelLoader Lcom/bumptech/glide/load/model/ModelLoader;
aload 2
aload 1
invokestatic com/bumptech/glide/BitmapTypeRequest/buildProvider(Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/load/model/ModelLoader;Lcom/bumptech/glide/load/model/ModelLoader;Ljava/lang/Class;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)Lcom/bumptech/glide/provider/FixedLoadProvider;
aload 2
aload 0
invokespecial com/bumptech/glide/BitmapRequestBuilder/<init>(Lcom/bumptech/glide/provider/LoadProvider;Ljava/lang/Class;Lcom/bumptech/glide/GenericRequestBuilder;)V
invokevirtual com/bumptech/glide/RequestManager$OptionsApplier/apply(Lcom/bumptech/glide/GenericRequestBuilder;)Lcom/bumptech/glide/GenericRequestBuilder;
checkcast com/bumptech/glide/BitmapRequestBuilder
areturn
.limit locals 3
.limit stack 8
.end method
