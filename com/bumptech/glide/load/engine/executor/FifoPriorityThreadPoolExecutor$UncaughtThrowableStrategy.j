.bytecode 50.0
.class public synchronized enum com/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$UncaughtThrowableStrategy
.super java/lang/Enum
.signature "Ljava/lang/Enum<Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$UncaughtThrowableStrategy;>;"
.inner class public static enum UncaughtThrowableStrategy inner com/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$UncaughtThrowableStrategy outer com/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor
.inner class static final enum inner com/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$UncaughtThrowableStrategy$1
.inner class static final enum inner com/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$UncaughtThrowableStrategy$2

.field private static final synthetic '$VALUES' [Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$UncaughtThrowableStrategy;

.field public static final enum 'IGNORE' Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$UncaughtThrowableStrategy;

.field public static final enum 'LOG' Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$UncaughtThrowableStrategy;

.field public static final enum 'THROW' Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$UncaughtThrowableStrategy;

.method static <clinit>()V
new com/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$UncaughtThrowableStrategy
dup
ldc "IGNORE"
iconst_0
invokespecial com/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$UncaughtThrowableStrategy/<init>(Ljava/lang/String;I)V
putstatic com/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$UncaughtThrowableStrategy/IGNORE Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$UncaughtThrowableStrategy;
new com/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$UncaughtThrowableStrategy$1
dup
ldc "LOG"
iconst_1
invokespecial com/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$UncaughtThrowableStrategy$1/<init>(Ljava/lang/String;I)V
putstatic com/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$UncaughtThrowableStrategy/LOG Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$UncaughtThrowableStrategy;
new com/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$UncaughtThrowableStrategy$2
dup
ldc "THROW"
iconst_2
invokespecial com/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$UncaughtThrowableStrategy$2/<init>(Ljava/lang/String;I)V
putstatic com/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$UncaughtThrowableStrategy/THROW Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$UncaughtThrowableStrategy;
iconst_3
anewarray com/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$UncaughtThrowableStrategy
dup
iconst_0
getstatic com/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$UncaughtThrowableStrategy/IGNORE Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$UncaughtThrowableStrategy;
aastore
dup
iconst_1
getstatic com/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$UncaughtThrowableStrategy/LOG Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$UncaughtThrowableStrategy;
aastore
dup
iconst_2
getstatic com/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$UncaughtThrowableStrategy/THROW Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$UncaughtThrowableStrategy;
aastore
putstatic com/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$UncaughtThrowableStrategy/$VALUES [Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$UncaughtThrowableStrategy;
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

.method synthetic <init>(Ljava/lang/String;ILcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$1;)V
aload 0
aload 1
iload 2
invokespecial com/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$UncaughtThrowableStrategy/<init>(Ljava/lang/String;I)V
return
.limit locals 4
.limit stack 3
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$UncaughtThrowableStrategy;
ldc com/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$UncaughtThrowableStrategy
aload 0
invokestatic java/lang/Enum/valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
checkcast com/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$UncaughtThrowableStrategy
areturn
.limit locals 1
.limit stack 2
.end method

.method public static values()[Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$UncaughtThrowableStrategy;
getstatic com/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$UncaughtThrowableStrategy/$VALUES [Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$UncaughtThrowableStrategy;
invokevirtual [Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$UncaughtThrowableStrategy;/clone()Ljava/lang/Object;
checkcast [Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$UncaughtThrowableStrategy;
areturn
.limit locals 0
.limit stack 1
.end method

.method protected handle(Ljava/lang/Throwable;)V
return
.limit locals 2
.limit stack 0
.end method
