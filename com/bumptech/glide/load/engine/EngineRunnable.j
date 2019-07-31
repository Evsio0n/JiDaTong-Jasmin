.bytecode 50.0
.class synchronized com/bumptech/glide/load/engine/EngineRunnable
.super java/lang/Object
.implements java/lang/Runnable
.implements com/bumptech/glide/load/engine/executor/Prioritized
.inner class static abstract interface EngineRunnableManager inner com/bumptech/glide/load/engine/EngineRunnable$EngineRunnableManager outer com/bumptech/glide/load/engine/EngineRunnable
.inner class private static final enum Stage inner com/bumptech/glide/load/engine/EngineRunnable$Stage outer com/bumptech/glide/load/engine/EngineRunnable

.field private static final 'TAG' Ljava/lang/String; = "EngineRunnable"

.field private final 'decodeJob' Lcom/bumptech/glide/load/engine/DecodeJob; signature "Lcom/bumptech/glide/load/engine/DecodeJob<***>;"

.field private volatile 'isCancelled' Z

.field private final 'manager' Lcom/bumptech/glide/load/engine/EngineRunnable$EngineRunnableManager;

.field private final 'priority' Lcom/bumptech/glide/Priority;

.field private 'stage' Lcom/bumptech/glide/load/engine/EngineRunnable$Stage;

.method public <init>(Lcom/bumptech/glide/load/engine/EngineRunnable$EngineRunnableManager;Lcom/bumptech/glide/load/engine/DecodeJob;Lcom/bumptech/glide/Priority;)V
.signature "(Lcom/bumptech/glide/load/engine/EngineRunnable$EngineRunnableManager;Lcom/bumptech/glide/load/engine/DecodeJob<***>;Lcom/bumptech/glide/Priority;)V"
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/bumptech/glide/load/engine/EngineRunnable/manager Lcom/bumptech/glide/load/engine/EngineRunnable$EngineRunnableManager;
aload 0
aload 2
putfield com/bumptech/glide/load/engine/EngineRunnable/decodeJob Lcom/bumptech/glide/load/engine/DecodeJob;
aload 0
getstatic com/bumptech/glide/load/engine/EngineRunnable$Stage/CACHE Lcom/bumptech/glide/load/engine/EngineRunnable$Stage;
putfield com/bumptech/glide/load/engine/EngineRunnable/stage Lcom/bumptech/glide/load/engine/EngineRunnable$Stage;
aload 0
aload 3
putfield com/bumptech/glide/load/engine/EngineRunnable/priority Lcom/bumptech/glide/Priority;
return
.limit locals 4
.limit stack 2
.end method

.method private decode()Lcom/bumptech/glide/load/engine/Resource;
.signature "()Lcom/bumptech/glide/load/engine/Resource<*>;"
.throws java/lang/Exception
aload 0
invokespecial com/bumptech/glide/load/engine/EngineRunnable/isDecodingFromCache()Z
ifeq L0
aload 0
invokespecial com/bumptech/glide/load/engine/EngineRunnable/decodeFromCache()Lcom/bumptech/glide/load/engine/Resource;
areturn
L0:
aload 0
invokespecial com/bumptech/glide/load/engine/EngineRunnable/decodeFromSource()Lcom/bumptech/glide/load/engine/Resource;
areturn
.limit locals 1
.limit stack 1
.end method

.method private decodeFromCache()Lcom/bumptech/glide/load/engine/Resource;
.signature "()Lcom/bumptech/glide/load/engine/Resource<*>;"
.throws java/lang/Exception
.catch java/lang/Exception from L0 to L1 using L2
aconst_null
astore 2
L0:
aload 0
getfield com/bumptech/glide/load/engine/EngineRunnable/decodeJob Lcom/bumptech/glide/load/engine/DecodeJob;
invokevirtual com/bumptech/glide/load/engine/DecodeJob/decodeResultFromCache()Lcom/bumptech/glide/load/engine/Resource;
astore 1
L1:
aload 1
astore 2
aload 1
ifnonnull L3
aload 0
getfield com/bumptech/glide/load/engine/EngineRunnable/decodeJob Lcom/bumptech/glide/load/engine/DecodeJob;
invokevirtual com/bumptech/glide/load/engine/DecodeJob/decodeSourceFromCache()Lcom/bumptech/glide/load/engine/Resource;
astore 2
L3:
aload 2
areturn
L2:
astore 3
aload 2
astore 1
ldc "EngineRunnable"
iconst_3
invokestatic android/util/Log/isLoggable(Ljava/lang/String;I)Z
ifeq L1
ldc "EngineRunnable"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Exception decoding result from cache: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 2
astore 1
goto L1
.limit locals 4
.limit stack 3
.end method

.method private decodeFromSource()Lcom/bumptech/glide/load/engine/Resource;
.signature "()Lcom/bumptech/glide/load/engine/Resource<*>;"
.throws java/lang/Exception
aload 0
getfield com/bumptech/glide/load/engine/EngineRunnable/decodeJob Lcom/bumptech/glide/load/engine/DecodeJob;
invokevirtual com/bumptech/glide/load/engine/DecodeJob/decodeFromSource()Lcom/bumptech/glide/load/engine/Resource;
areturn
.limit locals 1
.limit stack 1
.end method

.method private isDecodingFromCache()Z
aload 0
getfield com/bumptech/glide/load/engine/EngineRunnable/stage Lcom/bumptech/glide/load/engine/EngineRunnable$Stage;
getstatic com/bumptech/glide/load/engine/EngineRunnable$Stage/CACHE Lcom/bumptech/glide/load/engine/EngineRunnable$Stage;
if_acmpne L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 2
.end method

.method private onLoadComplete(Lcom/bumptech/glide/load/engine/Resource;)V
aload 0
getfield com/bumptech/glide/load/engine/EngineRunnable/manager Lcom/bumptech/glide/load/engine/EngineRunnable$EngineRunnableManager;
aload 1
invokeinterface com/bumptech/glide/load/engine/EngineRunnable$EngineRunnableManager/onResourceReady(Lcom/bumptech/glide/load/engine/Resource;)V 1
return
.limit locals 2
.limit stack 2
.end method

.method private onLoadFailed(Ljava/lang/Exception;)V
aload 0
invokespecial com/bumptech/glide/load/engine/EngineRunnable/isDecodingFromCache()Z
ifeq L0
aload 0
getstatic com/bumptech/glide/load/engine/EngineRunnable$Stage/SOURCE Lcom/bumptech/glide/load/engine/EngineRunnable$Stage;
putfield com/bumptech/glide/load/engine/EngineRunnable/stage Lcom/bumptech/glide/load/engine/EngineRunnable$Stage;
aload 0
getfield com/bumptech/glide/load/engine/EngineRunnable/manager Lcom/bumptech/glide/load/engine/EngineRunnable$EngineRunnableManager;
aload 0
invokeinterface com/bumptech/glide/load/engine/EngineRunnable$EngineRunnableManager/submitForSource(Lcom/bumptech/glide/load/engine/EngineRunnable;)V 1
return
L0:
aload 0
getfield com/bumptech/glide/load/engine/EngineRunnable/manager Lcom/bumptech/glide/load/engine/EngineRunnable$EngineRunnableManager;
aload 1
invokeinterface com/bumptech/glide/load/engine/EngineRunnable$EngineRunnableManager/onException(Ljava/lang/Exception;)V 1
return
.limit locals 2
.limit stack 2
.end method

.method public cancel()V
aload 0
iconst_1
putfield com/bumptech/glide/load/engine/EngineRunnable/isCancelled Z
aload 0
getfield com/bumptech/glide/load/engine/EngineRunnable/decodeJob Lcom/bumptech/glide/load/engine/DecodeJob;
invokevirtual com/bumptech/glide/load/engine/DecodeJob/cancel()V
return
.limit locals 1
.limit stack 2
.end method

.method public getPriority()I
aload 0
getfield com/bumptech/glide/load/engine/EngineRunnable/priority Lcom/bumptech/glide/Priority;
invokevirtual com/bumptech/glide/Priority/ordinal()I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public run()V
.catch java/lang/Exception from L0 to L1 using L2
aload 0
getfield com/bumptech/glide/load/engine/EngineRunnable/isCancelled Z
ifeq L3
L4:
return
L3:
aconst_null
astore 1
aconst_null
astore 2
L0:
aload 0
invokespecial com/bumptech/glide/load/engine/EngineRunnable/decode()Lcom/bumptech/glide/load/engine/Resource;
astore 3
L1:
aload 3
astore 2
L5:
aload 0
getfield com/bumptech/glide/load/engine/EngineRunnable/isCancelled Z
ifeq L6
aload 2
ifnull L4
aload 2
invokeinterface com/bumptech/glide/load/engine/Resource/recycle()V 0
return
L2:
astore 1
ldc "EngineRunnable"
iconst_2
invokestatic android/util/Log/isLoggable(Ljava/lang/String;I)Z
ifeq L7
ldc "EngineRunnable"
ldc "Exception decoding"
aload 1
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
pop
L7:
goto L5
L6:
aload 2
ifnonnull L8
aload 0
aload 1
invokespecial com/bumptech/glide/load/engine/EngineRunnable/onLoadFailed(Ljava/lang/Exception;)V
return
L8:
aload 0
aload 2
invokespecial com/bumptech/glide/load/engine/EngineRunnable/onLoadComplete(Lcom/bumptech/glide/load/engine/Resource;)V
return
.limit locals 4
.limit stack 3
.end method
