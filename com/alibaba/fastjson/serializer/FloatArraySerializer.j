.bytecode 50.0
.class public synchronized com/alibaba/fastjson/serializer/FloatArraySerializer
.super java/lang/Object
.implements com/alibaba/fastjson/serializer/ObjectSerializer

.field public static final 'instance' Lcom/alibaba/fastjson/serializer/FloatArraySerializer;

.method static <clinit>()V
new com/alibaba/fastjson/serializer/FloatArraySerializer
dup
invokespecial com/alibaba/fastjson/serializer/FloatArraySerializer/<init>()V
putstatic com/alibaba/fastjson/serializer/FloatArraySerializer/instance Lcom/alibaba/fastjson/serializer/FloatArraySerializer;
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

.method public final write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
.throws java/io/IOException
aload 1
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/getWriter()Lcom/alibaba/fastjson/serializer/SerializeWriter;
astore 1
aload 2
ifnonnull L0
aload 1
getstatic com/alibaba/fastjson/serializer/SerializerFeature/WriteNullListAsEmpty Lcom/alibaba/fastjson/serializer/SerializerFeature;
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z
ifeq L1
aload 1
ldc "[]"
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(Ljava/lang/String;)V
return
L1:
aload 1
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/writeNull()V
return
L0:
aload 2
checkcast [F
checkcast [F
astore 2
aload 2
arraylength
iconst_1
isub
istore 7
iload 7
iconst_m1
if_icmpne L2
aload 1
ldc "[]"
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;
pop
return
L2:
aload 1
bipush 91
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;
pop
iconst_0
istore 6
L3:
iload 6
iload 7
if_icmpge L4
aload 2
iload 6
faload
fstore 5
fload 5
invokestatic java/lang/Float/isNaN(F)Z
ifeq L5
aload 1
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/writeNull()V
L6:
aload 1
bipush 44
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;
pop
iload 6
iconst_1
iadd
istore 6
goto L3
L5:
aload 1
fload 5
invokestatic java/lang/Float/toString(F)Ljava/lang/String;
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;
pop
goto L6
L4:
aload 2
iload 7
faload
fstore 5
fload 5
invokestatic java/lang/Float/isNaN(F)Z
ifeq L7
aload 1
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/writeNull()V
L8:
aload 1
bipush 93
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;
pop
return
L7:
aload 1
fload 5
invokestatic java/lang/Float/toString(F)Ljava/lang/String;
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;
pop
goto L8
.limit locals 8
.limit stack 2
.end method
