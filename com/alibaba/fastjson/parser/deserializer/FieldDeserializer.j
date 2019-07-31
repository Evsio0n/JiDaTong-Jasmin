.bytecode 50.0
.class public synchronized abstract com/alibaba/fastjson/parser/deserializer/FieldDeserializer
.super java/lang/Object

.field protected final 'clazz' Ljava/lang/Class; signature "Ljava/lang/Class<*>;"

.field protected final 'fieldInfo' Lcom/alibaba/fastjson/util/FieldInfo;

.method public <init>(Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)V
.signature "(Ljava/lang/Class<*>;Lcom/alibaba/fastjson/util/FieldInfo;)V"
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/alibaba/fastjson/parser/deserializer/FieldDeserializer/clazz Ljava/lang/Class;
aload 0
aload 2
putfield com/alibaba/fastjson/parser/deserializer/FieldDeserializer/fieldInfo Lcom/alibaba/fastjson/util/FieldInfo;
return
.limit locals 3
.limit stack 2
.end method

.method public getFastMatchToken()I
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getField()Ljava/lang/reflect/Field;
aload 0
getfield com/alibaba/fastjson/parser/deserializer/FieldDeserializer/fieldInfo Lcom/alibaba/fastjson/util/FieldInfo;
invokevirtual com/alibaba/fastjson/util/FieldInfo/getField()Ljava/lang/reflect/Field;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getFieldClass()Ljava/lang/Class;
.signature "()Ljava/lang/Class<*>;"
aload 0
getfield com/alibaba/fastjson/parser/deserializer/FieldDeserializer/fieldInfo Lcom/alibaba/fastjson/util/FieldInfo;
invokevirtual com/alibaba/fastjson/util/FieldInfo/getFieldClass()Ljava/lang/Class;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getFieldType()Ljava/lang/reflect/Type;
aload 0
getfield com/alibaba/fastjson/parser/deserializer/FieldDeserializer/fieldInfo Lcom/alibaba/fastjson/util/FieldInfo;
invokevirtual com/alibaba/fastjson/util/FieldInfo/getFieldType()Ljava/lang/reflect/Type;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getMethod()Ljava/lang/reflect/Method;
aload 0
getfield com/alibaba/fastjson/parser/deserializer/FieldDeserializer/fieldInfo Lcom/alibaba/fastjson/util/FieldInfo;
invokevirtual com/alibaba/fastjson/util/FieldInfo/getMethod()Ljava/lang/reflect/Method;
areturn
.limit locals 1
.limit stack 1
.end method

.method public abstract parseField(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V
.signature "(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;)V"
.end method

.method public setValue(Ljava/lang/Object;I)V
aload 0
aload 1
iload 2
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual com/alibaba/fastjson/parser/deserializer/FieldDeserializer/setValue(Ljava/lang/Object;Ljava/lang/Object;)V
return
.limit locals 3
.limit stack 3
.end method

.method public setValue(Ljava/lang/Object;J)V
aload 0
aload 1
lload 2
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual com/alibaba/fastjson/parser/deserializer/FieldDeserializer/setValue(Ljava/lang/Object;Ljava/lang/Object;)V
return
.limit locals 4
.limit stack 4
.end method

.method public setValue(Ljava/lang/Object;Ljava/lang/Object;)V
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
.catch java/lang/Exception from L5 to L6 using L2
.catch java/lang/Exception from L7 to L8 using L2
.catch java/lang/Exception from L9 to L10 using L2
.catch java/lang/Exception from L11 to L12 using L2
.catch java/lang/Exception from L13 to L14 using L2
.catch java/lang/Exception from L15 to L16 using L2
.catch java/lang/Exception from L17 to L18 using L2
.catch java/lang/Exception from L19 to L20 using L2
.catch java/lang/Exception from L21 to L22 using L2
.catch java/lang/Exception from L23 to L24 using L25
aload 0
getfield com/alibaba/fastjson/parser/deserializer/FieldDeserializer/fieldInfo Lcom/alibaba/fastjson/util/FieldInfo;
invokevirtual com/alibaba/fastjson/util/FieldInfo/getMethod()Ljava/lang/reflect/Method;
astore 3
aload 3
ifnull L26
L0:
aload 0
getfield com/alibaba/fastjson/parser/deserializer/FieldDeserializer/fieldInfo Lcom/alibaba/fastjson/util/FieldInfo;
invokevirtual com/alibaba/fastjson/util/FieldInfo/isGetOnly()Z
ifeq L21
aload 0
getfield com/alibaba/fastjson/parser/deserializer/FieldDeserializer/fieldInfo Lcom/alibaba/fastjson/util/FieldInfo;
invokevirtual com/alibaba/fastjson/util/FieldInfo/getFieldClass()Ljava/lang/Class;
ldc java/util/concurrent/atomic/AtomicInteger
if_acmpne L5
aload 3
aload 1
iconst_0
anewarray java/lang/Object
invokevirtual java/lang/reflect/Method/invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
checkcast java/util/concurrent/atomic/AtomicInteger
astore 1
L1:
aload 1
ifnull L27
L3:
aload 1
aload 2
checkcast java/util/concurrent/atomic/AtomicInteger
invokevirtual java/util/concurrent/atomic/AtomicInteger/get()I
invokevirtual java/util/concurrent/atomic/AtomicInteger/set(I)V
L4:
return
L5:
aload 0
getfield com/alibaba/fastjson/parser/deserializer/FieldDeserializer/fieldInfo Lcom/alibaba/fastjson/util/FieldInfo;
invokevirtual com/alibaba/fastjson/util/FieldInfo/getFieldClass()Ljava/lang/Class;
ldc java/util/concurrent/atomic/AtomicLong
if_acmpne L9
aload 3
aload 1
iconst_0
anewarray java/lang/Object
invokevirtual java/lang/reflect/Method/invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
checkcast java/util/concurrent/atomic/AtomicLong
astore 1
L6:
aload 1
ifnull L27
L7:
aload 1
aload 2
checkcast java/util/concurrent/atomic/AtomicLong
invokevirtual java/util/concurrent/atomic/AtomicLong/get()J
invokevirtual java/util/concurrent/atomic/AtomicLong/set(J)V
L8:
return
L2:
astore 1
new com/alibaba/fastjson/JSONException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "set property error, "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/alibaba/fastjson/parser/deserializer/FieldDeserializer/fieldInfo Lcom/alibaba/fastjson/util/FieldInfo;
invokevirtual com/alibaba/fastjson/util/FieldInfo/getName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aload 1
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;Ljava/lang/Throwable;)V
athrow
L9:
aload 0
getfield com/alibaba/fastjson/parser/deserializer/FieldDeserializer/fieldInfo Lcom/alibaba/fastjson/util/FieldInfo;
invokevirtual com/alibaba/fastjson/util/FieldInfo/getFieldClass()Ljava/lang/Class;
ldc java/util/concurrent/atomic/AtomicBoolean
if_acmpne L13
aload 3
aload 1
iconst_0
anewarray java/lang/Object
invokevirtual java/lang/reflect/Method/invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
checkcast java/util/concurrent/atomic/AtomicBoolean
astore 1
L10:
aload 1
ifnull L27
L11:
aload 1
aload 2
checkcast java/util/concurrent/atomic/AtomicBoolean
invokevirtual java/util/concurrent/atomic/AtomicBoolean/get()Z
invokevirtual java/util/concurrent/atomic/AtomicBoolean/set(Z)V
L12:
return
L13:
ldc java/util/Map
aload 3
invokevirtual java/lang/reflect/Method/getReturnType()Ljava/lang/Class;
invokevirtual java/lang/Class/isAssignableFrom(Ljava/lang/Class;)Z
ifeq L17
aload 3
aload 1
iconst_0
anewarray java/lang/Object
invokevirtual java/lang/reflect/Method/invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
checkcast java/util/Map
astore 1
L14:
aload 1
ifnull L27
L15:
aload 1
aload 2
checkcast java/util/Map
invokeinterface java/util/Map/putAll(Ljava/util/Map;)V 1
L16:
return
L17:
aload 3
aload 1
iconst_0
anewarray java/lang/Object
invokevirtual java/lang/reflect/Method/invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
checkcast java/util/Collection
astore 1
L18:
aload 1
ifnull L27
L19:
aload 1
aload 2
checkcast java/util/Collection
invokeinterface java/util/Collection/addAll(Ljava/util/Collection;)Z 1
pop
L20:
return
L21:
aload 3
aload 1
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 2
aastore
invokevirtual java/lang/reflect/Method/invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
pop
L22:
return
L26:
aload 0
getfield com/alibaba/fastjson/parser/deserializer/FieldDeserializer/fieldInfo Lcom/alibaba/fastjson/util/FieldInfo;
invokevirtual com/alibaba/fastjson/util/FieldInfo/getField()Ljava/lang/reflect/Field;
astore 3
aload 3
ifnull L27
L23:
aload 3
aload 1
aload 2
invokevirtual java/lang/reflect/Field/set(Ljava/lang/Object;Ljava/lang/Object;)V
L24:
return
L25:
astore 1
new com/alibaba/fastjson/JSONException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "set property error, "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/alibaba/fastjson/parser/deserializer/FieldDeserializer/fieldInfo Lcom/alibaba/fastjson/util/FieldInfo;
invokevirtual com/alibaba/fastjson/util/FieldInfo/getName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aload 1
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;Ljava/lang/Throwable;)V
athrow
L27:
return
.limit locals 4
.limit stack 6
.end method

.method public setValue(Ljava/lang/Object;Ljava/lang/String;)V
aload 0
aload 1
aload 2
invokevirtual com/alibaba/fastjson/parser/deserializer/FieldDeserializer/setValue(Ljava/lang/Object;Ljava/lang/Object;)V
return
.limit locals 3
.limit stack 3
.end method

.method public setValue(Ljava/lang/Object;Z)V
aload 0
aload 1
iload 2
invokestatic java/lang/Boolean/valueOf(Z)Ljava/lang/Boolean;
invokevirtual com/alibaba/fastjson/parser/deserializer/FieldDeserializer/setValue(Ljava/lang/Object;Ljava/lang/Object;)V
return
.limit locals 3
.limit stack 3
.end method
