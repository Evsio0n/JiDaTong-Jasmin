.bytecode 50.0
.class public final synchronized com/alibaba/fastjson/parser/deserializer/ASMJavaBeanDeserializer$InnerJavaBeanDeserializer
.super com/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer
.inner class public final InnerJavaBeanDeserializer inner com/alibaba/fastjson/parser/deserializer/ASMJavaBeanDeserializer$InnerJavaBeanDeserializer outer com/alibaba/fastjson/parser/deserializer/ASMJavaBeanDeserializer

.field final synthetic 'this$0' Lcom/alibaba/fastjson/parser/deserializer/ASMJavaBeanDeserializer;

.method private <init>(Lcom/alibaba/fastjson/parser/deserializer/ASMJavaBeanDeserializer;Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;)V
.signature "(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class<*>;)V"
aload 0
aload 1
putfield com/alibaba/fastjson/parser/deserializer/ASMJavaBeanDeserializer$InnerJavaBeanDeserializer/this$0 Lcom/alibaba/fastjson/parser/deserializer/ASMJavaBeanDeserializer;
aload 0
aload 2
aload 3
invokespecial com/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer/<init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;)V
return
.limit locals 4
.limit stack 3
.end method

.method synthetic <init>(Lcom/alibaba/fastjson/parser/deserializer/ASMJavaBeanDeserializer;Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/deserializer/ASMJavaBeanDeserializer$1;)V
aload 0
aload 1
aload 2
aload 3
invokespecial com/alibaba/fastjson/parser/deserializer/ASMJavaBeanDeserializer$InnerJavaBeanDeserializer/<init>(Lcom/alibaba/fastjson/parser/deserializer/ASMJavaBeanDeserializer;Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;)V
return
.limit locals 5
.limit stack 4
.end method

.method public createFieldDeserializer(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
.signature "(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class<*>;Lcom/alibaba/fastjson/util/FieldInfo;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;"
aload 0
getfield com/alibaba/fastjson/parser/deserializer/ASMJavaBeanDeserializer$InnerJavaBeanDeserializer/this$0 Lcom/alibaba/fastjson/parser/deserializer/ASMJavaBeanDeserializer;
aload 1
aload 2
aload 3
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMJavaBeanDeserializer/createFieldDeserializer(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
areturn
.limit locals 4
.limit stack 4
.end method

.method public parseField(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)Z
.signature "(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;)Z"
aload 0
getfield com/alibaba/fastjson/parser/deserializer/ASMJavaBeanDeserializer$InnerJavaBeanDeserializer/this$0 Lcom/alibaba/fastjson/parser/deserializer/ASMJavaBeanDeserializer;
aload 1
aload 2
aload 3
aload 4
aload 5
invokevirtual com/alibaba/fastjson/parser/deserializer/ASMJavaBeanDeserializer/parseField(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)Z
ireturn
.limit locals 6
.limit stack 6
.end method
