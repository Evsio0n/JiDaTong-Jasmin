.bytecode 50.0
.class public final synchronized com/alibaba/fastjson/serializer/JSONSerializerContext
.super java/lang/Object
.inner class protected static final Entry inner com/alibaba/fastjson/serializer/JSONSerializerContext$Entry outer com/alibaba/fastjson/serializer/JSONSerializerContext

.field public static final 'DEFAULT_TABLE_SIZE' I = 128


.field private final 'buckets' [Lcom/alibaba/fastjson/serializer/JSONSerializerContext$Entry;

.field private final 'indexMask' I

.method public <init>()V
aload 0
sipush 128
invokespecial com/alibaba/fastjson/serializer/JSONSerializerContext/<init>(I)V
return
.limit locals 1
.limit stack 2
.end method

.method public <init>(I)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iload 1
iconst_1
isub
putfield com/alibaba/fastjson/serializer/JSONSerializerContext/indexMask I
aload 0
iload 1
anewarray com/alibaba/fastjson/serializer/JSONSerializerContext$Entry
putfield com/alibaba/fastjson/serializer/JSONSerializerContext/buckets [Lcom/alibaba/fastjson/serializer/JSONSerializerContext$Entry;
return
.limit locals 2
.limit stack 3
.end method

.method public final put(Ljava/lang/Object;)Z
aload 1
invokestatic java/lang/System/identityHashCode(Ljava/lang/Object;)I
istore 2
iload 2
aload 0
getfield com/alibaba/fastjson/serializer/JSONSerializerContext/indexMask I
iand
istore 3
aload 0
getfield com/alibaba/fastjson/serializer/JSONSerializerContext/buckets [Lcom/alibaba/fastjson/serializer/JSONSerializerContext$Entry;
iload 3
aaload
astore 4
L0:
aload 4
ifnull L1
aload 1
aload 4
getfield com/alibaba/fastjson/serializer/JSONSerializerContext$Entry/object Ljava/lang/Object;
if_acmpne L2
iconst_1
ireturn
L2:
aload 4
getfield com/alibaba/fastjson/serializer/JSONSerializerContext$Entry/next Lcom/alibaba/fastjson/serializer/JSONSerializerContext$Entry;
astore 4
goto L0
L1:
new com/alibaba/fastjson/serializer/JSONSerializerContext$Entry
dup
aload 1
iload 2
aload 0
getfield com/alibaba/fastjson/serializer/JSONSerializerContext/buckets [Lcom/alibaba/fastjson/serializer/JSONSerializerContext$Entry;
iload 3
aaload
invokespecial com/alibaba/fastjson/serializer/JSONSerializerContext$Entry/<init>(Ljava/lang/Object;ILcom/alibaba/fastjson/serializer/JSONSerializerContext$Entry;)V
astore 1
aload 0
getfield com/alibaba/fastjson/serializer/JSONSerializerContext/buckets [Lcom/alibaba/fastjson/serializer/JSONSerializerContext$Entry;
iload 3
aload 1
aastore
iconst_0
ireturn
.limit locals 5
.limit stack 6
.end method
