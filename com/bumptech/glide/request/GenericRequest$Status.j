.bytecode 50.0
.class final synchronized enum com/bumptech/glide/request/GenericRequest$Status
.super java/lang/Enum
.signature "Ljava/lang/Enum<Lcom/bumptech/glide/request/GenericRequest$Status;>;"
.inner class private static final enum Status inner com/bumptech/glide/request/GenericRequest$Status outer com/bumptech/glide/request/GenericRequest

.field private static final synthetic '$VALUES' [Lcom/bumptech/glide/request/GenericRequest$Status;

.field public static final enum 'CANCELLED' Lcom/bumptech/glide/request/GenericRequest$Status;

.field public static final enum 'CLEARED' Lcom/bumptech/glide/request/GenericRequest$Status;

.field public static final enum 'COMPLETE' Lcom/bumptech/glide/request/GenericRequest$Status;

.field public static final enum 'FAILED' Lcom/bumptech/glide/request/GenericRequest$Status;

.field public static final enum 'PAUSED' Lcom/bumptech/glide/request/GenericRequest$Status;

.field public static final enum 'PENDING' Lcom/bumptech/glide/request/GenericRequest$Status;

.field public static final enum 'RUNNING' Lcom/bumptech/glide/request/GenericRequest$Status;

.field public static final enum 'WAITING_FOR_SIZE' Lcom/bumptech/glide/request/GenericRequest$Status;

.method static <clinit>()V
new com/bumptech/glide/request/GenericRequest$Status
dup
ldc "PENDING"
iconst_0
invokespecial com/bumptech/glide/request/GenericRequest$Status/<init>(Ljava/lang/String;I)V
putstatic com/bumptech/glide/request/GenericRequest$Status/PENDING Lcom/bumptech/glide/request/GenericRequest$Status;
new com/bumptech/glide/request/GenericRequest$Status
dup
ldc "RUNNING"
iconst_1
invokespecial com/bumptech/glide/request/GenericRequest$Status/<init>(Ljava/lang/String;I)V
putstatic com/bumptech/glide/request/GenericRequest$Status/RUNNING Lcom/bumptech/glide/request/GenericRequest$Status;
new com/bumptech/glide/request/GenericRequest$Status
dup
ldc "WAITING_FOR_SIZE"
iconst_2
invokespecial com/bumptech/glide/request/GenericRequest$Status/<init>(Ljava/lang/String;I)V
putstatic com/bumptech/glide/request/GenericRequest$Status/WAITING_FOR_SIZE Lcom/bumptech/glide/request/GenericRequest$Status;
new com/bumptech/glide/request/GenericRequest$Status
dup
ldc "COMPLETE"
iconst_3
invokespecial com/bumptech/glide/request/GenericRequest$Status/<init>(Ljava/lang/String;I)V
putstatic com/bumptech/glide/request/GenericRequest$Status/COMPLETE Lcom/bumptech/glide/request/GenericRequest$Status;
new com/bumptech/glide/request/GenericRequest$Status
dup
ldc "FAILED"
iconst_4
invokespecial com/bumptech/glide/request/GenericRequest$Status/<init>(Ljava/lang/String;I)V
putstatic com/bumptech/glide/request/GenericRequest$Status/FAILED Lcom/bumptech/glide/request/GenericRequest$Status;
new com/bumptech/glide/request/GenericRequest$Status
dup
ldc "CANCELLED"
iconst_5
invokespecial com/bumptech/glide/request/GenericRequest$Status/<init>(Ljava/lang/String;I)V
putstatic com/bumptech/glide/request/GenericRequest$Status/CANCELLED Lcom/bumptech/glide/request/GenericRequest$Status;
new com/bumptech/glide/request/GenericRequest$Status
dup
ldc "CLEARED"
bipush 6
invokespecial com/bumptech/glide/request/GenericRequest$Status/<init>(Ljava/lang/String;I)V
putstatic com/bumptech/glide/request/GenericRequest$Status/CLEARED Lcom/bumptech/glide/request/GenericRequest$Status;
new com/bumptech/glide/request/GenericRequest$Status
dup
ldc "PAUSED"
bipush 7
invokespecial com/bumptech/glide/request/GenericRequest$Status/<init>(Ljava/lang/String;I)V
putstatic com/bumptech/glide/request/GenericRequest$Status/PAUSED Lcom/bumptech/glide/request/GenericRequest$Status;
bipush 8
anewarray com/bumptech/glide/request/GenericRequest$Status
dup
iconst_0
getstatic com/bumptech/glide/request/GenericRequest$Status/PENDING Lcom/bumptech/glide/request/GenericRequest$Status;
aastore
dup
iconst_1
getstatic com/bumptech/glide/request/GenericRequest$Status/RUNNING Lcom/bumptech/glide/request/GenericRequest$Status;
aastore
dup
iconst_2
getstatic com/bumptech/glide/request/GenericRequest$Status/WAITING_FOR_SIZE Lcom/bumptech/glide/request/GenericRequest$Status;
aastore
dup
iconst_3
getstatic com/bumptech/glide/request/GenericRequest$Status/COMPLETE Lcom/bumptech/glide/request/GenericRequest$Status;
aastore
dup
iconst_4
getstatic com/bumptech/glide/request/GenericRequest$Status/FAILED Lcom/bumptech/glide/request/GenericRequest$Status;
aastore
dup
iconst_5
getstatic com/bumptech/glide/request/GenericRequest$Status/CANCELLED Lcom/bumptech/glide/request/GenericRequest$Status;
aastore
dup
bipush 6
getstatic com/bumptech/glide/request/GenericRequest$Status/CLEARED Lcom/bumptech/glide/request/GenericRequest$Status;
aastore
dup
bipush 7
getstatic com/bumptech/glide/request/GenericRequest$Status/PAUSED Lcom/bumptech/glide/request/GenericRequest$Status;
aastore
putstatic com/bumptech/glide/request/GenericRequest$Status/$VALUES [Lcom/bumptech/glide/request/GenericRequest$Status;
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

.method public static valueOf(Ljava/lang/String;)Lcom/bumptech/glide/request/GenericRequest$Status;
ldc com/bumptech/glide/request/GenericRequest$Status
aload 0
invokestatic java/lang/Enum/valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
checkcast com/bumptech/glide/request/GenericRequest$Status
areturn
.limit locals 1
.limit stack 2
.end method

.method public static values()[Lcom/bumptech/glide/request/GenericRequest$Status;
getstatic com/bumptech/glide/request/GenericRequest$Status/$VALUES [Lcom/bumptech/glide/request/GenericRequest$Status;
invokevirtual [Lcom/bumptech/glide/request/GenericRequest$Status;/clone()Ljava/lang/Object;
checkcast [Lcom/bumptech/glide/request/GenericRequest$Status;
areturn
.limit locals 0
.limit stack 1
.end method
