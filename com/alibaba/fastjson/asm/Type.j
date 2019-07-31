.bytecode 50.0
.class public synchronized com/alibaba/fastjson/asm/Type
.super java/lang/Object

.field public static final 'ARRAY' I = 9


.field public static final 'BOOLEAN' I = 1


.field public static final 'BOOLEAN_TYPE' Lcom/alibaba/fastjson/asm/Type;

.field public static final 'BYTE' I = 3


.field public static final 'BYTE_TYPE' Lcom/alibaba/fastjson/asm/Type;

.field public static final 'CHAR' I = 2


.field public static final 'CHAR_TYPE' Lcom/alibaba/fastjson/asm/Type;

.field public static final 'DOUBLE' I = 8


.field public static final 'DOUBLE_TYPE' Lcom/alibaba/fastjson/asm/Type;

.field public static final 'FLOAT' I = 6


.field public static final 'FLOAT_TYPE' Lcom/alibaba/fastjson/asm/Type;

.field public static final 'INT' I = 5


.field public static final 'INT_TYPE' Lcom/alibaba/fastjson/asm/Type;

.field public static final 'LONG' I = 7


.field public static final 'LONG_TYPE' Lcom/alibaba/fastjson/asm/Type;

.field public static final 'OBJECT' I = 10


.field public static final 'SHORT' I = 4


.field public static final 'SHORT_TYPE' Lcom/alibaba/fastjson/asm/Type;

.field public static final 'VOID' I = 0


.field public static final 'VOID_TYPE' Lcom/alibaba/fastjson/asm/Type;

.field private final 'buf' [C

.field private final 'len' I

.field private final 'off' I

.field private final 'sort' I

.method static <clinit>()V
new com/alibaba/fastjson/asm/Type
dup
iconst_0
aconst_null
ldc_w 1443168256
iconst_1
invokespecial com/alibaba/fastjson/asm/Type/<init>(I[CII)V
putstatic com/alibaba/fastjson/asm/Type/VOID_TYPE Lcom/alibaba/fastjson/asm/Type;
new com/alibaba/fastjson/asm/Type
dup
iconst_1
aconst_null
ldc_w 1509950721
iconst_1
invokespecial com/alibaba/fastjson/asm/Type/<init>(I[CII)V
putstatic com/alibaba/fastjson/asm/Type/BOOLEAN_TYPE Lcom/alibaba/fastjson/asm/Type;
new com/alibaba/fastjson/asm/Type
dup
iconst_2
aconst_null
ldc_w 1124075009
iconst_1
invokespecial com/alibaba/fastjson/asm/Type/<init>(I[CII)V
putstatic com/alibaba/fastjson/asm/Type/CHAR_TYPE Lcom/alibaba/fastjson/asm/Type;
new com/alibaba/fastjson/asm/Type
dup
iconst_3
aconst_null
ldc_w 1107297537
iconst_1
invokespecial com/alibaba/fastjson/asm/Type/<init>(I[CII)V
putstatic com/alibaba/fastjson/asm/Type/BYTE_TYPE Lcom/alibaba/fastjson/asm/Type;
new com/alibaba/fastjson/asm/Type
dup
iconst_4
aconst_null
ldc_w 1392510721
iconst_1
invokespecial com/alibaba/fastjson/asm/Type/<init>(I[CII)V
putstatic com/alibaba/fastjson/asm/Type/SHORT_TYPE Lcom/alibaba/fastjson/asm/Type;
new com/alibaba/fastjson/asm/Type
dup
iconst_5
aconst_null
ldc_w 1224736769
iconst_1
invokespecial com/alibaba/fastjson/asm/Type/<init>(I[CII)V
putstatic com/alibaba/fastjson/asm/Type/INT_TYPE Lcom/alibaba/fastjson/asm/Type;
new com/alibaba/fastjson/asm/Type
dup
bipush 6
aconst_null
ldc_w 1174536705
iconst_1
invokespecial com/alibaba/fastjson/asm/Type/<init>(I[CII)V
putstatic com/alibaba/fastjson/asm/Type/FLOAT_TYPE Lcom/alibaba/fastjson/asm/Type;
new com/alibaba/fastjson/asm/Type
dup
bipush 7
aconst_null
ldc_w 1241579778
iconst_1
invokespecial com/alibaba/fastjson/asm/Type/<init>(I[CII)V
putstatic com/alibaba/fastjson/asm/Type/LONG_TYPE Lcom/alibaba/fastjson/asm/Type;
new com/alibaba/fastjson/asm/Type
dup
bipush 8
aconst_null
ldc_w 1141048066
iconst_1
invokespecial com/alibaba/fastjson/asm/Type/<init>(I[CII)V
putstatic com/alibaba/fastjson/asm/Type/DOUBLE_TYPE Lcom/alibaba/fastjson/asm/Type;
return
.limit locals 0
.limit stack 6
.end method

.method private <init>(I[CII)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iload 1
putfield com/alibaba/fastjson/asm/Type/sort I
aload 0
aload 2
putfield com/alibaba/fastjson/asm/Type/buf [C
aload 0
iload 3
putfield com/alibaba/fastjson/asm/Type/off I
aload 0
iload 4
putfield com/alibaba/fastjson/asm/Type/len I
return
.limit locals 5
.limit stack 2
.end method

.method public static getArgumentsAndReturnSizes(Ljava/lang/String;)I
iconst_1
istore 1
iconst_1
istore 2
L0:
iload 2
iconst_1
iadd
istore 3
aload 0
iload 2
invokevirtual java/lang/String/charAt(I)C
istore 2
iload 2
bipush 41
if_icmpne L1
aload 0
iload 3
invokevirtual java/lang/String/charAt(I)C
istore 2
iload 2
bipush 86
if_icmpne L2
iconst_0
istore 2
L3:
iload 2
iload 1
iconst_2
ishl
ior
ireturn
L2:
iload 2
bipush 68
if_icmpeq L4
iload 2
bipush 74
if_icmpne L5
L4:
iconst_2
istore 2
goto L3
L5:
iconst_1
istore 2
goto L3
L1:
iload 2
bipush 76
if_icmpne L6
L7:
iload 3
iconst_1
iadd
istore 2
aload 0
iload 3
invokevirtual java/lang/String/charAt(I)C
bipush 59
if_icmpeq L8
iload 2
istore 3
goto L7
L8:
iload 1
iconst_1
iadd
istore 1
goto L0
L6:
iload 2
bipush 68
if_icmpeq L9
iload 2
bipush 74
if_icmpne L10
L9:
iload 1
iconst_2
iadd
istore 1
iload 3
istore 2
goto L0
L10:
iload 1
iconst_1
iadd
istore 1
iload 3
istore 2
goto L0
.limit locals 4
.limit stack 3
.end method

.method public static getType(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Type;
aload 0
invokevirtual java/lang/String/toCharArray()[C
iconst_0
invokestatic com/alibaba/fastjson/asm/Type/getType([CI)Lcom/alibaba/fastjson/asm/Type;
areturn
.limit locals 1
.limit stack 2
.end method

.method private static getType([CI)Lcom/alibaba/fastjson/asm/Type;
aload 0
iload 1
caload
lookupswitch
66 : L0
67 : L1
68 : L2
70 : L3
73 : L4
74 : L5
83 : L6
86 : L7
90 : L8
91 : L9
default : L10
L10:
iconst_1
istore 2
L11:
aload 0
iload 1
iload 2
iadd
caload
bipush 59
if_icmpeq L12
iload 2
iconst_1
iadd
istore 2
goto L11
L7:
getstatic com/alibaba/fastjson/asm/Type/VOID_TYPE Lcom/alibaba/fastjson/asm/Type;
areturn
L8:
getstatic com/alibaba/fastjson/asm/Type/BOOLEAN_TYPE Lcom/alibaba/fastjson/asm/Type;
areturn
L1:
getstatic com/alibaba/fastjson/asm/Type/CHAR_TYPE Lcom/alibaba/fastjson/asm/Type;
areturn
L0:
getstatic com/alibaba/fastjson/asm/Type/BYTE_TYPE Lcom/alibaba/fastjson/asm/Type;
areturn
L6:
getstatic com/alibaba/fastjson/asm/Type/SHORT_TYPE Lcom/alibaba/fastjson/asm/Type;
areturn
L4:
getstatic com/alibaba/fastjson/asm/Type/INT_TYPE Lcom/alibaba/fastjson/asm/Type;
areturn
L3:
getstatic com/alibaba/fastjson/asm/Type/FLOAT_TYPE Lcom/alibaba/fastjson/asm/Type;
areturn
L5:
getstatic com/alibaba/fastjson/asm/Type/LONG_TYPE Lcom/alibaba/fastjson/asm/Type;
areturn
L2:
getstatic com/alibaba/fastjson/asm/Type/DOUBLE_TYPE Lcom/alibaba/fastjson/asm/Type;
areturn
L9:
iconst_1
istore 2
L13:
aload 0
iload 1
iload 2
iadd
caload
bipush 91
if_icmpne L14
iload 2
iconst_1
iadd
istore 2
goto L13
L14:
iload 2
istore 3
aload 0
iload 1
iload 2
iadd
caload
bipush 76
if_icmpne L15
iload 2
iconst_1
iadd
istore 2
L16:
iload 2
istore 3
aload 0
iload 1
iload 2
iadd
caload
bipush 59
if_icmpeq L15
iload 2
iconst_1
iadd
istore 2
goto L16
L15:
new com/alibaba/fastjson/asm/Type
dup
bipush 9
aload 0
iload 1
iload 3
iconst_1
iadd
invokespecial com/alibaba/fastjson/asm/Type/<init>(I[CII)V
areturn
L12:
new com/alibaba/fastjson/asm/Type
dup
bipush 10
aload 0
iload 1
iconst_1
iadd
iload 2
iconst_1
isub
invokespecial com/alibaba/fastjson/asm/Type/<init>(I[CII)V
areturn
.limit locals 4
.limit stack 7
.end method

.method getDescriptor()Ljava/lang/String;
new java/lang/String
dup
aload 0
getfield com/alibaba/fastjson/asm/Type/buf [C
aload 0
getfield com/alibaba/fastjson/asm/Type/off I
aload 0
getfield com/alibaba/fastjson/asm/Type/len I
invokespecial java/lang/String/<init>([CII)V
areturn
.limit locals 1
.limit stack 5
.end method

.method public getInternalName()Ljava/lang/String;
new java/lang/String
dup
aload 0
getfield com/alibaba/fastjson/asm/Type/buf [C
aload 0
getfield com/alibaba/fastjson/asm/Type/off I
aload 0
getfield com/alibaba/fastjson/asm/Type/len I
invokespecial java/lang/String/<init>([CII)V
areturn
.limit locals 1
.limit stack 5
.end method

.method public getSort()I
aload 0
getfield com/alibaba/fastjson/asm/Type/sort I
ireturn
.limit locals 1
.limit stack 1
.end method
