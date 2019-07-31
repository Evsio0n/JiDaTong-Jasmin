.bytecode 50.0
.class public final synchronized enum com/bumptech/glide/Priority
.super java/lang/Enum
.signature "Ljava/lang/Enum<Lcom/bumptech/glide/Priority;>;"

.field private static final synthetic '$VALUES' [Lcom/bumptech/glide/Priority;

.field public static final enum 'HIGH' Lcom/bumptech/glide/Priority;

.field public static final enum 'IMMEDIATE' Lcom/bumptech/glide/Priority;

.field public static final enum 'LOW' Lcom/bumptech/glide/Priority;

.field public static final enum 'NORMAL' Lcom/bumptech/glide/Priority;

.field public static final enum 'priority' Lcom/bumptech/glide/Priority;

.method static <clinit>()V
new com/bumptech/glide/Priority
dup
ldc "IMMEDIATE"
iconst_0
invokespecial com/bumptech/glide/Priority/<init>(Ljava/lang/String;I)V
putstatic com/bumptech/glide/Priority/IMMEDIATE Lcom/bumptech/glide/Priority;
new com/bumptech/glide/Priority
dup
ldc "HIGH"
iconst_1
invokespecial com/bumptech/glide/Priority/<init>(Ljava/lang/String;I)V
putstatic com/bumptech/glide/Priority/HIGH Lcom/bumptech/glide/Priority;
new com/bumptech/glide/Priority
dup
ldc "NORMAL"
iconst_2
invokespecial com/bumptech/glide/Priority/<init>(Ljava/lang/String;I)V
putstatic com/bumptech/glide/Priority/NORMAL Lcom/bumptech/glide/Priority;
new com/bumptech/glide/Priority
dup
ldc "LOW"
iconst_3
invokespecial com/bumptech/glide/Priority/<init>(Ljava/lang/String;I)V
putstatic com/bumptech/glide/Priority/LOW Lcom/bumptech/glide/Priority;
new com/bumptech/glide/Priority
dup
ldc "priority"
iconst_4
invokespecial com/bumptech/glide/Priority/<init>(Ljava/lang/String;I)V
putstatic com/bumptech/glide/Priority/priority Lcom/bumptech/glide/Priority;
iconst_5
anewarray com/bumptech/glide/Priority
dup
iconst_0
getstatic com/bumptech/glide/Priority/IMMEDIATE Lcom/bumptech/glide/Priority;
aastore
dup
iconst_1
getstatic com/bumptech/glide/Priority/HIGH Lcom/bumptech/glide/Priority;
aastore
dup
iconst_2
getstatic com/bumptech/glide/Priority/NORMAL Lcom/bumptech/glide/Priority;
aastore
dup
iconst_3
getstatic com/bumptech/glide/Priority/LOW Lcom/bumptech/glide/Priority;
aastore
dup
iconst_4
getstatic com/bumptech/glide/Priority/priority Lcom/bumptech/glide/Priority;
aastore
putstatic com/bumptech/glide/Priority/$VALUES [Lcom/bumptech/glide/Priority;
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

.method public static valueOf(Ljava/lang/String;)Lcom/bumptech/glide/Priority;
ldc com/bumptech/glide/Priority
aload 0
invokestatic java/lang/Enum/valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
checkcast com/bumptech/glide/Priority
areturn
.limit locals 1
.limit stack 2
.end method

.method public static values()[Lcom/bumptech/glide/Priority;
getstatic com/bumptech/glide/Priority/$VALUES [Lcom/bumptech/glide/Priority;
invokevirtual [Lcom/bumptech/glide/Priority;/clone()Ljava/lang/Object;
checkcast [Lcom/bumptech/glide/Priority;
areturn
.limit locals 0
.limit stack 1
.end method
