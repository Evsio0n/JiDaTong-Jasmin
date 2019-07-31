.bytecode 50.0
.class public synchronized com/alibaba/fastjson/JSONArray
.super com/alibaba/fastjson/JSON
.implements java/util/List
.implements com/alibaba/fastjson/JSONAware
.implements java/lang/Cloneable
.implements java/util/RandomAccess
.implements java/io/Serializable
.signature "Lcom/alibaba/fastjson/JSON;Ljava/util/List<Ljava/lang/Object;>;Lcom/alibaba/fastjson/JSONAware;Ljava/lang/Cloneable;Ljava/util/RandomAccess;Ljava/io/Serializable;"

.field private static final 'serialVersionUID' J = 1L


.field protected transient 'componentType' Ljava/lang/reflect/Type;

.field private final 'list' Ljava/util/List; signature "Ljava/util/List<Ljava/lang/Object;>;"

.field protected transient 'relatedArray' Ljava/lang/Object;

.method public <init>()V
aload 0
invokespecial com/alibaba/fastjson/JSON/<init>()V
aload 0
new java/util/ArrayList
dup
bipush 10
invokespecial java/util/ArrayList/<init>(I)V
putfield com/alibaba/fastjson/JSONArray/list Ljava/util/List;
return
.limit locals 1
.limit stack 4
.end method

.method public <init>(I)V
aload 0
invokespecial com/alibaba/fastjson/JSON/<init>()V
aload 0
new java/util/ArrayList
dup
iload 1
invokespecial java/util/ArrayList/<init>(I)V
putfield com/alibaba/fastjson/JSONArray/list Ljava/util/List;
return
.limit locals 2
.limit stack 4
.end method

.method public <init>(Ljava/util/List;)V
.signature "(Ljava/util/List<Ljava/lang/Object;>;)V"
aload 0
invokespecial com/alibaba/fastjson/JSON/<init>()V
aload 0
aload 1
putfield com/alibaba/fastjson/JSONArray/list Ljava/util/List;
return
.limit locals 2
.limit stack 2
.end method

.method public add(ILjava/lang/Object;)V
aload 0
getfield com/alibaba/fastjson/JSONArray/list Ljava/util/List;
iload 1
aload 2
invokeinterface java/util/List/add(ILjava/lang/Object;)V 2
return
.limit locals 3
.limit stack 3
.end method

.method public add(Ljava/lang/Object;)Z
aload 0
getfield com/alibaba/fastjson/JSONArray/list Ljava/util/List;
aload 1
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method public addAll(ILjava/util/Collection;)Z
.signature "(ILjava/util/Collection<+Ljava/lang/Object;>;)Z"
aload 0
getfield com/alibaba/fastjson/JSONArray/list Ljava/util/List;
iload 1
aload 2
invokeinterface java/util/List/addAll(ILjava/util/Collection;)Z 2
ireturn
.limit locals 3
.limit stack 3
.end method

.method public addAll(Ljava/util/Collection;)Z
.signature "(Ljava/util/Collection<+Ljava/lang/Object;>;)Z"
aload 0
getfield com/alibaba/fastjson/JSONArray/list Ljava/util/List;
aload 1
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method public clear()V
aload 0
getfield com/alibaba/fastjson/JSONArray/list Ljava/util/List;
invokeinterface java/util/List/clear()V 0
return
.limit locals 1
.limit stack 1
.end method

.method public clone()Ljava/lang/Object;
new com/alibaba/fastjson/JSONArray
dup
new java/util/ArrayList
dup
aload 0
getfield com/alibaba/fastjson/JSONArray/list Ljava/util/List;
invokespecial java/util/ArrayList/<init>(Ljava/util/Collection;)V
invokespecial com/alibaba/fastjson/JSONArray/<init>(Ljava/util/List;)V
areturn
.limit locals 1
.limit stack 5
.end method

.method public contains(Ljava/lang/Object;)Z
aload 0
getfield com/alibaba/fastjson/JSONArray/list Ljava/util/List;
aload 1
invokeinterface java/util/List/contains(Ljava/lang/Object;)Z 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method public containsAll(Ljava/util/Collection;)Z
.signature "(Ljava/util/Collection<*>;)Z"
aload 0
getfield com/alibaba/fastjson/JSONArray/list Ljava/util/List;
aload 1
invokeinterface java/util/List/containsAll(Ljava/util/Collection;)Z 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method public equals(Ljava/lang/Object;)Z
aload 0
getfield com/alibaba/fastjson/JSONArray/list Ljava/util/List;
aload 1
invokeinterface java/util/List/equals(Ljava/lang/Object;)Z 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method public get(I)Ljava/lang/Object;
aload 0
getfield com/alibaba/fastjson/JSONArray/list Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
areturn
.limit locals 2
.limit stack 2
.end method

.method public getBigDecimal(I)Ljava/math/BigDecimal;
aload 0
iload 1
invokevirtual com/alibaba/fastjson/JSONArray/get(I)Ljava/lang/Object;
invokestatic com/alibaba/fastjson/util/TypeUtils/castToBigDecimal(Ljava/lang/Object;)Ljava/math/BigDecimal;
areturn
.limit locals 2
.limit stack 2
.end method

.method public getBigInteger(I)Ljava/math/BigInteger;
aload 0
iload 1
invokevirtual com/alibaba/fastjson/JSONArray/get(I)Ljava/lang/Object;
invokestatic com/alibaba/fastjson/util/TypeUtils/castToBigInteger(Ljava/lang/Object;)Ljava/math/BigInteger;
areturn
.limit locals 2
.limit stack 2
.end method

.method public getBoolean(I)Ljava/lang/Boolean;
aload 0
iload 1
invokevirtual com/alibaba/fastjson/JSONArray/get(I)Ljava/lang/Object;
astore 2
aload 2
ifnonnull L0
aconst_null
areturn
L0:
aload 2
invokestatic com/alibaba/fastjson/util/TypeUtils/castToBoolean(Ljava/lang/Object;)Ljava/lang/Boolean;
areturn
.limit locals 3
.limit stack 2
.end method

.method public getBooleanValue(I)Z
aload 0
iload 1
invokevirtual com/alibaba/fastjson/JSONArray/get(I)Ljava/lang/Object;
astore 2
aload 2
ifnonnull L0
iconst_0
ireturn
L0:
aload 2
invokestatic com/alibaba/fastjson/util/TypeUtils/castToBoolean(Ljava/lang/Object;)Ljava/lang/Boolean;
invokevirtual java/lang/Boolean/booleanValue()Z
ireturn
.limit locals 3
.limit stack 2
.end method

.method public getByte(I)Ljava/lang/Byte;
aload 0
iload 1
invokevirtual com/alibaba/fastjson/JSONArray/get(I)Ljava/lang/Object;
invokestatic com/alibaba/fastjson/util/TypeUtils/castToByte(Ljava/lang/Object;)Ljava/lang/Byte;
areturn
.limit locals 2
.limit stack 2
.end method

.method public getByteValue(I)B
aload 0
iload 1
invokevirtual com/alibaba/fastjson/JSONArray/get(I)Ljava/lang/Object;
astore 2
aload 2
ifnonnull L0
iconst_0
ireturn
L0:
aload 2
invokestatic com/alibaba/fastjson/util/TypeUtils/castToByte(Ljava/lang/Object;)Ljava/lang/Byte;
invokevirtual java/lang/Byte/byteValue()B
ireturn
.limit locals 3
.limit stack 2
.end method

.method public getComponentType()Ljava/lang/reflect/Type;
aload 0
getfield com/alibaba/fastjson/JSONArray/componentType Ljava/lang/reflect/Type;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getDate(I)Ljava/util/Date;
aload 0
iload 1
invokevirtual com/alibaba/fastjson/JSONArray/get(I)Ljava/lang/Object;
invokestatic com/alibaba/fastjson/util/TypeUtils/castToDate(Ljava/lang/Object;)Ljava/util/Date;
areturn
.limit locals 2
.limit stack 2
.end method

.method public getDouble(I)Ljava/lang/Double;
aload 0
iload 1
invokevirtual com/alibaba/fastjson/JSONArray/get(I)Ljava/lang/Object;
invokestatic com/alibaba/fastjson/util/TypeUtils/castToDouble(Ljava/lang/Object;)Ljava/lang/Double;
areturn
.limit locals 2
.limit stack 2
.end method

.method public getDoubleValue(I)D
aload 0
iload 1
invokevirtual com/alibaba/fastjson/JSONArray/get(I)Ljava/lang/Object;
astore 2
aload 2
ifnonnull L0
dconst_0
dreturn
L0:
aload 2
invokestatic com/alibaba/fastjson/util/TypeUtils/castToDouble(Ljava/lang/Object;)Ljava/lang/Double;
invokevirtual java/lang/Double/doubleValue()D
dreturn
.limit locals 3
.limit stack 2
.end method

.method public getFloat(I)Ljava/lang/Float;
aload 0
iload 1
invokevirtual com/alibaba/fastjson/JSONArray/get(I)Ljava/lang/Object;
invokestatic com/alibaba/fastjson/util/TypeUtils/castToFloat(Ljava/lang/Object;)Ljava/lang/Float;
areturn
.limit locals 2
.limit stack 2
.end method

.method public getFloatValue(I)F
aload 0
iload 1
invokevirtual com/alibaba/fastjson/JSONArray/get(I)Ljava/lang/Object;
astore 2
aload 2
ifnonnull L0
fconst_0
freturn
L0:
aload 2
invokestatic com/alibaba/fastjson/util/TypeUtils/castToFloat(Ljava/lang/Object;)Ljava/lang/Float;
invokevirtual java/lang/Float/floatValue()F
freturn
.limit locals 3
.limit stack 2
.end method

.method public getIntValue(I)I
aload 0
iload 1
invokevirtual com/alibaba/fastjson/JSONArray/get(I)Ljava/lang/Object;
astore 2
aload 2
ifnonnull L0
iconst_0
ireturn
L0:
aload 2
invokestatic com/alibaba/fastjson/util/TypeUtils/castToInt(Ljava/lang/Object;)Ljava/lang/Integer;
invokevirtual java/lang/Integer/intValue()I
ireturn
.limit locals 3
.limit stack 2
.end method

.method public getInteger(I)Ljava/lang/Integer;
aload 0
iload 1
invokevirtual com/alibaba/fastjson/JSONArray/get(I)Ljava/lang/Object;
invokestatic com/alibaba/fastjson/util/TypeUtils/castToInt(Ljava/lang/Object;)Ljava/lang/Integer;
areturn
.limit locals 2
.limit stack 2
.end method

.method public getJSONArray(I)Lcom/alibaba/fastjson/JSONArray;
aload 0
getfield com/alibaba/fastjson/JSONArray/list Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
astore 2
aload 2
instanceof com/alibaba/fastjson/JSONArray
ifeq L0
aload 2
checkcast com/alibaba/fastjson/JSONArray
areturn
L0:
aload 2
invokestatic com/alibaba/fastjson/JSONArray/toJSON(Ljava/lang/Object;)Ljava/lang/Object;
checkcast com/alibaba/fastjson/JSONArray
areturn
.limit locals 3
.limit stack 2
.end method

.method public getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;
aload 0
getfield com/alibaba/fastjson/JSONArray/list Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
astore 2
aload 2
instanceof com/alibaba/fastjson/JSONObject
ifeq L0
aload 2
checkcast com/alibaba/fastjson/JSONObject
areturn
L0:
aload 2
invokestatic com/alibaba/fastjson/JSONArray/toJSON(Ljava/lang/Object;)Ljava/lang/Object;
checkcast com/alibaba/fastjson/JSONObject
areturn
.limit locals 3
.limit stack 2
.end method

.method public getLong(I)Ljava/lang/Long;
aload 0
iload 1
invokevirtual com/alibaba/fastjson/JSONArray/get(I)Ljava/lang/Object;
invokestatic com/alibaba/fastjson/util/TypeUtils/castToLong(Ljava/lang/Object;)Ljava/lang/Long;
areturn
.limit locals 2
.limit stack 2
.end method

.method public getLongValue(I)J
aload 0
iload 1
invokevirtual com/alibaba/fastjson/JSONArray/get(I)Ljava/lang/Object;
astore 2
aload 2
ifnonnull L0
lconst_0
lreturn
L0:
aload 2
invokestatic com/alibaba/fastjson/util/TypeUtils/castToLong(Ljava/lang/Object;)Ljava/lang/Long;
invokevirtual java/lang/Long/longValue()J
lreturn
.limit locals 3
.limit stack 2
.end method

.method public getObject(ILjava/lang/Class;)Ljava/lang/Object;
.signature "<T:Ljava/lang/Object;>(ILjava/lang/Class<TT;>;)TT;"
aload 0
getfield com/alibaba/fastjson/JSONArray/list Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
aload 2
invokestatic com/alibaba/fastjson/util/TypeUtils/castToJavaBean(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
areturn
.limit locals 3
.limit stack 2
.end method

.method public getRelatedArray()Ljava/lang/Object;
aload 0
getfield com/alibaba/fastjson/JSONArray/relatedArray Ljava/lang/Object;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getShort(I)Ljava/lang/Short;
aload 0
iload 1
invokevirtual com/alibaba/fastjson/JSONArray/get(I)Ljava/lang/Object;
invokestatic com/alibaba/fastjson/util/TypeUtils/castToShort(Ljava/lang/Object;)Ljava/lang/Short;
areturn
.limit locals 2
.limit stack 2
.end method

.method public getShortValue(I)S
aload 0
iload 1
invokevirtual com/alibaba/fastjson/JSONArray/get(I)Ljava/lang/Object;
astore 2
aload 2
ifnonnull L0
iconst_0
ireturn
L0:
aload 2
invokestatic com/alibaba/fastjson/util/TypeUtils/castToShort(Ljava/lang/Object;)Ljava/lang/Short;
invokevirtual java/lang/Short/shortValue()S
ireturn
.limit locals 3
.limit stack 2
.end method

.method public getSqlDate(I)Ljava/sql/Date;
aload 0
iload 1
invokevirtual com/alibaba/fastjson/JSONArray/get(I)Ljava/lang/Object;
invokestatic com/alibaba/fastjson/util/TypeUtils/castToSqlDate(Ljava/lang/Object;)Ljava/sql/Date;
areturn
.limit locals 2
.limit stack 2
.end method

.method public getString(I)Ljava/lang/String;
aload 0
iload 1
invokevirtual com/alibaba/fastjson/JSONArray/get(I)Ljava/lang/Object;
invokestatic com/alibaba/fastjson/util/TypeUtils/castToString(Ljava/lang/Object;)Ljava/lang/String;
areturn
.limit locals 2
.limit stack 2
.end method

.method public getTimestamp(I)Ljava/sql/Timestamp;
aload 0
iload 1
invokevirtual com/alibaba/fastjson/JSONArray/get(I)Ljava/lang/Object;
invokestatic com/alibaba/fastjson/util/TypeUtils/castToTimestamp(Ljava/lang/Object;)Ljava/sql/Timestamp;
areturn
.limit locals 2
.limit stack 2
.end method

.method public hashCode()I
aload 0
getfield com/alibaba/fastjson/JSONArray/list Ljava/util/List;
invokeinterface java/util/List/hashCode()I 0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public indexOf(Ljava/lang/Object;)I
aload 0
getfield com/alibaba/fastjson/JSONArray/list Ljava/util/List;
aload 1
invokeinterface java/util/List/indexOf(Ljava/lang/Object;)I 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method public isEmpty()Z
aload 0
getfield com/alibaba/fastjson/JSONArray/list Ljava/util/List;
invokeinterface java/util/List/isEmpty()Z 0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public iterator()Ljava/util/Iterator;
.signature "()Ljava/util/Iterator<Ljava/lang/Object;>;"
aload 0
getfield com/alibaba/fastjson/JSONArray/list Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
areturn
.limit locals 1
.limit stack 1
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
aload 0
getfield com/alibaba/fastjson/JSONArray/list Ljava/util/List;
aload 1
invokeinterface java/util/List/lastIndexOf(Ljava/lang/Object;)I 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method public listIterator()Ljava/util/ListIterator;
.signature "()Ljava/util/ListIterator<Ljava/lang/Object;>;"
aload 0
getfield com/alibaba/fastjson/JSONArray/list Ljava/util/List;
invokeinterface java/util/List/listIterator()Ljava/util/ListIterator; 0
areturn
.limit locals 1
.limit stack 1
.end method

.method public listIterator(I)Ljava/util/ListIterator;
.signature "(I)Ljava/util/ListIterator<Ljava/lang/Object;>;"
aload 0
getfield com/alibaba/fastjson/JSONArray/list Ljava/util/List;
iload 1
invokeinterface java/util/List/listIterator(I)Ljava/util/ListIterator; 1
areturn
.limit locals 2
.limit stack 2
.end method

.method public remove(I)Ljava/lang/Object;
aload 0
getfield com/alibaba/fastjson/JSONArray/list Ljava/util/List;
iload 1
invokeinterface java/util/List/remove(I)Ljava/lang/Object; 1
areturn
.limit locals 2
.limit stack 2
.end method

.method public remove(Ljava/lang/Object;)Z
aload 0
getfield com/alibaba/fastjson/JSONArray/list Ljava/util/List;
aload 1
invokeinterface java/util/List/remove(Ljava/lang/Object;)Z 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method public removeAll(Ljava/util/Collection;)Z
.signature "(Ljava/util/Collection<*>;)Z"
aload 0
getfield com/alibaba/fastjson/JSONArray/list Ljava/util/List;
aload 1
invokeinterface java/util/List/removeAll(Ljava/util/Collection;)Z 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method public retainAll(Ljava/util/Collection;)Z
.signature "(Ljava/util/Collection<*>;)Z"
aload 0
getfield com/alibaba/fastjson/JSONArray/list Ljava/util/List;
aload 1
invokeinterface java/util/List/retainAll(Ljava/util/Collection;)Z 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
aload 0
getfield com/alibaba/fastjson/JSONArray/list Ljava/util/List;
iload 1
aload 2
invokeinterface java/util/List/set(ILjava/lang/Object;)Ljava/lang/Object; 2
areturn
.limit locals 3
.limit stack 3
.end method

.method public setComponentType(Ljava/lang/reflect/Type;)V
aload 0
aload 1
putfield com/alibaba/fastjson/JSONArray/componentType Ljava/lang/reflect/Type;
return
.limit locals 2
.limit stack 2
.end method

.method public setRelatedArray(Ljava/lang/Object;)V
aload 0
aload 1
putfield com/alibaba/fastjson/JSONArray/relatedArray Ljava/lang/Object;
return
.limit locals 2
.limit stack 2
.end method

.method public size()I
aload 0
getfield com/alibaba/fastjson/JSONArray/list Ljava/util/List;
invokeinterface java/util/List/size()I 0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public subList(II)Ljava/util/List;
.signature "(II)Ljava/util/List<Ljava/lang/Object;>;"
aload 0
getfield com/alibaba/fastjson/JSONArray/list Ljava/util/List;
iload 1
iload 2
invokeinterface java/util/List/subList(II)Ljava/util/List; 2
areturn
.limit locals 3
.limit stack 3
.end method

.method public toArray()[Ljava/lang/Object;
aload 0
getfield com/alibaba/fastjson/JSONArray/list Ljava/util/List;
invokeinterface java/util/List/toArray()[Ljava/lang/Object; 0
areturn
.limit locals 1
.limit stack 1
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
.signature "<T:Ljava/lang/Object;>([TT;)[TT;"
aload 0
getfield com/alibaba/fastjson/JSONArray/list Ljava/util/List;
aload 1
invokeinterface java/util/List/toArray([Ljava/lang/Object;)[Ljava/lang/Object; 1
areturn
.limit locals 2
.limit stack 2
.end method
