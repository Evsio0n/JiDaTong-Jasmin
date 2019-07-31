.bytecode 50.0
.class public synchronized com/alibaba/fastjson/parser/deserializer/NumberDeserializer
.super java/lang/Object
.implements com/alibaba/fastjson/parser/deserializer/ObjectDeserializer

.field public static final 'instance' Lcom/alibaba/fastjson/parser/deserializer/NumberDeserializer;

.method static <clinit>()V
new com/alibaba/fastjson/parser/deserializer/NumberDeserializer
dup
invokespecial com/alibaba/fastjson/parser/deserializer/NumberDeserializer/<init>()V
putstatic com/alibaba/fastjson/parser/deserializer/NumberDeserializer/instance Lcom/alibaba/fastjson/parser/deserializer/NumberDeserializer;
return
.limit locals 0
.limit stack 2
.end method

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
.signature "<T:Ljava/lang/Object;>(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)TT;"
aload 1
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/getLexer()Lcom/alibaba/fastjson/parser/JSONLexer;
astore 6
aload 6
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
iconst_2
if_icmpne L0
aload 2
getstatic java/lang/Double/TYPE Ljava/lang/Class;
if_acmpeq L1
aload 2
ldc java/lang/Double
if_acmpne L2
L1:
aload 6
invokeinterface com/alibaba/fastjson/parser/JSONLexer/numberString()Ljava/lang/String; 0
astore 1
aload 6
bipush 16
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken(I)V 1
aload 1
invokestatic java/lang/Double/parseDouble(Ljava/lang/String;)D
invokestatic java/lang/Double/valueOf(D)Ljava/lang/Double;
astore 1
L3:
aload 1
areturn
L2:
aload 6
invokeinterface com/alibaba/fastjson/parser/JSONLexer/longValue()J 0
lstore 4
aload 6
bipush 16
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken(I)V 1
aload 2
getstatic java/lang/Short/TYPE Ljava/lang/Class;
if_acmpeq L4
aload 2
ldc java/lang/Short
if_acmpne L5
L4:
lload 4
l2i
i2s
invokestatic java/lang/Short/valueOf(S)Ljava/lang/Short;
areturn
L5:
aload 2
getstatic java/lang/Byte/TYPE Ljava/lang/Class;
if_acmpeq L6
aload 2
ldc java/lang/Byte
if_acmpne L7
L6:
lload 4
l2i
i2b
invokestatic java/lang/Byte/valueOf(B)Ljava/lang/Byte;
areturn
L7:
lload 4
ldc2_w -2147483648L
lcmp
iflt L8
lload 4
ldc2_w 2147483647L
lcmp
ifgt L8
lload 4
l2i
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
areturn
L8:
lload 4
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
areturn
L0:
aload 6
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
iconst_3
if_icmpne L9
aload 2
getstatic java/lang/Double/TYPE Ljava/lang/Class;
if_acmpeq L10
aload 2
ldc java/lang/Double
if_acmpne L11
L10:
aload 6
invokeinterface com/alibaba/fastjson/parser/JSONLexer/numberString()Ljava/lang/String; 0
astore 1
aload 6
bipush 16
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken(I)V 1
aload 1
invokestatic java/lang/Double/parseDouble(Ljava/lang/String;)D
invokestatic java/lang/Double/valueOf(D)Ljava/lang/Double;
areturn
L11:
aload 6
invokeinterface com/alibaba/fastjson/parser/JSONLexer/decimalValue()Ljava/math/BigDecimal; 0
astore 3
aload 6
bipush 16
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken(I)V 1
aload 2
getstatic java/lang/Short/TYPE Ljava/lang/Class;
if_acmpeq L12
aload 2
ldc java/lang/Short
if_acmpne L13
L12:
aload 3
invokevirtual java/math/BigDecimal/shortValue()S
invokestatic java/lang/Short/valueOf(S)Ljava/lang/Short;
areturn
L13:
aload 2
getstatic java/lang/Byte/TYPE Ljava/lang/Class;
if_acmpeq L14
aload 3
astore 1
aload 2
ldc java/lang/Byte
if_acmpne L3
L14:
aload 3
invokevirtual java/math/BigDecimal/byteValue()B
invokestatic java/lang/Byte/valueOf(B)Ljava/lang/Byte;
areturn
L9:
aload 1
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/parse()Ljava/lang/Object;
astore 1
aload 1
ifnonnull L15
aconst_null
areturn
L15:
aload 2
getstatic java/lang/Double/TYPE Ljava/lang/Class;
if_acmpeq L16
aload 2
ldc java/lang/Double
if_acmpne L17
L16:
aload 1
invokestatic com/alibaba/fastjson/util/TypeUtils/castToDouble(Ljava/lang/Object;)Ljava/lang/Double;
areturn
L17:
aload 2
getstatic java/lang/Short/TYPE Ljava/lang/Class;
if_acmpeq L18
aload 2
ldc java/lang/Short
if_acmpne L19
L18:
aload 1
invokestatic com/alibaba/fastjson/util/TypeUtils/castToShort(Ljava/lang/Object;)Ljava/lang/Short;
areturn
L19:
aload 2
getstatic java/lang/Byte/TYPE Ljava/lang/Class;
if_acmpeq L20
aload 2
ldc java/lang/Byte
if_acmpne L21
L20:
aload 1
invokestatic com/alibaba/fastjson/util/TypeUtils/castToByte(Ljava/lang/Object;)Ljava/lang/Byte;
areturn
L21:
aload 1
invokestatic com/alibaba/fastjson/util/TypeUtils/castToBigDecimal(Ljava/lang/Object;)Ljava/math/BigDecimal;
areturn
.limit locals 7
.limit stack 4
.end method

.method public getFastMatchToken()I
iconst_2
ireturn
.limit locals 1
.limit stack 1
.end method
