.bytecode 50.0
.class public synchronized com/alibaba/fastjson/asm/ClassWriter
.super java/lang/Object

.field static final 'ACC_SYNTHETIC_ATTRIBUTE' I = 262144


.field static final 'CLASS' I = 7


.field public static final 'COMPUTE_FRAMES' I = 2


.field public static final 'COMPUTE_MAXS' I = 1


.field static final 'DOUBLE' I = 6


.field static final 'FIELD' I = 9


.field static final 'FIELDORMETH_INSN' I = 6


.field static final 'FLOAT' I = 4


.field static final 'IINC_INSN' I = 12


.field static final 'IMETH' I = 11


.field static final 'IMPLVAR_INSN' I = 4


.field static final 'INT' I = 3


.field static final 'ITFDYNMETH_INSN' I = 7


.field static final 'LABELW_INSN' I = 9


.field static final 'LABEL_INSN' I = 8


.field static final 'LDCW_INSN' I = 11


.field static final 'LDC_INSN' I = 10


.field static final 'LONG' I = 5


.field static final 'LOOK_INSN' I = 14


.field static final 'MANA_INSN' I = 15


.field static final 'METH' I = 10


.field static final 'NAME_TYPE' I = 12


.field static final 'NOARG_INSN' I = 0


.field static final 'SBYTE_INSN' I = 1


.field static final 'SHORT_INSN' I = 2


.field static final 'STR' I = 8


.field static final 'TABL_INSN' I = 13


.field static final 'TYPE' [B

.field static final 'TYPE_INSN' I = 5


.field static final 'TYPE_MERGED' I = 15


.field static final 'TYPE_NORMAL' I = 13


.field static final 'TYPE_UNINIT' I = 14


.field static final 'UTF8' I = 1


.field static final 'VAR_INSN' I = 3


.field static final 'WIDE_INSN' I = 16


.field private 'access' I

.field 'firstField' Lcom/alibaba/fastjson/asm/FieldWriter;

.field 'firstMethod' Lcom/alibaba/fastjson/asm/MethodWriter;

.field 'index' I

.field private 'interfaceCount' I

.field private 'interfaces' [I

.field 'items' [Lcom/alibaba/fastjson/asm/Item;

.field final 'key' Lcom/alibaba/fastjson/asm/Item;

.field final 'key2' Lcom/alibaba/fastjson/asm/Item;

.field final 'key3' Lcom/alibaba/fastjson/asm/Item;

.field 'lastField' Lcom/alibaba/fastjson/asm/FieldWriter;

.field 'lastMethod' Lcom/alibaba/fastjson/asm/MethodWriter;

.field private 'name' I

.field final 'pool' Lcom/alibaba/fastjson/asm/ByteVector;

.field private 'superName' I

.field 'thisName' Ljava/lang/String;

.field 'threshold' I

.field 'typeTable' [Lcom/alibaba/fastjson/asm/Item;

.field 'version' I

.method static <clinit>()V
sipush 220
newarray byte
astore 1
iconst_0
istore 0
L0:
iload 0
aload 1
arraylength
if_icmpge L1
aload 1
iload 0
ldc "AAAAAAAAAAAAAAAABCKLLDDDDDEEEEEEEEEEEEEEEEEEEEAAAAAAAADDDDDEEEEEEEEEEEEEEEEEEEEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAMAAAAAAAAAAAAAAAAAAAAIIIIIIIIIIIIIIIIDNOAAAAAAGGGGGGGHHFBFAAFFAAQPIIJJIIIIIIIIIIIIIIIIII"
iload 0
invokevirtual java/lang/String/charAt(I)C
bipush 65
isub
i2b
bastore
iload 0
iconst_1
iadd
istore 0
goto L0
L1:
aload 1
putstatic com/alibaba/fastjson/asm/ClassWriter/TYPE [B
return
.limit locals 2
.limit stack 4
.end method

.method public <init>()V
aload 0
iconst_0
invokespecial com/alibaba/fastjson/asm/ClassWriter/<init>(I)V
return
.limit locals 1
.limit stack 2
.end method

.method private <init>(I)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_1
putfield com/alibaba/fastjson/asm/ClassWriter/index I
aload 0
new com/alibaba/fastjson/asm/ByteVector
dup
invokespecial com/alibaba/fastjson/asm/ByteVector/<init>()V
putfield com/alibaba/fastjson/asm/ClassWriter/pool Lcom/alibaba/fastjson/asm/ByteVector;
aload 0
sipush 256
anewarray com/alibaba/fastjson/asm/Item
putfield com/alibaba/fastjson/asm/ClassWriter/items [Lcom/alibaba/fastjson/asm/Item;
aload 0
ldc2_w 0.75D
aload 0
getfield com/alibaba/fastjson/asm/ClassWriter/items [Lcom/alibaba/fastjson/asm/Item;
arraylength
i2d
dmul
d2i
putfield com/alibaba/fastjson/asm/ClassWriter/threshold I
aload 0
new com/alibaba/fastjson/asm/Item
dup
invokespecial com/alibaba/fastjson/asm/Item/<init>()V
putfield com/alibaba/fastjson/asm/ClassWriter/key Lcom/alibaba/fastjson/asm/Item;
aload 0
new com/alibaba/fastjson/asm/Item
dup
invokespecial com/alibaba/fastjson/asm/Item/<init>()V
putfield com/alibaba/fastjson/asm/ClassWriter/key2 Lcom/alibaba/fastjson/asm/Item;
aload 0
new com/alibaba/fastjson/asm/Item
dup
invokespecial com/alibaba/fastjson/asm/Item/<init>()V
putfield com/alibaba/fastjson/asm/ClassWriter/key3 Lcom/alibaba/fastjson/asm/Item;
return
.limit locals 2
.limit stack 5
.end method

.method private get(Lcom/alibaba/fastjson/asm/Item;)Lcom/alibaba/fastjson/asm/Item;
aload 0
getfield com/alibaba/fastjson/asm/ClassWriter/items [Lcom/alibaba/fastjson/asm/Item;
aload 1
getfield com/alibaba/fastjson/asm/Item/hashCode I
aload 0
getfield com/alibaba/fastjson/asm/ClassWriter/items [Lcom/alibaba/fastjson/asm/Item;
arraylength
irem
aaload
astore 2
L0:
aload 2
ifnull L1
aload 2
getfield com/alibaba/fastjson/asm/Item/type I
aload 1
getfield com/alibaba/fastjson/asm/Item/type I
if_icmpne L2
aload 1
aload 2
invokevirtual com/alibaba/fastjson/asm/Item/isEqualTo(Lcom/alibaba/fastjson/asm/Item;)Z
ifne L1
L2:
aload 2
getfield com/alibaba/fastjson/asm/Item/next Lcom/alibaba/fastjson/asm/Item;
astore 2
goto L0
L1:
aload 2
areturn
.limit locals 3
.limit stack 3
.end method

.method private newString(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Item;
aload 0
getfield com/alibaba/fastjson/asm/ClassWriter/key2 Lcom/alibaba/fastjson/asm/Item;
bipush 8
aload 1
aconst_null
aconst_null
invokevirtual com/alibaba/fastjson/asm/Item/set(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
aload 0
aload 0
getfield com/alibaba/fastjson/asm/ClassWriter/key2 Lcom/alibaba/fastjson/asm/Item;
invokespecial com/alibaba/fastjson/asm/ClassWriter/get(Lcom/alibaba/fastjson/asm/Item;)Lcom/alibaba/fastjson/asm/Item;
astore 4
aload 4
astore 3
aload 4
ifnonnull L0
aload 0
getfield com/alibaba/fastjson/asm/ClassWriter/pool Lcom/alibaba/fastjson/asm/ByteVector;
bipush 8
aload 0
aload 1
invokevirtual com/alibaba/fastjson/asm/ClassWriter/newUTF8(Ljava/lang/String;)I
invokevirtual com/alibaba/fastjson/asm/ByteVector/put12(II)Lcom/alibaba/fastjson/asm/ByteVector;
pop
aload 0
getfield com/alibaba/fastjson/asm/ClassWriter/index I
istore 2
aload 0
iload 2
iconst_1
iadd
putfield com/alibaba/fastjson/asm/ClassWriter/index I
new com/alibaba/fastjson/asm/Item
dup
iload 2
aload 0
getfield com/alibaba/fastjson/asm/ClassWriter/key2 Lcom/alibaba/fastjson/asm/Item;
invokespecial com/alibaba/fastjson/asm/Item/<init>(ILcom/alibaba/fastjson/asm/Item;)V
astore 3
aload 0
aload 3
invokespecial com/alibaba/fastjson/asm/ClassWriter/put(Lcom/alibaba/fastjson/asm/Item;)V
L0:
aload 3
areturn
.limit locals 5
.limit stack 5
.end method

.method private put(Lcom/alibaba/fastjson/asm/Item;)V
aload 0
getfield com/alibaba/fastjson/asm/ClassWriter/index I
aload 0
getfield com/alibaba/fastjson/asm/ClassWriter/threshold I
if_icmple L0
aload 0
getfield com/alibaba/fastjson/asm/ClassWriter/items [Lcom/alibaba/fastjson/asm/Item;
arraylength
istore 2
iload 2
iconst_2
imul
iconst_1
iadd
istore 3
iload 3
anewarray com/alibaba/fastjson/asm/Item
astore 7
iload 2
iconst_1
isub
istore 2
L1:
iload 2
iflt L2
aload 0
getfield com/alibaba/fastjson/asm/ClassWriter/items [Lcom/alibaba/fastjson/asm/Item;
iload 2
aaload
astore 5
L3:
aload 5
ifnull L4
aload 5
getfield com/alibaba/fastjson/asm/Item/hashCode I
aload 7
arraylength
irem
istore 4
aload 5
getfield com/alibaba/fastjson/asm/Item/next Lcom/alibaba/fastjson/asm/Item;
astore 6
aload 5
aload 7
iload 4
aaload
putfield com/alibaba/fastjson/asm/Item/next Lcom/alibaba/fastjson/asm/Item;
aload 7
iload 4
aload 5
aastore
aload 6
astore 5
goto L3
L4:
iload 2
iconst_1
isub
istore 2
goto L1
L2:
aload 0
aload 7
putfield com/alibaba/fastjson/asm/ClassWriter/items [Lcom/alibaba/fastjson/asm/Item;
aload 0
iload 3
i2d
ldc2_w 0.75D
dmul
d2i
putfield com/alibaba/fastjson/asm/ClassWriter/threshold I
L0:
aload 1
getfield com/alibaba/fastjson/asm/Item/hashCode I
aload 0
getfield com/alibaba/fastjson/asm/ClassWriter/items [Lcom/alibaba/fastjson/asm/Item;
arraylength
irem
istore 2
aload 1
aload 0
getfield com/alibaba/fastjson/asm/ClassWriter/items [Lcom/alibaba/fastjson/asm/Item;
iload 2
aaload
putfield com/alibaba/fastjson/asm/Item/next Lcom/alibaba/fastjson/asm/Item;
aload 0
getfield com/alibaba/fastjson/asm/ClassWriter/items [Lcom/alibaba/fastjson/asm/Item;
iload 2
aload 1
aastore
return
.limit locals 8
.limit stack 5
.end method

.method private put122(III)V
aload 0
getfield com/alibaba/fastjson/asm/ClassWriter/pool Lcom/alibaba/fastjson/asm/ByteVector;
iload 1
iload 2
invokevirtual com/alibaba/fastjson/asm/ByteVector/put12(II)Lcom/alibaba/fastjson/asm/ByteVector;
iload 3
invokevirtual com/alibaba/fastjson/asm/ByteVector/putShort(I)Lcom/alibaba/fastjson/asm/ByteVector;
pop
return
.limit locals 4
.limit stack 3
.end method

.method public newClass(Ljava/lang/String;)I
aload 0
aload 1
invokevirtual com/alibaba/fastjson/asm/ClassWriter/newClassItem(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Item;
getfield com/alibaba/fastjson/asm/Item/index I
ireturn
.limit locals 2
.limit stack 2
.end method

.method newClassItem(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Item;
aload 0
getfield com/alibaba/fastjson/asm/ClassWriter/key2 Lcom/alibaba/fastjson/asm/Item;
bipush 7
aload 1
aconst_null
aconst_null
invokevirtual com/alibaba/fastjson/asm/Item/set(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
aload 0
aload 0
getfield com/alibaba/fastjson/asm/ClassWriter/key2 Lcom/alibaba/fastjson/asm/Item;
invokespecial com/alibaba/fastjson/asm/ClassWriter/get(Lcom/alibaba/fastjson/asm/Item;)Lcom/alibaba/fastjson/asm/Item;
astore 4
aload 4
astore 3
aload 4
ifnonnull L0
aload 0
getfield com/alibaba/fastjson/asm/ClassWriter/pool Lcom/alibaba/fastjson/asm/ByteVector;
bipush 7
aload 0
aload 1
invokevirtual com/alibaba/fastjson/asm/ClassWriter/newUTF8(Ljava/lang/String;)I
invokevirtual com/alibaba/fastjson/asm/ByteVector/put12(II)Lcom/alibaba/fastjson/asm/ByteVector;
pop
aload 0
getfield com/alibaba/fastjson/asm/ClassWriter/index I
istore 2
aload 0
iload 2
iconst_1
iadd
putfield com/alibaba/fastjson/asm/ClassWriter/index I
new com/alibaba/fastjson/asm/Item
dup
iload 2
aload 0
getfield com/alibaba/fastjson/asm/ClassWriter/key2 Lcom/alibaba/fastjson/asm/Item;
invokespecial com/alibaba/fastjson/asm/Item/<init>(ILcom/alibaba/fastjson/asm/Item;)V
astore 3
aload 0
aload 3
invokespecial com/alibaba/fastjson/asm/ClassWriter/put(Lcom/alibaba/fastjson/asm/Item;)V
L0:
aload 3
areturn
.limit locals 5
.limit stack 5
.end method

.method newConstItem(Ljava/lang/Object;)Lcom/alibaba/fastjson/asm/Item;
aload 1
instanceof java/lang/Integer
ifeq L0
aload 0
aload 1
checkcast java/lang/Integer
invokevirtual java/lang/Integer/intValue()I
invokevirtual com/alibaba/fastjson/asm/ClassWriter/newInteger(I)Lcom/alibaba/fastjson/asm/Item;
areturn
L0:
aload 1
instanceof java/lang/String
ifeq L1
aload 0
aload 1
checkcast java/lang/String
invokespecial com/alibaba/fastjson/asm/ClassWriter/newString(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Item;
areturn
L1:
aload 1
instanceof com/alibaba/fastjson/asm/Type
ifeq L2
aload 1
checkcast com/alibaba/fastjson/asm/Type
astore 1
aload 1
invokevirtual com/alibaba/fastjson/asm/Type/getSort()I
bipush 10
if_icmpne L3
aload 1
invokevirtual com/alibaba/fastjson/asm/Type/getInternalName()Ljava/lang/String;
astore 1
L4:
aload 0
aload 1
invokevirtual com/alibaba/fastjson/asm/ClassWriter/newClassItem(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Item;
areturn
L3:
aload 1
invokevirtual com/alibaba/fastjson/asm/Type/getDescriptor()Ljava/lang/String;
astore 1
goto L4
L2:
new java/lang/IllegalArgumentException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "value "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;)V
athrow
.limit locals 2
.limit stack 4
.end method

.method newFieldItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Item;
aload 0
getfield com/alibaba/fastjson/asm/ClassWriter/key3 Lcom/alibaba/fastjson/asm/Item;
bipush 9
aload 1
aload 2
aload 3
invokevirtual com/alibaba/fastjson/asm/Item/set(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
aload 0
aload 0
getfield com/alibaba/fastjson/asm/ClassWriter/key3 Lcom/alibaba/fastjson/asm/Item;
invokespecial com/alibaba/fastjson/asm/ClassWriter/get(Lcom/alibaba/fastjson/asm/Item;)Lcom/alibaba/fastjson/asm/Item;
astore 6
aload 6
astore 5
aload 6
ifnonnull L0
aload 0
bipush 9
aload 0
aload 1
invokevirtual com/alibaba/fastjson/asm/ClassWriter/newClass(Ljava/lang/String;)I
aload 0
aload 2
aload 3
invokevirtual com/alibaba/fastjson/asm/ClassWriter/newNameType(Ljava/lang/String;Ljava/lang/String;)I
invokespecial com/alibaba/fastjson/asm/ClassWriter/put122(III)V
aload 0
getfield com/alibaba/fastjson/asm/ClassWriter/index I
istore 4
aload 0
iload 4
iconst_1
iadd
putfield com/alibaba/fastjson/asm/ClassWriter/index I
new com/alibaba/fastjson/asm/Item
dup
iload 4
aload 0
getfield com/alibaba/fastjson/asm/ClassWriter/key3 Lcom/alibaba/fastjson/asm/Item;
invokespecial com/alibaba/fastjson/asm/Item/<init>(ILcom/alibaba/fastjson/asm/Item;)V
astore 5
aload 0
aload 5
invokespecial com/alibaba/fastjson/asm/ClassWriter/put(Lcom/alibaba/fastjson/asm/Item;)V
L0:
aload 5
areturn
.limit locals 7
.limit stack 6
.end method

.method newInteger(I)Lcom/alibaba/fastjson/asm/Item;
aload 0
getfield com/alibaba/fastjson/asm/ClassWriter/key Lcom/alibaba/fastjson/asm/Item;
iload 1
invokevirtual com/alibaba/fastjson/asm/Item/set(I)V
aload 0
aload 0
getfield com/alibaba/fastjson/asm/ClassWriter/key Lcom/alibaba/fastjson/asm/Item;
invokespecial com/alibaba/fastjson/asm/ClassWriter/get(Lcom/alibaba/fastjson/asm/Item;)Lcom/alibaba/fastjson/asm/Item;
astore 3
aload 3
astore 2
aload 3
ifnonnull L0
aload 0
getfield com/alibaba/fastjson/asm/ClassWriter/pool Lcom/alibaba/fastjson/asm/ByteVector;
iconst_3
invokevirtual com/alibaba/fastjson/asm/ByteVector/putByte(I)Lcom/alibaba/fastjson/asm/ByteVector;
iload 1
invokevirtual com/alibaba/fastjson/asm/ByteVector/putInt(I)Lcom/alibaba/fastjson/asm/ByteVector;
pop
aload 0
getfield com/alibaba/fastjson/asm/ClassWriter/index I
istore 1
aload 0
iload 1
iconst_1
iadd
putfield com/alibaba/fastjson/asm/ClassWriter/index I
new com/alibaba/fastjson/asm/Item
dup
iload 1
aload 0
getfield com/alibaba/fastjson/asm/ClassWriter/key Lcom/alibaba/fastjson/asm/Item;
invokespecial com/alibaba/fastjson/asm/Item/<init>(ILcom/alibaba/fastjson/asm/Item;)V
astore 2
aload 0
aload 2
invokespecial com/alibaba/fastjson/asm/ClassWriter/put(Lcom/alibaba/fastjson/asm/Item;)V
L0:
aload 2
areturn
.limit locals 4
.limit stack 4
.end method

.method newMethodItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/alibaba/fastjson/asm/Item;
iload 4
ifeq L0
bipush 11
istore 5
L1:
aload 0
getfield com/alibaba/fastjson/asm/ClassWriter/key3 Lcom/alibaba/fastjson/asm/Item;
iload 5
aload 1
aload 2
aload 3
invokevirtual com/alibaba/fastjson/asm/Item/set(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
aload 0
aload 0
getfield com/alibaba/fastjson/asm/ClassWriter/key3 Lcom/alibaba/fastjson/asm/Item;
invokespecial com/alibaba/fastjson/asm/ClassWriter/get(Lcom/alibaba/fastjson/asm/Item;)Lcom/alibaba/fastjson/asm/Item;
astore 7
aload 7
astore 6
aload 7
ifnonnull L2
aload 0
iload 5
aload 0
aload 1
invokevirtual com/alibaba/fastjson/asm/ClassWriter/newClass(Ljava/lang/String;)I
aload 0
aload 2
aload 3
invokevirtual com/alibaba/fastjson/asm/ClassWriter/newNameType(Ljava/lang/String;Ljava/lang/String;)I
invokespecial com/alibaba/fastjson/asm/ClassWriter/put122(III)V
aload 0
getfield com/alibaba/fastjson/asm/ClassWriter/index I
istore 5
aload 0
iload 5
iconst_1
iadd
putfield com/alibaba/fastjson/asm/ClassWriter/index I
new com/alibaba/fastjson/asm/Item
dup
iload 5
aload 0
getfield com/alibaba/fastjson/asm/ClassWriter/key3 Lcom/alibaba/fastjson/asm/Item;
invokespecial com/alibaba/fastjson/asm/Item/<init>(ILcom/alibaba/fastjson/asm/Item;)V
astore 6
aload 0
aload 6
invokespecial com/alibaba/fastjson/asm/ClassWriter/put(Lcom/alibaba/fastjson/asm/Item;)V
L2:
aload 6
areturn
L0:
bipush 10
istore 5
goto L1
.limit locals 8
.limit stack 6
.end method

.method public newNameType(Ljava/lang/String;Ljava/lang/String;)I
aload 0
aload 1
aload 2
invokevirtual com/alibaba/fastjson/asm/ClassWriter/newNameTypeItem(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Item;
getfield com/alibaba/fastjson/asm/Item/index I
ireturn
.limit locals 3
.limit stack 3
.end method

.method newNameTypeItem(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Item;
aload 0
getfield com/alibaba/fastjson/asm/ClassWriter/key2 Lcom/alibaba/fastjson/asm/Item;
bipush 12
aload 1
aload 2
aconst_null
invokevirtual com/alibaba/fastjson/asm/Item/set(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
aload 0
aload 0
getfield com/alibaba/fastjson/asm/ClassWriter/key2 Lcom/alibaba/fastjson/asm/Item;
invokespecial com/alibaba/fastjson/asm/ClassWriter/get(Lcom/alibaba/fastjson/asm/Item;)Lcom/alibaba/fastjson/asm/Item;
astore 5
aload 5
astore 4
aload 5
ifnonnull L0
aload 0
bipush 12
aload 0
aload 1
invokevirtual com/alibaba/fastjson/asm/ClassWriter/newUTF8(Ljava/lang/String;)I
aload 0
aload 2
invokevirtual com/alibaba/fastjson/asm/ClassWriter/newUTF8(Ljava/lang/String;)I
invokespecial com/alibaba/fastjson/asm/ClassWriter/put122(III)V
aload 0
getfield com/alibaba/fastjson/asm/ClassWriter/index I
istore 3
aload 0
iload 3
iconst_1
iadd
putfield com/alibaba/fastjson/asm/ClassWriter/index I
new com/alibaba/fastjson/asm/Item
dup
iload 3
aload 0
getfield com/alibaba/fastjson/asm/ClassWriter/key2 Lcom/alibaba/fastjson/asm/Item;
invokespecial com/alibaba/fastjson/asm/Item/<init>(ILcom/alibaba/fastjson/asm/Item;)V
astore 4
aload 0
aload 4
invokespecial com/alibaba/fastjson/asm/ClassWriter/put(Lcom/alibaba/fastjson/asm/Item;)V
L0:
aload 4
areturn
.limit locals 6
.limit stack 5
.end method

.method public newUTF8(Ljava/lang/String;)I
aload 0
getfield com/alibaba/fastjson/asm/ClassWriter/key Lcom/alibaba/fastjson/asm/Item;
iconst_1
aload 1
aconst_null
aconst_null
invokevirtual com/alibaba/fastjson/asm/Item/set(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
aload 0
aload 0
getfield com/alibaba/fastjson/asm/ClassWriter/key Lcom/alibaba/fastjson/asm/Item;
invokespecial com/alibaba/fastjson/asm/ClassWriter/get(Lcom/alibaba/fastjson/asm/Item;)Lcom/alibaba/fastjson/asm/Item;
astore 4
aload 4
astore 3
aload 4
ifnonnull L0
aload 0
getfield com/alibaba/fastjson/asm/ClassWriter/pool Lcom/alibaba/fastjson/asm/ByteVector;
iconst_1
invokevirtual com/alibaba/fastjson/asm/ByteVector/putByte(I)Lcom/alibaba/fastjson/asm/ByteVector;
aload 1
invokevirtual com/alibaba/fastjson/asm/ByteVector/putUTF8(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/ByteVector;
pop
aload 0
getfield com/alibaba/fastjson/asm/ClassWriter/index I
istore 2
aload 0
iload 2
iconst_1
iadd
putfield com/alibaba/fastjson/asm/ClassWriter/index I
new com/alibaba/fastjson/asm/Item
dup
iload 2
aload 0
getfield com/alibaba/fastjson/asm/ClassWriter/key Lcom/alibaba/fastjson/asm/Item;
invokespecial com/alibaba/fastjson/asm/Item/<init>(ILcom/alibaba/fastjson/asm/Item;)V
astore 3
aload 0
aload 3
invokespecial com/alibaba/fastjson/asm/ClassWriter/put(Lcom/alibaba/fastjson/asm/Item;)V
L0:
aload 3
getfield com/alibaba/fastjson/asm/Item/index I
ireturn
.limit locals 5
.limit stack 5
.end method

.method public toByteArray()[B
aload 0
getfield com/alibaba/fastjson/asm/ClassWriter/interfaceCount I
iconst_2
imul
bipush 24
iadd
istore 1
iconst_0
istore 2
aload 0
getfield com/alibaba/fastjson/asm/ClassWriter/firstField Lcom/alibaba/fastjson/asm/FieldWriter;
astore 5
L0:
aload 5
ifnull L1
iload 2
iconst_1
iadd
istore 2
iload 1
aload 5
invokevirtual com/alibaba/fastjson/asm/FieldWriter/getSize()I
iadd
istore 1
aload 5
getfield com/alibaba/fastjson/asm/FieldWriter/next Lcom/alibaba/fastjson/asm/FieldWriter;
astore 5
goto L0
L1:
iconst_0
istore 4
aload 0
getfield com/alibaba/fastjson/asm/ClassWriter/firstMethod Lcom/alibaba/fastjson/asm/MethodWriter;
astore 5
iload 1
istore 3
iload 4
istore 1
L2:
aload 5
ifnull L3
iload 1
iconst_1
iadd
istore 1
iload 3
aload 5
invokevirtual com/alibaba/fastjson/asm/MethodWriter/getSize()I
iadd
istore 3
aload 5
getfield com/alibaba/fastjson/asm/MethodWriter/next Lcom/alibaba/fastjson/asm/MethodWriter;
astore 5
goto L2
L3:
new com/alibaba/fastjson/asm/ByteVector
dup
iload 3
aload 0
getfield com/alibaba/fastjson/asm/ClassWriter/pool Lcom/alibaba/fastjson/asm/ByteVector;
getfield com/alibaba/fastjson/asm/ByteVector/length I
iadd
invokespecial com/alibaba/fastjson/asm/ByteVector/<init>(I)V
astore 6
aload 6
ldc_w -889275714
invokevirtual com/alibaba/fastjson/asm/ByteVector/putInt(I)Lcom/alibaba/fastjson/asm/ByteVector;
aload 0
getfield com/alibaba/fastjson/asm/ClassWriter/version I
invokevirtual com/alibaba/fastjson/asm/ByteVector/putInt(I)Lcom/alibaba/fastjson/asm/ByteVector;
pop
aload 6
aload 0
getfield com/alibaba/fastjson/asm/ClassWriter/index I
invokevirtual com/alibaba/fastjson/asm/ByteVector/putShort(I)Lcom/alibaba/fastjson/asm/ByteVector;
aload 0
getfield com/alibaba/fastjson/asm/ClassWriter/pool Lcom/alibaba/fastjson/asm/ByteVector;
getfield com/alibaba/fastjson/asm/ByteVector/data [B
iconst_0
aload 0
getfield com/alibaba/fastjson/asm/ClassWriter/pool Lcom/alibaba/fastjson/asm/ByteVector;
getfield com/alibaba/fastjson/asm/ByteVector/length I
invokevirtual com/alibaba/fastjson/asm/ByteVector/putByteArray([BII)Lcom/alibaba/fastjson/asm/ByteVector;
pop
aload 0
getfield com/alibaba/fastjson/asm/ClassWriter/access I
ldc_w 262144
iand
bipush 64
idiv
istore 3
aload 6
aload 0
getfield com/alibaba/fastjson/asm/ClassWriter/access I
ldc_w 393216
iload 3
ior
iconst_m1
ixor
iand
invokevirtual com/alibaba/fastjson/asm/ByteVector/putShort(I)Lcom/alibaba/fastjson/asm/ByteVector;
aload 0
getfield com/alibaba/fastjson/asm/ClassWriter/name I
invokevirtual com/alibaba/fastjson/asm/ByteVector/putShort(I)Lcom/alibaba/fastjson/asm/ByteVector;
aload 0
getfield com/alibaba/fastjson/asm/ClassWriter/superName I
invokevirtual com/alibaba/fastjson/asm/ByteVector/putShort(I)Lcom/alibaba/fastjson/asm/ByteVector;
pop
aload 6
aload 0
getfield com/alibaba/fastjson/asm/ClassWriter/interfaceCount I
invokevirtual com/alibaba/fastjson/asm/ByteVector/putShort(I)Lcom/alibaba/fastjson/asm/ByteVector;
pop
iconst_0
istore 3
L4:
iload 3
aload 0
getfield com/alibaba/fastjson/asm/ClassWriter/interfaceCount I
if_icmpge L5
aload 6
aload 0
getfield com/alibaba/fastjson/asm/ClassWriter/interfaces [I
iload 3
iaload
invokevirtual com/alibaba/fastjson/asm/ByteVector/putShort(I)Lcom/alibaba/fastjson/asm/ByteVector;
pop
iload 3
iconst_1
iadd
istore 3
goto L4
L5:
aload 6
iload 2
invokevirtual com/alibaba/fastjson/asm/ByteVector/putShort(I)Lcom/alibaba/fastjson/asm/ByteVector;
pop
aload 0
getfield com/alibaba/fastjson/asm/ClassWriter/firstField Lcom/alibaba/fastjson/asm/FieldWriter;
astore 5
L6:
aload 5
ifnull L7
aload 5
aload 6
invokevirtual com/alibaba/fastjson/asm/FieldWriter/put(Lcom/alibaba/fastjson/asm/ByteVector;)V
aload 5
getfield com/alibaba/fastjson/asm/FieldWriter/next Lcom/alibaba/fastjson/asm/FieldWriter;
astore 5
goto L6
L7:
aload 6
iload 1
invokevirtual com/alibaba/fastjson/asm/ByteVector/putShort(I)Lcom/alibaba/fastjson/asm/ByteVector;
pop
aload 0
getfield com/alibaba/fastjson/asm/ClassWriter/firstMethod Lcom/alibaba/fastjson/asm/MethodWriter;
astore 5
L8:
aload 5
ifnull L9
aload 5
aload 6
invokevirtual com/alibaba/fastjson/asm/MethodWriter/put(Lcom/alibaba/fastjson/asm/ByteVector;)V
aload 5
getfield com/alibaba/fastjson/asm/MethodWriter/next Lcom/alibaba/fastjson/asm/MethodWriter;
astore 5
goto L8
L9:
aload 6
iconst_0
invokevirtual com/alibaba/fastjson/asm/ByteVector/putShort(I)Lcom/alibaba/fastjson/asm/ByteVector;
pop
aload 6
getfield com/alibaba/fastjson/asm/ByteVector/data [B
areturn
.limit locals 7
.limit stack 4
.end method

.method public visit(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
aload 0
iload 1
putfield com/alibaba/fastjson/asm/ClassWriter/version I
aload 0
iload 2
putfield com/alibaba/fastjson/asm/ClassWriter/access I
aload 0
aload 0
aload 3
invokevirtual com/alibaba/fastjson/asm/ClassWriter/newClass(Ljava/lang/String;)I
putfield com/alibaba/fastjson/asm/ClassWriter/name I
aload 0
aload 3
putfield com/alibaba/fastjson/asm/ClassWriter/thisName Ljava/lang/String;
aload 4
ifnonnull L0
iconst_0
istore 1
L1:
aload 0
iload 1
putfield com/alibaba/fastjson/asm/ClassWriter/superName I
aload 5
ifnull L2
aload 5
arraylength
ifle L2
aload 0
aload 5
arraylength
putfield com/alibaba/fastjson/asm/ClassWriter/interfaceCount I
aload 0
aload 0
getfield com/alibaba/fastjson/asm/ClassWriter/interfaceCount I
newarray int
putfield com/alibaba/fastjson/asm/ClassWriter/interfaces [I
iconst_0
istore 1
L3:
iload 1
aload 0
getfield com/alibaba/fastjson/asm/ClassWriter/interfaceCount I
if_icmpge L2
aload 0
getfield com/alibaba/fastjson/asm/ClassWriter/interfaces [I
iload 1
aload 0
aload 5
iload 1
aaload
invokevirtual com/alibaba/fastjson/asm/ClassWriter/newClass(Ljava/lang/String;)I
iastore
iload 1
iconst_1
iadd
istore 1
goto L3
L0:
aload 0
aload 4
invokevirtual com/alibaba/fastjson/asm/ClassWriter/newClass(Ljava/lang/String;)I
istore 1
goto L1
L2:
return
.limit locals 6
.limit stack 5
.end method

.method public visitField(ILjava/lang/String;Ljava/lang/String;)Lcom/alibaba/fastjson/asm/FieldVisitor;
new com/alibaba/fastjson/asm/FieldWriter
dup
aload 0
iload 1
aload 2
aload 3
invokespecial com/alibaba/fastjson/asm/FieldWriter/<init>(Lcom/alibaba/fastjson/asm/ClassWriter;ILjava/lang/String;Ljava/lang/String;)V
areturn
.limit locals 4
.limit stack 6
.end method

.method public visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/alibaba/fastjson/asm/MethodVisitor;
new com/alibaba/fastjson/asm/MethodWriter
dup
aload 0
iload 1
aload 2
aload 3
aload 4
aload 5
invokespecial com/alibaba/fastjson/asm/MethodWriter/<init>(Lcom/alibaba/fastjson/asm/ClassWriter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
areturn
.limit locals 6
.limit stack 8
.end method
