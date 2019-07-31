.bytecode 50.0
.class final synchronized enum com/bumptech/glide/load/engine/EngineRunnable$Stage
.super java/lang/Enum
.signature "Ljava/lang/Enum<Lcom/bumptech/glide/load/engine/EngineRunnable$Stage;>;"
.inner class private static final enum Stage inner com/bumptech/glide/load/engine/EngineRunnable$Stage outer com/bumptech/glide/load/engine/EngineRunnable

.field private static final synthetic '$VALUES' [Lcom/bumptech/glide/load/engine/EngineRunnable$Stage;

.field public static final enum 'CACHE' Lcom/bumptech/glide/load/engine/EngineRunnable$Stage;

.field public static final enum 'SOURCE' Lcom/bumptech/glide/load/engine/EngineRunnable$Stage;

.method static <clinit>()V
new com/bumptech/glide/load/engine/EngineRunnable$Stage
dup
ldc "CACHE"
iconst_0
invokespecial com/bumptech/glide/load/engine/EngineRunnable$Stage/<init>(Ljava/lang/String;I)V
putstatic com/bumptech/glide/load/engine/EngineRunnable$Stage/CACHE Lcom/bumptech/glide/load/engine/EngineRunnable$Stage;
new com/bumptech/glide/load/engine/EngineRunnable$Stage
dup
ldc "SOURCE"
iconst_1
invokespecial com/bumptech/glide/load/engine/EngineRunnable$Stage/<init>(Ljava/lang/String;I)V
putstatic com/bumptech/glide/load/engine/EngineRunnable$Stage/SOURCE Lcom/bumptech/glide/load/engine/EngineRunnable$Stage;
iconst_2
anewarray com/bumptech/glide/load/engine/EngineRunnable$Stage
dup
iconst_0
getstatic com/bumptech/glide/load/engine/EngineRunnable$Stage/CACHE Lcom/bumptech/glide/load/engine/EngineRunnable$Stage;
aastore
dup
iconst_1
getstatic com/bumptech/glide/load/engine/EngineRunnable$Stage/SOURCE Lcom/bumptech/glide/load/engine/EngineRunnable$Stage;
aastore
putstatic com/bumptech/glide/load/engine/EngineRunnable$Stage/$VALUES [Lcom/bumptech/glide/load/engine/EngineRunnable$Stage;
return
.limit locals 0
.limit stack 4
.end method

.method private <init>(Ljava/lang/String;I)V
.signature "()V"
aload 0
aload 1
iload 2
invokespecial java/lang/Enum/<init>(Ljava/lang/String;I)V
return
.limit locals 3
.limit stack 3
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bumptech/glide/load/engine/EngineRunnable$Stage;
ldc com/bumptech/glide/load/engine/EngineRunnable$Stage
aload 0
invokestatic java/lang/Enum/valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
checkcast com/bumptech/glide/load/engine/EngineRunnable$Stage
areturn
.limit locals 1
.limit stack 2
.end method

.method public static values()[Lcom/bumptech/glide/load/engine/EngineRunnable$Stage;
getstatic com/bumptech/glide/load/engine/EngineRunnable$Stage/$VALUES [Lcom/bumptech/glide/load/engine/EngineRunnable$Stage;
invokevirtual [Lcom/bumptech/glide/load/engine/EngineRunnable$Stage;/clone()Ljava/lang/Object;
checkcast [Lcom/bumptech/glide/load/engine/EngineRunnable$Stage;
areturn
.limit locals 0
.limit stack 1
.end method
