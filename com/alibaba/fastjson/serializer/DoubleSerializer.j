.bytecode 50.0
.class public synchronized com/alibaba/fastjson/serializer/DoubleSerializer
.super java/lang/Object
.implements com/alibaba/fastjson/serializer/ObjectSerializer

.field public static final 'instance' Lcom/alibaba/fastjson/serializer/DoubleSerializer;

.field private 'decimalFormat' Ljava/text/DecimalFormat;

.method static <clinit>()V
new com/alibaba/fastjson/serializer/DoubleSerializer
dup
invokespecial com/alibaba/fastjson/serializer/DoubleSerializer/<init>()V
putstatic com/alibaba/fastjson/serializer/DoubleSerializer/instance Lcom/alibaba/fastjson/serializer/DoubleSerializer;
return
.limit locals 0
.limit stack 2
.end method

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aconst_null
putfield com/alibaba/fastjson/serializer/DoubleSerializer/decimalFormat Ljava/text/DecimalFormat;
return
.limit locals 1
.limit stack 2
.end method

.method public <init>(Ljava/lang/String;)V
aload 0
new java/text/DecimalFormat
dup
aload 1
invokespecial java/text/DecimalFormat/<init>(Ljava/lang/String;)V
invokespecial com/alibaba/fastjson/serializer/DoubleSerializer/<init>(Ljava/text/DecimalFormat;)V
return
.limit locals 2
.limit stack 4
.end method

.method public <init>(Ljava/text/DecimalFormat;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aconst_null
putfield com/alibaba/fastjson/serializer/DoubleSerializer/decimalFormat Ljava/text/DecimalFormat;
aload 0
aload 1
putfield com/alibaba/fastjson/serializer/DoubleSerializer/decimalFormat Ljava/text/DecimalFormat;
return
.limit locals 2
.limit stack 2
.end method

.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
.throws java/io/IOException
aload 1
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/getWriter()Lcom/alibaba/fastjson/serializer/SerializeWriter;
astore 4
aload 2
ifnonnull L0
aload 1
getstatic com/alibaba/fastjson/serializer/SerializerFeature/WriteNullNumberAsZero Lcom/alibaba/fastjson/serializer/SerializerFeature;
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z
ifeq L1
aload 4
bipush 48
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(C)V
L2:
return
L1:
aload 4
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/writeNull()V
return
L0:
aload 2
checkcast java/lang/Double
invokevirtual java/lang/Double/doubleValue()D
dstore 5
dload 5
invokestatic java/lang/Double/isNaN(D)Z
ifeq L3
aload 4
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/writeNull()V
return
L3:
dload 5
invokestatic java/lang/Double/isInfinite(D)Z
ifeq L4
aload 4
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/writeNull()V
return
L4:
aload 0
getfield com/alibaba/fastjson/serializer/DoubleSerializer/decimalFormat Ljava/text/DecimalFormat;
ifnonnull L5
dload 5
invokestatic java/lang/Double/toString(D)Ljava/lang/String;
astore 3
aload 3
astore 2
aload 3
ldc ".0"
invokevirtual java/lang/String/endsWith(Ljava/lang/String;)Z
ifeq L6
aload 3
iconst_0
aload 3
invokevirtual java/lang/String/length()I
iconst_2
isub
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
astore 2
L6:
aload 4
aload 2
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;
pop
aload 1
getstatic com/alibaba/fastjson/serializer/SerializerFeature/WriteClassName Lcom/alibaba/fastjson/serializer/SerializerFeature;
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z
ifeq L2
aload 4
bipush 68
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(C)V
return
L5:
aload 0
getfield com/alibaba/fastjson/serializer/DoubleSerializer/decimalFormat Ljava/text/DecimalFormat;
dload 5
invokevirtual java/text/DecimalFormat/format(D)Ljava/lang/String;
astore 2
goto L6
.limit locals 7
.limit stack 4
.end method
