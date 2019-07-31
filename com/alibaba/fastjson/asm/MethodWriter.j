.bytecode 50.0
.class synchronized com/alibaba/fastjson/asm/MethodWriter
.super java/lang/Object
.implements com/alibaba/fastjson/asm/MethodVisitor

.field static final 'ACC_CONSTRUCTOR' I = 262144


.field static final 'APPEND_FRAME' I = 252


.field static final 'CHOP_FRAME' I = 248


.field static final 'FULL_FRAME' I = 255


.field static final 'RESERVED' I = 128


.field static final 'SAME_FRAME' I = 0


.field static final 'SAME_FRAME_EXTENDED' I = 251


.field static final 'SAME_LOCALS_1_STACK_ITEM_FRAME' I = 64


.field static final 'SAME_LOCALS_1_STACK_ITEM_FRAME_EXTENDED' I = 247


.field private 'access' I

.field 'classReaderLength' I

.field private 'code' Lcom/alibaba/fastjson/asm/ByteVector;

.field final 'cw' Lcom/alibaba/fastjson/asm/ClassWriter;

.field private final 'desc' I

.field 'exceptionCount' I

.field 'exceptions' [I

.field private 'maxLocals' I

.field private 'maxStack' I

.field private final 'name' I

.field 'next' Lcom/alibaba/fastjson/asm/MethodWriter;

.method <init>(Lcom/alibaba/fastjson/asm/ClassWriter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new com/alibaba/fastjson/asm/ByteVector
dup
invokespecial com/alibaba/fastjson/asm/ByteVector/<init>()V
putfield com/alibaba/fastjson/asm/MethodWriter/code Lcom/alibaba/fastjson/asm/ByteVector;
aload 1
getfield com/alibaba/fastjson/asm/ClassWriter/firstMethod Lcom/alibaba/fastjson/asm/MethodWriter;
ifnonnull L0
aload 1
aload 0
putfield com/alibaba/fastjson/asm/ClassWriter/firstMethod Lcom/alibaba/fastjson/asm/MethodWriter;
L1:
aload 1
aload 0
putfield com/alibaba/fastjson/asm/ClassWriter/lastMethod Lcom/alibaba/fastjson/asm/MethodWriter;
aload 0
aload 1
putfield com/alibaba/fastjson/asm/MethodWriter/cw Lcom/alibaba/fastjson/asm/ClassWriter;
aload 0
iload 2
putfield com/alibaba/fastjson/asm/MethodWriter/access I
aload 0
aload 1
aload 3
invokevirtual com/alibaba/fastjson/asm/ClassWriter/newUTF8(Ljava/lang/String;)I
putfield com/alibaba/fastjson/asm/MethodWriter/name I
aload 0
aload 1
aload 4
invokevirtual com/alibaba/fastjson/asm/ClassWriter/newUTF8(Ljava/lang/String;)I
putfield com/alibaba/fastjson/asm/MethodWriter/desc I
aload 6
ifnull L2
aload 6
arraylength
ifle L2
aload 0
aload 6
arraylength
putfield com/alibaba/fastjson/asm/MethodWriter/exceptionCount I
aload 0
aload 0
getfield com/alibaba/fastjson/asm/MethodWriter/exceptionCount I
newarray int
putfield com/alibaba/fastjson/asm/MethodWriter/exceptions [I
iconst_0
istore 2
L3:
iload 2
aload 0
getfield com/alibaba/fastjson/asm/MethodWriter/exceptionCount I
if_icmpge L2
aload 0
getfield com/alibaba/fastjson/asm/MethodWriter/exceptions [I
iload 2
aload 1
aload 6
iload 2
aaload
invokevirtual com/alibaba/fastjson/asm/ClassWriter/newClass(Ljava/lang/String;)I
iastore
iload 2
iconst_1
iadd
istore 2
goto L3
L0:
aload 1
getfield com/alibaba/fastjson/asm/ClassWriter/lastMethod Lcom/alibaba/fastjson/asm/MethodWriter;
aload 0
putfield com/alibaba/fastjson/asm/MethodWriter/next Lcom/alibaba/fastjson/asm/MethodWriter;
goto L1
L2:
return
.limit locals 7
.limit stack 5
.end method

.method final getSize()I
bipush 8
istore 1
aload 0
getfield com/alibaba/fastjson/asm/MethodWriter/code Lcom/alibaba/fastjson/asm/ByteVector;
getfield com/alibaba/fastjson/asm/ByteVector/length I
ifle L0
aload 0
getfield com/alibaba/fastjson/asm/MethodWriter/cw Lcom/alibaba/fastjson/asm/ClassWriter;
ldc "Code"
invokevirtual com/alibaba/fastjson/asm/ClassWriter/newUTF8(Ljava/lang/String;)I
pop
bipush 8
aload 0
getfield com/alibaba/fastjson/asm/MethodWriter/code Lcom/alibaba/fastjson/asm/ByteVector;
getfield com/alibaba/fastjson/asm/ByteVector/length I
bipush 18
iadd
iconst_0
iadd
iadd
istore 1
L0:
iload 1
istore 2
aload 0
getfield com/alibaba/fastjson/asm/MethodWriter/exceptionCount I
ifle L1
aload 0
getfield com/alibaba/fastjson/asm/MethodWriter/cw Lcom/alibaba/fastjson/asm/ClassWriter;
ldc "Exceptions"
invokevirtual com/alibaba/fastjson/asm/ClassWriter/newUTF8(Ljava/lang/String;)I
pop
iload 1
aload 0
getfield com/alibaba/fastjson/asm/MethodWriter/exceptionCount I
iconst_2
imul
bipush 8
iadd
iadd
istore 2
L1:
iload 2
ireturn
.limit locals 3
.limit stack 3
.end method

.method final put(Lcom/alibaba/fastjson/asm/ByteVector;)V
aload 0
getfield com/alibaba/fastjson/asm/MethodWriter/access I
ldc_w 262144
iand
bipush 64
idiv
istore 2
aload 1
aload 0
getfield com/alibaba/fastjson/asm/MethodWriter/access I
ldc_w 393216
iload 2
ior
iconst_m1
ixor
iand
invokevirtual com/alibaba/fastjson/asm/ByteVector/putShort(I)Lcom/alibaba/fastjson/asm/ByteVector;
aload 0
getfield com/alibaba/fastjson/asm/MethodWriter/name I
invokevirtual com/alibaba/fastjson/asm/ByteVector/putShort(I)Lcom/alibaba/fastjson/asm/ByteVector;
aload 0
getfield com/alibaba/fastjson/asm/MethodWriter/desc I
invokevirtual com/alibaba/fastjson/asm/ByteVector/putShort(I)Lcom/alibaba/fastjson/asm/ByteVector;
pop
iconst_0
istore 2
aload 0
getfield com/alibaba/fastjson/asm/MethodWriter/code Lcom/alibaba/fastjson/asm/ByteVector;
getfield com/alibaba/fastjson/asm/ByteVector/length I
ifle L0
iconst_0
iconst_1
iadd
istore 2
L0:
iload 2
istore 3
aload 0
getfield com/alibaba/fastjson/asm/MethodWriter/exceptionCount I
ifle L1
iload 2
iconst_1
iadd
istore 3
L1:
aload 1
iload 3
invokevirtual com/alibaba/fastjson/asm/ByteVector/putShort(I)Lcom/alibaba/fastjson/asm/ByteVector;
pop
aload 0
getfield com/alibaba/fastjson/asm/MethodWriter/code Lcom/alibaba/fastjson/asm/ByteVector;
getfield com/alibaba/fastjson/asm/ByteVector/length I
ifle L2
aload 0
getfield com/alibaba/fastjson/asm/MethodWriter/code Lcom/alibaba/fastjson/asm/ByteVector;
getfield com/alibaba/fastjson/asm/ByteVector/length I
istore 2
aload 1
aload 0
getfield com/alibaba/fastjson/asm/MethodWriter/cw Lcom/alibaba/fastjson/asm/ClassWriter;
ldc "Code"
invokevirtual com/alibaba/fastjson/asm/ClassWriter/newUTF8(Ljava/lang/String;)I
invokevirtual com/alibaba/fastjson/asm/ByteVector/putShort(I)Lcom/alibaba/fastjson/asm/ByteVector;
iload 2
bipush 12
iadd
iconst_0
iadd
invokevirtual com/alibaba/fastjson/asm/ByteVector/putInt(I)Lcom/alibaba/fastjson/asm/ByteVector;
pop
aload 1
aload 0
getfield com/alibaba/fastjson/asm/MethodWriter/maxStack I
invokevirtual com/alibaba/fastjson/asm/ByteVector/putShort(I)Lcom/alibaba/fastjson/asm/ByteVector;
aload 0
getfield com/alibaba/fastjson/asm/MethodWriter/maxLocals I
invokevirtual com/alibaba/fastjson/asm/ByteVector/putShort(I)Lcom/alibaba/fastjson/asm/ByteVector;
pop
aload 1
aload 0
getfield com/alibaba/fastjson/asm/MethodWriter/code Lcom/alibaba/fastjson/asm/ByteVector;
getfield com/alibaba/fastjson/asm/ByteVector/length I
invokevirtual com/alibaba/fastjson/asm/ByteVector/putInt(I)Lcom/alibaba/fastjson/asm/ByteVector;
aload 0
getfield com/alibaba/fastjson/asm/MethodWriter/code Lcom/alibaba/fastjson/asm/ByteVector;
getfield com/alibaba/fastjson/asm/ByteVector/data [B
iconst_0
aload 0
getfield com/alibaba/fastjson/asm/MethodWriter/code Lcom/alibaba/fastjson/asm/ByteVector;
getfield com/alibaba/fastjson/asm/ByteVector/length I
invokevirtual com/alibaba/fastjson/asm/ByteVector/putByteArray([BII)Lcom/alibaba/fastjson/asm/ByteVector;
pop
aload 1
iconst_0
invokevirtual com/alibaba/fastjson/asm/ByteVector/putShort(I)Lcom/alibaba/fastjson/asm/ByteVector;
pop
aload 1
iconst_0
invokevirtual com/alibaba/fastjson/asm/ByteVector/putShort(I)Lcom/alibaba/fastjson/asm/ByteVector;
pop
L2:
aload 0
getfield com/alibaba/fastjson/asm/MethodWriter/exceptionCount I
ifle L3
aload 1
aload 0
getfield com/alibaba/fastjson/asm/MethodWriter/cw Lcom/alibaba/fastjson/asm/ClassWriter;
ldc "Exceptions"
invokevirtual com/alibaba/fastjson/asm/ClassWriter/newUTF8(Ljava/lang/String;)I
invokevirtual com/alibaba/fastjson/asm/ByteVector/putShort(I)Lcom/alibaba/fastjson/asm/ByteVector;
aload 0
getfield com/alibaba/fastjson/asm/MethodWriter/exceptionCount I
iconst_2
imul
iconst_2
iadd
invokevirtual com/alibaba/fastjson/asm/ByteVector/putInt(I)Lcom/alibaba/fastjson/asm/ByteVector;
pop
aload 1
aload 0
getfield com/alibaba/fastjson/asm/MethodWriter/exceptionCount I
invokevirtual com/alibaba/fastjson/asm/ByteVector/putShort(I)Lcom/alibaba/fastjson/asm/ByteVector;
pop
iconst_0
istore 2
L4:
iload 2
aload 0
getfield com/alibaba/fastjson/asm/MethodWriter/exceptionCount I
if_icmpge L3
aload 1
aload 0
getfield com/alibaba/fastjson/asm/MethodWriter/exceptions [I
iload 2
iaload
invokevirtual com/alibaba/fastjson/asm/ByteVector/putShort(I)Lcom/alibaba/fastjson/asm/ByteVector;
pop
iload 2
iconst_1
iadd
istore 2
goto L4
L3:
return
.limit locals 4
.limit stack 4
.end method

.method public visitEnd()V
return
.limit locals 1
.limit stack 0
.end method

.method public visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
aload 0
getfield com/alibaba/fastjson/asm/MethodWriter/cw Lcom/alibaba/fastjson/asm/ClassWriter;
aload 2
aload 3
aload 4
invokevirtual com/alibaba/fastjson/asm/ClassWriter/newFieldItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Item;
astore 2
aload 0
getfield com/alibaba/fastjson/asm/MethodWriter/code Lcom/alibaba/fastjson/asm/ByteVector;
iload 1
aload 2
getfield com/alibaba/fastjson/asm/Item/index I
invokevirtual com/alibaba/fastjson/asm/ByteVector/put12(II)Lcom/alibaba/fastjson/asm/ByteVector;
pop
return
.limit locals 5
.limit stack 4
.end method

.method public visitIincInsn(II)V
aload 0
getfield com/alibaba/fastjson/asm/MethodWriter/code Lcom/alibaba/fastjson/asm/ByteVector;
sipush 132
invokevirtual com/alibaba/fastjson/asm/ByteVector/putByte(I)Lcom/alibaba/fastjson/asm/ByteVector;
iload 1
iload 2
invokevirtual com/alibaba/fastjson/asm/ByteVector/put11(II)Lcom/alibaba/fastjson/asm/ByteVector;
pop
return
.limit locals 3
.limit stack 3
.end method

.method public visitInsn(I)V
aload 0
getfield com/alibaba/fastjson/asm/MethodWriter/code Lcom/alibaba/fastjson/asm/ByteVector;
iload 1
invokevirtual com/alibaba/fastjson/asm/ByteVector/putByte(I)Lcom/alibaba/fastjson/asm/ByteVector;
pop
return
.limit locals 2
.limit stack 2
.end method

.method public visitIntInsn(II)V
aload 0
getfield com/alibaba/fastjson/asm/MethodWriter/code Lcom/alibaba/fastjson/asm/ByteVector;
iload 1
iload 2
invokevirtual com/alibaba/fastjson/asm/ByteVector/put11(II)Lcom/alibaba/fastjson/asm/ByteVector;
pop
return
.limit locals 3
.limit stack 3
.end method

.method public visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V
aload 2
getfield com/alibaba/fastjson/asm/Label/status I
iconst_2
iand
ifeq L0
aload 2
getfield com/alibaba/fastjson/asm/Label/position I
aload 0
getfield com/alibaba/fastjson/asm/MethodWriter/code Lcom/alibaba/fastjson/asm/ByteVector;
getfield com/alibaba/fastjson/asm/ByteVector/length I
isub
sipush -32768
if_icmpge L0
new java/lang/UnsupportedOperationException
dup
invokespecial java/lang/UnsupportedOperationException/<init>()V
athrow
L0:
aload 0
getfield com/alibaba/fastjson/asm/MethodWriter/code Lcom/alibaba/fastjson/asm/ByteVector;
iload 1
invokevirtual com/alibaba/fastjson/asm/ByteVector/putByte(I)Lcom/alibaba/fastjson/asm/ByteVector;
pop
aload 2
aload 0
aload 0
getfield com/alibaba/fastjson/asm/MethodWriter/code Lcom/alibaba/fastjson/asm/ByteVector;
aload 0
getfield com/alibaba/fastjson/asm/MethodWriter/code Lcom/alibaba/fastjson/asm/ByteVector;
getfield com/alibaba/fastjson/asm/ByteVector/length I
iconst_1
isub
invokevirtual com/alibaba/fastjson/asm/Label/put(Lcom/alibaba/fastjson/asm/MethodWriter;Lcom/alibaba/fastjson/asm/ByteVector;I)V
return
.limit locals 3
.limit stack 5
.end method

.method public visitLabel(Lcom/alibaba/fastjson/asm/Label;)V
aload 1
aload 0
aload 0
getfield com/alibaba/fastjson/asm/MethodWriter/code Lcom/alibaba/fastjson/asm/ByteVector;
getfield com/alibaba/fastjson/asm/ByteVector/length I
aload 0
getfield com/alibaba/fastjson/asm/MethodWriter/code Lcom/alibaba/fastjson/asm/ByteVector;
getfield com/alibaba/fastjson/asm/ByteVector/data [B
invokevirtual com/alibaba/fastjson/asm/Label/resolve(Lcom/alibaba/fastjson/asm/MethodWriter;I[B)V
return
.limit locals 2
.limit stack 4
.end method

.method public visitLdcInsn(Ljava/lang/Object;)V
aload 0
getfield com/alibaba/fastjson/asm/MethodWriter/cw Lcom/alibaba/fastjson/asm/ClassWriter;
aload 1
invokevirtual com/alibaba/fastjson/asm/ClassWriter/newConstItem(Ljava/lang/Object;)Lcom/alibaba/fastjson/asm/Item;
astore 1
aload 1
getfield com/alibaba/fastjson/asm/Item/index I
istore 2
aload 1
getfield com/alibaba/fastjson/asm/Item/type I
iconst_5
if_icmpeq L0
aload 1
getfield com/alibaba/fastjson/asm/Item/type I
bipush 6
if_icmpne L1
L0:
aload 0
getfield com/alibaba/fastjson/asm/MethodWriter/code Lcom/alibaba/fastjson/asm/ByteVector;
bipush 20
iload 2
invokevirtual com/alibaba/fastjson/asm/ByteVector/put12(II)Lcom/alibaba/fastjson/asm/ByteVector;
pop
return
L1:
iload 2
sipush 256
if_icmplt L2
aload 0
getfield com/alibaba/fastjson/asm/MethodWriter/code Lcom/alibaba/fastjson/asm/ByteVector;
bipush 19
iload 2
invokevirtual com/alibaba/fastjson/asm/ByteVector/put12(II)Lcom/alibaba/fastjson/asm/ByteVector;
pop
return
L2:
aload 0
getfield com/alibaba/fastjson/asm/MethodWriter/code Lcom/alibaba/fastjson/asm/ByteVector;
bipush 18
iload 2
invokevirtual com/alibaba/fastjson/asm/ByteVector/put11(II)Lcom/alibaba/fastjson/asm/ByteVector;
pop
return
.limit locals 3
.limit stack 3
.end method

.method public visitMaxs(II)V
aload 0
iload 1
putfield com/alibaba/fastjson/asm/MethodWriter/maxStack I
aload 0
iload 2
putfield com/alibaba/fastjson/asm/MethodWriter/maxLocals I
return
.limit locals 3
.limit stack 2
.end method

.method public visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
iload 1
sipush 185
if_icmpne L0
iconst_1
istore 6
L1:
aload 0
getfield com/alibaba/fastjson/asm/MethodWriter/cw Lcom/alibaba/fastjson/asm/ClassWriter;
aload 2
aload 3
aload 4
iload 6
invokevirtual com/alibaba/fastjson/asm/ClassWriter/newMethodItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/alibaba/fastjson/asm/Item;
astore 2
aload 2
getfield com/alibaba/fastjson/asm/Item/intVal I
istore 5
iload 6
ifeq L2
iload 5
istore 1
iload 5
ifne L3
aload 4
invokestatic com/alibaba/fastjson/asm/Type/getArgumentsAndReturnSizes(Ljava/lang/String;)I
istore 1
aload 2
iload 1
putfield com/alibaba/fastjson/asm/Item/intVal I
L3:
aload 0
getfield com/alibaba/fastjson/asm/MethodWriter/code Lcom/alibaba/fastjson/asm/ByteVector;
sipush 185
aload 2
getfield com/alibaba/fastjson/asm/Item/index I
invokevirtual com/alibaba/fastjson/asm/ByteVector/put12(II)Lcom/alibaba/fastjson/asm/ByteVector;
iload 1
iconst_2
ishr
iconst_0
invokevirtual com/alibaba/fastjson/asm/ByteVector/put11(II)Lcom/alibaba/fastjson/asm/ByteVector;
pop
return
L0:
iconst_0
istore 6
goto L1
L2:
aload 0
getfield com/alibaba/fastjson/asm/MethodWriter/code Lcom/alibaba/fastjson/asm/ByteVector;
iload 1
aload 2
getfield com/alibaba/fastjson/asm/Item/index I
invokevirtual com/alibaba/fastjson/asm/ByteVector/put12(II)Lcom/alibaba/fastjson/asm/ByteVector;
pop
return
.limit locals 7
.limit stack 5
.end method

.method public visitTypeInsn(ILjava/lang/String;)V
aload 0
getfield com/alibaba/fastjson/asm/MethodWriter/cw Lcom/alibaba/fastjson/asm/ClassWriter;
aload 2
invokevirtual com/alibaba/fastjson/asm/ClassWriter/newClassItem(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Item;
astore 2
aload 0
getfield com/alibaba/fastjson/asm/MethodWriter/code Lcom/alibaba/fastjson/asm/ByteVector;
iload 1
aload 2
getfield com/alibaba/fastjson/asm/Item/index I
invokevirtual com/alibaba/fastjson/asm/ByteVector/put12(II)Lcom/alibaba/fastjson/asm/ByteVector;
pop
return
.limit locals 3
.limit stack 3
.end method

.method public visitVarInsn(II)V
iload 2
iconst_4
if_icmpge L0
iload 1
sipush 169
if_icmpeq L0
iload 1
bipush 54
if_icmpge L1
iload 1
bipush 21
isub
iconst_2
ishl
bipush 26
iadd
iload 2
iadd
istore 1
L2:
aload 0
getfield com/alibaba/fastjson/asm/MethodWriter/code Lcom/alibaba/fastjson/asm/ByteVector;
iload 1
invokevirtual com/alibaba/fastjson/asm/ByteVector/putByte(I)Lcom/alibaba/fastjson/asm/ByteVector;
pop
return
L1:
iload 1
bipush 54
isub
iconst_2
ishl
bipush 59
iadd
iload 2
iadd
istore 1
goto L2
L0:
iload 2
sipush 256
if_icmplt L3
aload 0
getfield com/alibaba/fastjson/asm/MethodWriter/code Lcom/alibaba/fastjson/asm/ByteVector;
sipush 196
invokevirtual com/alibaba/fastjson/asm/ByteVector/putByte(I)Lcom/alibaba/fastjson/asm/ByteVector;
iload 1
iload 2
invokevirtual com/alibaba/fastjson/asm/ByteVector/put12(II)Lcom/alibaba/fastjson/asm/ByteVector;
pop
return
L3:
aload 0
getfield com/alibaba/fastjson/asm/MethodWriter/code Lcom/alibaba/fastjson/asm/ByteVector;
iload 1
iload 2
invokevirtual com/alibaba/fastjson/asm/ByteVector/put11(II)Lcom/alibaba/fastjson/asm/ByteVector;
pop
return
.limit locals 3
.limit stack 3
.end method
