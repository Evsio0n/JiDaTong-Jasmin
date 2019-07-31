.bytecode 50.0
.class final synchronized com/alibaba/fastjson/serializer/NumberFieldSerializer
.super com/alibaba/fastjson/serializer/FieldSerializer

.method public <init>(Lcom/alibaba/fastjson/util/FieldInfo;)V
aload 0
aload 1
invokespecial com/alibaba/fastjson/serializer/FieldSerializer/<init>(Lcom/alibaba/fastjson/util/FieldInfo;)V
return
.limit locals 2
.limit stack 2
.end method

.method public writeProperty(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;)V
.throws java/lang/Exception
aload 0
aload 1
invokevirtual com/alibaba/fastjson/serializer/NumberFieldSerializer/writePrefix(Lcom/alibaba/fastjson/serializer/JSONSerializer;)V
aload 0
aload 1
aload 2
invokevirtual com/alibaba/fastjson/serializer/NumberFieldSerializer/writeValue(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;)V
return
.limit locals 3
.limit stack 3
.end method

.method public writeValue(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;)V
.throws java/lang/Exception
aload 1
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/getWriter()Lcom/alibaba/fastjson/serializer/SerializeWriter;
astore 1
aload 2
ifnonnull L0
aload 1
getstatic com/alibaba/fastjson/serializer/SerializerFeature/WriteNullNumberAsZero Lcom/alibaba/fastjson/serializer/SerializerFeature;
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z
ifeq L1
aload 1
bipush 48
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(C)V
return
L1:
aload 1
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/writeNull()V
return
L0:
aload 1
aload 2
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;
pop
return
.limit locals 3
.limit stack 2
.end method
