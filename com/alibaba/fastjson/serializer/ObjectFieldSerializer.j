.bytecode 50.0
.class public synchronized com/alibaba/fastjson/serializer/ObjectFieldSerializer
.super com/alibaba/fastjson/serializer/FieldSerializer

.field private 'fieldSerializer' Lcom/alibaba/fastjson/serializer/ObjectSerializer;

.field private 'format' Ljava/lang/String;

.field private 'runtimeFieldClass' Ljava/lang/Class; signature "Ljava/lang/Class<*>;"

.field 'writeEnumUsingToString' Z

.field 'writeNullBooleanAsFalse' Z

.field 'writeNullListAsEmpty' Z

.field 'writeNullStringAsEmpty' Z

.field private 'writeNumberAsZero' Z

.method public <init>(Lcom/alibaba/fastjson/util/FieldInfo;)V
aload 0
aload 1
invokespecial com/alibaba/fastjson/serializer/FieldSerializer/<init>(Lcom/alibaba/fastjson/util/FieldInfo;)V
aload 0
iconst_0
putfield com/alibaba/fastjson/serializer/ObjectFieldSerializer/writeNumberAsZero Z
aload 0
iconst_0
putfield com/alibaba/fastjson/serializer/ObjectFieldSerializer/writeNullStringAsEmpty Z
aload 0
iconst_0
putfield com/alibaba/fastjson/serializer/ObjectFieldSerializer/writeNullBooleanAsFalse Z
aload 0
iconst_0
putfield com/alibaba/fastjson/serializer/ObjectFieldSerializer/writeNullListAsEmpty Z
aload 0
iconst_0
putfield com/alibaba/fastjson/serializer/ObjectFieldSerializer/writeEnumUsingToString Z
aload 1
ldc com/alibaba/fastjson/annotation/JSONField
invokevirtual com/alibaba/fastjson/util/FieldInfo/getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
checkcast com/alibaba/fastjson/annotation/JSONField
astore 1
aload 1
ifnull L0
aload 0
aload 1
invokeinterface com/alibaba/fastjson/annotation/JSONField/format()Ljava/lang/String; 0
putfield com/alibaba/fastjson/serializer/ObjectFieldSerializer/format Ljava/lang/String;
aload 0
getfield com/alibaba/fastjson/serializer/ObjectFieldSerializer/format Ljava/lang/String;
invokevirtual java/lang/String/trim()Ljava/lang/String;
invokevirtual java/lang/String/length()I
ifne L1
aload 0
aconst_null
putfield com/alibaba/fastjson/serializer/ObjectFieldSerializer/format Ljava/lang/String;
L1:
aload 1
invokeinterface com/alibaba/fastjson/annotation/JSONField/serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature; 0
astore 1
aload 1
arraylength
istore 3
iconst_0
istore 2
L2:
iload 2
iload 3
if_icmpge L0
aload 1
iload 2
aaload
astore 4
aload 4
getstatic com/alibaba/fastjson/serializer/SerializerFeature/WriteNullNumberAsZero Lcom/alibaba/fastjson/serializer/SerializerFeature;
if_acmpne L3
aload 0
iconst_1
putfield com/alibaba/fastjson/serializer/ObjectFieldSerializer/writeNumberAsZero Z
L4:
iload 2
iconst_1
iadd
istore 2
goto L2
L3:
aload 4
getstatic com/alibaba/fastjson/serializer/SerializerFeature/WriteNullStringAsEmpty Lcom/alibaba/fastjson/serializer/SerializerFeature;
if_acmpne L5
aload 0
iconst_1
putfield com/alibaba/fastjson/serializer/ObjectFieldSerializer/writeNullStringAsEmpty Z
goto L4
L5:
aload 4
getstatic com/alibaba/fastjson/serializer/SerializerFeature/WriteNullBooleanAsFalse Lcom/alibaba/fastjson/serializer/SerializerFeature;
if_acmpne L6
aload 0
iconst_1
putfield com/alibaba/fastjson/serializer/ObjectFieldSerializer/writeNullBooleanAsFalse Z
goto L4
L6:
aload 4
getstatic com/alibaba/fastjson/serializer/SerializerFeature/WriteNullListAsEmpty Lcom/alibaba/fastjson/serializer/SerializerFeature;
if_acmpne L7
aload 0
iconst_1
putfield com/alibaba/fastjson/serializer/ObjectFieldSerializer/writeNullListAsEmpty Z
goto L4
L7:
aload 4
getstatic com/alibaba/fastjson/serializer/SerializerFeature/WriteEnumUsingToString Lcom/alibaba/fastjson/serializer/SerializerFeature;
if_acmpne L4
aload 0
iconst_1
putfield com/alibaba/fastjson/serializer/ObjectFieldSerializer/writeEnumUsingToString Z
goto L4
L0:
return
.limit locals 5
.limit stack 2
.end method

.method public writeProperty(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;)V
.throws java/lang/Exception
aload 0
aload 1
invokevirtual com/alibaba/fastjson/serializer/ObjectFieldSerializer/writePrefix(Lcom/alibaba/fastjson/serializer/JSONSerializer;)V
aload 0
aload 1
aload 2
invokevirtual com/alibaba/fastjson/serializer/ObjectFieldSerializer/writeValue(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;)V
return
.limit locals 3
.limit stack 3
.end method

.method public writeValue(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;)V
.throws java/lang/Exception
aload 0
getfield com/alibaba/fastjson/serializer/ObjectFieldSerializer/format Ljava/lang/String;
ifnull L0
aload 1
aload 2
aload 0
getfield com/alibaba/fastjson/serializer/ObjectFieldSerializer/format Ljava/lang/String;
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/writeWithFormat(Ljava/lang/Object;Ljava/lang/String;)V
return
L0:
aload 0
getfield com/alibaba/fastjson/serializer/ObjectFieldSerializer/fieldSerializer Lcom/alibaba/fastjson/serializer/ObjectSerializer;
ifnonnull L1
aload 2
ifnonnull L2
aload 0
aload 0
getfield com/alibaba/fastjson/serializer/ObjectFieldSerializer/fieldInfo Lcom/alibaba/fastjson/util/FieldInfo;
invokevirtual com/alibaba/fastjson/util/FieldInfo/getFieldClass()Ljava/lang/Class;
putfield com/alibaba/fastjson/serializer/ObjectFieldSerializer/runtimeFieldClass Ljava/lang/Class;
L3:
aload 0
aload 1
aload 0
getfield com/alibaba/fastjson/serializer/ObjectFieldSerializer/runtimeFieldClass Ljava/lang/Class;
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;
putfield com/alibaba/fastjson/serializer/ObjectFieldSerializer/fieldSerializer Lcom/alibaba/fastjson/serializer/ObjectSerializer;
L1:
aload 2
ifnonnull L4
aload 0
getfield com/alibaba/fastjson/serializer/ObjectFieldSerializer/writeNumberAsZero Z
ifeq L5
ldc java/lang/Number
aload 0
getfield com/alibaba/fastjson/serializer/ObjectFieldSerializer/runtimeFieldClass Ljava/lang/Class;
invokevirtual java/lang/Class/isAssignableFrom(Ljava/lang/Class;)Z
ifeq L5
aload 1
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/getWriter()Lcom/alibaba/fastjson/serializer/SerializeWriter;
bipush 48
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(C)V
return
L2:
aload 0
aload 2
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
putfield com/alibaba/fastjson/serializer/ObjectFieldSerializer/runtimeFieldClass Ljava/lang/Class;
goto L3
L5:
aload 0
getfield com/alibaba/fastjson/serializer/ObjectFieldSerializer/writeNullStringAsEmpty Z
ifeq L6
ldc java/lang/String
aload 0
getfield com/alibaba/fastjson/serializer/ObjectFieldSerializer/runtimeFieldClass Ljava/lang/Class;
if_acmpne L6
aload 1
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/getWriter()Lcom/alibaba/fastjson/serializer/SerializeWriter;
ldc "\"\""
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(Ljava/lang/String;)V
return
L6:
aload 0
getfield com/alibaba/fastjson/serializer/ObjectFieldSerializer/writeNullBooleanAsFalse Z
ifeq L7
ldc java/lang/Boolean
aload 0
getfield com/alibaba/fastjson/serializer/ObjectFieldSerializer/runtimeFieldClass Ljava/lang/Class;
if_acmpne L7
aload 1
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/getWriter()Lcom/alibaba/fastjson/serializer/SerializeWriter;
ldc "false"
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(Ljava/lang/String;)V
return
L7:
aload 0
getfield com/alibaba/fastjson/serializer/ObjectFieldSerializer/writeNullListAsEmpty Z
ifeq L8
ldc java/util/Collection
aload 0
getfield com/alibaba/fastjson/serializer/ObjectFieldSerializer/runtimeFieldClass Ljava/lang/Class;
invokevirtual java/lang/Class/isAssignableFrom(Ljava/lang/Class;)Z
ifeq L8
aload 1
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/getWriter()Lcom/alibaba/fastjson/serializer/SerializeWriter;
ldc "[]"
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(Ljava/lang/String;)V
return
L8:
aload 0
getfield com/alibaba/fastjson/serializer/ObjectFieldSerializer/fieldSerializer Lcom/alibaba/fastjson/serializer/ObjectSerializer;
aload 1
aconst_null
aload 0
getfield com/alibaba/fastjson/serializer/ObjectFieldSerializer/fieldInfo Lcom/alibaba/fastjson/util/FieldInfo;
invokevirtual com/alibaba/fastjson/util/FieldInfo/getName()Ljava/lang/String;
aconst_null
invokeinterface com/alibaba/fastjson/serializer/ObjectSerializer/write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V 4
return
L4:
aload 0
getfield com/alibaba/fastjson/serializer/ObjectFieldSerializer/writeEnumUsingToString Z
iconst_1
if_icmpne L9
aload 0
getfield com/alibaba/fastjson/serializer/ObjectFieldSerializer/runtimeFieldClass Ljava/lang/Class;
invokevirtual java/lang/Class/isEnum()Z
ifeq L9
aload 1
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/getWriter()Lcom/alibaba/fastjson/serializer/SerializeWriter;
aload 2
checkcast java/lang/Enum
invokevirtual java/lang/Enum/name()Ljava/lang/String;
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/writeString(Ljava/lang/String;)V
return
L9:
aload 2
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
astore 3
aload 3
aload 0
getfield com/alibaba/fastjson/serializer/ObjectFieldSerializer/runtimeFieldClass Ljava/lang/Class;
if_acmpne L10
aload 0
getfield com/alibaba/fastjson/serializer/ObjectFieldSerializer/fieldSerializer Lcom/alibaba/fastjson/serializer/ObjectSerializer;
aload 1
aload 2
aload 0
getfield com/alibaba/fastjson/serializer/ObjectFieldSerializer/fieldInfo Lcom/alibaba/fastjson/util/FieldInfo;
invokevirtual com/alibaba/fastjson/util/FieldInfo/getName()Ljava/lang/String;
aload 0
getfield com/alibaba/fastjson/serializer/ObjectFieldSerializer/fieldInfo Lcom/alibaba/fastjson/util/FieldInfo;
invokevirtual com/alibaba/fastjson/util/FieldInfo/getFieldType()Ljava/lang/reflect/Type;
invokeinterface com/alibaba/fastjson/serializer/ObjectSerializer/write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V 4
return
L10:
aload 1
aload 3
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;
aload 1
aload 2
aload 0
getfield com/alibaba/fastjson/serializer/ObjectFieldSerializer/fieldInfo Lcom/alibaba/fastjson/util/FieldInfo;
invokevirtual com/alibaba/fastjson/util/FieldInfo/getName()Ljava/lang/String;
aload 0
getfield com/alibaba/fastjson/serializer/ObjectFieldSerializer/fieldInfo Lcom/alibaba/fastjson/util/FieldInfo;
invokevirtual com/alibaba/fastjson/util/FieldInfo/getFieldType()Ljava/lang/reflect/Type;
invokeinterface com/alibaba/fastjson/serializer/ObjectSerializer/write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V 4
return
.limit locals 4
.limit stack 5
.end method
