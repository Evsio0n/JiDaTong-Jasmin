.bytecode 50.0
.class public synchronized com/bumptech/glide/load/model/GenericLoaderFactory
.super java/lang/Object
.inner class static final inner com/bumptech/glide/load/model/GenericLoaderFactory$1

.field private static final 'NULL_MODEL_LOADER' Lcom/bumptech/glide/load/model/ModelLoader;

.field private final 'cachedModelLoaders' Ljava/util/Map; signature "Ljava/util/Map<Ljava/lang/Class;Ljava/util/Map<Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoader;>;>;"

.field private final 'context' Landroid/content/Context;

.field private final 'modelClassToResourceFactories' Ljava/util/Map; signature "Ljava/util/Map<Ljava/lang/Class;Ljava/util/Map<Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;>;>;"

.method static <clinit>()V
new com/bumptech/glide/load/model/GenericLoaderFactory$1
dup
invokespecial com/bumptech/glide/load/model/GenericLoaderFactory$1/<init>()V
putstatic com/bumptech/glide/load/model/GenericLoaderFactory/NULL_MODEL_LOADER Lcom/bumptech/glide/load/model/ModelLoader;
return
.limit locals 0
.limit stack 2
.end method

.method public <init>(Landroid/content/Context;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
putfield com/bumptech/glide/load/model/GenericLoaderFactory/modelClassToResourceFactories Ljava/util/Map;
aload 0
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
putfield com/bumptech/glide/load/model/GenericLoaderFactory/cachedModelLoaders Ljava/util/Map;
aload 0
aload 1
invokevirtual android/content/Context/getApplicationContext()Landroid/content/Context;
putfield com/bumptech/glide/load/model/GenericLoaderFactory/context Landroid/content/Context;
return
.limit locals 2
.limit stack 3
.end method

.method private cacheModelLoader(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoader;)V
.signature "<T:Ljava/lang/Object;Y:Ljava/lang/Object;>(Ljava/lang/Class<TT;>;Ljava/lang/Class<TY;>;Lcom/bumptech/glide/load/model/ModelLoader<TT;TY;>;)V"
aload 0
getfield com/bumptech/glide/load/model/GenericLoaderFactory/cachedModelLoaders Ljava/util/Map;
aload 1
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast java/util/Map
astore 5
aload 5
astore 4
aload 5
ifnonnull L0
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
astore 4
aload 0
getfield com/bumptech/glide/load/model/GenericLoaderFactory/cachedModelLoaders Ljava/util/Map;
aload 1
aload 4
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
L0:
aload 4
aload 2
aload 3
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
return
.limit locals 6
.limit stack 3
.end method

.method private cacheNullLoader(Ljava/lang/Class;Ljava/lang/Class;)V
.signature "<T:Ljava/lang/Object;Y:Ljava/lang/Object;>(Ljava/lang/Class<TT;>;Ljava/lang/Class<TY;>;)V"
aload 0
aload 1
aload 2
getstatic com/bumptech/glide/load/model/GenericLoaderFactory/NULL_MODEL_LOADER Lcom/bumptech/glide/load/model/ModelLoader;
invokespecial com/bumptech/glide/load/model/GenericLoaderFactory/cacheModelLoader(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoader;)V
return
.limit locals 3
.limit stack 4
.end method

.method private getCachedLoader(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/model/ModelLoader;
.signature "<T:Ljava/lang/Object;Y:Ljava/lang/Object;>(Ljava/lang/Class<TT;>;Ljava/lang/Class<TY;>;)Lcom/bumptech/glide/load/model/ModelLoader<TT;TY;>;"
aload 0
getfield com/bumptech/glide/load/model/GenericLoaderFactory/cachedModelLoaders Ljava/util/Map;
aload 1
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast java/util/Map
astore 3
aconst_null
astore 1
aload 3
ifnull L0
aload 3
aload 2
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast com/bumptech/glide/load/model/ModelLoader
astore 1
L0:
aload 1
areturn
.limit locals 4
.limit stack 2
.end method

.method private getFactory(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/model/ModelLoaderFactory;
.signature "<T:Ljava/lang/Object;Y:Ljava/lang/Object;>(Ljava/lang/Class<TT;>;Ljava/lang/Class<TY;>;)Lcom/bumptech/glide/load/model/ModelLoaderFactory<TT;TY;>;"
aload 0
getfield com/bumptech/glide/load/model/GenericLoaderFactory/modelClassToResourceFactories Ljava/util/Map;
aload 1
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast java/util/Map
astore 4
aconst_null
astore 3
aload 4
ifnull L0
aload 4
aload 2
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast com/bumptech/glide/load/model/ModelLoaderFactory
astore 3
L0:
aload 3
astore 4
aload 3
ifnonnull L1
aload 0
getfield com/bumptech/glide/load/model/GenericLoaderFactory/modelClassToResourceFactories Ljava/util/Map;
invokeinterface java/util/Map/keySet()Ljava/util/Set; 0
invokeinterface java/util/Set/iterator()Ljava/util/Iterator; 0
astore 5
L2:
aload 3
astore 4
aload 5
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 5
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/lang/Class
astore 4
aload 4
aload 1
invokevirtual java/lang/Class/isAssignableFrom(Ljava/lang/Class;)Z
ifeq L2
aload 0
getfield com/bumptech/glide/load/model/GenericLoaderFactory/modelClassToResourceFactories Ljava/util/Map;
aload 4
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast java/util/Map
astore 4
aload 4
ifnull L2
aload 4
aload 2
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast com/bumptech/glide/load/model/ModelLoaderFactory
astore 4
aload 4
astore 3
aload 4
ifnull L2
L1:
aload 4
areturn
.limit locals 6
.limit stack 2
.end method

.method public buildModelLoader(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/model/ModelLoader;
.signature "<T:Ljava/lang/Object;Y:Ljava/lang/Object;>(Ljava/lang/Class<TT;>;Ljava/lang/Class<TY;>;)Lcom/bumptech/glide/load/model/ModelLoader<TT;TY;>;"
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
.catch all from L5 to L6 using L2
.catch all from L7 to L8 using L2
.catch all from L9 to L10 using L2
aload 0
monitorenter
L0:
aload 0
aload 1
aload 2
invokespecial com/bumptech/glide/load/model/GenericLoaderFactory/getCachedLoader(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/model/ModelLoader;
astore 4
L1:
aload 4
ifnull L5
L3:
getstatic com/bumptech/glide/load/model/GenericLoaderFactory/NULL_MODEL_LOADER Lcom/bumptech/glide/load/model/ModelLoader;
aload 4
invokevirtual java/lang/Object/equals(Ljava/lang/Object;)Z
istore 3
L4:
iload 3
ifeq L11
aconst_null
astore 1
L12:
aload 0
monitorexit
aload 1
areturn
L11:
aload 4
astore 1
goto L12
L5:
aload 0
aload 1
aload 2
invokespecial com/bumptech/glide/load/model/GenericLoaderFactory/getFactory(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/model/ModelLoaderFactory;
astore 5
L6:
aload 5
ifnull L9
L7:
aload 5
aload 0
getfield com/bumptech/glide/load/model/GenericLoaderFactory/context Landroid/content/Context;
aload 0
invokeinterface com/bumptech/glide/load/model/ModelLoaderFactory/build(Landroid/content/Context;Lcom/bumptech/glide/load/model/GenericLoaderFactory;)Lcom/bumptech/glide/load/model/ModelLoader; 2
astore 4
aload 0
aload 1
aload 2
aload 4
invokespecial com/bumptech/glide/load/model/GenericLoaderFactory/cacheModelLoader(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoader;)V
L8:
aload 4
astore 1
goto L13
L9:
aload 0
aload 1
aload 2
invokespecial com/bumptech/glide/load/model/GenericLoaderFactory/cacheNullLoader(Ljava/lang/Class;Ljava/lang/Class;)V
L10:
aload 4
astore 1
goto L13
L2:
astore 1
aload 0
monitorexit
aload 1
athrow
L13:
goto L12
.limit locals 6
.limit stack 4
.end method

.method public buildModelLoader(Ljava/lang/Class;Ljava/lang/Class;Landroid/content/Context;)Lcom/bumptech/glide/load/model/ModelLoader;
.signature "<T:Ljava/lang/Object;Y:Ljava/lang/Object;>(Ljava/lang/Class<TT;>;Ljava/lang/Class<TY;>;Landroid/content/Context;)Lcom/bumptech/glide/load/model/ModelLoader<TT;TY;>;"
.annotation visible Ljava/lang/Deprecated;
.end annotation
.catch all from L0 to L1 using L2
aload 0
monitorenter
L0:
aload 0
aload 1
aload 2
invokevirtual com/bumptech/glide/load/model/GenericLoaderFactory/buildModelLoader(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/model/ModelLoader;
astore 1
L1:
aload 0
monitorexit
aload 1
areturn
L2:
astore 1
aload 0
monitorexit
aload 1
athrow
.limit locals 4
.limit stack 3
.end method

.method public register(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/load/model/ModelLoaderFactory;
.signature "<T:Ljava/lang/Object;Y:Ljava/lang/Object;>(Ljava/lang/Class<TT;>;Ljava/lang/Class<TY;>;Lcom/bumptech/glide/load/model/ModelLoaderFactory<TT;TY;>;)Lcom/bumptech/glide/load/model/ModelLoaderFactory<TT;TY;>;"
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
.catch all from L4 to L5 using L2
.catch all from L6 to L7 using L2
.catch all from L8 to L9 using L2
aload 0
monitorenter
L0:
aload 0
getfield com/bumptech/glide/load/model/GenericLoaderFactory/cachedModelLoaders Ljava/util/Map;
invokeinterface java/util/Map/clear()V 0
aload 0
getfield com/bumptech/glide/load/model/GenericLoaderFactory/modelClassToResourceFactories Ljava/util/Map;
aload 1
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast java/util/Map
astore 6
L1:
aload 6
astore 5
aload 6
ifnonnull L4
L3:
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
astore 5
aload 0
getfield com/bumptech/glide/load/model/GenericLoaderFactory/modelClassToResourceFactories Ljava/util/Map;
aload 1
aload 5
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
L4:
aload 5
aload 2
aload 3
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
checkcast com/bumptech/glide/load/model/ModelLoaderFactory
astore 2
L5:
aload 2
astore 1
aload 2
ifnull L10
L6:
aload 0
getfield com/bumptech/glide/load/model/GenericLoaderFactory/modelClassToResourceFactories Ljava/util/Map;
invokeinterface java/util/Map/values()Ljava/util/Collection; 0
invokeinterface java/util/Collection/iterator()Ljava/util/Iterator; 0
astore 3
L7:
aload 2
astore 1
L8:
aload 3
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L10
aload 3
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/util/Map
aload 2
invokeinterface java/util/Map/containsValue(Ljava/lang/Object;)Z 1
istore 4
L9:
iload 4
ifeq L7
aconst_null
astore 1
L10:
aload 0
monitorexit
aload 1
areturn
L2:
astore 1
aload 0
monitorexit
aload 1
athrow
.limit locals 7
.limit stack 3
.end method

.method public unregister(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/model/ModelLoaderFactory;
.signature "<T:Ljava/lang/Object;Y:Ljava/lang/Object;>(Ljava/lang/Class<TT;>;Ljava/lang/Class<TY;>;)Lcom/bumptech/glide/load/model/ModelLoaderFactory<TT;TY;>;"
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
.catch all from L5 to L6 using L2
aload 0
monitorenter
L0:
aload 0
getfield com/bumptech/glide/load/model/GenericLoaderFactory/cachedModelLoaders Ljava/util/Map;
invokeinterface java/util/Map/clear()V 0
L1:
aconst_null
astore 3
L3:
aload 0
getfield com/bumptech/glide/load/model/GenericLoaderFactory/modelClassToResourceFactories Ljava/util/Map;
aload 1
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast java/util/Map
astore 4
L4:
aload 3
astore 1
aload 4
ifnull L6
L5:
aload 4
aload 2
invokeinterface java/util/Map/remove(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast com/bumptech/glide/load/model/ModelLoaderFactory
astore 1
L6:
aload 0
monitorexit
aload 1
areturn
L2:
astore 1
aload 0
monitorexit
aload 1
athrow
.limit locals 5
.limit stack 2
.end method
