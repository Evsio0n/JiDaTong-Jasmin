.bytecode 50.0
.class public final synchronized enum com/nostra13/universalimageloader/core/assist/LoadedFrom
.super java/lang/Enum
.signature "Ljava/lang/Enum<Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;>;"

.field public static final enum 'DISC_CACHE' Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;

.field private static final synthetic 'ENUM$VALUES' [Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;

.field public static final enum 'MEMORY_CACHE' Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;

.field public static final enum 'NETWORK' Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;

.method static <clinit>()V
new com/nostra13/universalimageloader/core/assist/LoadedFrom
dup
ldc "NETWORK"
iconst_0
invokespecial com/nostra13/universalimageloader/core/assist/LoadedFrom/<init>(Ljava/lang/String;I)V
putstatic com/nostra13/universalimageloader/core/assist/LoadedFrom/NETWORK Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;
new com/nostra13/universalimageloader/core/assist/LoadedFrom
dup
ldc "DISC_CACHE"
iconst_1
invokespecial com/nostra13/universalimageloader/core/assist/LoadedFrom/<init>(Ljava/lang/String;I)V
putstatic com/nostra13/universalimageloader/core/assist/LoadedFrom/DISC_CACHE Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;
new com/nostra13/universalimageloader/core/assist/LoadedFrom
dup
ldc "MEMORY_CACHE"
iconst_2
invokespecial com/nostra13/universalimageloader/core/assist/LoadedFrom/<init>(Ljava/lang/String;I)V
putstatic com/nostra13/universalimageloader/core/assist/LoadedFrom/MEMORY_CACHE Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;
iconst_3
anewarray com/nostra13/universalimageloader/core/assist/LoadedFrom
dup
iconst_0
getstatic com/nostra13/universalimageloader/core/assist/LoadedFrom/NETWORK Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;
aastore
dup
iconst_1
getstatic com/nostra13/universalimageloader/core/assist/LoadedFrom/DISC_CACHE Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;
aastore
dup
iconst_2
getstatic com/nostra13/universalimageloader/core/assist/LoadedFrom/MEMORY_CACHE Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;
aastore
putstatic com/nostra13/universalimageloader/core/assist/LoadedFrom/ENUM$VALUES [Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;
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

.method public static valueOf(Ljava/lang/String;)Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;
ldc com/nostra13/universalimageloader/core/assist/LoadedFrom
aload 0
invokestatic java/lang/Enum/valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
checkcast com/nostra13/universalimageloader/core/assist/LoadedFrom
areturn
.limit locals 1
.limit stack 2
.end method

.method public static values()[Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;
getstatic com/nostra13/universalimageloader/core/assist/LoadedFrom/ENUM$VALUES [Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;
astore 1
aload 1
arraylength
istore 0
iload 0
anewarray com/nostra13/universalimageloader/core/assist/LoadedFrom
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
