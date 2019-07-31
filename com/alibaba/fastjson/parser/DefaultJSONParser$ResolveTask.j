.bytecode 50.0
.class public synchronized com/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask
.super java/lang/Object
.inner class public static ResolveTask inner com/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask outer com/alibaba/fastjson/parser/DefaultJSONParser

.field private final 'context' Lcom/alibaba/fastjson/parser/ParseContext;

.field private 'fieldDeserializer' Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

.field private 'ownerContext' Lcom/alibaba/fastjson/parser/ParseContext;

.field private final 'referenceValue' Ljava/lang/String;

.method public <init>(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/String;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask/context Lcom/alibaba/fastjson/parser/ParseContext;
aload 0
aload 2
putfield com/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask/referenceValue Ljava/lang/String;
return
.limit locals 3
.limit stack 2
.end method

.method public getContext()Lcom/alibaba/fastjson/parser/ParseContext;
aload 0
getfield com/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask/context Lcom/alibaba/fastjson/parser/ParseContext;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getFieldDeserializer()Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
aload 0
getfield com/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask/fieldDeserializer Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getOwnerContext()Lcom/alibaba/fastjson/parser/ParseContext;
aload 0
getfield com/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask/ownerContext Lcom/alibaba/fastjson/parser/ParseContext;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getReferenceValue()Ljava/lang/String;
aload 0
getfield com/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask/referenceValue Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public setFieldDeserializer(Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;)V
aload 0
aload 1
putfield com/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask/fieldDeserializer Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
return
.limit locals 2
.limit stack 2
.end method

.method public setOwnerContext(Lcom/alibaba/fastjson/parser/ParseContext;)V
aload 0
aload 1
putfield com/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask/ownerContext Lcom/alibaba/fastjson/parser/ParseContext;
return
.limit locals 2
.limit stack 2
.end method
