.bytecode 50.0
.class public synchronized abstract com/alibaba/fastjson/JSON
.super java/lang/Object
.implements com/alibaba/fastjson/JSONStreamAware
.implements com/alibaba/fastjson/JSONAware

.field public static 'DEFAULT_GENERATE_FEATURE' I = 0


.field public static 'DEFAULT_PARSER_FEATURE' I = 0


.field public static 'DEFAULT_TYPE_KEY' Ljava/lang/String;

.field public static 'DEFFAULT_DATE_FORMAT' Ljava/lang/String;

.field public static final 'VERSION' Ljava/lang/String; = "1.1.37"

.method static <clinit>()V
ldc "@type"
putstatic com/alibaba/fastjson/JSON/DEFAULT_TYPE_KEY Ljava/lang/String;
iconst_0
getstatic com/alibaba/fastjson/parser/Feature/AutoCloseSource Lcom/alibaba/fastjson/parser/Feature;
invokevirtual com/alibaba/fastjson/parser/Feature/getMask()I
ior
getstatic com/alibaba/fastjson/parser/Feature/InternFieldNames Lcom/alibaba/fastjson/parser/Feature;
invokevirtual com/alibaba/fastjson/parser/Feature/getMask()I
ior
getstatic com/alibaba/fastjson/parser/Feature/UseBigDecimal Lcom/alibaba/fastjson/parser/Feature;
invokevirtual com/alibaba/fastjson/parser/Feature/getMask()I
ior
getstatic com/alibaba/fastjson/parser/Feature/AllowUnQuotedFieldNames Lcom/alibaba/fastjson/parser/Feature;
invokevirtual com/alibaba/fastjson/parser/Feature/getMask()I
ior
getstatic com/alibaba/fastjson/parser/Feature/AllowSingleQuotes Lcom/alibaba/fastjson/parser/Feature;
invokevirtual com/alibaba/fastjson/parser/Feature/getMask()I
ior
getstatic com/alibaba/fastjson/parser/Feature/AllowArbitraryCommas Lcom/alibaba/fastjson/parser/Feature;
invokevirtual com/alibaba/fastjson/parser/Feature/getMask()I
ior
getstatic com/alibaba/fastjson/parser/Feature/SortFeidFastMatch Lcom/alibaba/fastjson/parser/Feature;
invokevirtual com/alibaba/fastjson/parser/Feature/getMask()I
ior
getstatic com/alibaba/fastjson/parser/Feature/IgnoreNotMatch Lcom/alibaba/fastjson/parser/Feature;
invokevirtual com/alibaba/fastjson/parser/Feature/getMask()I
ior
putstatic com/alibaba/fastjson/JSON/DEFAULT_PARSER_FEATURE I
ldc "yyyy-MM-dd HH:mm:ss"
putstatic com/alibaba/fastjson/JSON/DEFFAULT_DATE_FORMAT Ljava/lang/String;
iconst_0
getstatic com/alibaba/fastjson/serializer/SerializerFeature/QuoteFieldNames Lcom/alibaba/fastjson/serializer/SerializerFeature;
invokevirtual com/alibaba/fastjson/serializer/SerializerFeature/getMask()I
ior
getstatic com/alibaba/fastjson/serializer/SerializerFeature/SkipTransientField Lcom/alibaba/fastjson/serializer/SerializerFeature;
invokevirtual com/alibaba/fastjson/serializer/SerializerFeature/getMask()I
ior
getstatic com/alibaba/fastjson/serializer/SerializerFeature/WriteEnumUsingToString Lcom/alibaba/fastjson/serializer/SerializerFeature;
invokevirtual com/alibaba/fastjson/serializer/SerializerFeature/getMask()I
ior
getstatic com/alibaba/fastjson/serializer/SerializerFeature/SortField Lcom/alibaba/fastjson/serializer/SerializerFeature;
invokevirtual com/alibaba/fastjson/serializer/SerializerFeature/getMask()I
ior
putstatic com/alibaba/fastjson/JSON/DEFAULT_GENERATE_FEATURE I
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

.method public static handleResovleTask(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;)V
aload 0
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/getResolveTaskListDirect()Ljava/util/List;
astore 5
aload 5
ifnonnull L0
L1:
return
L0:
aload 5
invokeinterface java/util/List/size()I 0
istore 3
iconst_0
istore 2
L2:
iload 2
iload 3
if_icmpge L1
aload 5
iload 2
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask
astore 4
aload 4
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask/getFieldDeserializer()Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
astore 6
aload 6
ifnonnull L3
L4:
iload 2
iconst_1
iadd
istore 2
goto L2
L3:
aconst_null
astore 1
aload 4
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask/getOwnerContext()Lcom/alibaba/fastjson/parser/ParseContext;
ifnull L5
aload 4
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask/getOwnerContext()Lcom/alibaba/fastjson/parser/ParseContext;
invokevirtual com/alibaba/fastjson/parser/ParseContext/getObject()Ljava/lang/Object;
astore 1
L5:
aload 4
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask/getReferenceValue()Ljava/lang/String;
astore 7
aload 7
ldc "$"
invokevirtual java/lang/String/startsWith(Ljava/lang/String;)Z
ifeq L6
aload 0
aload 7
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/getObject(Ljava/lang/String;)Ljava/lang/Object;
astore 4
L7:
aload 6
aload 1
aload 4
invokevirtual com/alibaba/fastjson/parser/deserializer/FieldDeserializer/setValue(Ljava/lang/Object;Ljava/lang/Object;)V
goto L4
L6:
aload 4
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask/getContext()Lcom/alibaba/fastjson/parser/ParseContext;
invokevirtual com/alibaba/fastjson/parser/ParseContext/getObject()Ljava/lang/Object;
astore 4
goto L7
.limit locals 8
.limit stack 3
.end method

.method public static final parse(Ljava/lang/String;)Ljava/lang/Object;
aload 0
getstatic com/alibaba/fastjson/JSON/DEFAULT_PARSER_FEATURE I
invokestatic com/alibaba/fastjson/JSON/parse(Ljava/lang/String;I)Ljava/lang/Object;
areturn
.limit locals 1
.limit stack 2
.end method

.method public static final parse(Ljava/lang/String;I)Ljava/lang/Object;
aload 0
ifnonnull L0
aconst_null
areturn
L0:
new com/alibaba/fastjson/parser/DefaultJSONParser
dup
aload 0
invokestatic com/alibaba/fastjson/parser/ParserConfig/getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;
iload 1
invokespecial com/alibaba/fastjson/parser/DefaultJSONParser/<init>(Ljava/lang/String;Lcom/alibaba/fastjson/parser/ParserConfig;I)V
astore 0
aload 0
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/parse()Ljava/lang/Object;
astore 2
aload 0
aload 2
invokestatic com/alibaba/fastjson/JSON/handleResovleTask(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;)V
aload 0
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/close()V
aload 2
areturn
.limit locals 3
.limit stack 5
.end method

.method public static final transient parse(Ljava/lang/String;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
getstatic com/alibaba/fastjson/JSON/DEFAULT_PARSER_FEATURE I
istore 3
aload 1
arraylength
istore 4
iconst_0
istore 2
L0:
iload 2
iload 4
if_icmpge L1
iload 3
aload 1
iload 2
aaload
iconst_1
invokestatic com/alibaba/fastjson/parser/Feature/config(ILcom/alibaba/fastjson/parser/Feature;Z)I
istore 3
iload 2
iconst_1
iadd
istore 2
goto L0
L1:
aload 0
iload 3
invokestatic com/alibaba/fastjson/JSON/parse(Ljava/lang/String;I)Ljava/lang/Object;
areturn
.limit locals 5
.limit stack 3
.end method

.method public static final parse([BIILjava/nio/charset/CharsetDecoder;I)Ljava/lang/Object;
aload 3
invokevirtual java/nio/charset/CharsetDecoder/reset()Ljava/nio/charset/CharsetDecoder;
pop
iload 2
i2d
aload 3
invokevirtual java/nio/charset/CharsetDecoder/maxCharsPerByte()F
f2d
dmul
d2i
invokestatic com/alibaba/fastjson/util/ThreadLocalCache/getChars(I)[C
astore 5
aload 0
iload 1
iload 2
invokestatic java/nio/ByteBuffer/wrap([BII)Ljava/nio/ByteBuffer;
astore 0
aload 5
invokestatic java/nio/CharBuffer/wrap([C)Ljava/nio/CharBuffer;
astore 6
aload 3
aload 0
aload 6
invokestatic com/alibaba/fastjson/util/IOUtils/decode(Ljava/nio/charset/CharsetDecoder;Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)V
new com/alibaba/fastjson/parser/DefaultJSONParser
dup
aload 5
aload 6
invokevirtual java/nio/CharBuffer/position()I
invokestatic com/alibaba/fastjson/parser/ParserConfig/getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;
iload 4
invokespecial com/alibaba/fastjson/parser/DefaultJSONParser/<init>([CILcom/alibaba/fastjson/parser/ParserConfig;I)V
astore 0
aload 0
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/parse()Ljava/lang/Object;
astore 3
aload 0
aload 3
invokestatic com/alibaba/fastjson/JSON/handleResovleTask(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;)V
aload 0
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/close()V
aload 3
areturn
.limit locals 7
.limit stack 6
.end method

.method public static final transient parse([BIILjava/nio/charset/CharsetDecoder;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
aload 0
ifnull L0
aload 0
arraylength
ifne L1
L0:
aconst_null
areturn
L1:
getstatic com/alibaba/fastjson/JSON/DEFAULT_PARSER_FEATURE I
istore 6
aload 4
arraylength
istore 7
iconst_0
istore 5
L2:
iload 5
iload 7
if_icmpge L3
iload 6
aload 4
iload 5
aaload
iconst_1
invokestatic com/alibaba/fastjson/parser/Feature/config(ILcom/alibaba/fastjson/parser/Feature;Z)I
istore 6
iload 5
iconst_1
iadd
istore 5
goto L2
L3:
aload 0
iload 1
iload 2
aload 3
iload 6
invokestatic com/alibaba/fastjson/JSON/parse([BIILjava/nio/charset/CharsetDecoder;I)Ljava/lang/Object;
areturn
.limit locals 8
.limit stack 5
.end method

.method public static final transient parse([B[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
aload 0
iconst_0
aload 0
arraylength
invokestatic com/alibaba/fastjson/util/ThreadLocalCache/getUTF8Decoder()Ljava/nio/charset/CharsetDecoder;
aload 1
invokestatic com/alibaba/fastjson/JSON/parse([BIILjava/nio/charset/CharsetDecoder;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
areturn
.limit locals 2
.limit stack 5
.end method

.method public static final parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;
aload 0
ifnonnull L0
aconst_null
areturn
L0:
new com/alibaba/fastjson/parser/DefaultJSONParser
dup
aload 0
invokestatic com/alibaba/fastjson/parser/ParserConfig/getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;
invokespecial com/alibaba/fastjson/parser/DefaultJSONParser/<init>(Ljava/lang/String;Lcom/alibaba/fastjson/parser/ParserConfig;)V
astore 1
aload 1
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/getLexer()Lcom/alibaba/fastjson/parser/JSONLexer;
astore 0
aload 0
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
bipush 8
if_icmpne L1
aload 0
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken()V 0
aconst_null
astore 0
L2:
aload 1
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/close()V
aload 0
areturn
L1:
aload 0
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
bipush 20
if_icmpne L3
aconst_null
astore 0
goto L2
L3:
new com/alibaba/fastjson/JSONArray
dup
invokespecial com/alibaba/fastjson/JSONArray/<init>()V
astore 0
aload 1
aload 0
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/parseArray(Ljava/util/Collection;)V
aload 1
aload 0
invokestatic com/alibaba/fastjson/JSON/handleResovleTask(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;)V
goto L2
.limit locals 2
.limit stack 4
.end method

.method public static final parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;
.signature "<T:Ljava/lang/Object;>(Ljava/lang/String;Ljava/lang/Class<TT;>;)Ljava/util/List<TT;>;"
aload 0
ifnonnull L0
aconst_null
areturn
L0:
new com/alibaba/fastjson/parser/DefaultJSONParser
dup
aload 0
invokestatic com/alibaba/fastjson/parser/ParserConfig/getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;
invokespecial com/alibaba/fastjson/parser/DefaultJSONParser/<init>(Ljava/lang/String;Lcom/alibaba/fastjson/parser/ParserConfig;)V
astore 2
aload 2
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/getLexer()Lcom/alibaba/fastjson/parser/JSONLexer;
astore 0
aload 0
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
bipush 8
if_icmpne L1
aload 0
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextToken()V 0
aconst_null
astore 0
L2:
aload 2
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/close()V
aload 0
areturn
L1:
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 0
aload 2
aload 1
aload 0
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/parseArray(Ljava/lang/Class;Ljava/util/Collection;)V
aload 2
aload 0
invokestatic com/alibaba/fastjson/JSON/handleResovleTask(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;)V
goto L2
.limit locals 3
.limit stack 4
.end method

.method public static final parseArray(Ljava/lang/String;[Ljava/lang/reflect/Type;)Ljava/util/List;
.signature "(Ljava/lang/String;[Ljava/lang/reflect/Type;)Ljava/util/List<Ljava/lang/Object;>;"
aload 0
ifnonnull L0
aconst_null
areturn
L0:
new com/alibaba/fastjson/parser/DefaultJSONParser
dup
aload 0
invokestatic com/alibaba/fastjson/parser/ParserConfig/getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;
invokespecial com/alibaba/fastjson/parser/DefaultJSONParser/<init>(Ljava/lang/String;Lcom/alibaba/fastjson/parser/ParserConfig;)V
astore 2
aload 2
aload 1
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/parseArray([Ljava/lang/reflect/Type;)[Ljava/lang/Object;
astore 0
aload 0
ifnonnull L1
aconst_null
astore 0
L2:
aload 2
aload 0
invokestatic com/alibaba/fastjson/JSON/handleResovleTask(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;)V
aload 2
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/close()V
aload 0
areturn
L1:
aload 0
invokestatic java/util/Arrays/asList([Ljava/lang/Object;)Ljava/util/List;
astore 0
goto L2
.limit locals 3
.limit stack 4
.end method

.method public static final parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;
aload 0
invokestatic com/alibaba/fastjson/JSON/parse(Ljava/lang/String;)Ljava/lang/Object;
astore 0
aload 0
instanceof com/alibaba/fastjson/JSONObject
ifeq L0
aload 0
checkcast com/alibaba/fastjson/JSONObject
areturn
L0:
aload 0
invokestatic com/alibaba/fastjson/JSON/toJSON(Ljava/lang/Object;)Ljava/lang/Object;
checkcast com/alibaba/fastjson/JSONObject
areturn
.limit locals 1
.limit stack 1
.end method

.method public static final transient parseObject(Ljava/lang/String;[Lcom/alibaba/fastjson/parser/Feature;)Lcom/alibaba/fastjson/JSONObject;
aload 0
aload 1
invokestatic com/alibaba/fastjson/JSON/parse(Ljava/lang/String;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
checkcast com/alibaba/fastjson/JSONObject
areturn
.limit locals 2
.limit stack 2
.end method

.method public static final transient parseObject(Ljava/lang/String;Lcom/alibaba/fastjson/TypeReference;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
.signature "<T:Ljava/lang/Object;>(Ljava/lang/String;Lcom/alibaba/fastjson/TypeReference<TT;>;[Lcom/alibaba/fastjson/parser/Feature;)TT;"
aload 0
aload 1
invokevirtual com/alibaba/fastjson/TypeReference/getType()Ljava/lang/reflect/Type;
invokestatic com/alibaba/fastjson/parser/ParserConfig/getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;
getstatic com/alibaba/fastjson/JSON/DEFAULT_PARSER_FEATURE I
aload 2
invokestatic com/alibaba/fastjson/JSON/parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;I[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
areturn
.limit locals 3
.limit stack 5
.end method

.method public static final parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
.signature "<T:Ljava/lang/Object;>(Ljava/lang/String;Ljava/lang/Class<TT;>;)TT;"
aload 0
aload 1
iconst_0
anewarray com/alibaba/fastjson/parser/Feature
invokestatic com/alibaba/fastjson/JSON/parseObject(Ljava/lang/String;Ljava/lang/Class;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
areturn
.limit locals 2
.limit stack 3
.end method

.method public static final transient parseObject(Ljava/lang/String;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/deserializer/ParseProcess;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
.signature "<T:Ljava/lang/Object;>(Ljava/lang/String;Ljava/lang/Class<TT;>;Lcom/alibaba/fastjson/parser/deserializer/ParseProcess;[Lcom/alibaba/fastjson/parser/Feature;)TT;"
aload 0
aload 1
invokestatic com/alibaba/fastjson/parser/ParserConfig/getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;
aload 2
getstatic com/alibaba/fastjson/JSON/DEFAULT_PARSER_FEATURE I
aload 3
invokestatic com/alibaba/fastjson/JSON/parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/parser/deserializer/ParseProcess;I[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
areturn
.limit locals 4
.limit stack 6
.end method

.method public static final transient parseObject(Ljava/lang/String;Ljava/lang/Class;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
.signature "<T:Ljava/lang/Object;>(Ljava/lang/String;Ljava/lang/Class<TT;>;[Lcom/alibaba/fastjson/parser/Feature;)TT;"
aload 0
aload 1
invokestatic com/alibaba/fastjson/parser/ParserConfig/getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;
getstatic com/alibaba/fastjson/JSON/DEFAULT_PARSER_FEATURE I
aload 2
invokestatic com/alibaba/fastjson/JSON/parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;I[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
areturn
.limit locals 3
.limit stack 5
.end method

.method public static final transient parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;I[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
.signature "<T:Ljava/lang/Object;>(Ljava/lang/String;Ljava/lang/reflect/Type;I[Lcom/alibaba/fastjson/parser/Feature;)TT;"
aload 0
ifnonnull L0
aconst_null
areturn
L0:
aload 3
arraylength
istore 6
iconst_0
istore 5
iload 2
istore 4
iload 5
istore 2
L1:
iload 2
iload 6
if_icmpge L2
iload 4
aload 3
iload 2
aaload
iconst_1
invokestatic com/alibaba/fastjson/parser/Feature/config(ILcom/alibaba/fastjson/parser/Feature;Z)I
istore 4
iload 2
iconst_1
iadd
istore 2
goto L1
L2:
new com/alibaba/fastjson/parser/DefaultJSONParser
dup
aload 0
invokestatic com/alibaba/fastjson/parser/ParserConfig/getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;
iload 4
invokespecial com/alibaba/fastjson/parser/DefaultJSONParser/<init>(Ljava/lang/String;Lcom/alibaba/fastjson/parser/ParserConfig;I)V
astore 0
aload 0
aload 1
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/parseObject(Ljava/lang/reflect/Type;)Ljava/lang/Object;
astore 1
aload 0
aload 1
invokestatic com/alibaba/fastjson/JSON/handleResovleTask(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;)V
aload 0
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/close()V
aload 1
areturn
.limit locals 7
.limit stack 5
.end method

.method public static final transient parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;I[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
.signature "<T:Ljava/lang/Object;>(Ljava/lang/String;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;I[Lcom/alibaba/fastjson/parser/Feature;)TT;"
aload 0
aload 1
aload 2
aconst_null
iload 3
aload 4
invokestatic com/alibaba/fastjson/JSON/parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/parser/deserializer/ParseProcess;I[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
areturn
.limit locals 5
.limit stack 6
.end method

.method public static final transient parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/parser/deserializer/ParseProcess;I[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
.signature "<T:Ljava/lang/Object;>(Ljava/lang/String;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/parser/deserializer/ParseProcess;I[Lcom/alibaba/fastjson/parser/Feature;)TT;"
aload 0
ifnonnull L0
aconst_null
areturn
L0:
aload 5
arraylength
istore 8
iconst_0
istore 7
iload 4
istore 6
iload 7
istore 4
L1:
iload 4
iload 8
if_icmpge L2
iload 6
aload 5
iload 4
aaload
iconst_1
invokestatic com/alibaba/fastjson/parser/Feature/config(ILcom/alibaba/fastjson/parser/Feature;Z)I
istore 6
iload 4
iconst_1
iadd
istore 4
goto L1
L2:
new com/alibaba/fastjson/parser/DefaultJSONParser
dup
aload 0
aload 2
iload 6
invokespecial com/alibaba/fastjson/parser/DefaultJSONParser/<init>(Ljava/lang/String;Lcom/alibaba/fastjson/parser/ParserConfig;I)V
astore 0
aload 3
instanceof com/alibaba/fastjson/parser/deserializer/ExtraTypeProvider
ifeq L3
aload 0
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/getExtraTypeProviders()Ljava/util/List;
aload 3
checkcast com/alibaba/fastjson/parser/deserializer/ExtraTypeProvider
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L3:
aload 3
instanceof com/alibaba/fastjson/parser/deserializer/ExtraProcessor
ifeq L4
aload 0
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/getExtraProcessors()Ljava/util/List;
aload 3
checkcast com/alibaba/fastjson/parser/deserializer/ExtraProcessor
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L4:
aload 0
aload 1
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/parseObject(Ljava/lang/reflect/Type;)Ljava/lang/Object;
astore 1
aload 0
aload 1
invokestatic com/alibaba/fastjson/JSON/handleResovleTask(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;)V
aload 0
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/close()V
aload 1
areturn
.limit locals 9
.limit stack 5
.end method

.method public static final transient parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/deserializer/ParseProcess;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
.signature "<T:Ljava/lang/Object;>(Ljava/lang/String;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/deserializer/ParseProcess;[Lcom/alibaba/fastjson/parser/Feature;)TT;"
aload 0
aload 1
invokestatic com/alibaba/fastjson/parser/ParserConfig/getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;
getstatic com/alibaba/fastjson/JSON/DEFAULT_PARSER_FEATURE I
aload 3
invokestatic com/alibaba/fastjson/JSON/parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;I[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
areturn
.limit locals 4
.limit stack 5
.end method

.method public static final transient parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
.signature "<T:Ljava/lang/Object;>(Ljava/lang/String;Ljava/lang/reflect/Type;[Lcom/alibaba/fastjson/parser/Feature;)TT;"
aload 0
aload 1
invokestatic com/alibaba/fastjson/parser/ParserConfig/getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;
getstatic com/alibaba/fastjson/JSON/DEFAULT_PARSER_FEATURE I
aload 2
invokestatic com/alibaba/fastjson/JSON/parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;I[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
areturn
.limit locals 3
.limit stack 5
.end method

.method public static final transient parseObject([BIILjava/nio/charset/CharsetDecoder;Ljava/lang/reflect/Type;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
.signature "<T:Ljava/lang/Object;>([BIILjava/nio/charset/CharsetDecoder;Ljava/lang/reflect/Type;[Lcom/alibaba/fastjson/parser/Feature;)TT;"
aload 3
invokevirtual java/nio/charset/CharsetDecoder/reset()Ljava/nio/charset/CharsetDecoder;
pop
iload 2
i2d
aload 3
invokevirtual java/nio/charset/CharsetDecoder/maxCharsPerByte()F
f2d
dmul
d2i
invokestatic com/alibaba/fastjson/util/ThreadLocalCache/getChars(I)[C
astore 6
aload 0
iload 1
iload 2
invokestatic java/nio/ByteBuffer/wrap([BII)Ljava/nio/ByteBuffer;
astore 0
aload 6
invokestatic java/nio/CharBuffer/wrap([C)Ljava/nio/CharBuffer;
astore 7
aload 3
aload 0
aload 7
invokestatic com/alibaba/fastjson/util/IOUtils/decode(Ljava/nio/charset/CharsetDecoder;Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)V
aload 6
aload 7
invokevirtual java/nio/CharBuffer/position()I
aload 4
aload 5
invokestatic com/alibaba/fastjson/JSON/parseObject([CILjava/lang/reflect/Type;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
areturn
.limit locals 8
.limit stack 4
.end method

.method public static final transient parseObject([BLjava/lang/reflect/Type;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
.signature "<T:Ljava/lang/Object;>([BLjava/lang/reflect/Type;[Lcom/alibaba/fastjson/parser/Feature;)TT;"
aload 0
iconst_0
aload 0
arraylength
invokestatic com/alibaba/fastjson/util/ThreadLocalCache/getUTF8Decoder()Ljava/nio/charset/CharsetDecoder;
aload 1
aload 2
invokestatic com/alibaba/fastjson/JSON/parseObject([BIILjava/nio/charset/CharsetDecoder;Ljava/lang/reflect/Type;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
areturn
.limit locals 3
.limit stack 6
.end method

.method public static final transient parseObject([CILjava/lang/reflect/Type;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
.signature "<T:Ljava/lang/Object;>([CILjava/lang/reflect/Type;[Lcom/alibaba/fastjson/parser/Feature;)TT;"
aload 0
ifnull L0
aload 0
arraylength
ifne L1
L0:
aconst_null
areturn
L1:
getstatic com/alibaba/fastjson/JSON/DEFAULT_PARSER_FEATURE I
istore 5
aload 3
arraylength
istore 6
iconst_0
istore 4
L2:
iload 4
iload 6
if_icmpge L3
iload 5
aload 3
iload 4
aaload
iconst_1
invokestatic com/alibaba/fastjson/parser/Feature/config(ILcom/alibaba/fastjson/parser/Feature;Z)I
istore 5
iload 4
iconst_1
iadd
istore 4
goto L2
L3:
new com/alibaba/fastjson/parser/DefaultJSONParser
dup
aload 0
iload 1
invokestatic com/alibaba/fastjson/parser/ParserConfig/getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;
iload 5
invokespecial com/alibaba/fastjson/parser/DefaultJSONParser/<init>([CILcom/alibaba/fastjson/parser/ParserConfig;I)V
astore 0
aload 0
aload 2
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/parseObject(Ljava/lang/reflect/Type;)Ljava/lang/Object;
astore 2
aload 0
aload 2
invokestatic com/alibaba/fastjson/JSON/handleResovleTask(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;)V
aload 0
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/close()V
aload 2
areturn
.limit locals 7
.limit stack 6
.end method

.method public static final toJSON(Ljava/lang/Object;)Ljava/lang/Object;
aload 0
invokestatic com/alibaba/fastjson/parser/ParserConfig/getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;
invokestatic com/alibaba/fastjson/JSON/toJSON(Ljava/lang/Object;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;
areturn
.limit locals 1
.limit stack 2
.end method

.method public static final toJSON(Ljava/lang/Object;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L1 to L3 using L2
aload 0
ifnonnull L4
aconst_null
astore 4
L5:
aload 4
areturn
L4:
aload 0
instanceof com/alibaba/fastjson/JSON
ifeq L6
aload 0
checkcast com/alibaba/fastjson/JSON
areturn
L6:
aload 0
instanceof java/util/Map
ifeq L7
aload 0
checkcast java/util/Map
astore 1
new com/alibaba/fastjson/JSONObject
dup
aload 1
invokeinterface java/util/Map/size()I 0
invokespecial com/alibaba/fastjson/JSONObject/<init>(I)V
astore 0
aload 1
invokeinterface java/util/Map/entrySet()Ljava/util/Set; 0
invokeinterface java/util/Set/iterator()Ljava/util/Iterator; 0
astore 1
L8:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L9
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/util/Map$Entry
astore 4
aload 0
aload 4
invokeinterface java/util/Map$Entry/getKey()Ljava/lang/Object; 0
invokestatic com/alibaba/fastjson/util/TypeUtils/castToString(Ljava/lang/Object;)Ljava/lang/String;
aload 4
invokeinterface java/util/Map$Entry/getValue()Ljava/lang/Object; 0
invokestatic com/alibaba/fastjson/JSON/toJSON(Ljava/lang/Object;)Ljava/lang/Object;
invokevirtual com/alibaba/fastjson/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
pop
goto L8
L9:
aload 0
areturn
L7:
aload 0
instanceof java/util/Collection
ifeq L10
aload 0
checkcast java/util/Collection
astore 1
new com/alibaba/fastjson/JSONArray
dup
aload 1
invokeinterface java/util/Collection/size()I 0
invokespecial com/alibaba/fastjson/JSONArray/<init>(I)V
astore 0
aload 1
invokeinterface java/util/Collection/iterator()Ljava/util/Iterator; 0
astore 1
L11:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L12
aload 0
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
invokestatic com/alibaba/fastjson/JSON/toJSON(Ljava/lang/Object;)Ljava/lang/Object;
invokevirtual com/alibaba/fastjson/JSONArray/add(Ljava/lang/Object;)Z
pop
goto L11
L12:
aload 0
areturn
L10:
aload 0
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
astore 5
aload 5
invokevirtual java/lang/Class/isEnum()Z
ifeq L13
aload 0
checkcast java/lang/Enum
invokevirtual java/lang/Enum/name()Ljava/lang/String;
areturn
L13:
aload 5
invokevirtual java/lang/Class/isArray()Z
ifeq L14
aload 0
invokestatic java/lang/reflect/Array/getLength(Ljava/lang/Object;)I
istore 3
new com/alibaba/fastjson/JSONArray
dup
iload 3
invokespecial com/alibaba/fastjson/JSONArray/<init>(I)V
astore 1
iconst_0
istore 2
L15:
iload 2
iload 3
if_icmpge L16
aload 1
aload 0
iload 2
invokestatic java/lang/reflect/Array/get(Ljava/lang/Object;I)Ljava/lang/Object;
invokestatic com/alibaba/fastjson/JSON/toJSON(Ljava/lang/Object;)Ljava/lang/Object;
invokevirtual com/alibaba/fastjson/JSONArray/add(Ljava/lang/Object;)Z
pop
iload 2
iconst_1
iadd
istore 2
goto L15
L16:
aload 1
areturn
L14:
aload 0
astore 4
aload 1
aload 5
invokevirtual com/alibaba/fastjson/parser/ParserConfig/isPrimitive(Ljava/lang/Class;)Z
ifne L5
L0:
aload 5
aconst_null
invokestatic com/alibaba/fastjson/util/TypeUtils/computeGetters(Ljava/lang/Class;Ljava/util/Map;)Ljava/util/List;
astore 4
new com/alibaba/fastjson/JSONObject
dup
aload 4
invokeinterface java/util/List/size()I 0
invokespecial com/alibaba/fastjson/JSONObject/<init>(I)V
astore 1
aload 4
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 4
L1:
aload 4
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L17
aload 4
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/alibaba/fastjson/util/FieldInfo
astore 5
aload 5
aload 0
invokevirtual com/alibaba/fastjson/util/FieldInfo/get(Ljava/lang/Object;)Ljava/lang/Object;
invokestatic com/alibaba/fastjson/JSON/toJSON(Ljava/lang/Object;)Ljava/lang/Object;
astore 6
aload 1
aload 5
invokevirtual com/alibaba/fastjson/util/FieldInfo/getName()Ljava/lang/String;
aload 6
invokevirtual com/alibaba/fastjson/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
pop
L3:
goto L1
L2:
astore 0
new com/alibaba/fastjson/JSONException
dup
ldc "toJSON error"
aload 0
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;Ljava/lang/Throwable;)V
athrow
L17:
aload 1
areturn
.limit locals 7
.limit stack 4
.end method

.method public static final transient toJSONBytes(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)[B
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
.catch all from L5 to L6 using L2
new com/alibaba/fastjson/serializer/SerializeWriter
dup
invokespecial com/alibaba/fastjson/serializer/SerializeWriter/<init>()V
astore 5
L0:
new com/alibaba/fastjson/serializer/JSONSerializer
dup
aload 5
aload 1
invokespecial com/alibaba/fastjson/serializer/JSONSerializer/<init>(Lcom/alibaba/fastjson/serializer/SerializeWriter;Lcom/alibaba/fastjson/serializer/SerializeConfig;)V
astore 1
aload 2
arraylength
istore 4
L1:
iconst_0
istore 3
L7:
iload 3
iload 4
if_icmpge L5
L3:
aload 1
aload 2
iload 3
aaload
iconst_1
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/config(Lcom/alibaba/fastjson/serializer/SerializerFeature;Z)V
L4:
iload 3
iconst_1
iadd
istore 3
goto L7
L5:
aload 1
aload 0
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/write(Ljava/lang/Object;)V
aload 5
ldc "UTF-8"
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/toBytes(Ljava/lang/String;)[B
astore 0
L6:
aload 5
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/close()V
aload 0
areturn
L2:
astore 0
aload 5
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/close()V
aload 0
athrow
.limit locals 6
.limit stack 4
.end method

.method public static final transient toJSONBytes(Ljava/lang/Object;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)[B
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
.catch all from L5 to L6 using L2
new com/alibaba/fastjson/serializer/SerializeWriter
dup
invokespecial com/alibaba/fastjson/serializer/SerializeWriter/<init>()V
astore 4
L0:
new com/alibaba/fastjson/serializer/JSONSerializer
dup
aload 4
invokespecial com/alibaba/fastjson/serializer/JSONSerializer/<init>(Lcom/alibaba/fastjson/serializer/SerializeWriter;)V
astore 5
aload 1
arraylength
istore 3
L1:
iconst_0
istore 2
L7:
iload 2
iload 3
if_icmpge L5
L3:
aload 5
aload 1
iload 2
aaload
iconst_1
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/config(Lcom/alibaba/fastjson/serializer/SerializerFeature;Z)V
L4:
iload 2
iconst_1
iadd
istore 2
goto L7
L5:
aload 5
aload 0
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/write(Ljava/lang/Object;)V
aload 4
ldc "UTF-8"
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/toBytes(Ljava/lang/String;)[B
astore 0
L6:
aload 4
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/close()V
aload 0
areturn
L2:
astore 0
aload 4
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/close()V
aload 0
athrow
.limit locals 6
.limit stack 3
.end method

.method public static final toJSONString(Ljava/lang/Object;)Ljava/lang/String;
aload 0
iconst_0
anewarray com/alibaba/fastjson/serializer/SerializerFeature
invokestatic com/alibaba/fastjson/JSON/toJSONString(Ljava/lang/Object;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;
areturn
.limit locals 1
.limit stack 2
.end method

.method public static final transient toJSONString(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
.catch all from L5 to L6 using L2
new com/alibaba/fastjson/serializer/SerializeWriter
dup
invokespecial com/alibaba/fastjson/serializer/SerializeWriter/<init>()V
astore 5
L0:
new com/alibaba/fastjson/serializer/JSONSerializer
dup
aload 5
aload 1
invokespecial com/alibaba/fastjson/serializer/JSONSerializer/<init>(Lcom/alibaba/fastjson/serializer/SerializeWriter;Lcom/alibaba/fastjson/serializer/SerializeConfig;)V
astore 1
aload 2
arraylength
istore 4
L1:
iconst_0
istore 3
L7:
iload 3
iload 4
if_icmpge L5
L3:
aload 1
aload 2
iload 3
aaload
iconst_1
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/config(Lcom/alibaba/fastjson/serializer/SerializerFeature;Z)V
L4:
iload 3
iconst_1
iadd
istore 3
goto L7
L5:
aload 1
aload 0
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/write(Ljava/lang/Object;)V
aload 5
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/toString()Ljava/lang/String;
astore 0
L6:
aload 5
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/close()V
aload 0
areturn
L2:
astore 0
aload 5
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/close()V
aload 0
athrow
.limit locals 6
.limit stack 4
.end method

.method public static final transient toJSONString(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeFilter;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
.catch all from L5 to L6 using L2
.catch all from L7 to L8 using L2
.catch all from L8 to L9 using L2
.catch all from L9 to L10 using L2
.catch all from L10 to L11 using L2
.catch all from L11 to L12 using L2
.catch all from L12 to L13 using L2
.catch all from L13 to L14 using L2
new com/alibaba/fastjson/serializer/SerializeWriter
dup
invokespecial com/alibaba/fastjson/serializer/SerializeWriter/<init>()V
astore 5
L0:
new com/alibaba/fastjson/serializer/JSONSerializer
dup
aload 5
invokespecial com/alibaba/fastjson/serializer/JSONSerializer/<init>(Lcom/alibaba/fastjson/serializer/SerializeWriter;)V
astore 6
aload 2
arraylength
istore 4
L1:
iconst_0
istore 3
L15:
iload 3
iload 4
if_icmpge L5
L3:
aload 6
aload 2
iload 3
aaload
iconst_1
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/config(Lcom/alibaba/fastjson/serializer/SerializerFeature;Z)V
L4:
iload 3
iconst_1
iadd
istore 3
goto L15
L5:
aload 6
getstatic com/alibaba/fastjson/serializer/SerializerFeature/WriteDateUseDateFormat Lcom/alibaba/fastjson/serializer/SerializerFeature;
iconst_1
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/config(Lcom/alibaba/fastjson/serializer/SerializerFeature;Z)V
L6:
aload 1
ifnull L13
L7:
aload 1
instanceof com/alibaba/fastjson/serializer/PropertyPreFilter
ifeq L8
aload 6
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/getPropertyPreFilters()Ljava/util/List;
aload 1
checkcast com/alibaba/fastjson/serializer/PropertyPreFilter
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L8:
aload 1
instanceof com/alibaba/fastjson/serializer/NameFilter
ifeq L9
aload 6
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/getNameFilters()Ljava/util/List;
aload 1
checkcast com/alibaba/fastjson/serializer/NameFilter
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L9:
aload 1
instanceof com/alibaba/fastjson/serializer/ValueFilter
ifeq L10
aload 6
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/getValueFilters()Ljava/util/List;
aload 1
checkcast com/alibaba/fastjson/serializer/ValueFilter
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L10:
aload 1
instanceof com/alibaba/fastjson/serializer/PropertyFilter
ifeq L11
aload 6
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/getPropertyFilters()Ljava/util/List;
aload 1
checkcast com/alibaba/fastjson/serializer/PropertyFilter
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L11:
aload 1
instanceof com/alibaba/fastjson/serializer/BeforeFilter
ifeq L12
aload 6
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/getBeforeFilters()Ljava/util/List;
aload 1
checkcast com/alibaba/fastjson/serializer/BeforeFilter
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L12:
aload 1
instanceof com/alibaba/fastjson/serializer/AfterFilter
ifeq L13
aload 6
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/getAfterFilters()Ljava/util/List;
aload 1
checkcast com/alibaba/fastjson/serializer/AfterFilter
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L13:
aload 6
aload 0
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/write(Ljava/lang/Object;)V
aload 5
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/toString()Ljava/lang/String;
astore 0
L14:
aload 5
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/close()V
aload 0
areturn
L2:
astore 0
aload 5
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/close()V
aload 0
athrow
.limit locals 7
.limit stack 3
.end method

.method public static final toJSONString(Ljava/lang/Object;Z)Ljava/lang/String;
iload 1
ifne L0
aload 0
invokestatic com/alibaba/fastjson/JSON/toJSONString(Ljava/lang/Object;)Ljava/lang/String;
areturn
L0:
aload 0
iconst_1
anewarray com/alibaba/fastjson/serializer/SerializerFeature
dup
iconst_0
getstatic com/alibaba/fastjson/serializer/SerializerFeature/PrettyFormat Lcom/alibaba/fastjson/serializer/SerializerFeature;
aastore
invokestatic com/alibaba/fastjson/JSON/toJSONString(Ljava/lang/Object;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;
areturn
.limit locals 2
.limit stack 5
.end method

.method public static final transient toJSONString(Ljava/lang/Object;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
.catch all from L5 to L6 using L2
new com/alibaba/fastjson/serializer/SerializeWriter
dup
invokespecial com/alibaba/fastjson/serializer/SerializeWriter/<init>()V
astore 4
L0:
new com/alibaba/fastjson/serializer/JSONSerializer
dup
aload 4
invokespecial com/alibaba/fastjson/serializer/JSONSerializer/<init>(Lcom/alibaba/fastjson/serializer/SerializeWriter;)V
astore 5
aload 1
arraylength
istore 3
L1:
iconst_0
istore 2
L7:
iload 2
iload 3
if_icmpge L5
L3:
aload 5
aload 1
iload 2
aaload
iconst_1
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/config(Lcom/alibaba/fastjson/serializer/SerializerFeature;Z)V
L4:
iload 2
iconst_1
iadd
istore 2
goto L7
L5:
aload 5
aload 0
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/write(Ljava/lang/Object;)V
aload 4
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/toString()Ljava/lang/String;
astore 0
L6:
aload 4
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/close()V
aload 0
areturn
L2:
astore 0
aload 4
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/close()V
aload 0
athrow
.limit locals 6
.limit stack 3
.end method

.method public static final transient toJSONStringWithDateFormat(Ljava/lang/Object;Ljava/lang/String;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
.catch all from L5 to L6 using L2
.catch all from L7 to L8 using L2
.catch all from L8 to L9 using L2
new com/alibaba/fastjson/serializer/SerializeWriter
dup
invokespecial com/alibaba/fastjson/serializer/SerializeWriter/<init>()V
astore 5
L0:
new com/alibaba/fastjson/serializer/JSONSerializer
dup
aload 5
invokespecial com/alibaba/fastjson/serializer/JSONSerializer/<init>(Lcom/alibaba/fastjson/serializer/SerializeWriter;)V
astore 6
aload 2
arraylength
istore 4
L1:
iconst_0
istore 3
L10:
iload 3
iload 4
if_icmpge L5
L3:
aload 6
aload 2
iload 3
aaload
iconst_1
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/config(Lcom/alibaba/fastjson/serializer/SerializerFeature;Z)V
L4:
iload 3
iconst_1
iadd
istore 3
goto L10
L5:
aload 6
getstatic com/alibaba/fastjson/serializer/SerializerFeature/WriteDateUseDateFormat Lcom/alibaba/fastjson/serializer/SerializerFeature;
iconst_1
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/config(Lcom/alibaba/fastjson/serializer/SerializerFeature;Z)V
L6:
aload 1
ifnull L8
L7:
aload 6
aload 1
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/setDateFormat(Ljava/lang/String;)V
L8:
aload 6
aload 0
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/write(Ljava/lang/Object;)V
aload 5
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/toString()Ljava/lang/String;
astore 0
L9:
aload 5
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/close()V
aload 0
areturn
L2:
astore 0
aload 5
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/close()V
aload 0
athrow
.limit locals 7
.limit stack 3
.end method

.method public static final transient toJSONStringZ(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;
.catch all from L0 to L1 using L2
new com/alibaba/fastjson/serializer/SerializeWriter
dup
aload 2
invokespecial com/alibaba/fastjson/serializer/SerializeWriter/<init>([Lcom/alibaba/fastjson/serializer/SerializerFeature;)V
astore 2
L0:
new com/alibaba/fastjson/serializer/JSONSerializer
dup
aload 2
aload 1
invokespecial com/alibaba/fastjson/serializer/JSONSerializer/<init>(Lcom/alibaba/fastjson/serializer/SerializeWriter;Lcom/alibaba/fastjson/serializer/SerializeConfig;)V
aload 0
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/write(Ljava/lang/Object;)V
aload 2
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/toString()Ljava/lang/String;
astore 0
L1:
aload 2
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/close()V
aload 0
areturn
L2:
astore 0
aload 2
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/close()V
aload 0
athrow
.limit locals 3
.limit stack 4
.end method

.method public static final toJavaObject(Lcom/alibaba/fastjson/JSON;Ljava/lang/Class;)Ljava/lang/Object;
.signature "<T:Ljava/lang/Object;>(Lcom/alibaba/fastjson/JSON;Ljava/lang/Class<TT;>;)TT;"
aload 0
aload 1
invokestatic com/alibaba/fastjson/parser/ParserConfig/getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;
invokestatic com/alibaba/fastjson/util/TypeUtils/cast(Ljava/lang/Object;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;
areturn
.limit locals 2
.limit stack 3
.end method

.method public static final transient writeJSONStringTo(Ljava/lang/Object;Ljava/io/Writer;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)V
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
.catch all from L5 to L6 using L2
new com/alibaba/fastjson/serializer/SerializeWriter
dup
aload 1
invokespecial com/alibaba/fastjson/serializer/SerializeWriter/<init>(Ljava/io/Writer;)V
astore 1
L0:
new com/alibaba/fastjson/serializer/JSONSerializer
dup
aload 1
invokespecial com/alibaba/fastjson/serializer/JSONSerializer/<init>(Lcom/alibaba/fastjson/serializer/SerializeWriter;)V
astore 5
aload 2
arraylength
istore 4
L1:
iconst_0
istore 3
L7:
iload 3
iload 4
if_icmpge L5
L3:
aload 5
aload 2
iload 3
aaload
iconst_1
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/config(Lcom/alibaba/fastjson/serializer/SerializerFeature;Z)V
L4:
iload 3
iconst_1
iadd
istore 3
goto L7
L5:
aload 5
aload 0
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/write(Ljava/lang/Object;)V
L6:
aload 1
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/close()V
return
L2:
astore 0
aload 1
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/close()V
aload 0
athrow
.limit locals 6
.limit stack 3
.end method

.method public toJSONString()Ljava/lang/String;
.catch all from L0 to L1 using L2
new com/alibaba/fastjson/serializer/SerializeWriter
dup
invokespecial com/alibaba/fastjson/serializer/SerializeWriter/<init>()V
astore 1
L0:
new com/alibaba/fastjson/serializer/JSONSerializer
dup
aload 1
invokespecial com/alibaba/fastjson/serializer/JSONSerializer/<init>(Lcom/alibaba/fastjson/serializer/SerializeWriter;)V
aload 0
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/write(Ljava/lang/Object;)V
aload 1
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/toString()Ljava/lang/String;
astore 2
L1:
aload 1
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/close()V
aload 2
areturn
L2:
astore 2
aload 1
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/close()V
aload 2
athrow
.limit locals 3
.limit stack 3
.end method

.method public toString()Ljava/lang/String;
aload 0
invokevirtual com/alibaba/fastjson/JSON/toJSONString()Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public writeJSONString(Ljava/lang/Appendable;)V
.catch java/io/IOException from L0 to L1 using L2
.catch all from L0 to L1 using L3
.catch all from L4 to L3 using L3
new com/alibaba/fastjson/serializer/SerializeWriter
dup
invokespecial com/alibaba/fastjson/serializer/SerializeWriter/<init>()V
astore 2
L0:
new com/alibaba/fastjson/serializer/JSONSerializer
dup
aload 2
invokespecial com/alibaba/fastjson/serializer/JSONSerializer/<init>(Lcom/alibaba/fastjson/serializer/SerializeWriter;)V
aload 0
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/write(Ljava/lang/Object;)V
aload 1
aload 2
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/toString()Ljava/lang/String;
invokeinterface java/lang/Appendable/append(Ljava/lang/CharSequence;)Ljava/lang/Appendable; 1
pop
L1:
aload 2
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/close()V
return
L2:
astore 1
L4:
new com/alibaba/fastjson/JSONException
dup
aload 1
invokevirtual java/io/IOException/getMessage()Ljava/lang/String;
aload 1
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;Ljava/lang/Throwable;)V
athrow
L3:
astore 1
aload 2
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/close()V
aload 1
athrow
.limit locals 3
.limit stack 4
.end method
