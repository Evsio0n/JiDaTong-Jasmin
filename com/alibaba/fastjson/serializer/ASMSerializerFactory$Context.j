.bytecode 50.0
.class synchronized com/alibaba/fastjson/serializer/ASMSerializerFactory$Context
.super java/lang/Object
.inner class static Context inner com/alibaba/fastjson/serializer/ASMSerializerFactory$Context outer com/alibaba/fastjson/serializer/ASMSerializerFactory

.field private final 'className' Ljava/lang/String;

.field private 'variantIndex' I

.field private 'variants' Ljava/util/Map; signature "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"

.method public <init>(Ljava/lang/String;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
bipush 8
putfield com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/variantIndex I
aload 0
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
putfield com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/variants Ljava/util/Map;
aload 0
aload 1
putfield com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/className Ljava/lang/String;
return
.limit locals 2
.limit stack 3
.end method

.method public fieldName()I
iconst_5
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getClassName()Ljava/lang/String;
aload 0
getfield com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/className Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getVariantCount()I
aload 0
getfield com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/variantIndex I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public obj()I
iconst_2
ireturn
.limit locals 1
.limit stack 1
.end method

.method public original()I
bipush 6
ireturn
.limit locals 1
.limit stack 1
.end method

.method public paramFieldName()I
iconst_3
ireturn
.limit locals 1
.limit stack 1
.end method

.method public paramFieldType()I
iconst_4
ireturn
.limit locals 1
.limit stack 1
.end method

.method public processValue()I
bipush 7
ireturn
.limit locals 1
.limit stack 1
.end method

.method public serializer()I
iconst_1
ireturn
.limit locals 1
.limit stack 1
.end method

.method public var(Ljava/lang/String;)I
aload 0
getfield com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/variants Ljava/util/Map;
aload 1
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast java/lang/Integer
ifnonnull L0
aload 0
getfield com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/variants Ljava/util/Map;
astore 3
aload 0
getfield com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/variantIndex I
istore 2
aload 0
iload 2
iconst_1
iadd
putfield com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/variantIndex I
aload 3
aload 1
iload 2
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
L0:
aload 0
getfield com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/variants Ljava/util/Map;
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
getfield com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/variants Ljava/util/Map;
aload 1
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast java/lang/Integer
ifnonnull L0
aload 0
getfield com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/variants Ljava/util/Map;
aload 1
aload 0
getfield com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/variantIndex I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
aload 0
aload 0
getfield com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/variantIndex I
iload 2
iadd
putfield com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/variantIndex I
L0:
aload 0
getfield com/alibaba/fastjson/serializer/ASMSerializerFactory$Context/variants Ljava/util/Map;
aload 1
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast java/lang/Integer
invokevirtual java/lang/Integer/intValue()I
ireturn
.limit locals 3
.limit stack 3
.end method
