.bytecode 50.0
.class synchronized com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context
.super java/lang/Object
.inner class static Context inner com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context outer com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory

.field private final 'beanInfo' Lcom/alibaba/fastjson/util/DeserializeBeanInfo;

.field private 'className' Ljava/lang/String;

.field private 'clazz' Ljava/lang/Class; signature "Ljava/lang/Class<*>;"

.field private 'fieldInfoList' Ljava/util/List; signature "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"

.field private 'variantIndex' I

.field private 'variants' Ljava/util/Map; signature "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"

.method public <init>(Ljava/lang/String;Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/util/DeserializeBeanInfo;I)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_5
putfield com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/variantIndex I
aload 0
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
putfield com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/variants Ljava/util/Map;
aload 0
aload 1
putfield com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/className Ljava/lang/String;
aload 0
aload 3
invokevirtual com/alibaba/fastjson/util/DeserializeBeanInfo/getClazz()Ljava/lang/Class;
putfield com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/clazz Ljava/lang/Class;
aload 0
iload 4
putfield com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/variantIndex I
aload 0
aload 3
putfield com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/beanInfo Lcom/alibaba/fastjson/util/DeserializeBeanInfo;
aload 0
new java/util/ArrayList
dup
aload 3
invokevirtual com/alibaba/fastjson/util/DeserializeBeanInfo/getFieldList()Ljava/util/List;
invokespecial java/util/ArrayList/<init>(Ljava/util/Collection;)V
putfield com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/fieldInfoList Ljava/util/List;
return
.limit locals 5
.limit stack 4
.end method

.method public getBeanInfo()Lcom/alibaba/fastjson/util/DeserializeBeanInfo;
aload 0
getfield com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/beanInfo Lcom/alibaba/fastjson/util/DeserializeBeanInfo;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getClassName()Ljava/lang/String;
aload 0
getfield com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/className Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getClazz()Ljava/lang/Class;
.signature "()Ljava/lang/Class<*>;"
aload 0
getfield com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/clazz Ljava/lang/Class;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getFieldInfoList()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
aload 0
getfield com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/fieldInfoList Ljava/util/List;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getVariantCount()I
aload 0
getfield com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/variantIndex I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public var(Ljava/lang/String;)I
aload 0
getfield com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/variants Ljava/util/Map;
aload 1
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast java/lang/Integer
ifnonnull L0
aload 0
getfield com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/variants Ljava/util/Map;
astore 3
aload 0
getfield com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/variantIndex I
istore 2
aload 0
iload 2
iconst_1
iadd
putfield com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/variantIndex I
aload 3
aload 1
iload 2
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
L0:
aload 0
getfield com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/variants Ljava/util/Map;
aload 1
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast java/lang/Integer
invokevirtual java/lang/Integer/intValue()I
ireturn
.limit locals 4
.limit stack 3
.end method

.method public var(Ljava/lang/String;I)I
aload 0
getfield com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/variants Ljava/util/Map;
aload 1
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast java/lang/Integer
ifnonnull L0
aload 0
getfield com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/variants Ljava/util/Map;
aload 1
aload 0
getfield com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/variantIndex I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
aload 0
aload 0
getfield com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/variantIndex I
iload 2
iadd
putfield com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/variantIndex I
L0:
aload 0
getfield com/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context/variants Ljava/util/Map;
aload 1
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast java/lang/Integer
invokevirtual java/lang/Integer/intValue()I
ireturn
.limit locals 3
.limit stack 3
.end method
