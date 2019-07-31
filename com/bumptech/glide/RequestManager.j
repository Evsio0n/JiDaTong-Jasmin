.bytecode 50.0
.class public synchronized com/bumptech/glide/RequestManager
.super java/lang/Object
.implements com/bumptech/glide/manager/LifecycleListener
.inner class inner com/bumptech/glide/RequestManager$1
.inner class public static abstract interface DefaultOptions inner com/bumptech/glide/RequestManager$DefaultOptions outer com/bumptech/glide/RequestManager
.inner class public final GenericModelRequest inner com/bumptech/glide/RequestManager$GenericModelRequest outer com/bumptech/glide/RequestManager
.inner class public final GenericTypeRequest inner com/bumptech/glide/RequestManager$GenericModelRequest$GenericTypeRequest outer com/bumptech/glide/RequestManager
.inner class public final ImageModelRequest inner com/bumptech/glide/RequestManager$ImageModelRequest outer com/bumptech/glide/RequestManager
.inner class OptionsApplier inner com/bumptech/glide/RequestManager$OptionsApplier outer com/bumptech/glide/RequestManager
.inner class private static RequestManagerConnectivityListener inner com/bumptech/glide/RequestManager$RequestManagerConnectivityListener outer com/bumptech/glide/RequestManager
.inner class public final VideoModelRequest inner com/bumptech/glide/RequestManager$VideoModelRequest outer com/bumptech/glide/RequestManager

.field private final 'context' Landroid/content/Context;

.field private final 'glide' Lcom/bumptech/glide/Glide;

.field private final 'lifecycle' Lcom/bumptech/glide/manager/Lifecycle;

.field private 'options' Lcom/bumptech/glide/RequestManager$DefaultOptions;

.field private final 'optionsApplier' Lcom/bumptech/glide/RequestManager$OptionsApplier;

.field private final 'requestTracker' Lcom/bumptech/glide/manager/RequestTracker;

.field private final 'treeNode' Lcom/bumptech/glide/manager/RequestManagerTreeNode;

.method public <init>(Landroid/content/Context;Lcom/bumptech/glide/manager/Lifecycle;Lcom/bumptech/glide/manager/RequestManagerTreeNode;)V
aload 0
aload 1
aload 2
aload 3
new com/bumptech/glide/manager/RequestTracker
dup
invokespecial com/bumptech/glide/manager/RequestTracker/<init>()V
new com/bumptech/glide/manager/ConnectivityMonitorFactory
dup
invokespecial com/bumptech/glide/manager/ConnectivityMonitorFactory/<init>()V
invokespecial com/bumptech/glide/RequestManager/<init>(Landroid/content/Context;Lcom/bumptech/glide/manager/Lifecycle;Lcom/bumptech/glide/manager/RequestManagerTreeNode;Lcom/bumptech/glide/manager/RequestTracker;Lcom/bumptech/glide/manager/ConnectivityMonitorFactory;)V
return
.limit locals 4
.limit stack 7
.end method

.method <init>(Landroid/content/Context;Lcom/bumptech/glide/manager/Lifecycle;Lcom/bumptech/glide/manager/RequestManagerTreeNode;Lcom/bumptech/glide/manager/RequestTracker;Lcom/bumptech/glide/manager/ConnectivityMonitorFactory;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
invokevirtual android/content/Context/getApplicationContext()Landroid/content/Context;
putfield com/bumptech/glide/RequestManager/context Landroid/content/Context;
aload 0
aload 2
putfield com/bumptech/glide/RequestManager/lifecycle Lcom/bumptech/glide/manager/Lifecycle;
aload 0
aload 3
putfield com/bumptech/glide/RequestManager/treeNode Lcom/bumptech/glide/manager/RequestManagerTreeNode;
aload 0
aload 4
putfield com/bumptech/glide/RequestManager/requestTracker Lcom/bumptech/glide/manager/RequestTracker;
aload 0
aload 1
invokestatic com/bumptech/glide/Glide/get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;
putfield com/bumptech/glide/RequestManager/glide Lcom/bumptech/glide/Glide;
aload 0
new com/bumptech/glide/RequestManager$OptionsApplier
dup
aload 0
invokespecial com/bumptech/glide/RequestManager$OptionsApplier/<init>(Lcom/bumptech/glide/RequestManager;)V
putfield com/bumptech/glide/RequestManager/optionsApplier Lcom/bumptech/glide/RequestManager$OptionsApplier;
aload 5
aload 1
new com/bumptech/glide/RequestManager$RequestManagerConnectivityListener
dup
aload 4
invokespecial com/bumptech/glide/RequestManager$RequestManagerConnectivityListener/<init>(Lcom/bumptech/glide/manager/RequestTracker;)V
invokevirtual com/bumptech/glide/manager/ConnectivityMonitorFactory/build(Landroid/content/Context;Lcom/bumptech/glide/manager/ConnectivityMonitor$ConnectivityListener;)Lcom/bumptech/glide/manager/ConnectivityMonitor;
astore 1
invokestatic com/bumptech/glide/util/Util/isOnBackgroundThread()Z
ifeq L0
new android/os/Handler
dup
invokestatic android/os/Looper/getMainLooper()Landroid/os/Looper;
invokespecial android/os/Handler/<init>(Landroid/os/Looper;)V
new com/bumptech/glide/RequestManager$1
dup
aload 0
aload 2
invokespecial com/bumptech/glide/RequestManager$1/<init>(Lcom/bumptech/glide/RequestManager;Lcom/bumptech/glide/manager/Lifecycle;)V
invokevirtual android/os/Handler/post(Ljava/lang/Runnable;)Z
pop
L1:
aload 2
aload 1
invokeinterface com/bumptech/glide/manager/Lifecycle/addListener(Lcom/bumptech/glide/manager/LifecycleListener;)V 1
return
L0:
aload 2
aload 0
invokeinterface com/bumptech/glide/manager/Lifecycle/addListener(Lcom/bumptech/glide/manager/LifecycleListener;)V 1
goto L1
.limit locals 6
.limit stack 5
.end method

.method static synthetic access$000(Ljava/lang/Object;)Ljava/lang/Class;
aload 0
invokestatic com/bumptech/glide/RequestManager/getSafeClass(Ljava/lang/Object;)Ljava/lang/Class;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/bumptech/glide/RequestManager;)Landroid/content/Context;
aload 0
getfield com/bumptech/glide/RequestManager/context Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/bumptech/glide/RequestManager;)Lcom/bumptech/glide/Glide;
aload 0
getfield com/bumptech/glide/RequestManager/glide Lcom/bumptech/glide/Glide;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/bumptech/glide/RequestManager;)Lcom/bumptech/glide/manager/RequestTracker;
aload 0
getfield com/bumptech/glide/RequestManager/requestTracker Lcom/bumptech/glide/manager/RequestTracker;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$400(Lcom/bumptech/glide/RequestManager;)Lcom/bumptech/glide/manager/Lifecycle;
aload 0
getfield com/bumptech/glide/RequestManager/lifecycle Lcom/bumptech/glide/manager/Lifecycle;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$500(Lcom/bumptech/glide/RequestManager;)Lcom/bumptech/glide/RequestManager$OptionsApplier;
aload 0
getfield com/bumptech/glide/RequestManager/optionsApplier Lcom/bumptech/glide/RequestManager$OptionsApplier;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$800(Lcom/bumptech/glide/RequestManager;)Lcom/bumptech/glide/RequestManager$DefaultOptions;
aload 0
getfield com/bumptech/glide/RequestManager/options Lcom/bumptech/glide/RequestManager$DefaultOptions;
areturn
.limit locals 1
.limit stack 1
.end method

.method private static getSafeClass(Ljava/lang/Object;)Ljava/lang/Class;
.signature "<T:Ljava/lang/Object;>(TT;)Ljava/lang/Class<TT;>;"
aload 0
ifnull L0
aload 0
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
areturn
L0:
aconst_null
areturn
.limit locals 1
.limit stack 1
.end method

.method private loadGeneric(Ljava/lang/Class;)Lcom/bumptech/glide/DrawableTypeRequest;
.signature "<T:Ljava/lang/Object;>(Ljava/lang/Class<TT;>;)Lcom/bumptech/glide/DrawableTypeRequest<TT;>;"
aload 1
aload 0
getfield com/bumptech/glide/RequestManager/context Landroid/content/Context;
invokestatic com/bumptech/glide/Glide/buildStreamModelLoader(Ljava/lang/Class;Landroid/content/Context;)Lcom/bumptech/glide/load/model/ModelLoader;
astore 2
aload 1
aload 0
getfield com/bumptech/glide/RequestManager/context Landroid/content/Context;
invokestatic com/bumptech/glide/Glide/buildFileDescriptorModelLoader(Ljava/lang/Class;Landroid/content/Context;)Lcom/bumptech/glide/load/model/ModelLoader;
astore 3
aload 1
ifnull L0
aload 2
ifnonnull L0
aload 3
ifnonnull L0
new java/lang/IllegalArgumentException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Unknown type "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
ldc ". You must provide a Model of a type for"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " which there is a registered ModelLoader, if you are using a custom model, you must first call"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " Glide#register with a ModelLoaderFactory for your custom model class"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 0
getfield com/bumptech/glide/RequestManager/optionsApplier Lcom/bumptech/glide/RequestManager$OptionsApplier;
new com/bumptech/glide/DrawableTypeRequest
dup
aload 1
aload 2
aload 3
aload 0
getfield com/bumptech/glide/RequestManager/context Landroid/content/Context;
aload 0
getfield com/bumptech/glide/RequestManager/glide Lcom/bumptech/glide/Glide;
aload 0
getfield com/bumptech/glide/RequestManager/requestTracker Lcom/bumptech/glide/manager/RequestTracker;
aload 0
getfield com/bumptech/glide/RequestManager/lifecycle Lcom/bumptech/glide/manager/Lifecycle;
aload 0
getfield com/bumptech/glide/RequestManager/optionsApplier Lcom/bumptech/glide/RequestManager$OptionsApplier;
invokespecial com/bumptech/glide/DrawableTypeRequest/<init>(Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoader;Lcom/bumptech/glide/load/model/ModelLoader;Landroid/content/Context;Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/manager/RequestTracker;Lcom/bumptech/glide/manager/Lifecycle;Lcom/bumptech/glide/RequestManager$OptionsApplier;)V
invokevirtual com/bumptech/glide/RequestManager$OptionsApplier/apply(Lcom/bumptech/glide/GenericRequestBuilder;)Lcom/bumptech/glide/GenericRequestBuilder;
checkcast com/bumptech/glide/DrawableTypeRequest
areturn
.limit locals 4
.limit stack 11
.end method

.method public from(Ljava/lang/Class;)Lcom/bumptech/glide/DrawableTypeRequest;
.signature "<T:Ljava/lang/Object;>(Ljava/lang/Class<TT;>;)Lcom/bumptech/glide/DrawableTypeRequest<TT;>;"
aload 0
aload 1
invokespecial com/bumptech/glide/RequestManager/loadGeneric(Ljava/lang/Class;)Lcom/bumptech/glide/DrawableTypeRequest;
areturn
.limit locals 2
.limit stack 2
.end method

.method public fromBytes()Lcom/bumptech/glide/DrawableTypeRequest;
.signature "()Lcom/bumptech/glide/DrawableTypeRequest<[B>;"
aload 0
ldc [B
invokespecial com/bumptech/glide/RequestManager/loadGeneric(Ljava/lang/Class;)Lcom/bumptech/glide/DrawableTypeRequest;
new com/bumptech/glide/signature/StringSignature
dup
invokestatic java/util/UUID/randomUUID()Ljava/util/UUID;
invokevirtual java/util/UUID/toString()Ljava/lang/String;
invokespecial com/bumptech/glide/signature/StringSignature/<init>(Ljava/lang/String;)V
invokevirtual com/bumptech/glide/DrawableTypeRequest/signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/DrawableRequestBuilder;
getstatic com/bumptech/glide/load/engine/DiskCacheStrategy/NONE Lcom/bumptech/glide/load/engine/DiskCacheStrategy;
invokevirtual com/bumptech/glide/DrawableRequestBuilder/diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;
iconst_1
invokevirtual com/bumptech/glide/DrawableRequestBuilder/skipMemoryCache(Z)Lcom/bumptech/glide/DrawableRequestBuilder;
checkcast com/bumptech/glide/DrawableTypeRequest
areturn
.limit locals 1
.limit stack 4
.end method

.method public fromFile()Lcom/bumptech/glide/DrawableTypeRequest;
.signature "()Lcom/bumptech/glide/DrawableTypeRequest<Ljava/io/File;>;"
aload 0
ldc java/io/File
invokespecial com/bumptech/glide/RequestManager/loadGeneric(Ljava/lang/Class;)Lcom/bumptech/glide/DrawableTypeRequest;
areturn
.limit locals 1
.limit stack 2
.end method

.method public fromMediaStore()Lcom/bumptech/glide/DrawableTypeRequest;
.signature "()Lcom/bumptech/glide/DrawableTypeRequest<Landroid/net/Uri;>;"
ldc android/net/Uri
aload 0
getfield com/bumptech/glide/RequestManager/context Landroid/content/Context;
invokestatic com/bumptech/glide/Glide/buildStreamModelLoader(Ljava/lang/Class;Landroid/content/Context;)Lcom/bumptech/glide/load/model/ModelLoader;
astore 1
new com/bumptech/glide/load/model/stream/MediaStoreStreamLoader
dup
aload 0
getfield com/bumptech/glide/RequestManager/context Landroid/content/Context;
aload 1
invokespecial com/bumptech/glide/load/model/stream/MediaStoreStreamLoader/<init>(Landroid/content/Context;Lcom/bumptech/glide/load/model/ModelLoader;)V
astore 1
ldc android/net/Uri
aload 0
getfield com/bumptech/glide/RequestManager/context Landroid/content/Context;
invokestatic com/bumptech/glide/Glide/buildFileDescriptorModelLoader(Ljava/lang/Class;Landroid/content/Context;)Lcom/bumptech/glide/load/model/ModelLoader;
astore 2
aload 0
getfield com/bumptech/glide/RequestManager/optionsApplier Lcom/bumptech/glide/RequestManager$OptionsApplier;
new com/bumptech/glide/DrawableTypeRequest
dup
ldc android/net/Uri
aload 1
aload 2
aload 0
getfield com/bumptech/glide/RequestManager/context Landroid/content/Context;
aload 0
getfield com/bumptech/glide/RequestManager/glide Lcom/bumptech/glide/Glide;
aload 0
getfield com/bumptech/glide/RequestManager/requestTracker Lcom/bumptech/glide/manager/RequestTracker;
aload 0
getfield com/bumptech/glide/RequestManager/lifecycle Lcom/bumptech/glide/manager/Lifecycle;
aload 0
getfield com/bumptech/glide/RequestManager/optionsApplier Lcom/bumptech/glide/RequestManager$OptionsApplier;
invokespecial com/bumptech/glide/DrawableTypeRequest/<init>(Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoader;Lcom/bumptech/glide/load/model/ModelLoader;Landroid/content/Context;Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/manager/RequestTracker;Lcom/bumptech/glide/manager/Lifecycle;Lcom/bumptech/glide/RequestManager$OptionsApplier;)V
invokevirtual com/bumptech/glide/RequestManager$OptionsApplier/apply(Lcom/bumptech/glide/GenericRequestBuilder;)Lcom/bumptech/glide/GenericRequestBuilder;
checkcast com/bumptech/glide/DrawableTypeRequest
areturn
.limit locals 3
.limit stack 11
.end method

.method public fromResource()Lcom/bumptech/glide/DrawableTypeRequest;
.signature "()Lcom/bumptech/glide/DrawableTypeRequest<Ljava/lang/Integer;>;"
aload 0
ldc java/lang/Integer
invokespecial com/bumptech/glide/RequestManager/loadGeneric(Ljava/lang/Class;)Lcom/bumptech/glide/DrawableTypeRequest;
aload 0
getfield com/bumptech/glide/RequestManager/context Landroid/content/Context;
invokestatic com/bumptech/glide/signature/ApplicationVersionSignature/obtain(Landroid/content/Context;)Lcom/bumptech/glide/load/Key;
invokevirtual com/bumptech/glide/DrawableTypeRequest/signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/DrawableRequestBuilder;
checkcast com/bumptech/glide/DrawableTypeRequest
areturn
.limit locals 1
.limit stack 2
.end method

.method public fromString()Lcom/bumptech/glide/DrawableTypeRequest;
.signature "()Lcom/bumptech/glide/DrawableTypeRequest<Ljava/lang/String;>;"
aload 0
ldc java/lang/String
invokespecial com/bumptech/glide/RequestManager/loadGeneric(Ljava/lang/Class;)Lcom/bumptech/glide/DrawableTypeRequest;
areturn
.limit locals 1
.limit stack 2
.end method

.method public fromUri()Lcom/bumptech/glide/DrawableTypeRequest;
.signature "()Lcom/bumptech/glide/DrawableTypeRequest<Landroid/net/Uri;>;"
aload 0
ldc android/net/Uri
invokespecial com/bumptech/glide/RequestManager/loadGeneric(Ljava/lang/Class;)Lcom/bumptech/glide/DrawableTypeRequest;
areturn
.limit locals 1
.limit stack 2
.end method

.method public fromUrl()Lcom/bumptech/glide/DrawableTypeRequest;
.signature "()Lcom/bumptech/glide/DrawableTypeRequest<Ljava/net/URL;>;"
.annotation visible Ljava/lang/Deprecated;
.end annotation
aload 0
ldc java/net/URL
invokespecial com/bumptech/glide/RequestManager/loadGeneric(Ljava/lang/Class;)Lcom/bumptech/glide/DrawableTypeRequest;
areturn
.limit locals 1
.limit stack 2
.end method

.method public isPaused()Z
invokestatic com/bumptech/glide/util/Util/assertMainThread()V
aload 0
getfield com/bumptech/glide/RequestManager/requestTracker Lcom/bumptech/glide/manager/RequestTracker;
invokevirtual com/bumptech/glide/manager/RequestTracker/isPaused()Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public load(Landroid/net/Uri;)Lcom/bumptech/glide/DrawableTypeRequest;
.signature "(Landroid/net/Uri;)Lcom/bumptech/glide/DrawableTypeRequest<Landroid/net/Uri;>;"
aload 0
invokevirtual com/bumptech/glide/RequestManager/fromUri()Lcom/bumptech/glide/DrawableTypeRequest;
aload 1
invokevirtual com/bumptech/glide/DrawableTypeRequest/load(Ljava/lang/Object;)Lcom/bumptech/glide/DrawableRequestBuilder;
checkcast com/bumptech/glide/DrawableTypeRequest
areturn
.limit locals 2
.limit stack 2
.end method

.method public load(Ljava/io/File;)Lcom/bumptech/glide/DrawableTypeRequest;
.signature "(Ljava/io/File;)Lcom/bumptech/glide/DrawableTypeRequest<Ljava/io/File;>;"
aload 0
invokevirtual com/bumptech/glide/RequestManager/fromFile()Lcom/bumptech/glide/DrawableTypeRequest;
aload 1
invokevirtual com/bumptech/glide/DrawableTypeRequest/load(Ljava/lang/Object;)Lcom/bumptech/glide/DrawableRequestBuilder;
checkcast com/bumptech/glide/DrawableTypeRequest
areturn
.limit locals 2
.limit stack 2
.end method

.method public load(Ljava/lang/Integer;)Lcom/bumptech/glide/DrawableTypeRequest;
.signature "(Ljava/lang/Integer;)Lcom/bumptech/glide/DrawableTypeRequest<Ljava/lang/Integer;>;"
aload 0
invokevirtual com/bumptech/glide/RequestManager/fromResource()Lcom/bumptech/glide/DrawableTypeRequest;
aload 1
invokevirtual com/bumptech/glide/DrawableTypeRequest/load(Ljava/lang/Object;)Lcom/bumptech/glide/DrawableRequestBuilder;
checkcast com/bumptech/glide/DrawableTypeRequest
areturn
.limit locals 2
.limit stack 2
.end method

.method public load(Ljava/lang/Object;)Lcom/bumptech/glide/DrawableTypeRequest;
.signature "<T:Ljava/lang/Object;>(TT;)Lcom/bumptech/glide/DrawableTypeRequest<TT;>;"
aload 0
aload 1
invokestatic com/bumptech/glide/RequestManager/getSafeClass(Ljava/lang/Object;)Ljava/lang/Class;
invokespecial com/bumptech/glide/RequestManager/loadGeneric(Ljava/lang/Class;)Lcom/bumptech/glide/DrawableTypeRequest;
aload 1
invokevirtual com/bumptech/glide/DrawableTypeRequest/load(Ljava/lang/Object;)Lcom/bumptech/glide/DrawableRequestBuilder;
checkcast com/bumptech/glide/DrawableTypeRequest
areturn
.limit locals 2
.limit stack 2
.end method

.method public load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;
.signature "(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest<Ljava/lang/String;>;"
aload 0
invokevirtual com/bumptech/glide/RequestManager/fromString()Lcom/bumptech/glide/DrawableTypeRequest;
aload 1
invokevirtual com/bumptech/glide/DrawableTypeRequest/load(Ljava/lang/Object;)Lcom/bumptech/glide/DrawableRequestBuilder;
checkcast com/bumptech/glide/DrawableTypeRequest
areturn
.limit locals 2
.limit stack 2
.end method

.method public load(Ljava/net/URL;)Lcom/bumptech/glide/DrawableTypeRequest;
.signature "(Ljava/net/URL;)Lcom/bumptech/glide/DrawableTypeRequest<Ljava/net/URL;>;"
.annotation visible Ljava/lang/Deprecated;
.end annotation
aload 0
invokevirtual com/bumptech/glide/RequestManager/fromUrl()Lcom/bumptech/glide/DrawableTypeRequest;
aload 1
invokevirtual com/bumptech/glide/DrawableTypeRequest/load(Ljava/lang/Object;)Lcom/bumptech/glide/DrawableRequestBuilder;
checkcast com/bumptech/glide/DrawableTypeRequest
areturn
.limit locals 2
.limit stack 2
.end method

.method public load([B)Lcom/bumptech/glide/DrawableTypeRequest;
.signature "([B)Lcom/bumptech/glide/DrawableTypeRequest<[B>;"
aload 0
invokevirtual com/bumptech/glide/RequestManager/fromBytes()Lcom/bumptech/glide/DrawableTypeRequest;
aload 1
invokevirtual com/bumptech/glide/DrawableTypeRequest/load(Ljava/lang/Object;)Lcom/bumptech/glide/DrawableRequestBuilder;
checkcast com/bumptech/glide/DrawableTypeRequest
areturn
.limit locals 2
.limit stack 2
.end method

.method public load([BLjava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;
.signature "([BLjava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest<[B>;"
.annotation visible Ljava/lang/Deprecated;
.end annotation
aload 0
aload 1
invokevirtual com/bumptech/glide/RequestManager/load([B)Lcom/bumptech/glide/DrawableTypeRequest;
new com/bumptech/glide/signature/StringSignature
dup
aload 2
invokespecial com/bumptech/glide/signature/StringSignature/<init>(Ljava/lang/String;)V
invokevirtual com/bumptech/glide/DrawableTypeRequest/signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/DrawableRequestBuilder;
checkcast com/bumptech/glide/DrawableTypeRequest
areturn
.limit locals 3
.limit stack 4
.end method

.method public loadFromMediaStore(Landroid/net/Uri;)Lcom/bumptech/glide/DrawableTypeRequest;
.signature "(Landroid/net/Uri;)Lcom/bumptech/glide/DrawableTypeRequest<Landroid/net/Uri;>;"
aload 0
invokevirtual com/bumptech/glide/RequestManager/fromMediaStore()Lcom/bumptech/glide/DrawableTypeRequest;
aload 1
invokevirtual com/bumptech/glide/DrawableTypeRequest/load(Ljava/lang/Object;)Lcom/bumptech/glide/DrawableRequestBuilder;
checkcast com/bumptech/glide/DrawableTypeRequest
areturn
.limit locals 2
.limit stack 2
.end method

.method public loadFromMediaStore(Landroid/net/Uri;Ljava/lang/String;JI)Lcom/bumptech/glide/DrawableTypeRequest;
.signature "(Landroid/net/Uri;Ljava/lang/String;JI)Lcom/bumptech/glide/DrawableTypeRequest<Landroid/net/Uri;>;"
.annotation visible Ljava/lang/Deprecated;
.end annotation
new com/bumptech/glide/signature/MediaStoreSignature
dup
aload 2
lload 3
iload 5
invokespecial com/bumptech/glide/signature/MediaStoreSignature/<init>(Ljava/lang/String;JI)V
astore 2
aload 0
aload 1
invokevirtual com/bumptech/glide/RequestManager/loadFromMediaStore(Landroid/net/Uri;)Lcom/bumptech/glide/DrawableTypeRequest;
aload 2
invokevirtual com/bumptech/glide/DrawableTypeRequest/signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/DrawableRequestBuilder;
checkcast com/bumptech/glide/DrawableTypeRequest
areturn
.limit locals 6
.limit stack 6
.end method

.method public onDestroy()V
aload 0
getfield com/bumptech/glide/RequestManager/requestTracker Lcom/bumptech/glide/manager/RequestTracker;
invokevirtual com/bumptech/glide/manager/RequestTracker/clearRequests()V
return
.limit locals 1
.limit stack 1
.end method

.method public onLowMemory()V
aload 0
getfield com/bumptech/glide/RequestManager/glide Lcom/bumptech/glide/Glide;
invokevirtual com/bumptech/glide/Glide/clearMemory()V
return
.limit locals 1
.limit stack 1
.end method

.method public onStart()V
aload 0
invokevirtual com/bumptech/glide/RequestManager/resumeRequests()V
return
.limit locals 1
.limit stack 1
.end method

.method public onStop()V
aload 0
invokevirtual com/bumptech/glide/RequestManager/pauseRequests()V
return
.limit locals 1
.limit stack 1
.end method

.method public onTrimMemory(I)V
aload 0
getfield com/bumptech/glide/RequestManager/glide Lcom/bumptech/glide/Glide;
iload 1
invokevirtual com/bumptech/glide/Glide/trimMemory(I)V
return
.limit locals 2
.limit stack 2
.end method

.method public pauseRequests()V
invokestatic com/bumptech/glide/util/Util/assertMainThread()V
aload 0
getfield com/bumptech/glide/RequestManager/requestTracker Lcom/bumptech/glide/manager/RequestTracker;
invokevirtual com/bumptech/glide/manager/RequestTracker/pauseRequests()V
return
.limit locals 1
.limit stack 1
.end method

.method public pauseRequestsRecursive()V
invokestatic com/bumptech/glide/util/Util/assertMainThread()V
aload 0
invokevirtual com/bumptech/glide/RequestManager/pauseRequests()V
aload 0
getfield com/bumptech/glide/RequestManager/treeNode Lcom/bumptech/glide/manager/RequestManagerTreeNode;
invokeinterface com/bumptech/glide/manager/RequestManagerTreeNode/getDescendants()Ljava/util/Set; 0
invokeinterface java/util/Set/iterator()Ljava/util/Iterator; 0
astore 1
L0:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/bumptech/glide/RequestManager
invokevirtual com/bumptech/glide/RequestManager/pauseRequests()V
goto L0
L1:
return
.limit locals 2
.limit stack 1
.end method

.method public resumeRequests()V
invokestatic com/bumptech/glide/util/Util/assertMainThread()V
aload 0
getfield com/bumptech/glide/RequestManager/requestTracker Lcom/bumptech/glide/manager/RequestTracker;
invokevirtual com/bumptech/glide/manager/RequestTracker/resumeRequests()V
return
.limit locals 1
.limit stack 1
.end method

.method public resumeRequestsRecursive()V
invokestatic com/bumptech/glide/util/Util/assertMainThread()V
aload 0
invokevirtual com/bumptech/glide/RequestManager/resumeRequests()V
aload 0
getfield com/bumptech/glide/RequestManager/treeNode Lcom/bumptech/glide/manager/RequestManagerTreeNode;
invokeinterface com/bumptech/glide/manager/RequestManagerTreeNode/getDescendants()Ljava/util/Set; 0
invokeinterface java/util/Set/iterator()Ljava/util/Iterator; 0
astore 1
L0:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/bumptech/glide/RequestManager
invokevirtual com/bumptech/glide/RequestManager/resumeRequests()V
goto L0
L1:
return
.limit locals 2
.limit stack 1
.end method

.method public setDefaultOptions(Lcom/bumptech/glide/RequestManager$DefaultOptions;)V
aload 0
aload 1
putfield com/bumptech/glide/RequestManager/options Lcom/bumptech/glide/RequestManager$DefaultOptions;
return
.limit locals 2
.limit stack 2
.end method

.method public using(Lcom/bumptech/glide/load/model/ModelLoader;Ljava/lang/Class;)Lcom/bumptech/glide/RequestManager$GenericModelRequest;
.signature "<A:Ljava/lang/Object;T:Ljava/lang/Object;>(Lcom/bumptech/glide/load/model/ModelLoader<TA;TT;>;Ljava/lang/Class<TT;>;)Lcom/bumptech/glide/RequestManager$GenericModelRequest<TA;TT;>;"
new com/bumptech/glide/RequestManager$GenericModelRequest
dup
aload 0
aload 1
aload 2
invokespecial com/bumptech/glide/RequestManager$GenericModelRequest/<init>(Lcom/bumptech/glide/RequestManager;Lcom/bumptech/glide/load/model/ModelLoader;Ljava/lang/Class;)V
areturn
.limit locals 3
.limit stack 5
.end method

.method public using(Lcom/bumptech/glide/load/model/stream/StreamByteArrayLoader;)Lcom/bumptech/glide/RequestManager$ImageModelRequest;
.signature "(Lcom/bumptech/glide/load/model/stream/StreamByteArrayLoader;)Lcom/bumptech/glide/RequestManager$ImageModelRequest<[B>;"
new com/bumptech/glide/RequestManager$ImageModelRequest
dup
aload 0
aload 1
invokespecial com/bumptech/glide/RequestManager$ImageModelRequest/<init>(Lcom/bumptech/glide/RequestManager;Lcom/bumptech/glide/load/model/ModelLoader;)V
areturn
.limit locals 2
.limit stack 4
.end method

.method public using(Lcom/bumptech/glide/load/model/stream/StreamModelLoader;)Lcom/bumptech/glide/RequestManager$ImageModelRequest;
.signature "<T:Ljava/lang/Object;>(Lcom/bumptech/glide/load/model/stream/StreamModelLoader<TT;>;)Lcom/bumptech/glide/RequestManager$ImageModelRequest<TT;>;"
new com/bumptech/glide/RequestManager$ImageModelRequest
dup
aload 0
aload 1
invokespecial com/bumptech/glide/RequestManager$ImageModelRequest/<init>(Lcom/bumptech/glide/RequestManager;Lcom/bumptech/glide/load/model/ModelLoader;)V
areturn
.limit locals 2
.limit stack 4
.end method

.method public using(Lcom/bumptech/glide/load/model/file_descriptor/FileDescriptorModelLoader;)Lcom/bumptech/glide/RequestManager$VideoModelRequest;
.signature "<T:Ljava/lang/Object;>(Lcom/bumptech/glide/load/model/file_descriptor/FileDescriptorModelLoader<TT;>;)Lcom/bumptech/glide/RequestManager$VideoModelRequest<TT;>;"
new com/bumptech/glide/RequestManager$VideoModelRequest
dup
aload 0
aload 1
invokespecial com/bumptech/glide/RequestManager$VideoModelRequest/<init>(Lcom/bumptech/glide/RequestManager;Lcom/bumptech/glide/load/model/ModelLoader;)V
areturn
.limit locals 2
.limit stack 4
.end method
