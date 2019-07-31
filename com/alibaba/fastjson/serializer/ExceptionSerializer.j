.bytecode 50.0
.class public synchronized com/alibaba/fastjson/serializer/ExceptionSerializer
.super com/alibaba/fastjson/serializer/JavaBeanSerializer

.method public <init>(Ljava/lang/Class;)V
.signature "(Ljava/lang/Class<*>;)V"
aload 0
aload 1
invokespecial com/alibaba/fastjson/serializer/JavaBeanSerializer/<init>(Ljava/lang/Class;)V
return
.limit locals 2
.limit stack 2
.end method

.method protected isWriteClassName(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Object;)Z
iconst_1
ireturn
.limit locals 5
.limit stack 1
.end method
