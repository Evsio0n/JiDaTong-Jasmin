.bytecode 50.0
.class public synchronized abstract com/alibaba/fastjson/serializer/AfterFilter
.super java/lang/Object
.implements com/alibaba/fastjson/serializer/SerializeFilter

.field private static final 'COMMA' Ljava/lang/Character;

.field private static final 'seperatorLocal' Ljava/lang/ThreadLocal; signature "Ljava/lang/ThreadLocal<Ljava/lang/Character;>;"

.field private static final 'serializerLocal' Ljava/lang/ThreadLocal; signature "Ljava/lang/ThreadLocal<Lcom/alibaba/fastjson/serializer/JSONSerializer;>;"

.method static <clinit>()V
new java/lang/ThreadLocal
dup
invokespecial java/lang/ThreadLocal/<init>()V
putstatic com/alibaba/fastjson/serializer/AfterFilter/serializerLocal Ljava/lang/ThreadLocal;
new java/lang/ThreadLocal
dup
invokespecial java/lang/ThreadLocal/<init>()V
putstatic com/alibaba/fastjson/serializer/AfterFilter/seperatorLocal Ljava/lang/ThreadLocal;
bipush 44
invokestatic java/lang/Character/valueOf(C)Ljava/lang/Character;
putstatic com/alibaba/fastjson/serializer/AfterFilter/COMMA Ljava/lang/Character;
return
.limit locals 0
.limit stack 2
.end method

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method final writeAfter(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;C)C
getstatic com/alibaba/fastjson/serializer/AfterFilter/serializerLocal Ljava/lang/ThreadLocal;
aload 1
invokevirtual java/lang/ThreadLocal/set(Ljava/lang/Object;)V
getstatic com/alibaba/fastjson/serializer/AfterFilter/seperatorLocal Ljava/lang/ThreadLocal;
iload 3
invokestatic java/lang/Character/valueOf(C)Ljava/lang/Character;
invokevirtual java/lang/ThreadLocal/set(Ljava/lang/Object;)V
aload 0
aload 2
invokevirtual com/alibaba/fastjson/serializer/AfterFilter/writeAfter(Ljava/lang/Object;)V
getstatic com/alibaba/fastjson/serializer/AfterFilter/serializerLocal Ljava/lang/ThreadLocal;
aconst_null
invokevirtual java/lang/ThreadLocal/set(Ljava/lang/Object;)V
getstatic com/alibaba/fastjson/serializer/AfterFilter/seperatorLocal Ljava/lang/ThreadLocal;
invokevirtual java/lang/ThreadLocal/get()Ljava/lang/Object;
checkcast java/lang/Character
invokevirtual java/lang/Character/charValue()C
ireturn
.limit locals 4
.limit stack 2
.end method

.method public abstract writeAfter(Ljava/lang/Object;)V
.end method

.method protected final writeKeyValue(Ljava/lang/String;Ljava/lang/Object;)V
getstatic com/alibaba/fastjson/serializer/AfterFilter/serializerLocal Ljava/lang/ThreadLocal;
invokevirtual java/lang/ThreadLocal/get()Ljava/lang/Object;
checkcast com/alibaba/fastjson/serializer/JSONSerializer
astore 4
getstatic com/alibaba/fastjson/serializer/AfterFilter/seperatorLocal Ljava/lang/ThreadLocal;
invokevirtual java/lang/ThreadLocal/get()Ljava/lang/Object;
checkcast java/lang/Character
invokevirtual java/lang/Character/charValue()C
istore 3
aload 4
iload 3
aload 1
aload 2
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/writeKeyValue(CLjava/lang/String;Ljava/lang/Object;)V
iload 3
bipush 44
if_icmpeq L0
getstatic com/alibaba/fastjson/serializer/AfterFilter/seperatorLocal Ljava/lang/ThreadLocal;
getstatic com/alibaba/fastjson/serializer/AfterFilter/COMMA Ljava/lang/Character;
invokevirtual java/lang/ThreadLocal/set(Ljava/lang/Object;)V
L0:
return
.limit locals 5
.limit stack 4
.end method
