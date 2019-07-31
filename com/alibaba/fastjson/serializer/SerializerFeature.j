.bytecode 50.0
.class public final synchronized enum com/alibaba/fastjson/serializer/SerializerFeature
.super java/lang/Enum
.signature "Ljava/lang/Enum<Lcom/alibaba/fastjson/serializer/SerializerFeature;>;"

.field private static final synthetic '$VALUES' [Lcom/alibaba/fastjson/serializer/SerializerFeature;

.field public static final enum 'BeanToArray' Lcom/alibaba/fastjson/serializer/SerializerFeature;

.field public static final enum 'BrowserCompatible' Lcom/alibaba/fastjson/serializer/SerializerFeature;

.field public static final enum 'DisableCheckSpecialChar' Lcom/alibaba/fastjson/serializer/SerializerFeature;

.field public static final enum 'DisableCircularReferenceDetect' Lcom/alibaba/fastjson/serializer/SerializerFeature;

.field public static final enum 'NotWriteRootClassName' Lcom/alibaba/fastjson/serializer/SerializerFeature;

.field public static final enum 'PrettyFormat' Lcom/alibaba/fastjson/serializer/SerializerFeature;

.field public static final enum 'QuoteFieldNames' Lcom/alibaba/fastjson/serializer/SerializerFeature;

.field public static final enum 'SkipTransientField' Lcom/alibaba/fastjson/serializer/SerializerFeature;

.field public static final enum 'SortField' Lcom/alibaba/fastjson/serializer/SerializerFeature;

.field public static final enum 'UseISO8601DateFormat' Lcom/alibaba/fastjson/serializer/SerializerFeature;

.field public static final enum 'UseSingleQuotes' Lcom/alibaba/fastjson/serializer/SerializerFeature;

.field public static final enum 'WriteClassName' Lcom/alibaba/fastjson/serializer/SerializerFeature;

.field public static final enum 'WriteDateUseDateFormat' Lcom/alibaba/fastjson/serializer/SerializerFeature;

.field public static final enum 'WriteEnumUsingToString' Lcom/alibaba/fastjson/serializer/SerializerFeature;

.field public static final enum 'WriteMapNullValue' Lcom/alibaba/fastjson/serializer/SerializerFeature;

.field public static final enum 'WriteNonStringKeyAsString' Lcom/alibaba/fastjson/serializer/SerializerFeature;

.field public static final enum 'WriteNullBooleanAsFalse' Lcom/alibaba/fastjson/serializer/SerializerFeature;

.field public static final enum 'WriteNullListAsEmpty' Lcom/alibaba/fastjson/serializer/SerializerFeature;

.field public static final enum 'WriteNullNumberAsZero' Lcom/alibaba/fastjson/serializer/SerializerFeature;

.field public static final enum 'WriteNullStringAsEmpty' Lcom/alibaba/fastjson/serializer/SerializerFeature;

.field public static final enum 'WriteSlashAsSpecial' Lcom/alibaba/fastjson/serializer/SerializerFeature;

.field public static final enum 'WriteTabAsSpecial' Lcom/alibaba/fastjson/serializer/SerializerFeature;
.annotation visible Ljava/lang/Deprecated;
.end annotation
.end field

.field private final 'mask' I

.method static <clinit>()V
new com/alibaba/fastjson/serializer/SerializerFeature
dup
ldc "QuoteFieldNames"
iconst_0
invokespecial com/alibaba/fastjson/serializer/SerializerFeature/<init>(Ljava/lang/String;I)V
putstatic com/alibaba/fastjson/serializer/SerializerFeature/QuoteFieldNames Lcom/alibaba/fastjson/serializer/SerializerFeature;
new com/alibaba/fastjson/serializer/SerializerFeature
dup
ldc "UseSingleQuotes"
iconst_1
invokespecial com/alibaba/fastjson/serializer/SerializerFeature/<init>(Ljava/lang/String;I)V
putstatic com/alibaba/fastjson/serializer/SerializerFeature/UseSingleQuotes Lcom/alibaba/fastjson/serializer/SerializerFeature;
new com/alibaba/fastjson/serializer/SerializerFeature
dup
ldc "WriteMapNullValue"
iconst_2
invokespecial com/alibaba/fastjson/serializer/SerializerFeature/<init>(Ljava/lang/String;I)V
putstatic com/alibaba/fastjson/serializer/SerializerFeature/WriteMapNullValue Lcom/alibaba/fastjson/serializer/SerializerFeature;
new com/alibaba/fastjson/serializer/SerializerFeature
dup
ldc "WriteEnumUsingToString"
iconst_3
invokespecial com/alibaba/fastjson/serializer/SerializerFeature/<init>(Ljava/lang/String;I)V
putstatic com/alibaba/fastjson/serializer/SerializerFeature/WriteEnumUsingToString Lcom/alibaba/fastjson/serializer/SerializerFeature;
new com/alibaba/fastjson/serializer/SerializerFeature
dup
ldc "UseISO8601DateFormat"
iconst_4
invokespecial com/alibaba/fastjson/serializer/SerializerFeature/<init>(Ljava/lang/String;I)V
putstatic com/alibaba/fastjson/serializer/SerializerFeature/UseISO8601DateFormat Lcom/alibaba/fastjson/serializer/SerializerFeature;
new com/alibaba/fastjson/serializer/SerializerFeature
dup
ldc "WriteNullListAsEmpty"
iconst_5
invokespecial com/alibaba/fastjson/serializer/SerializerFeature/<init>(Ljava/lang/String;I)V
putstatic com/alibaba/fastjson/serializer/SerializerFeature/WriteNullListAsEmpty Lcom/alibaba/fastjson/serializer/SerializerFeature;
new com/alibaba/fastjson/serializer/SerializerFeature
dup
ldc "WriteNullStringAsEmpty"
bipush 6
invokespecial com/alibaba/fastjson/serializer/SerializerFeature/<init>(Ljava/lang/String;I)V
putstatic com/alibaba/fastjson/serializer/SerializerFeature/WriteNullStringAsEmpty Lcom/alibaba/fastjson/serializer/SerializerFeature;
new com/alibaba/fastjson/serializer/SerializerFeature
dup
ldc "WriteNullNumberAsZero"
bipush 7
invokespecial com/alibaba/fastjson/serializer/SerializerFeature/<init>(Ljava/lang/String;I)V
putstatic com/alibaba/fastjson/serializer/SerializerFeature/WriteNullNumberAsZero Lcom/alibaba/fastjson/serializer/SerializerFeature;
new com/alibaba/fastjson/serializer/SerializerFeature
dup
ldc "WriteNullBooleanAsFalse"
bipush 8
invokespecial com/alibaba/fastjson/serializer/SerializerFeature/<init>(Ljava/lang/String;I)V
putstatic com/alibaba/fastjson/serializer/SerializerFeature/WriteNullBooleanAsFalse Lcom/alibaba/fastjson/serializer/SerializerFeature;
new com/alibaba/fastjson/serializer/SerializerFeature
dup
ldc "SkipTransientField"
bipush 9
invokespecial com/alibaba/fastjson/serializer/SerializerFeature/<init>(Ljava/lang/String;I)V
putstatic com/alibaba/fastjson/serializer/SerializerFeature/SkipTransientField Lcom/alibaba/fastjson/serializer/SerializerFeature;
new com/alibaba/fastjson/serializer/SerializerFeature
dup
ldc "SortField"
bipush 10
invokespecial com/alibaba/fastjson/serializer/SerializerFeature/<init>(Ljava/lang/String;I)V
putstatic com/alibaba/fastjson/serializer/SerializerFeature/SortField Lcom/alibaba/fastjson/serializer/SerializerFeature;
new com/alibaba/fastjson/serializer/SerializerFeature
dup
ldc "WriteTabAsSpecial"
bipush 11
invokespecial com/alibaba/fastjson/serializer/SerializerFeature/<init>(Ljava/lang/String;I)V
putstatic com/alibaba/fastjson/serializer/SerializerFeature/WriteTabAsSpecial Lcom/alibaba/fastjson/serializer/SerializerFeature;
new com/alibaba/fastjson/serializer/SerializerFeature
dup
ldc "PrettyFormat"
bipush 12
invokespecial com/alibaba/fastjson/serializer/SerializerFeature/<init>(Ljava/lang/String;I)V
putstatic com/alibaba/fastjson/serializer/SerializerFeature/PrettyFormat Lcom/alibaba/fastjson/serializer/SerializerFeature;
new com/alibaba/fastjson/serializer/SerializerFeature
dup
ldc "WriteClassName"
bipush 13
invokespecial com/alibaba/fastjson/serializer/SerializerFeature/<init>(Ljava/lang/String;I)V
putstatic com/alibaba/fastjson/serializer/SerializerFeature/WriteClassName Lcom/alibaba/fastjson/serializer/SerializerFeature;
new com/alibaba/fastjson/serializer/SerializerFeature
dup
ldc "DisableCircularReferenceDetect"
bipush 14
invokespecial com/alibaba/fastjson/serializer/SerializerFeature/<init>(Ljava/lang/String;I)V
putstatic com/alibaba/fastjson/serializer/SerializerFeature/DisableCircularReferenceDetect Lcom/alibaba/fastjson/serializer/SerializerFeature;
new com/alibaba/fastjson/serializer/SerializerFeature
dup
ldc "WriteSlashAsSpecial"
bipush 15
invokespecial com/alibaba/fastjson/serializer/SerializerFeature/<init>(Ljava/lang/String;I)V
putstatic com/alibaba/fastjson/serializer/SerializerFeature/WriteSlashAsSpecial Lcom/alibaba/fastjson/serializer/SerializerFeature;
new com/alibaba/fastjson/serializer/SerializerFeature
dup
ldc "BrowserCompatible"
bipush 16
invokespecial com/alibaba/fastjson/serializer/SerializerFeature/<init>(Ljava/lang/String;I)V
putstatic com/alibaba/fastjson/serializer/SerializerFeature/BrowserCompatible Lcom/alibaba/fastjson/serializer/SerializerFeature;
new com/alibaba/fastjson/serializer/SerializerFeature
dup
ldc "WriteDateUseDateFormat"
bipush 17
invokespecial com/alibaba/fastjson/serializer/SerializerFeature/<init>(Ljava/lang/String;I)V
putstatic com/alibaba/fastjson/serializer/SerializerFeature/WriteDateUseDateFormat Lcom/alibaba/fastjson/serializer/SerializerFeature;
new com/alibaba/fastjson/serializer/SerializerFeature
dup
ldc "NotWriteRootClassName"
bipush 18
invokespecial com/alibaba/fastjson/serializer/SerializerFeature/<init>(Ljava/lang/String;I)V
putstatic com/alibaba/fastjson/serializer/SerializerFeature/NotWriteRootClassName Lcom/alibaba/fastjson/serializer/SerializerFeature;
new com/alibaba/fastjson/serializer/SerializerFeature
dup
ldc "DisableCheckSpecialChar"
bipush 19
invokespecial com/alibaba/fastjson/serializer/SerializerFeature/<init>(Ljava/lang/String;I)V
putstatic com/alibaba/fastjson/serializer/SerializerFeature/DisableCheckSpecialChar Lcom/alibaba/fastjson/serializer/SerializerFeature;
new com/alibaba/fastjson/serializer/SerializerFeature
dup
ldc "BeanToArray"
bipush 20
invokespecial com/alibaba/fastjson/serializer/SerializerFeature/<init>(Ljava/lang/String;I)V
putstatic com/alibaba/fastjson/serializer/SerializerFeature/BeanToArray Lcom/alibaba/fastjson/serializer/SerializerFeature;
new com/alibaba/fastjson/serializer/SerializerFeature
dup
ldc "WriteNonStringKeyAsString"
bipush 21
invokespecial com/alibaba/fastjson/serializer/SerializerFeature/<init>(Ljava/lang/String;I)V
putstatic com/alibaba/fastjson/serializer/SerializerFeature/WriteNonStringKeyAsString Lcom/alibaba/fastjson/serializer/SerializerFeature;
bipush 22
anewarray com/alibaba/fastjson/serializer/SerializerFeature
dup
iconst_0
getstatic com/alibaba/fastjson/serializer/SerializerFeature/QuoteFieldNames Lcom/alibaba/fastjson/serializer/SerializerFeature;
aastore
dup
iconst_1
getstatic com/alibaba/fastjson/serializer/SerializerFeature/UseSingleQuotes Lcom/alibaba/fastjson/serializer/SerializerFeature;
aastore
dup
iconst_2
getstatic com/alibaba/fastjson/serializer/SerializerFeature/WriteMapNullValue Lcom/alibaba/fastjson/serializer/SerializerFeature;
aastore
dup
iconst_3
getstatic com/alibaba/fastjson/serializer/SerializerFeature/WriteEnumUsingToString Lcom/alibaba/fastjson/serializer/SerializerFeature;
aastore
dup
iconst_4
getstatic com/alibaba/fastjson/serializer/SerializerFeature/UseISO8601DateFormat Lcom/alibaba/fastjson/serializer/SerializerFeature;
aastore
dup
iconst_5
getstatic com/alibaba/fastjson/serializer/SerializerFeature/WriteNullListAsEmpty Lcom/alibaba/fastjson/serializer/SerializerFeature;
aastore
dup
bipush 6
getstatic com/alibaba/fastjson/serializer/SerializerFeature/WriteNullStringAsEmpty Lcom/alibaba/fastjson/serializer/SerializerFeature;
aastore
dup
bipush 7
getstatic com/alibaba/fastjson/serializer/SerializerFeature/WriteNullNumberAsZero Lcom/alibaba/fastjson/serializer/SerializerFeature;
aastore
dup
bipush 8
getstatic com/alibaba/fastjson/serializer/SerializerFeature/WriteNullBooleanAsFalse Lcom/alibaba/fastjson/serializer/SerializerFeature;
aastore
dup
bipush 9
getstatic com/alibaba/fastjson/serializer/SerializerFeature/SkipTransientField Lcom/alibaba/fastjson/serializer/SerializerFeature;
aastore
dup
bipush 10
getstatic com/alibaba/fastjson/serializer/SerializerFeature/SortField Lcom/alibaba/fastjson/serializer/SerializerFeature;
aastore
dup
bipush 11
getstatic com/alibaba/fastjson/serializer/SerializerFeature/WriteTabAsSpecial Lcom/alibaba/fastjson/serializer/SerializerFeature;
aastore
dup
bipush 12
getstatic com/alibaba/fastjson/serializer/SerializerFeature/PrettyFormat Lcom/alibaba/fastjson/serializer/SerializerFeature;
aastore
dup
bipush 13
getstatic com/alibaba/fastjson/serializer/SerializerFeature/WriteClassName Lcom/alibaba/fastjson/serializer/SerializerFeature;
aastore
dup
bipush 14
getstatic com/alibaba/fastjson/serializer/SerializerFeature/DisableCircularReferenceDetect Lcom/alibaba/fastjson/serializer/SerializerFeature;
aastore
dup
bipush 15
getstatic com/alibaba/fastjson/serializer/SerializerFeature/WriteSlashAsSpecial Lcom/alibaba/fastjson/serializer/SerializerFeature;
aastore
dup
bipush 16
getstatic com/alibaba/fastjson/serializer/SerializerFeature/BrowserCompatible Lcom/alibaba/fastjson/serializer/SerializerFeature;
aastore
dup
bipush 17
getstatic com/alibaba/fastjson/serializer/SerializerFeature/WriteDateUseDateFormat Lcom/alibaba/fastjson/serializer/SerializerFeature;
aastore
dup
bipush 18
getstatic com/alibaba/fastjson/serializer/SerializerFeature/NotWriteRootClassName Lcom/alibaba/fastjson/serializer/SerializerFeature;
aastore
dup
bipush 19
getstatic com/alibaba/fastjson/serializer/SerializerFeature/DisableCheckSpecialChar Lcom/alibaba/fastjson/serializer/SerializerFeature;
aastore
dup
bipush 20
getstatic com/alibaba/fastjson/serializer/SerializerFeature/BeanToArray Lcom/alibaba/fastjson/serializer/SerializerFeature;
aastore
dup
bipush 21
getstatic com/alibaba/fastjson/serializer/SerializerFeature/WriteNonStringKeyAsString Lcom/alibaba/fastjson/serializer/SerializerFeature;
aastore
putstatic com/alibaba/fastjson/serializer/SerializerFeature/$VALUES [Lcom/alibaba/fastjson/serializer/SerializerFeature;
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
invokevirtual com/alibaba/fastjson/serializer/SerializerFeature/ordinal()I
ishl
putfield com/alibaba/fastjson/serializer/SerializerFeature/mask I
return
.limit locals 3
.limit stack 3
.end method

.method public static config(ILcom/alibaba/fastjson/serializer/SerializerFeature;Z)I
iload 2
ifeq L0
iload 0
aload 1
invokevirtual com/alibaba/fastjson/serializer/SerializerFeature/getMask()I
ior
ireturn
L0:
iload 0
aload 1
invokevirtual com/alibaba/fastjson/serializer/SerializerFeature/getMask()I
iconst_m1
ixor
iand
ireturn
.limit locals 3
.limit stack 3
.end method

.method public static isEnabled(ILcom/alibaba/fastjson/serializer/SerializerFeature;)Z
aload 1
invokevirtual com/alibaba/fastjson/serializer/SerializerFeature/getMask()I
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

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/fastjson/serializer/SerializerFeature;
ldc com/alibaba/fastjson/serializer/SerializerFeature
aload 0
invokestatic java/lang/Enum/valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
checkcast com/alibaba/fastjson/serializer/SerializerFeature
areturn
.limit locals 1
.limit stack 2
.end method

.method public static values()[Lcom/alibaba/fastjson/serializer/SerializerFeature;
getstatic com/alibaba/fastjson/serializer/SerializerFeature/$VALUES [Lcom/alibaba/fastjson/serializer/SerializerFeature;
invokevirtual [Lcom/alibaba/fastjson/serializer/SerializerFeature;/clone()Ljava/lang/Object;
checkcast [Lcom/alibaba/fastjson/serializer/SerializerFeature;
areturn
.limit locals 0
.limit stack 1
.end method

.method public final getMask()I
aload 0
getfield com/alibaba/fastjson/serializer/SerializerFeature/mask I
ireturn
.limit locals 1
.limit stack 1
.end method
