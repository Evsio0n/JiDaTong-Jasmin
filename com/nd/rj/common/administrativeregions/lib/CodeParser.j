.bytecode 50.0
.class synchronized com/nd/rj/common/administrativeregions/lib/CodeParser
.super java/lang/Object

.field static final 'CODE_LENGTH' I = 6


.method <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method static correctSuffixZeroCount(I)I
iload 0
iconst_4
if_icmpeq L0
iload 0
iconst_5
if_icmpne L1
L0:
iconst_4
istore 1
L2:
iload 1
ireturn
L1:
iload 0
iconst_2
if_icmpeq L3
iload 0
iconst_3
if_icmpne L4
L3:
iconst_2
ireturn
L4:
iload 0
ifeq L5
iload 0
istore 1
iload 0
iconst_1
if_icmpne L2
L5:
iconst_0
ireturn
.limit locals 2
.limit stack 2
.end method

.method static getLevelByCode(Ljava/lang/String;)Lcom/nd/rj/common/administrativeregions/lib/Level;
aload 0
invokestatic com/nd/rj/common/administrativeregions/lib/CodeParser/getSuffixZeroCount(Ljava/lang/String;)I
invokestatic com/nd/rj/common/administrativeregions/lib/CodeParser/correctSuffixZeroCount(I)I
tableswitch 0
L0
L1
L2
L1
L3
default : L1
L1:
getstatic com/nd/rj/common/administrativeregions/lib/Level/INVALID Lcom/nd/rj/common/administrativeregions/lib/Level;
areturn
L0:
getstatic com/nd/rj/common/administrativeregions/lib/Level/LEVEL_3 Lcom/nd/rj/common/administrativeregions/lib/Level;
areturn
L2:
getstatic com/nd/rj/common/administrativeregions/lib/Level/LEVEL_2 Lcom/nd/rj/common/administrativeregions/lib/Level;
areturn
L3:
getstatic com/nd/rj/common/administrativeregions/lib/Level/LEVEL_1 Lcom/nd/rj/common/administrativeregions/lib/Level;
areturn
.limit locals 1
.limit stack 1
.end method

.method static getSuffixZeroCount(Ljava/lang/String;)I
aload 0
invokestatic java/lang/Integer/valueOf(Ljava/lang/String;)Ljava/lang/Integer;
invokevirtual java/lang/Integer/intValue()I
istore 2
iconst_0
istore 1
L0:
iload 2
bipush 10
irem
ifeq L1
iload 1
ireturn
L1:
iload 2
bipush 10
idiv
istore 2
iload 1
iconst_1
iadd
istore 1
goto L0
.limit locals 3
.limit stack 2
.end method

.method static getValidCodePrefix(Ljava/lang/String;)Ljava/lang/String;
aload 0
iconst_0
aload 0
invokevirtual java/lang/String/length()I
aload 0
invokestatic com/nd/rj/common/administrativeregions/lib/CodeParser/getSuffixZeroCount(Ljava/lang/String;)I
invokestatic com/nd/rj/common/administrativeregions/lib/CodeParser/correctSuffixZeroCount(I)I
isub
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
areturn
.limit locals 1
.limit stack 4
.end method
