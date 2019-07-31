.bytecode 50.0
.class public final synchronized enum com/alibaba/fastjson/parser/Feature
.super java/lang/Enum
.signature "Ljava/lang/Enum<Lcom/alibaba/fastjson/parser/Feature;>;"

.field private static final synthetic '$VALUES' [Lcom/alibaba/fastjson/parser/Feature;

.field public static final enum 'AllowArbitraryCommas' Lcom/alibaba/fastjson/parser/Feature;

.field public static final enum 'AllowComment' Lcom/alibaba/fastjson/parser/Feature;

.field public static final enum 'AllowISO8601DateFormat' Lcom/alibaba/fastjson/parser/Feature;

.field public static final enum 'AllowSingleQuotes' Lcom/alibaba/fastjson/parser/Feature;

.field public static final enum 'AllowUnQuotedFieldNames' Lcom/alibaba/fastjson/parser/Feature;

.field public static final enum 'AutoCloseSource' Lcom/alibaba/fastjson/parser/Feature;

.field public static final enum 'DisableASM' Lcom/alibaba/fastjson/parser/Feature;

.field public static final enum 'DisableCircularReferenceDetect' Lcom/alibaba/fastjson/parser/Feature;

.field public static final enum 'IgnoreNotMatch' Lcom/alibaba/fastjson/parser/Feature;

.field public static final enum 'InitStringFieldAsEmpty' Lcom/alibaba/fastjson/parser/Feature;

.field public static final enum 'InternFieldNames' Lcom/alibaba/fastjson/parser/Feature;

.field public static final enum 'SortFeidFastMatch' Lcom/alibaba/fastjson/parser/Feature;

.field public static final enum 'SupportArrayToBean' Lcom/alibaba/fastjson/parser/Feature;

.field public static final enum 'UseBigDecimal' Lcom/alibaba/fastjson/parser/Feature;

.field private final 'mask' I

.method static <clinit>()V
new com/alibaba/fastjson/parser/Feature
dup
ldc "AutoCloseSource"
iconst_0
invokespecial com/alibaba/fastjson/parser/Feature/<init>(Ljava/lang/String;I)V
putstatic com/alibaba/fastjson/parser/Feature/AutoCloseSource Lcom/alibaba/fastjson/parser/Feature;
new com/alibaba/fastjson/parser/Feature
dup
ldc "AllowComment"
iconst_1
invokespecial com/alibaba/fastjson/parser/Feature/<init>(Ljava/lang/String;I)V
putstatic com/alibaba/fastjson/parser/Feature/AllowComment Lcom/alibaba/fastjson/parser/Feature;
new com/alibaba/fastjson/parser/Feature
dup
ldc "AllowUnQuotedFieldNames"
iconst_2
invokespecial com/alibaba/fastjson/parser/Feature/<init>(Ljava/lang/String;I)V
putstatic com/alibaba/fastjson/parser/Feature/AllowUnQuotedFieldNames Lcom/alibaba/fastjson/parser/Feature;
new com/alibaba/fastjson/parser/Feature
dup
ldc "AllowSingleQuotes"
iconst_3
invokespecial com/alibaba/fastjson/parser/Feature/<init>(Ljava/lang/String;I)V
putstatic com/alibaba/fastjson/parser/Feature/AllowSingleQuotes Lcom/alibaba/fastjson/parser/Feature;
new com/alibaba/fastjson/parser/Feature
dup
ldc "InternFieldNames"
iconst_4
invokespecial com/alibaba/fastjson/parser/Feature/<init>(Ljava/lang/String;I)V
putstatic com/alibaba/fastjson/parser/Feature/InternFieldNames Lcom/alibaba/fastjson/parser/Feature;
new com/alibaba/fastjson/parser/Feature
dup
ldc "AllowISO8601DateFormat"
iconst_5
invokespecial com/alibaba/fastjson/parser/Feature/<init>(Ljava/lang/String;I)V
putstatic com/alibaba/fastjson/parser/Feature/AllowISO8601DateFormat Lcom/alibaba/fastjson/parser/Feature;
new com/alibaba/fastjson/parser/Feature
dup
ldc "AllowArbitraryCommas"
bipush 6
invokespecial com/alibaba/fastjson/parser/Feature/<init>(Ljava/lang/String;I)V
putstatic com/alibaba/fastjson/parser/Feature/AllowArbitraryCommas Lcom/alibaba/fastjson/parser/Feature;
new com/alibaba/fastjson/parser/Feature
dup
ldc "UseBigDecimal"
bipush 7
invokespecial com/alibaba/fastjson/parser/Feature/<init>(Ljava/lang/String;I)V
putstatic com/alibaba/fastjson/parser/Feature/UseBigDecimal Lcom/alibaba/fastjson/parser/Feature;
new com/alibaba/fastjson/parser/Feature
dup
ldc "IgnoreNotMatch"
bipush 8
invokespecial com/alibaba/fastjson/parser/Feature/<init>(Ljava/lang/String;I)V
putstatic com/alibaba/fastjson/parser/Feature/IgnoreNotMatch Lcom/alibaba/fastjson/parser/Feature;
new com/alibaba/fastjson/parser/Feature
dup
ldc "SortFeidFastMatch"
bipush 9
invokespecial com/alibaba/fastjson/parser/Feature/<init>(Ljava/lang/String;I)V
putstatic com/alibaba/fastjson/parser/Feature/SortFeidFastMatch Lcom/alibaba/fastjson/parser/Feature;
new com/alibaba/fastjson/parser/Feature
dup
ldc "DisableASM"
bipush 10
invokespecial com/alibaba/fastjson/parser/Feature/<init>(Ljava/lang/String;I)V
putstatic com/alibaba/fastjson/parser/Feature/DisableASM Lcom/alibaba/fastjson/parser/Feature;
new com/alibaba/fastjson/parser/Feature
dup
ldc "DisableCircularReferenceDetect"
bipush 11
invokespecial com/alibaba/fastjson/parser/Feature/<init>(Ljava/lang/String;I)V
putstatic com/alibaba/fastjson/parser/Feature/DisableCircularReferenceDetect Lcom/alibaba/fastjson/parser/Feature;
new com/alibaba/fastjson/parser/Feature
dup
ldc "InitStringFieldAsEmpty"
bipush 12
invokespecial com/alibaba/fastjson/parser/Feature/<init>(Ljava/lang/String;I)V
putstatic com/alibaba/fastjson/parser/Feature/InitStringFieldAsEmpty Lcom/alibaba/fastjson/parser/Feature;
new com/alibaba/fastjson/parser/Feature
dup
ldc "SupportArrayToBean"
bipush 13
invokespecial com/alibaba/fastjson/parser/Feature/<init>(Ljava/lang/String;I)V
putstatic com/alibaba/fastjson/parser/Feature/SupportArrayToBean Lcom/alibaba/fastjson/parser/Feature;
bipush 14
anewarray com/alibaba/fastjson/parser/Feature
dup
iconst_0
getstatic com/alibaba/fastjson/parser/Feature/AutoCloseSource Lcom/alibaba/fastjson/parser/Feature;
aastore
dup
iconst_1
getstatic com/alibaba/fastjson/parser/Feature/AllowComment Lcom/alibaba/fastjson/parser/Feature;
aastore
dup
iconst_2
getstatic com/alibaba/fastjson/parser/Feature/AllowUnQuotedFieldNames Lcom/alibaba/fastjson/parser/Feature;
aastore
dup
iconst_3
getstatic com/alibaba/fastjson/parser/Feature/AllowSingleQuotes Lcom/alibaba/fastjson/parser/Feature;
aastore
dup
iconst_4
getstatic com/alibaba/fastjson/parser/Feature/InternFieldNames Lcom/alibaba/fastjson/parser/Feature;
aastore
dup
iconst_5
getstatic com/alibaba/fastjson/parser/Feature/AllowISO8601DateFormat Lcom/alibaba/fastjson/parser/Feature;
aastore
dup
bipush 6
getstatic com/alibaba/fastjson/parser/Feature/AllowArbitraryCommas Lcom/alibaba/fastjson/parser/Feature;
aastore
dup
bipush 7
getstatic com/alibaba/fastjson/parser/Feature/UseBigDecimal Lcom/alibaba/fastjson/parser/Feature;
aastore
dup
bipush 8
getstatic com/alibaba/fastjson/parser/Feature/IgnoreNotMatch Lcom/alibaba/fastjson/parser/Feature;
aastore
dup
bipush 9
getstatic com/alibaba/fastjson/parser/Feature/SortFeidFastMatch Lcom/alibaba/fastjson/parser/Feature;
aastore
dup
bipush 10
getstatic com/alibaba/fastjson/parser/Feature/DisableASM Lcom/alibaba/fastjson/parser/Feature;
aastore
dup
bipush 11
getstatic com/alibaba/fastjson/parser/Feature/DisableCircularReferenceDetect Lcom/alibaba/fastjson/parser/Feature;
aastore
dup
bipush 12
getstatic com/alibaba/fastjson/parser/Feature/InitStringFieldAsEmpty Lcom/alibaba/fastjson/parser/Feature;
aastore
dup
bipush 13
getstatic com/alibaba/fastjson/parser/Feature/SupportArrayToBean Lcom/alibaba/fastjson/parser/Feature;
aastore
putstatic com/alibaba/fastjson/parser/Feature/$VALUES [Lcom/alibaba/fastjson/parser/Feature;
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
aload 0
iconst_1
aload 0
invokevirtual com/alibaba/fastjson/parser/Feature/ordinal()I
ishl
putfield com/alibaba/fastjson/parser/Feature/mask I
return
.limit locals 3
.limit stack 3
.end method

.method public static config(ILcom/alibaba/fastjson/parser/Feature;Z)I
iload 2
ifeq L0
iload 0
aload 1
invokevirtual com/alibaba/fastjson/parser/Feature/getMask()I
ior
ireturn
L0:
iload 0
aload 1
invokevirtual com/alibaba/fastjson/parser/Feature/getMask()I
iconst_m1
ixor
iand
ireturn
.limit locals 3
.limit stack 3
.end method

.method public static isEnabled(ILcom/alibaba/fastjson/parser/Feature;)Z
aload 1
invokevirtual com/alibaba/fastjson/parser/Feature/getMask()I
iload 0
iand
ifeq L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 2
.limit stack 2
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/Feature;
ldc com/alibaba/fastjson/parser/Feature
aload 0
invokestatic java/lang/Enum/valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
checkcast com/alibaba/fastjson/parser/Feature
areturn
.limit locals 1
.limit stack 2
.end method

.method public static values()[Lcom/alibaba/fastjson/parser/Feature;
getstatic com/alibaba/fastjson/parser/Feature/$VALUES [Lcom/alibaba/fastjson/parser/Feature;
invokevirtual [Lcom/alibaba/fastjson/parser/Feature;/clone()Ljava/lang/Object;
checkcast [Lcom/alibaba/fastjson/parser/Feature;
areturn
.limit locals 0
.limit stack 1
.end method

.method public final getMask()I
aload 0
getfield com/alibaba/fastjson/parser/Feature/mask I
ireturn
.limit locals 1
.limit stack 1
.end method
