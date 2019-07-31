.bytecode 50.0
.class public synchronized com/alibaba/fastjson/serializer/ClobSeriliazer
.super java/lang/Object
.implements com/alibaba/fastjson/serializer/ObjectSerializer

.field public static final 'instance' Lcom/alibaba/fastjson/serializer/ClobSeriliazer;

.method static <clinit>()V
new com/alibaba/fastjson/serializer/ClobSeriliazer
dup
invokespecial com/alibaba/fastjson/serializer/ClobSeriliazer/<init>()V
putstatic com/alibaba/fastjson/serializer/ClobSeriliazer/instance Lcom/alibaba/fastjson/serializer/ClobSeriliazer;
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

.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
.throws java/io/IOException
.catch java/sql/SQLException from L0 to L1 using L2
.catch java/sql/SQLException from L3 to L4 using L2
.catch java/sql/SQLException from L4 to L5 using L2
.catch java/sql/SQLException from L6 to L7 using L2
.catch java/sql/SQLException from L8 to L9 using L2
aload 2
ifnonnull L3
L0:
aload 1
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/writeNull()V
L1:
return
L3:
aload 2
checkcast java/sql/Clob
invokeinterface java/sql/Clob/getCharacterStream()Ljava/io/Reader; 0
astore 2
new java/io/StringWriter
dup
invokespecial java/io/StringWriter/<init>()V
astore 3
sipush 1024
newarray char
astore 4
L4:
aload 2
aload 4
invokevirtual java/io/Reader/read([C)I
istore 5
L5:
iload 5
iconst_m1
if_icmpeq L8
L6:
aload 3
aload 4
iconst_0
iload 5
invokevirtual java/io/StringWriter/write([CII)V
L7:
goto L4
L2:
astore 1
new java/io/IOException
dup
ldc "write clob error"
aload 1
invokespecial java/io/IOException/<init>(Ljava/lang/String;Ljava/lang/Throwable;)V
athrow
L8:
aload 2
invokevirtual java/io/Reader/close()V
aload 1
aload 3
invokevirtual java/io/StringWriter/toString()Ljava/lang/String;
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/write(Ljava/lang/String;)V
L9:
return
.limit locals 6
.limit stack 4
.end method
