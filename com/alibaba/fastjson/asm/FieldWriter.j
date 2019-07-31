.bytecode 50.0
.class final synchronized com/alibaba/fastjson/asm/FieldWriter
.super java/lang/Object
.implements com/alibaba/fastjson/asm/FieldVisitor

.field private final 'access' I

.field private final 'desc' I

.field private final 'name' I

.field 'next' Lcom/alibaba/fastjson/asm/FieldWriter;

.method <init>(Lcom/alibaba/fastjson/asm/ClassWriter;ILjava/lang/String;Ljava/lang/String;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 1
getfield com/alibaba/fastjson/asm/ClassWriter/firstField Lcom/alibaba/fastjson/asm/FieldWriter;
ifnonnull L0
aload 1
aload 0
putfield com/alibaba/fastjson/asm/ClassWriter/firstField Lcom/alibaba/fastjson/asm/FieldWriter;
L1:
aload 1
aload 0
putfield com/alibaba/fastjson/asm/ClassWriter/lastField Lcom/alibaba/fastjson/asm/FieldWriter;
aload 0
iload 2
putfield com/alibaba/fastjson/asm/FieldWriter/access I
aload 0
aload 1
aload 3
invokevirtual com/alibaba/fastjson/asm/ClassWriter/newUTF8(Ljava/lang/String;)I
putfield com/alibaba/fastjson/asm/FieldWriter/name I
aload 0
aload 1
aload 4
invokevirtual com/alibaba/fastjson/asm/ClassWriter/newUTF8(Ljava/lang/String;)I
putfield com/alibaba/fastjson/asm/FieldWriter/desc I
return
L0:
aload 1
getfield com/alibaba/fastjson/asm/ClassWriter/lastField Lcom/alibaba/fastjson/asm/FieldWriter;
aload 0
putfield com/alibaba/fastjson/asm/FieldWriter/next Lcom/alibaba/fastjson/asm/FieldWriter;
goto L1
.limit locals 5
.limit stack 3
.end method

.method getSize()I
bipush 8
ireturn
.limit locals 1
.limit stack 1
.end method

.method put(Lcom/alibaba/fastjson/asm/ByteVector;)V
aload 0
getfield com/alibaba/fastjson/asm/FieldWriter/access I
ldc_w 262144
iand
bipush 64
idiv
istore 2
aload 1
aload 0
getfield com/alibaba/fastjson/asm/FieldWriter/access I
ldc_w 393216
iload 2
ior
iconst_m1
ixor
iand
invokevirtual com/alibaba/fastjson/asm/ByteVector/putShort(I)Lcom/alibaba/fastjson/asm/ByteVector;
aload 0
getfield com/alibaba/fastjson/asm/FieldWriter/name I
invokevirtual com/alibaba/fastjson/asm/ByteVector/putShort(I)Lcom/alibaba/fastjson/asm/ByteVector;
aload 0
getfield com/alibaba/fastjson/asm/FieldWriter/desc I
invokevirtual com/alibaba/fastjson/asm/ByteVector/putShort(I)Lcom/alibaba/fastjson/asm/ByteVector;
pop
aload 1
iconst_0
invokevirtual com/alibaba/fastjson/asm/ByteVector/putShort(I)Lcom/alibaba/fastjson/asm/ByteVector;
pop
return
.limit locals 3
.limit stack 4
.end method

.method public visitEnd()V
return
.limit locals 1
.limit stack 0
.end method
