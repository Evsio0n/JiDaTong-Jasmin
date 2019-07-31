.bytecode 50.0
.class public final synchronized enum com/bumptech/glide/MemoryCategory
.super java/lang/Enum
.signature "Ljava/lang/Enum<Lcom/bumptech/glide/MemoryCategory;>;"

.field private static final synthetic '$VALUES' [Lcom/bumptech/glide/MemoryCategory;

.field public static final enum 'HIGH' Lcom/bumptech/glide/MemoryCategory;

.field public static final enum 'LOW' Lcom/bumptech/glide/MemoryCategory;

.field public static final enum 'NORMAL' Lcom/bumptech/glide/MemoryCategory;

.field private 'multiplier' F

.method static <clinit>()V
new com/bumptech/glide/MemoryCategory
dup
ldc "LOW"
iconst_0
ldc_w 0.5F
invokespecial com/bumptech/glide/MemoryCategory/<init>(Ljava/lang/String;IF)V
putstatic com/bumptech/glide/MemoryCategory/LOW Lcom/bumptech/glide/MemoryCategory;
new com/bumptech/glide/MemoryCategory
dup
ldc "NORMAL"
iconst_1
fconst_1
invokespecial com/bumptech/glide/MemoryCategory/<init>(Ljava/lang/String;IF)V
putstatic com/bumptech/glide/MemoryCategory/NORMAL Lcom/bumptech/glide/MemoryCategory;
new com/bumptech/glide/MemoryCategory
dup
ldc "HIGH"
iconst_2
ldc_w 1.5F
invokespecial com/bumptech/glide/MemoryCategory/<init>(Ljava/lang/String;IF)V
putstatic com/bumptech/glide/MemoryCategory/HIGH Lcom/bumptech/glide/MemoryCategory;
iconst_3
anewarray com/bumptech/glide/MemoryCategory
dup
iconst_0
getstatic com/bumptech/glide/MemoryCategory/LOW Lcom/bumptech/glide/MemoryCategory;
aastore
dup
iconst_1
getstatic com/bumptech/glide/MemoryCategory/NORMAL Lcom/bumptech/glide/MemoryCategory;
aastore
dup
iconst_2
getstatic com/bumptech/glide/MemoryCategory/HIGH Lcom/bumptech/glide/MemoryCategory;
aastore
putstatic com/bumptech/glide/MemoryCategory/$VALUES [Lcom/bumptech/glide/MemoryCategory;
return
.limit locals 0
.limit stack 5
.end method

.method private <init>(Ljava/lang/String;IF)V
.signature "(F)V"
aload 0
aload 1
iload 2
invokespecial java/lang/Enum/<init>(Ljava/lang/String;I)V
aload 0
fload 3
putfield com/bumptech/glide/MemoryCategory/multiplier F
return
.limit locals 4
.limit stack 3
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bumptech/glide/MemoryCategory;
ldc com/bumptech/glide/MemoryCategory
aload 0
invokestatic java/lang/Enum/valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
checkcast com/bumptech/glide/MemoryCategory
areturn
.limit locals 1
.limit stack 2
.end method

.method public static values()[Lcom/bumptech/glide/MemoryCategory;
getstatic com/bumptech/glide/MemoryCategory/$VALUES [Lcom/bumptech/glide/MemoryCategory;
invokevirtual [Lcom/bumptech/glide/MemoryCategory;/clone()Ljava/lang/Object;
checkcast [Lcom/bumptech/glide/MemoryCategory;
areturn
.limit locals 0
.limit stack 1
.end method

.method public getMultiplier()F
aload 0
getfield com/bumptech/glide/MemoryCategory/multiplier F
freturn
.limit locals 1
.limit stack 1
.end method
