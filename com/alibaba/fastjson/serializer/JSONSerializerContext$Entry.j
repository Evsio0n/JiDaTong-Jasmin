.bytecode 50.0
.class public final synchronized com/alibaba/fastjson/serializer/JSONSerializerContext$Entry
.super java/lang/Object
.inner class protected static final Entry inner com/alibaba/fastjson/serializer/JSONSerializerContext$Entry outer com/alibaba/fastjson/serializer/JSONSerializerContext

.field public final 'hashCode' I

.field public 'next' Lcom/alibaba/fastjson/serializer/JSONSerializerContext$Entry;

.field public final 'object' Ljava/lang/Object;

.method public <init>(Ljava/lang/Object;ILcom/alibaba/fastjson/serializer/JSONSerializerContext$Entry;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/alibaba/fastjson/serializer/JSONSerializerContext$Entry/object Ljava/lang/Object;
aload 0
aload 3
putfield com/alibaba/fastjson/serializer/JSONSerializerContext$Entry/next Lcom/alibaba/fastjson/serializer/JSONSerializerContext$Entry;
aload 0
iload 2
putfield com/alibaba/fastjson/serializer/JSONSerializerContext$Entry/hashCode I
return
.limit locals 4
.limit stack 2
.end method
