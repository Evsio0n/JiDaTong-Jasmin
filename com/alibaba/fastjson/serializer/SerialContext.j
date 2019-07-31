.bytecode 50.0
.class public synchronized com/alibaba/fastjson/serializer/SerialContext
.super java/lang/Object

.field private final 'fieldName' Ljava/lang/Object;

.field private final 'object' Ljava/lang/Object;

.field private final 'parent' Lcom/alibaba/fastjson/serializer/SerialContext;

.method public <init>(Lcom/alibaba/fastjson/serializer/SerialContext;Ljava/lang/Object;Ljava/lang/Object;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/alibaba/fastjson/serializer/SerialContext/parent Lcom/alibaba/fastjson/serializer/SerialContext;
aload 0
aload 2
putfield com/alibaba/fastjson/serializer/SerialContext/object Ljava/lang/Object;
aload 0
aload 3
putfield com/alibaba/fastjson/serializer/SerialContext/fieldName Ljava/lang/Object;
return
.limit locals 4
.limit stack 2
.end method

.method public getFieldName()Ljava/lang/Object;
aload 0
getfield com/alibaba/fastjson/serializer/SerialContext/fieldName Ljava/lang/Object;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getObject()Ljava/lang/Object;
aload 0
getfield com/alibaba/fastjson/serializer/SerialContext/object Ljava/lang/Object;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getParent()Lcom/alibaba/fastjson/serializer/SerialContext;
aload 0
getfield com/alibaba/fastjson/serializer/SerialContext/parent Lcom/alibaba/fastjson/serializer/SerialContext;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getPath()Ljava/lang/String;
aload 0
getfield com/alibaba/fastjson/serializer/SerialContext/parent Lcom/alibaba/fastjson/serializer/SerialContext;
ifnonnull L0
ldc "$"
areturn
L0:
aload 0
getfield com/alibaba/fastjson/serializer/SerialContext/fieldName Ljava/lang/Object;
instanceof java/lang/Integer
ifeq L1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getfield com/alibaba/fastjson/serializer/SerialContext/parent Lcom/alibaba/fastjson/serializer/SerialContext;
invokevirtual com/alibaba/fastjson/serializer/SerialContext/getPath()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "["
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/alibaba/fastjson/serializer/SerialContext/fieldName Ljava/lang/Object;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
ldc "]"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
L1:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getfield com/alibaba/fastjson/serializer/SerialContext/parent Lcom/alibaba/fastjson/serializer/SerialContext;
invokevirtual com/alibaba/fastjson/serializer/SerialContext/getPath()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "."
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/alibaba/fastjson/serializer/SerialContext/fieldName Ljava/lang/Object;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 1
.limit stack 2
.end method

.method public toString()Ljava/lang/String;
aload 0
invokevirtual com/alibaba/fastjson/serializer/SerialContext/getPath()Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method
