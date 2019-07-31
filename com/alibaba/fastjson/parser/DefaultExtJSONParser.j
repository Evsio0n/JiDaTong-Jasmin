.bytecode 50.0
.class public synchronized com/alibaba/fastjson/parser/DefaultExtJSONParser
.super com/alibaba/fastjson/parser/DefaultJSONParser
.annotation visible Ljava/lang/Deprecated;
.end annotation

.method public <init>(Ljava/lang/String;)V
aload 0
aload 1
invokestatic com/alibaba/fastjson/parser/ParserConfig/getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;
invokespecial com/alibaba/fastjson/parser/DefaultExtJSONParser/<init>(Ljava/lang/String;Lcom/alibaba/fastjson/parser/ParserConfig;)V
return
.limit locals 2
.limit stack 3
.end method

.method public <init>(Ljava/lang/String;Lcom/alibaba/fastjson/parser/ParserConfig;)V
aload 0
aload 1
aload 2
invokespecial com/alibaba/fastjson/parser/DefaultJSONParser/<init>(Ljava/lang/String;Lcom/alibaba/fastjson/parser/ParserConfig;)V
return
.limit locals 3
.limit stack 3
.end method

.method public <init>(Ljava/lang/String;Lcom/alibaba/fastjson/parser/ParserConfig;I)V
aload 0
aload 1
aload 2
iload 3
invokespecial com/alibaba/fastjson/parser/DefaultJSONParser/<init>(Ljava/lang/String;Lcom/alibaba/fastjson/parser/ParserConfig;I)V
return
.limit locals 4
.limit stack 4
.end method

.method public <init>([CILcom/alibaba/fastjson/parser/ParserConfig;I)V
aload 0
aload 1
iload 2
aload 3
iload 4
invokespecial com/alibaba/fastjson/parser/DefaultJSONParser/<init>([CILcom/alibaba/fastjson/parser/ParserConfig;I)V
return
.limit locals 5
.limit stack 5
.end method
