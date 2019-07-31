.bytecode 50.0
.class final synchronized com/alibaba/fastjson/asm/Item
.super java/lang/Object

.field 'hashCode' I

.field 'index' I

.field 'intVal' I

.field 'longVal' J

.field 'next' Lcom/alibaba/fastjson/asm/Item;

.field 'strVal1' Ljava/lang/String;

.field 'strVal2' Ljava/lang/String;

.field 'strVal3' Ljava/lang/String;

.field 'type' I

.method <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method <init>(ILcom/alibaba/fastjson/asm/Item;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iload 1
putfield com/alibaba/fastjson/asm/Item/index I
aload 0
aload 2
getfield com/alibaba/fastjson/asm/Item/type I
putfield com/alibaba/fastjson/asm/Item/type I
aload 0
aload 2
getfield com/alibaba/fastjson/asm/Item/intVal I
putfield com/alibaba/fastjson/asm/Item/intVal I
aload 0
aload 2
getfield com/alibaba/fastjson/asm/Item/longVal J
putfield com/alibaba/fastjson/asm/Item/longVal J
aload 0
aload 2
getfield com/alibaba/fastjson/asm/Item/strVal1 Ljava/lang/String;
putfield com/alibaba/fastjson/asm/Item/strVal1 Ljava/lang/String;
aload 0
aload 2
getfield com/alibaba/fastjson/asm/Item/strVal2 Ljava/lang/String;
putfield com/alibaba/fastjson/asm/Item/strVal2 Ljava/lang/String;
aload 0
aload 2
getfield com/alibaba/fastjson/asm/Item/strVal3 Ljava/lang/String;
putfield com/alibaba/fastjson/asm/Item/strVal3 Ljava/lang/String;
aload 0
aload 2
getfield com/alibaba/fastjson/asm/Item/hashCode I
putfield com/alibaba/fastjson/asm/Item/hashCode I
return
.limit locals 3
.limit stack 3
.end method

.method isEqualTo(Lcom/alibaba/fastjson/asm/Item;)Z
aload 0
getfield com/alibaba/fastjson/asm/Item/type I
tableswitch 1
L0
L1
L2
L2
L3
L3
L0
L0
L1
L1
L1
L4
L0
L1
L3
default : L1
L1:
aload 1
getfield com/alibaba/fastjson/asm/Item/strVal1 Ljava/lang/String;
aload 0
getfield com/alibaba/fastjson/asm/Item/strVal1 Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L5
aload 1
getfield com/alibaba/fastjson/asm/Item/strVal2 Ljava/lang/String;
aload 0
getfield com/alibaba/fastjson/asm/Item/strVal2 Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L5
aload 1
getfield com/alibaba/fastjson/asm/Item/strVal3 Ljava/lang/String;
aload 0
getfield com/alibaba/fastjson/asm/Item/strVal3 Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L5
L6:
iconst_1
ireturn
L0:
aload 1
getfield com/alibaba/fastjson/asm/Item/strVal1 Ljava/lang/String;
aload 0
getfield com/alibaba/fastjson/asm/Item/strVal1 Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ireturn
L3:
aload 1
getfield com/alibaba/fastjson/asm/Item/longVal J
aload 0
getfield com/alibaba/fastjson/asm/Item/longVal J
lcmp
ifeq L6
iconst_0
ireturn
L2:
aload 1
getfield com/alibaba/fastjson/asm/Item/intVal I
aload 0
getfield com/alibaba/fastjson/asm/Item/intVal I
if_icmpeq L6
iconst_0
ireturn
L4:
aload 1
getfield com/alibaba/fastjson/asm/Item/strVal1 Ljava/lang/String;
aload 0
getfield com/alibaba/fastjson/asm/Item/strVal1 Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L7
aload 1
getfield com/alibaba/fastjson/asm/Item/strVal2 Ljava/lang/String;
aload 0
getfield com/alibaba/fastjson/asm/Item/strVal2 Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L6
L7:
iconst_0
ireturn
L5:
iconst_0
ireturn
.limit locals 2
.limit stack 4
.end method

.method set(I)V
aload 0
iconst_3
putfield com/alibaba/fastjson/asm/Item/type I
aload 0
iload 1
putfield com/alibaba/fastjson/asm/Item/intVal I
aload 0
ldc_w 2147483647
aload 0
getfield com/alibaba/fastjson/asm/Item/type I
iload 1
iadd
iand
putfield com/alibaba/fastjson/asm/Item/hashCode I
return
.limit locals 2
.limit stack 4
.end method

.method set(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
aload 0
iload 1
putfield com/alibaba/fastjson/asm/Item/type I
aload 0
aload 2
putfield com/alibaba/fastjson/asm/Item/strVal1 Ljava/lang/String;
aload 0
aload 3
putfield com/alibaba/fastjson/asm/Item/strVal2 Ljava/lang/String;
aload 0
aload 4
putfield com/alibaba/fastjson/asm/Item/strVal3 Ljava/lang/String;
iload 1
lookupswitch
1 : L0
7 : L0
8 : L0
12 : L1
13 : L0
default : L2
L2:
aload 0
aload 2
invokevirtual java/lang/String/hashCode()I
aload 3
invokevirtual java/lang/String/hashCode()I
imul
aload 4
invokevirtual java/lang/String/hashCode()I
imul
iload 1
iadd
ldc_w 2147483647
iand
putfield com/alibaba/fastjson/asm/Item/hashCode I
return
L0:
aload 0
aload 2
invokevirtual java/lang/String/hashCode()I
iload 1
iadd
ldc_w 2147483647
iand
putfield com/alibaba/fastjson/asm/Item/hashCode I
return
L1:
aload 0
aload 2
invokevirtual java/lang/String/hashCode()I
aload 3
invokevirtual java/lang/String/hashCode()I
imul
iload 1
iadd
ldc_w 2147483647
iand
putfield com/alibaba/fastjson/asm/Item/hashCode I
return
.limit locals 5
.limit stack 3
.end method
