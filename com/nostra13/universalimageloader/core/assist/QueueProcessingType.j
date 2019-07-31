.bytecode 50.0
.class public final synchronized enum com/nostra13/universalimageloader/core/assist/QueueProcessingType
.super java/lang/Enum
.signature "Ljava/lang/Enum<Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;>;"

.field private static final synthetic 'ENUM$VALUES' [Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;

.field public static final enum 'FIFO' Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;

.field public static final enum 'LIFO' Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;

.method static <clinit>()V
new com/nostra13/universalimageloader/core/assist/QueueProcessingType
dup
ldc "FIFO"
iconst_0
invokespecial com/nostra13/universalimageloader/core/assist/QueueProcessingType/<init>(Ljava/lang/String;I)V
putstatic com/nostra13/universalimageloader/core/assist/QueueProcessingType/FIFO Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;
new com/nostra13/universalimageloader/core/assist/QueueProcessingType
dup
ldc "LIFO"
iconst_1
invokespecial com/nostra13/universalimageloader/core/assist/QueueProcessingType/<init>(Ljava/lang/String;I)V
putstatic com/nostra13/universalimageloader/core/assist/QueueProcessingType/LIFO Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;
iconst_2
anewarray com/nostra13/universalimageloader/core/assist/QueueProcessingType
dup
iconst_0
getstatic com/nostra13/universalimageloader/core/assist/QueueProcessingType/FIFO Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;
aastore
dup
iconst_1
getstatic com/nostra13/universalimageloader/core/assist/QueueProcessingType/LIFO Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;
aastore
putstatic com/nostra13/universalimageloader/core/assist/QueueProcessingType/ENUM$VALUES [Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;
return
.limit locals 0
.limit stack 4
.end method

.method private <init>(Ljava/lang/String;I)V
aload 0
aload 1
iload 2
invokespecial java/lang/Enum/<init>(Ljava/lang/String;I)V
return
.limit locals 3
.limit stack 3
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;
ldc com/nostra13/universalimageloader/core/assist/QueueProcessingType
aload 0
invokestatic java/lang/Enum/valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
checkcast com/nostra13/universalimageloader/core/assist/QueueProcessingType
areturn
.limit locals 1
.limit stack 2
.end method

.method public static values()[Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;
getstatic com/nostra13/universalimageloader/core/assist/QueueProcessingType/ENUM$VALUES [Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;
astore 1
aload 1
arraylength
istore 0
iload 0
anewarray com/nostra13/universalimageloader/core/assist/QueueProcessingType
astore 2
aload 1
iconst_0
aload 2
iconst_0
iload 0
invokestatic java/lang/System/arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
aload 2
areturn
.limit locals 3
.limit stack 5
.end method
