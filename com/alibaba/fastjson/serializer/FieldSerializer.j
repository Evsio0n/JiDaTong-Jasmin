.bytecode 50.0
.class public synchronized abstract com/alibaba/fastjson/serializer/FieldSerializer
.super java/lang/Object

.field private final 'double_quoted_fieldPrefix' Ljava/lang/String;

.field protected final 'fieldInfo' Lcom/alibaba/fastjson/util/FieldInfo;

.field private final 'single_quoted_fieldPrefix' Ljava/lang/String;

.field private final 'un_quoted_fieldPrefix' Ljava/lang/String;

.field private 'writeNull' Z

.method public <init>(Lcom/alibaba/fastjson/util/FieldInfo;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_0
putfield com/alibaba/fastjson/serializer/FieldSerializer/writeNull Z
aload 0
aload 1
putfield com/alibaba/fastjson/serializer/FieldSerializer/fieldInfo Lcom/alibaba/fastjson/util/FieldInfo;
aload 1
iconst_1
invokevirtual com/alibaba/fastjson/util/FieldInfo/setAccessible(Z)V
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
bipush 34
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
aload 1
invokevirtual com/alibaba/fastjson/util/FieldInfo/getName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "\":"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putfield com/alibaba/fastjson/serializer/FieldSerializer/double_quoted_fieldPrefix Ljava/lang/String;
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
bipush 39
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
aload 1
invokevirtual com/alibaba/fastjson/util/FieldInfo/getName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "':"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putfield com/alibaba/fastjson/serializer/FieldSerializer/single_quoted_fieldPrefix Ljava/lang/String;
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 1
invokevirtual com/alibaba/fastjson/util/FieldInfo/getName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ":"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putfield com/alibaba/fastjson/serializer/FieldSerializer/un_quoted_fieldPrefix Ljava/lang/String;
aload 1
ldc com/alibaba/fastjson/annotation/JSONField
invokevirtual com/alibaba/fastjson/util/FieldInfo/getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
checkcast com/alibaba/fastjson/annotation/JSONField
astore 1
aload 1
ifnull L0
aload 1
invokeinterface com/alibaba/fastjson/annotation/JSONField/serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature; 0
astore 1
aload 1
arraylength
istore 3
iconst_0
istore 2
L1:
iload 2
iload 3
if_icmpge L0
aload 1
iload 2
aaload
getstatic com/alibaba/fastjson/serializer/SerializerFeature/WriteMapNullValue Lcom/alibaba/fastjson/serializer/SerializerFeature;
if_acmpne L2
aload 0
iconst_1
putfield com/alibaba/fastjson/serializer/FieldSerializer/writeNull Z
L2:
iload 2
iconst_1
iadd
istore 2
goto L1
L0:
return
.limit locals 4
.limit stack 3
.end method

.method public getField()Ljava/lang/reflect/Field;
aload 0
getfield com/alibaba/fastjson/serializer/FieldSerializer/fieldInfo Lcom/alibaba/fastjson/util/FieldInfo;
invokevirtual com/alibaba/fastjson/util/FieldInfo/getField()Ljava/lang/reflect/Field;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getMethod()Ljava/lang/reflect/Method;
aload 0
getfield com/alibaba/fastjson/serializer/FieldSerializer/fieldInfo Lcom/alibaba/fastjson/util/FieldInfo;
invokevirtual com/alibaba/fastjson/util/FieldInfo/getMethod()Ljava/lang/reflect/Method;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getName()Ljava/lang/String;
aload 0
getfield com/alibaba/fastjson/serializer/FieldSerializer/fieldInfo Lcom/alibaba/fastjson/util/FieldInfo;
invokevirtual com/alibaba/fastjson/util/FieldInfo/getName()Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getPropertyValue(Ljava/lang/Object;)Ljava/lang/Object;
.throws java/lang/Exception
aload 0
getfield com/alibaba/fastjson/serializer/FieldSerializer/fieldInfo Lcom/alibaba/fastjson/util/FieldInfo;
aload 1
invokevirtual com/alibaba/fastjson/util/FieldInfo/get(Ljava/lang/Object;)Ljava/lang/Object;
areturn
.limit locals 2
.limit stack 2
.end method

.method public isWriteNull()Z
aload 0
getfield com/alibaba/fastjson/serializer/FieldSerializer/writeNull Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public writePrefix(Lcom/alibaba/fastjson/serializer/JSONSerializer;)V
.throws java/io/IOException
aload 1
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/getWriter()Lcom/alibaba/fastjson/serializer/SerializeWriter;
astore 2
aload 1
getstatic com/alibaba/fastjson/serializer/SerializerFeature/QuoteFieldNames Lcom/alibaba/fastjson/serializer/SerializerFeature;
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z
ifeq L0
aload 1
getstatic com/alibaba/fastjson/serializer/SerializerFeature/UseSingleQuotes Lcom/alibaba/fastjson/serializer/SerializerFeature;
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z
ifeq L1
aload 2
aload 0
getfield com/alibaba/fastjson/serializer/FieldSerializer/single_quoted_fieldPrefix Ljava/lang/String;
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(Ljava/lang/String;)V
return
L1:
aload 2
aload 0
getfield com/alibaba/fastjson/serializer/FieldSerializer/double_quoted_fieldPrefix Ljava/lang/String;
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(Ljava/lang/String;)V
return
L0:
aload 2
aload 0
getfield com/alibaba/fastjson/serializer/FieldSerializer/un_quoted_fieldPrefix Ljava/lang/String;
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(Ljava/lang/String;)V
return
.limit locals 3
.limit stack 2
.end method

.method public abstract writeProperty(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;)V
.throws java/lang/Exception
.end method

.method public abstract writeValue(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;)V
.throws java/lang/Exception
.end method
