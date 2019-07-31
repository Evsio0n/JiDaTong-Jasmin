.bytecode 50.0
.class public final synchronized enum com/nostra13/universalimageloader/core/assist/FailReason$FailType
.super java/lang/Enum
.signature "Ljava/lang/Enum<Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;>;"
.inner class public static final enum FailType inner com/nostra13/universalimageloader/core/assist/FailReason$FailType outer com/nostra13/universalimageloader/core/assist/FailReason

.field public static final enum 'DECODING_ERROR' Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

.field private static final synthetic 'ENUM$VALUES' [Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

.field public static final enum 'IO_ERROR' Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

.field public static final enum 'NETWORK_DENIED' Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

.field public static final enum 'OUT_OF_MEMORY' Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

.field public static final enum 'UNKNOWN' Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

.method static <clinit>()V
new com/nostra13/universalimageloader/core/assist/FailReason$FailType
dup
ldc "IO_ERROR"
iconst_0
invokespecial com/nostra13/universalimageloader/core/assist/FailReason$FailType/<init>(Ljava/lang/String;I)V
putstatic com/nostra13/universalimageloader/core/assist/FailReason$FailType/IO_ERROR Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;
new com/nostra13/universalimageloader/core/assist/FailReason$FailType
dup
ldc "DECODING_ERROR"
iconst_1
invokespecial com/nostra13/universalimageloader/core/assist/FailReason$FailType/<init>(Ljava/lang/String;I)V
putstatic com/nostra13/universalimageloader/core/assist/FailReason$FailType/DECODING_ERROR Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;
new com/nostra13/universalimageloader/core/assist/FailReason$FailType
dup
ldc "NETWORK_DENIED"
iconst_2
invokespecial com/nostra13/universalimageloader/core/assist/FailReason$FailType/<init>(Ljava/lang/String;I)V
putstatic com/nostra13/universalimageloader/core/assist/FailReason$FailType/NETWORK_DENIED Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;
new com/nostra13/universalimageloader/core/assist/FailReason$FailType
dup
ldc "OUT_OF_MEMORY"
iconst_3
invokespecial com/nostra13/universalimageloader/core/assist/FailReason$FailType/<init>(Ljava/lang/String;I)V
putstatic com/nostra13/universalimageloader/core/assist/FailReason$FailType/OUT_OF_MEMORY Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;
new com/nostra13/universalimageloader/core/assist/FailReason$FailType
dup
ldc "UNKNOWN"
iconst_4
invokespecial com/nostra13/universalimageloader/core/assist/FailReason$FailType/<init>(Ljava/lang/String;I)V
putstatic com/nostra13/universalimageloader/core/assist/FailReason$FailType/UNKNOWN Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;
iconst_5
anewarray com/nostra13/universalimageloader/core/assist/FailReason$FailType
dup
iconst_0
getstatic com/nostra13/universalimageloader/core/assist/FailReason$FailType/IO_ERROR Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;
aastore
dup
iconst_1
getstatic com/nostra13/universalimageloader/core/assist/FailReason$FailType/DECODING_ERROR Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;
aastore
dup
iconst_2
getstatic com/nostra13/universalimageloader/core/assist/FailReason$FailType/NETWORK_DENIED Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;
aastore
dup
iconst_3
getstatic com/nostra13/universalimageloader/core/assist/FailReason$FailType/OUT_OF_MEMORY Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;
aastore
dup
iconst_4
getstatic com/nostra13/universalimageloader/core/assist/FailReason$FailType/UNKNOWN Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;
aastore
putstatic com/nostra13/universalimageloader/core/assist/FailReason$FailType/ENUM$VALUES [Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;
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

.method public static valueOf(Ljava/lang/String;)Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;
ldc com/nostra13/universalimageloader/core/assist/FailReason$FailType
aload 0
invokestatic java/lang/Enum/valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
checkcast com/nostra13/universalimageloader/core/assist/FailReason$FailType
areturn
.limit locals 1
.limit stack 2
.end method

.method public static values()[Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;
getstatic com/nostra13/universalimageloader/core/assist/FailReason$FailType/ENUM$VALUES [Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;
astore 1
aload 1
arraylength
istore 0
iload 0
anewarray com/nostra13/universalimageloader/core/assist/FailReason$FailType
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
