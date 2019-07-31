.bytecode 50.0
.class public final synchronized enum com/nostra13/universalimageloader/core/assist/ImageScaleType
.super java/lang/Enum
.signature "Ljava/lang/Enum<Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;>;"

.field private static final synthetic 'ENUM$VALUES' [Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

.field public static final enum 'EXACTLY' Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

.field public static final enum 'EXACTLY_STRETCHED' Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

.field public static final enum 'IN_SAMPLE_INT' Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

.field public static final enum 'IN_SAMPLE_POWER_OF_2' Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

.field public static final enum 'NONE' Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

.field public static final enum 'NONE_SAFE' Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

.method static <clinit>()V
new com/nostra13/universalimageloader/core/assist/ImageScaleType
dup
ldc "NONE"
iconst_0
invokespecial com/nostra13/universalimageloader/core/assist/ImageScaleType/<init>(Ljava/lang/String;I)V
putstatic com/nostra13/universalimageloader/core/assist/ImageScaleType/NONE Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;
new com/nostra13/universalimageloader/core/assist/ImageScaleType
dup
ldc "NONE_SAFE"
iconst_1
invokespecial com/nostra13/universalimageloader/core/assist/ImageScaleType/<init>(Ljava/lang/String;I)V
putstatic com/nostra13/universalimageloader/core/assist/ImageScaleType/NONE_SAFE Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;
new com/nostra13/universalimageloader/core/assist/ImageScaleType
dup
ldc "IN_SAMPLE_POWER_OF_2"
iconst_2
invokespecial com/nostra13/universalimageloader/core/assist/ImageScaleType/<init>(Ljava/lang/String;I)V
putstatic com/nostra13/universalimageloader/core/assist/ImageScaleType/IN_SAMPLE_POWER_OF_2 Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;
new com/nostra13/universalimageloader/core/assist/ImageScaleType
dup
ldc "IN_SAMPLE_INT"
iconst_3
invokespecial com/nostra13/universalimageloader/core/assist/ImageScaleType/<init>(Ljava/lang/String;I)V
putstatic com/nostra13/universalimageloader/core/assist/ImageScaleType/IN_SAMPLE_INT Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;
new com/nostra13/universalimageloader/core/assist/ImageScaleType
dup
ldc "EXACTLY"
iconst_4
invokespecial com/nostra13/universalimageloader/core/assist/ImageScaleType/<init>(Ljava/lang/String;I)V
putstatic com/nostra13/universalimageloader/core/assist/ImageScaleType/EXACTLY Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;
new com/nostra13/universalimageloader/core/assist/ImageScaleType
dup
ldc "EXACTLY_STRETCHED"
iconst_5
invokespecial com/nostra13/universalimageloader/core/assist/ImageScaleType/<init>(Ljava/lang/String;I)V
putstatic com/nostra13/universalimageloader/core/assist/ImageScaleType/EXACTLY_STRETCHED Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;
bipush 6
anewarray com/nostra13/universalimageloader/core/assist/ImageScaleType
dup
iconst_0
getstatic com/nostra13/universalimageloader/core/assist/ImageScaleType/NONE Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;
aastore
dup
iconst_1
getstatic com/nostra13/universalimageloader/core/assist/ImageScaleType/NONE_SAFE Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;
aastore
dup
iconst_2
getstatic com/nostra13/universalimageloader/core/assist/ImageScaleType/IN_SAMPLE_POWER_OF_2 Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;
aastore
dup
iconst_3
getstatic com/nostra13/universalimageloader/core/assist/ImageScaleType/IN_SAMPLE_INT Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;
aastore
dup
iconst_4
getstatic com/nostra13/universalimageloader/core/assist/ImageScaleType/EXACTLY Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;
aastore
dup
iconst_5
getstatic com/nostra13/universalimageloader/core/assist/ImageScaleType/EXACTLY_STRETCHED Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;
aastore
putstatic com/nostra13/universalimageloader/core/assist/ImageScaleType/ENUM$VALUES [Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;
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

.method public static valueOf(Ljava/lang/String;)Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;
ldc com/nostra13/universalimageloader/core/assist/ImageScaleType
aload 0
invokestatic java/lang/Enum/valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
checkcast com/nostra13/universalimageloader/core/assist/ImageScaleType
areturn
.limit locals 1
.limit stack 2
.end method

.method public static values()[Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;
getstatic com/nostra13/universalimageloader/core/assist/ImageScaleType/ENUM$VALUES [Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;
astore 1
aload 1
arraylength
istore 0
iload 0
anewarray com/nostra13/universalimageloader/core/assist/ImageScaleType
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
