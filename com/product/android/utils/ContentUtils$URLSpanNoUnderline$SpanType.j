.bytecode 50.0
.class public final synchronized enum com/product/android/utils/ContentUtils$URLSpanNoUnderline$SpanType
.super java/lang/Enum
.signature "Ljava/lang/Enum<Lcom/product/android/utils/ContentUtils$URLSpanNoUnderline$SpanType;>;"
.inner class public static URLSpanNoUnderline inner com/product/android/utils/ContentUtils$URLSpanNoUnderline outer com/product/android/utils/ContentUtils
.inner class public static final enum SpanType inner com/product/android/utils/ContentUtils$URLSpanNoUnderline$SpanType outer com/product/android/utils/ContentUtils$URLSpanNoUnderline

.field private static final synthetic '$VALUES' [Lcom/product/android/utils/ContentUtils$URLSpanNoUnderline$SpanType;

.field public static final enum 'AT' Lcom/product/android/utils/ContentUtils$URLSpanNoUnderline$SpanType;

.field public static final enum 'HASHTAGS' Lcom/product/android/utils/ContentUtils$URLSpanNoUnderline$SpanType;

.field public static final enum 'SMILEY' Lcom/product/android/utils/ContentUtils$URLSpanNoUnderline$SpanType;

.field public static final enum 'UNKNOW' Lcom/product/android/utils/ContentUtils$URLSpanNoUnderline$SpanType;

.field public static final enum 'URL' Lcom/product/android/utils/ContentUtils$URLSpanNoUnderline$SpanType;

.method static <clinit>()V
new com/product/android/utils/ContentUtils$URLSpanNoUnderline$SpanType
dup
ldc "URL"
iconst_0
invokespecial com/product/android/utils/ContentUtils$URLSpanNoUnderline$SpanType/<init>(Ljava/lang/String;I)V
putstatic com/product/android/utils/ContentUtils$URLSpanNoUnderline$SpanType/URL Lcom/product/android/utils/ContentUtils$URLSpanNoUnderline$SpanType;
new com/product/android/utils/ContentUtils$URLSpanNoUnderline$SpanType
dup
ldc "AT"
iconst_1
invokespecial com/product/android/utils/ContentUtils$URLSpanNoUnderline$SpanType/<init>(Ljava/lang/String;I)V
putstatic com/product/android/utils/ContentUtils$URLSpanNoUnderline$SpanType/AT Lcom/product/android/utils/ContentUtils$URLSpanNoUnderline$SpanType;
new com/product/android/utils/ContentUtils$URLSpanNoUnderline$SpanType
dup
ldc "SMILEY"
iconst_2
invokespecial com/product/android/utils/ContentUtils$URLSpanNoUnderline$SpanType/<init>(Ljava/lang/String;I)V
putstatic com/product/android/utils/ContentUtils$URLSpanNoUnderline$SpanType/SMILEY Lcom/product/android/utils/ContentUtils$URLSpanNoUnderline$SpanType;
new com/product/android/utils/ContentUtils$URLSpanNoUnderline$SpanType
dup
ldc "HASHTAGS"
iconst_3
invokespecial com/product/android/utils/ContentUtils$URLSpanNoUnderline$SpanType/<init>(Ljava/lang/String;I)V
putstatic com/product/android/utils/ContentUtils$URLSpanNoUnderline$SpanType/HASHTAGS Lcom/product/android/utils/ContentUtils$URLSpanNoUnderline$SpanType;
new com/product/android/utils/ContentUtils$URLSpanNoUnderline$SpanType
dup
ldc "UNKNOW"
iconst_4
invokespecial com/product/android/utils/ContentUtils$URLSpanNoUnderline$SpanType/<init>(Ljava/lang/String;I)V
putstatic com/product/android/utils/ContentUtils$URLSpanNoUnderline$SpanType/UNKNOW Lcom/product/android/utils/ContentUtils$URLSpanNoUnderline$SpanType;
iconst_5
anewarray com/product/android/utils/ContentUtils$URLSpanNoUnderline$SpanType
dup
iconst_0
getstatic com/product/android/utils/ContentUtils$URLSpanNoUnderline$SpanType/URL Lcom/product/android/utils/ContentUtils$URLSpanNoUnderline$SpanType;
aastore
dup
iconst_1
getstatic com/product/android/utils/ContentUtils$URLSpanNoUnderline$SpanType/AT Lcom/product/android/utils/ContentUtils$URLSpanNoUnderline$SpanType;
aastore
dup
iconst_2
getstatic com/product/android/utils/ContentUtils$URLSpanNoUnderline$SpanType/SMILEY Lcom/product/android/utils/ContentUtils$URLSpanNoUnderline$SpanType;
aastore
dup
iconst_3
getstatic com/product/android/utils/ContentUtils$URLSpanNoUnderline$SpanType/HASHTAGS Lcom/product/android/utils/ContentUtils$URLSpanNoUnderline$SpanType;
aastore
dup
iconst_4
getstatic com/product/android/utils/ContentUtils$URLSpanNoUnderline$SpanType/UNKNOW Lcom/product/android/utils/ContentUtils$URLSpanNoUnderline$SpanType;
aastore
putstatic com/product/android/utils/ContentUtils$URLSpanNoUnderline$SpanType/$VALUES [Lcom/product/android/utils/ContentUtils$URLSpanNoUnderline$SpanType;
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

.method public static valueOf(Ljava/lang/String;)Lcom/product/android/utils/ContentUtils$URLSpanNoUnderline$SpanType;
ldc com/product/android/utils/ContentUtils$URLSpanNoUnderline$SpanType
aload 0
invokestatic java/lang/Enum/valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
checkcast com/product/android/utils/ContentUtils$URLSpanNoUnderline$SpanType
areturn
.limit locals 1
.limit stack 2
.end method

.method public static values()[Lcom/product/android/utils/ContentUtils$URLSpanNoUnderline$SpanType;
getstatic com/product/android/utils/ContentUtils$URLSpanNoUnderline$SpanType/$VALUES [Lcom/product/android/utils/ContentUtils$URLSpanNoUnderline$SpanType;
invokevirtual [Lcom/product/android/utils/ContentUtils$URLSpanNoUnderline$SpanType;/clone()Ljava/lang/Object;
checkcast [Lcom/product/android/utils/ContentUtils$URLSpanNoUnderline$SpanType;
areturn
.limit locals 0
.limit stack 1
.end method
