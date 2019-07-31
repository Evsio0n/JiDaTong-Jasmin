.bytecode 50.0
.class public final synchronized enum com/bumptech/glide/load/engine/DiskCacheStrategy
.super java/lang/Enum
.signature "Ljava/lang/Enum<Lcom/bumptech/glide/load/engine/DiskCacheStrategy;>;"

.field private static final synthetic '$VALUES' [Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

.field public static final enum 'ALL' Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

.field public static final enum 'NONE' Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

.field public static final enum 'RESULT' Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

.field public static final enum 'SOURCE' Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

.field private final 'cacheResult' Z

.field private final 'cacheSource' Z

.method static <clinit>()V
new com/bumptech/glide/load/engine/DiskCacheStrategy
dup
ldc "ALL"
iconst_0
iconst_1
iconst_1
invokespecial com/bumptech/glide/load/engine/DiskCacheStrategy/<init>(Ljava/lang/String;IZZ)V
putstatic com/bumptech/glide/load/engine/DiskCacheStrategy/ALL Lcom/bumptech/glide/load/engine/DiskCacheStrategy;
new com/bumptech/glide/load/engine/DiskCacheStrategy
dup
ldc "NONE"
iconst_1
iconst_0
iconst_0
invokespecial com/bumptech/glide/load/engine/DiskCacheStrategy/<init>(Ljava/lang/String;IZZ)V
putstatic com/bumptech/glide/load/engine/DiskCacheStrategy/NONE Lcom/bumptech/glide/load/engine/DiskCacheStrategy;
new com/bumptech/glide/load/engine/DiskCacheStrategy
dup
ldc "SOURCE"
iconst_2
iconst_1
iconst_0
invokespecial com/bumptech/glide/load/engine/DiskCacheStrategy/<init>(Ljava/lang/String;IZZ)V
putstatic com/bumptech/glide/load/engine/DiskCacheStrategy/SOURCE Lcom/bumptech/glide/load/engine/DiskCacheStrategy;
new com/bumptech/glide/load/engine/DiskCacheStrategy
dup
ldc "RESULT"
iconst_3
iconst_0
iconst_1
invokespecial com/bumptech/glide/load/engine/DiskCacheStrategy/<init>(Ljava/lang/String;IZZ)V
putstatic com/bumptech/glide/load/engine/DiskCacheStrategy/RESULT Lcom/bumptech/glide/load/engine/DiskCacheStrategy;
iconst_4
anewarray com/bumptech/glide/load/engine/DiskCacheStrategy
dup
iconst_0
getstatic com/bumptech/glide/load/engine/DiskCacheStrategy/ALL Lcom/bumptech/glide/load/engine/DiskCacheStrategy;
aastore
dup
iconst_1
getstatic com/bumptech/glide/load/engine/DiskCacheStrategy/NONE Lcom/bumptech/glide/load/engine/DiskCacheStrategy;
aastore
dup
iconst_2
getstatic com/bumptech/glide/load/engine/DiskCacheStrategy/SOURCE Lcom/bumptech/glide/load/engine/DiskCacheStrategy;
aastore
dup
iconst_3
getstatic com/bumptech/glide/load/engine/DiskCacheStrategy/RESULT Lcom/bumptech/glide/load/engine/DiskCacheStrategy;
aastore
putstatic com/bumptech/glide/load/engine/DiskCacheStrategy/$VALUES [Lcom/bumptech/glide/load/engine/DiskCacheStrategy;
return
.limit locals 0
.limit stack 6
.end method

.method private <init>(Ljava/lang/String;IZZ)V
.signature "(ZZ)V"
aload 0
aload 1
iload 2
invokespecial java/lang/Enum/<init>(Ljava/lang/String;I)V
aload 0
iload 3
putfield com/bumptech/glide/load/engine/DiskCacheStrategy/cacheSource Z
aload 0
iload 4
putfield com/bumptech/glide/load/engine/DiskCacheStrategy/cacheResult Z
return
.limit locals 5
.limit stack 3
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bumptech/glide/load/engine/DiskCacheStrategy;
ldc com/bumptech/glide/load/engine/DiskCacheStrategy
aload 0
invokestatic java/lang/Enum/valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
checkcast com/bumptech/glide/load/engine/DiskCacheStrategy
areturn
.limit locals 1
.limit stack 2
.end method

.method public static values()[Lcom/bumptech/glide/load/engine/DiskCacheStrategy;
getstatic com/bumptech/glide/load/engine/DiskCacheStrategy/$VALUES [Lcom/bumptech/glide/load/engine/DiskCacheStrategy;
invokevirtual [Lcom/bumptech/glide/load/engine/DiskCacheStrategy;/clone()Ljava/lang/Object;
checkcast [Lcom/bumptech/glide/load/engine/DiskCacheStrategy;
areturn
.limit locals 0
.limit stack 1
.end method

.method public cacheResult()Z
aload 0
getfield com/bumptech/glide/load/engine/DiskCacheStrategy/cacheResult Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public cacheSource()Z
aload 0
getfield com/bumptech/glide/load/engine/DiskCacheStrategy/cacheSource Z
ireturn
.limit locals 1
.limit stack 1
.end method
