.bytecode 50.0
.class public synchronized abstract com/alibaba/fastjson/parser/deserializer/ASMJavaBeanDeserializer
.super java/lang/Object
.implements com/alibaba/fastjson/parser/deserializer/ObjectDeserializer
.inner class static synthetic inner com/alibaba/fastjson/parser/deserializer/ASMJavaBeanDeserializer$1
.inner class public final InnerJavaBeanDeserializer inner com/alibaba/fastjson/parser/deserializer/ASMJavaBeanDeserializer$InnerJavaBeanDeserializer outer com/alibaba/fastjson/parser/deserializer/ASMJavaBeanDeserializer

.field protected 'serializer' Lcom/alibaba/fastjson/parser/deserializer/ASMJavaBeanDeserializer$InnerJavaBeanDeserializer;

.method public <init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;)V
.signature "(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class<*>;)V"
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new com/alibaba/fastjson/parser/deserializer/ASMJavaBeanDeserializer$InnerJavaBeanDeserializer
dup
aload 0
aload 1
aload 2
aconst_null
invokespecial com/alibaba/fastjson/parser/deserializer/ASMJavaBeanDeserializer$InnerJavaBeanDeserializer/<init>(Lcom/alibaba/fastjson/parser/deserializer/ASMJavaBeanDeserializer;Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/deserializer/ASMJavaBeanDeserializer$1;)V
putfield com/alibaba/fastjson/parser/deserializer/ASMJavaBeanDeserializer/serializer Lcom/alibaba/fastjson/parser/deserializer/ASMJavaBeanDeserializer$InnerJavaBeanDeserializer;
aload 0
getfield com/alibaba/fastjson/parser/deserializer/ASMJavaBeanDeserializer/serializer Lcom/alibaba/fastjson/parser/deserializer/ASMJavaBeanDeserializer$InnerJavaBeanDeserializer;
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMJavaBeanDeserializer$InnerJavaBeanDeserializer/getFieldDeserializerMap()Ljava/util/Map;
pop
return
.limit locals 3
.limit stack 7
.end method

.method public createFieldDeserializer(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
.signature "(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class<*>;Lcom/alibaba/fastjson/util/FieldInfo;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;"
aload 1
aload 1
aload 2
aload 3
invokevirtual com/alibaba/fastjson/parser/ParserConfig/createFieldDeserializer(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
areturn
.limit locals 4
.limit stack 4
.end method

.method public createInstance(Lcom/alibaba/fastjson/parser/DefaultJSONParser;)Ljava/lang/Object;
aload 0
getfield com/alibaba/fastjson/parser/deserializer/ASMJavaBeanDeserializer/serializer Lcom/alibaba/fastjson/parser/deserializer/ASMJavaBeanDeserializer$InnerJavaBeanDeserializer;
aload 1
aload 0
getfield com/alibaba/fastjson/parser/deserializer/ASMJavaBeanDeserializer/serializer Lcom/alibaba/fastjson/parser/deserializer/ASMJavaBeanDeserializer$InnerJavaBeanDeserializer;
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMJavaBeanDeserializer$InnerJavaBeanDeserializer/getClazz()Ljava/lang/Class;
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMJavaBeanDeserializer$InnerJavaBeanDeserializer/createInstance(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;)Ljava/lang/Object;
areturn
.limit locals 2
.limit stack 3
.end method

.method public abstract createInstance(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;)Ljava/lang/Object;
.end method

.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
.signature "<T:Ljava/lang/Object;>(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)TT;"
aload 0
getfield com/alibaba/fastjson/parser/deserializer/ASMJavaBeanDeserializer/serializer Lcom/alibaba/fastjson/parser/deserializer/ASMJavaBeanDeserializer$InnerJavaBeanDeserializer;
aload 1
aload 2
aload 3
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMJavaBeanDeserializer$InnerJavaBeanDeserializer/deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
areturn
.limit locals 4
.limit stack 4
.end method

.method public getFastMatchToken()I
aload 0
getfield com/alibaba/fastjson/parser/deserializer/ASMJavaBeanDeserializer/serializer Lcom/alibaba/fastjson/parser/deserializer/ASMJavaBeanDeserializer$InnerJavaBeanDeserializer;
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMJavaBeanDeserializer$InnerJavaBeanDeserializer/getFastMatchToken()I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
aload 0
getfield com/alibaba/fastjson/parser/deserializer/ASMJavaBeanDeserializer/serializer Lcom/alibaba/fastjson/parser/deserializer/ASMJavaBeanDeserializer$InnerJavaBeanDeserializer;
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMJavaBeanDeserializer$InnerJavaBeanDeserializer/getFieldDeserializerMap()Ljava/util/Map;
aload 1
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast com/alibaba/fastjson/parser/deserializer/FieldDeserializer
areturn
.limit locals 2
.limit stack 2
.end method

.method public getFieldType(Ljava/lang/String;)Ljava/lang/reflect/Type;
aload 0
getfield com/alibaba/fastjson/parser/deserializer/ASMJavaBeanDeserializer/serializer Lcom/alibaba/fastjson/parser/deserializer/ASMJavaBeanDeserializer$InnerJavaBeanDeserializer;
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMJavaBeanDeserializer$InnerJavaBeanDeserializer/getFieldDeserializerMap()Ljava/util/Map;
aload 1
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast com/alibaba/fastjson/parser/deserializer/FieldDeserializer
invokevirtual com/alibaba/fastjson/parser/deserializer/FieldDeserializer/getFieldType()Ljava/lang/reflect/Type;
areturn
.limit locals 2
.limit stack 2
.end method

.method public getInnterSerializer()Lcom/alibaba/fastjson/parser/deserializer/ASMJavaBeanDeserializer$InnerJavaBeanDeserializer;
aload 0
getfield com/alibaba/fastjson/parser/deserializer/ASMJavaBeanDeserializer/serializer Lcom/alibaba/fastjson/parser/deserializer/ASMJavaBeanDeserializer$InnerJavaBeanDeserializer;
areturn
.limit locals 1
.limit stack 1
.end method

.method public parseField(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)Z
.signature "(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;)Z"
aload 1
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/getLexer()Lcom/alibaba/fastjson/parser/JSONLexer;
astore 8
aload 0
getfield com/alibaba/fastjson/parser/deserializer/ASMJavaBeanDeserializer/serializer Lcom/alibaba/fastjson/parser/deserializer/ASMJavaBeanDeserializer$InnerJavaBeanDeserializer;
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMJavaBeanDeserializer$InnerJavaBeanDeserializer/getFieldDeserializerMap()Ljava/util/Map;
astore 9
aload 9
aload 2
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast com/alibaba/fastjson/parser/deserializer/FieldDeserializer
astore 7
aload 7
astore 6
aload 7
ifnonnull L0
aload 9
invokeinterface java/util/Map/entrySet()Ljava/util/Set; 0
invokeinterface java/util/Set/iterator()Ljava/util/Iterator; 0
astore 9
L1:
aload 7
astore 6
aload 9
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L0
aload 9
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/util/Map$Entry
astore 6
aload 6
invokeinterface java/util/Map$Entry/getKey()Ljava/lang/Object; 0
checkcast java/lang/String
aload 2
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L1
aload 6
invokeinterface java/util/Map$Entry/getValue()Ljava/lang/Object; 0
checkcast com/alibaba/fastjson/parser/deserializer/FieldDeserializer
astore 6
L0:
aload 6
ifnonnull L2
aload 0
getfield com/alibaba/fastjson/parser/deserializer/ASMJavaBeanDeserializer/serializer Lcom/alibaba/fastjson/parser/deserializer/ASMJavaBeanDeserializer$InnerJavaBeanDeserializer;
aload 1
aload 3
aload 2
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMJavaBeanDeserializer$InnerJavaBeanDeserializer/parseExtra(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;Ljava/lang/String;)V
iconst_0
ireturn
L2:
aload 8
aload 6
invokevirtual com/alibaba/fastjson/parser/deserializer/FieldDeserializer/getFastMatchToken()I
invokeinterface com/alibaba/fastjson/parser/JSONLexer/nextTokenWithColon(I)V 1
aload 6
aload 1
aload 3
aload 4
aload 5
invokevirtual com/alibaba/fastjson/parser/deserializer/FieldDeserializer/parseField(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V
iconst_1
ireturn
.limit locals 10
.limit stack 5
.end method

.method public parseRest(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
aload 0
getfield com/alibaba/fastjson/parser/deserializer/ASMJavaBeanDeserializer/serializer Lcom/alibaba/fastjson/parser/deserializer/ASMJavaBeanDeserializer$InnerJavaBeanDeserializer;
aload 1
aload 2
aload 3
aload 4
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMJavaBeanDeserializer$InnerJavaBeanDeserializer/deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
areturn
.limit locals 5
.limit stack 5
.end method
