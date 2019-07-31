.bytecode 50.0
.class public synchronized com/alibaba/fastjson/serializer/JSONSerializerMap
.super com/alibaba/fastjson/serializer/SerializeConfig
.annotation visible Ljava/lang/Deprecated;
.end annotation

.method public <init>()V
aload 0
invokespecial com/alibaba/fastjson/serializer/SerializeConfig/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public final put(Ljava/lang/Class;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z
.signature "(Ljava/lang/Class<*>;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z"
aload 0
aload 1
aload 2
invokespecial com/alibaba/fastjson/serializer/SerializeConfig/put(Ljava/lang/Object;Ljava/lang/Object;)Z
ireturn
.limit locals 3
.limit stack 3
.end method
