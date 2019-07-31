.bytecode 50.0
.class public synchronized abstract com/alibaba/fastjson/parser/JSONLexerBase
.super java/lang/Object
.implements com/alibaba/fastjson/parser/JSONLexer
.implements java/io/Closeable

.field protected static final 'INT_MULTMIN_RADIX_TEN' I = -214748364


.field protected static final 'INT_N_MULTMAX_RADIX_TEN' I = -214748364


.field protected static final 'MULTMIN_RADIX_TEN' J = -922337203685477580L


.field protected static final 'N_MULTMAX_RADIX_TEN' J = -922337203685477580L


.field private static final 'SBUF_REF_LOCAL' Ljava/lang/ThreadLocal; signature "Ljava/lang/ThreadLocal<Ljava/lang/ref/SoftReference<[C>;>;"

.field protected static final 'digits' [I

.field protected static final 'typeFieldName' [C

.field protected static 'whitespaceFlags' [Z

.field protected 'bp' I

.field protected 'calendar' Ljava/util/Calendar;

.field protected 'ch' C

.field protected 'eofPos' I

.field protected 'features' I

.field protected 'hasSpecial' Z

.field protected 'keywods' Lcom/alibaba/fastjson/parser/Keywords;

.field public 'matchStat' I

.field protected 'np' I

.field protected 'pos' I

.field protected 'sbuf' [C

.field protected 'sp' I

.field protected 'token' I

.method static <clinit>()V
new java/lang/ThreadLocal
dup
invokespecial java/lang/ThreadLocal/<init>()V
putstatic com/alibaba/fastjson/parser/JSONLexerBase/SBUF_REF_LOCAL Ljava/lang/ThreadLocal;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "\""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
getstatic com/alibaba/fastjson/JSON/DEFAULT_TYPE_KEY Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "\":\""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/String/toCharArray()[C
putstatic com/alibaba/fastjson/parser/JSONLexerBase/typeFieldName [C
sipush 256
newarray boolean
putstatic com/alibaba/fastjson/parser/JSONLexerBase/whitespaceFlags [Z
getstatic com/alibaba/fastjson/parser/JSONLexerBase/whitespaceFlags [Z
bipush 32
iconst_1
bastore
getstatic com/alibaba/fastjson/parser/JSONLexerBase/whitespaceFlags [Z
bipush 10
iconst_1
bastore
getstatic com/alibaba/fastjson/parser/JSONLexerBase/whitespaceFlags [Z
bipush 13
iconst_1
bastore
getstatic com/alibaba/fastjson/parser/JSONLexerBase/whitespaceFlags [Z
bipush 9
iconst_1
bastore
getstatic com/alibaba/fastjson/parser/JSONLexerBase/whitespaceFlags [Z
bipush 12
iconst_1
bastore
getstatic com/alibaba/fastjson/parser/JSONLexerBase/whitespaceFlags [Z
bipush 8
iconst_1
bastore
bipush 103
newarray int
putstatic com/alibaba/fastjson/parser/JSONLexerBase/digits [I
bipush 48
istore 0
L0:
iload 0
bipush 57
if_icmpgt L1
getstatic com/alibaba/fastjson/parser/JSONLexerBase/digits [I
iload 0
iload 0
bipush 48
isub
iastore
iload 0
iconst_1
iadd
istore 0
goto L0
L1:
bipush 97
istore 0
L2:
iload 0
bipush 102
if_icmpgt L3
getstatic com/alibaba/fastjson/parser/JSONLexerBase/digits [I
iload 0
iload 0
bipush 97
isub
bipush 10
iadd
iastore
iload 0
iconst_1
iadd
istore 0
goto L2
L3:
bipush 65
istore 0
L4:
iload 0
bipush 70
if_icmpgt L5
getstatic com/alibaba/fastjson/parser/JSONLexerBase/digits [I
iload 0
iload 0
bipush 65
isub
bipush 10
iadd
iastore
iload 0
iconst_1
iadd
istore 0
goto L4
L5:
return
.limit locals 1
.limit stack 4
.end method

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
getstatic com/alibaba/fastjson/JSON/DEFAULT_PARSER_FEATURE I
putfield com/alibaba/fastjson/parser/JSONLexerBase/features I
aload 0
aconst_null
putfield com/alibaba/fastjson/parser/JSONLexerBase/calendar Ljava/util/Calendar;
aload 0
iconst_0
putfield com/alibaba/fastjson/parser/JSONLexerBase/matchStat I
aload 0
getstatic com/alibaba/fastjson/parser/Keywords/DEFAULT_KEYWORDS Lcom/alibaba/fastjson/parser/Keywords;
putfield com/alibaba/fastjson/parser/JSONLexerBase/keywods Lcom/alibaba/fastjson/parser/Keywords;
getstatic com/alibaba/fastjson/parser/JSONLexerBase/SBUF_REF_LOCAL Ljava/lang/ThreadLocal;
invokevirtual java/lang/ThreadLocal/get()Ljava/lang/Object;
checkcast java/lang/ref/SoftReference
astore 1
aload 1
ifnull L0
aload 0
aload 1
invokevirtual java/lang/ref/SoftReference/get()Ljava/lang/Object;
checkcast [C
putfield com/alibaba/fastjson/parser/JSONLexerBase/sbuf [C
getstatic com/alibaba/fastjson/parser/JSONLexerBase/SBUF_REF_LOCAL Ljava/lang/ThreadLocal;
aconst_null
invokevirtual java/lang/ThreadLocal/set(Ljava/lang/Object;)V
L0:
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/sbuf [C
ifnonnull L1
aload 0
bipush 64
newarray char
putfield com/alibaba/fastjson/parser/JSONLexerBase/sbuf [C
L1:
return
.limit locals 2
.limit stack 2
.end method

.method public static final isWhitespace(C)Z
iload 0
bipush 32
if_icmpeq L0
iload 0
bipush 10
if_icmpeq L0
iload 0
bipush 13
if_icmpeq L0
iload 0
bipush 9
if_icmpeq L0
iload 0
bipush 12
if_icmpeq L0
iload 0
bipush 8
if_icmpne L1
L0:
iconst_1
ireturn
L1:
iconst_0
ireturn
.limit locals 1
.limit stack 2
.end method

.method private final scanStringSingleQuote()V
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
putfield com/alibaba/fastjson/parser/JSONLexerBase/np I
aload 0
iconst_0
putfield com/alibaba/fastjson/parser/JSONLexerBase/hasSpecial Z
L0:
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/next()C
istore 1
iload 1
bipush 39
if_icmpne L1
aload 0
iconst_4
putfield com/alibaba/fastjson/parser/JSONLexerBase/token I
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/next()C
pop
return
L1:
iload 1
bipush 26
if_icmpne L2
new com/alibaba/fastjson/JSONException
dup
ldc "unclosed single-quote string"
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
L2:
iload 1
bipush 92
if_icmpne L3
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/hasSpecial Z
ifne L4
aload 0
iconst_1
putfield com/alibaba/fastjson/parser/JSONLexerBase/hasSpecial Z
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/sp I
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/sbuf [C
arraylength
if_icmple L5
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/sp I
iconst_2
imul
newarray char
astore 4
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/sbuf [C
iconst_0
aload 4
iconst_0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/sbuf [C
arraylength
invokestatic java/lang/System/arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
aload 0
aload 4
putfield com/alibaba/fastjson/parser/JSONLexerBase/sbuf [C
L5:
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/np I
iconst_1
iadd
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/sp I
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/sbuf [C
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/copyTo(II[C)V
L4:
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/next()C
istore 1
iload 1
lookupswitch
34 : L6
39 : L7
47 : L8
48 : L9
49 : L10
50 : L11
51 : L12
52 : L13
53 : L14
54 : L15
55 : L16
70 : L17
92 : L18
98 : L19
102 : L17
110 : L20
114 : L21
116 : L22
117 : L23
118 : L24
120 : L25
default : L26
L26:
aload 0
iload 1
putfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
new com/alibaba/fastjson/JSONException
dup
ldc "unclosed single-quote string"
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
L9:
aload 0
iconst_0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/putChar(C)V
goto L0
L10:
aload 0
iconst_1
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/putChar(C)V
goto L0
L11:
aload 0
iconst_2
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/putChar(C)V
goto L0
L12:
aload 0
iconst_3
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/putChar(C)V
goto L0
L13:
aload 0
iconst_4
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/putChar(C)V
goto L0
L14:
aload 0
iconst_5
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/putChar(C)V
goto L0
L15:
aload 0
bipush 6
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/putChar(C)V
goto L0
L16:
aload 0
bipush 7
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/putChar(C)V
goto L0
L19:
aload 0
bipush 8
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/putChar(C)V
goto L0
L22:
aload 0
bipush 9
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/putChar(C)V
goto L0
L20:
aload 0
bipush 10
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/putChar(C)V
goto L0
L24:
aload 0
bipush 11
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/putChar(C)V
goto L0
L17:
aload 0
bipush 12
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/putChar(C)V
goto L0
L21:
aload 0
bipush 13
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/putChar(C)V
goto L0
L6:
aload 0
bipush 34
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/putChar(C)V
goto L0
L7:
aload 0
bipush 39
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/putChar(C)V
goto L0
L8:
aload 0
bipush 47
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/putChar(C)V
goto L0
L18:
aload 0
bipush 92
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/putChar(C)V
goto L0
L25:
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/next()C
istore 2
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/next()C
istore 3
aload 0
getstatic com/alibaba/fastjson/parser/JSONLexerBase/digits [I
iload 2
iaload
bipush 16
imul
getstatic com/alibaba/fastjson/parser/JSONLexerBase/digits [I
iload 3
iaload
iadd
i2c
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/putChar(C)V
goto L0
L23:
aload 0
new java/lang/String
dup
iconst_4
newarray char
dup
iconst_0
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/next()C
castore
dup
iconst_1
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/next()C
castore
dup
iconst_2
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/next()C
castore
dup
iconst_3
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/next()C
castore
invokespecial java/lang/String/<init>([C)V
bipush 16
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;I)I
i2c
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/putChar(C)V
goto L0
L3:
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/hasSpecial Z
ifne L27
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/sp I
iconst_1
iadd
putfield com/alibaba/fastjson/parser/JSONLexerBase/sp I
goto L0
L27:
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/sp I
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/sbuf [C
arraylength
if_icmpne L28
aload 0
iload 1
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/putChar(C)V
goto L0
L28:
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/sbuf [C
astore 4
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/sp I
istore 2
aload 0
iload 2
iconst_1
iadd
putfield com/alibaba/fastjson/parser/JSONLexerBase/sp I
aload 4
iload 2
iload 1
castore
goto L0
.limit locals 5
.limit stack 7
.end method

.method public abstract addSymbol(IIILcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;
.end method

.method protected abstract arrayCopy(I[CII)V
.end method

.method public abstract bytesValue()[B
.end method

.method protected abstract charArrayCompare([C)Z
.end method

.method public abstract charAt(I)C
.end method

.method public close()V
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/sbuf [C
arraylength
sipush 8192
if_icmpgt L0
getstatic com/alibaba/fastjson/parser/JSONLexerBase/SBUF_REF_LOCAL Ljava/lang/ThreadLocal;
new java/lang/ref/SoftReference
dup
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/sbuf [C
invokespecial java/lang/ref/SoftReference/<init>(Ljava/lang/Object;)V
invokevirtual java/lang/ThreadLocal/set(Ljava/lang/Object;)V
L0:
aload 0
aconst_null
putfield com/alibaba/fastjson/parser/JSONLexerBase/sbuf [C
return
.limit locals 1
.limit stack 4
.end method

.method public config(Lcom/alibaba/fastjson/parser/Feature;Z)V
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/features I
aload 1
iload 2
invokestatic com/alibaba/fastjson/parser/Feature/config(ILcom/alibaba/fastjson/parser/Feature;Z)I
putfield com/alibaba/fastjson/parser/JSONLexerBase/features I
return
.limit locals 3
.limit stack 4
.end method

.method protected abstract copyTo(II[C)V
.end method

.method public final decimalValue(Z)Ljava/lang/Number;
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/np I
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/sp I
iadd
iconst_1
isub
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/charAt(I)C
istore 2
iload 2
bipush 70
if_icmpne L0
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/numberString()Ljava/lang/String;
invokestatic java/lang/Float/parseFloat(Ljava/lang/String;)F
invokestatic java/lang/Float/valueOf(F)Ljava/lang/Float;
areturn
L0:
iload 2
bipush 68
if_icmpne L1
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/numberString()Ljava/lang/String;
invokestatic java/lang/Double/parseDouble(Ljava/lang/String;)D
invokestatic java/lang/Double/valueOf(D)Ljava/lang/Double;
areturn
L1:
iload 1
ifeq L2
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/decimalValue()Ljava/math/BigDecimal;
areturn
L2:
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/doubleValue()D
invokestatic java/lang/Double/valueOf(D)Ljava/lang/Double;
areturn
.limit locals 3
.limit stack 3
.end method

.method public final decimalValue()Ljava/math/BigDecimal;
new java/math/BigDecimal
dup
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/numberString()Ljava/lang/String;
invokespecial java/math/BigDecimal/<init>(Ljava/lang/String;)V
areturn
.limit locals 1
.limit stack 3
.end method

.method public doubleValue()D
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/numberString()Ljava/lang/String;
invokestatic java/lang/Double/parseDouble(Ljava/lang/String;)D
dreturn
.limit locals 1
.limit stack 2
.end method

.method public floatValue()F
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/numberString()Ljava/lang/String;
invokestatic java/lang/Float/parseFloat(Ljava/lang/String;)F
freturn
.limit locals 1
.limit stack 1
.end method

.method public final getBufferPosition()I
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getCalendar()Ljava/util/Calendar;
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/calendar Ljava/util/Calendar;
areturn
.limit locals 1
.limit stack 1
.end method

.method public final getCurrent()C
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
ireturn
.limit locals 1
.limit stack 1
.end method

.method public abstract indexOf(CI)I
.end method

.method public final intValue()I
iconst_0
istore 2
iconst_0
istore 4
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/np I
istore 3
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/np I
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/sp I
iadd
istore 6
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/np I
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/charAt(I)C
bipush 45
if_icmpne L0
iconst_1
istore 4
ldc_w -2147483648
istore 5
iload 3
iconst_1
iadd
istore 3
L1:
iload 4
ifeq L2
L2:
iload 3
istore 1
iload 3
iload 6
if_icmpge L3
getstatic com/alibaba/fastjson/parser/JSONLexerBase/digits [I
aload 0
iload 3
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/charAt(I)C
iaload
ineg
istore 2
iload 3
iconst_1
iadd
istore 1
L3:
iload 1
iload 6
if_icmpge L4
iload 1
iconst_1
iadd
istore 3
aload 0
iload 1
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/charAt(I)C
istore 7
iload 3
istore 1
iload 7
bipush 76
if_icmpeq L5
iload 3
istore 1
iload 7
bipush 83
if_icmpeq L5
iload 7
bipush 66
if_icmpne L6
iload 3
istore 1
L5:
iload 4
ifeq L7
iload 1
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/np I
iconst_1
iadd
if_icmple L8
iload 2
ireturn
L0:
ldc_w -2147483647
istore 5
goto L1
L6:
getstatic com/alibaba/fastjson/parser/JSONLexerBase/digits [I
iload 7
iaload
istore 1
iload 2
ldc_w -214748364
if_icmpge L9
new java/lang/NumberFormatException
dup
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/numberString()Ljava/lang/String;
invokespecial java/lang/NumberFormatException/<init>(Ljava/lang/String;)V
athrow
L9:
iload 2
bipush 10
imul
istore 2
iload 2
iload 5
iload 1
iadd
if_icmpge L10
new java/lang/NumberFormatException
dup
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/numberString()Ljava/lang/String;
invokespecial java/lang/NumberFormatException/<init>(Ljava/lang/String;)V
athrow
L10:
iload 2
iload 1
isub
istore 2
iload 3
istore 1
goto L3
L8:
new java/lang/NumberFormatException
dup
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/numberString()Ljava/lang/String;
invokespecial java/lang/NumberFormatException/<init>(Ljava/lang/String;)V
athrow
L7:
iload 2
ineg
ireturn
L4:
goto L5
.limit locals 8
.limit stack 3
.end method

.method public final integerValue()Ljava/lang/Number;
.throws java/lang/NumberFormatException
lconst_0
lstore 6
iconst_0
istore 5
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/np I
iconst_m1
if_icmpne L0
aload 0
iconst_0
putfield com/alibaba/fastjson/parser/JSONLexerBase/np I
L0:
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/np I
istore 3
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/np I
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/sp I
iadd
istore 1
bipush 32
istore 2
aload 0
iload 1
iconst_1
isub
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/charAt(I)C
lookupswitch
66 : L1
76 : L2
83 : L3
default : L4
L4:
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/np I
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/charAt(I)C
bipush 45
if_icmpne L5
iconst_1
istore 5
ldc2_w -9223372036854775808L
lstore 8
iload 3
iconst_1
iadd
istore 3
L6:
iload 5
ifeq L7
L7:
iload 3
istore 4
iload 3
iload 1
if_icmpge L8
getstatic com/alibaba/fastjson/parser/JSONLexerBase/digits [I
aload 0
iload 3
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/charAt(I)C
iaload
ineg
i2l
lstore 6
iload 3
iconst_1
iadd
istore 4
L8:
iload 4
iload 1
if_icmpge L9
getstatic com/alibaba/fastjson/parser/JSONLexerBase/digits [I
aload 0
iload 4
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/charAt(I)C
iaload
istore 3
lload 6
ldc2_w -922337203685477580L
lcmp
ifge L10
new java/math/BigInteger
dup
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/numberString()Ljava/lang/String;
invokespecial java/math/BigInteger/<init>(Ljava/lang/String;)V
areturn
L2:
iload 1
iconst_1
isub
istore 1
bipush 76
istore 2
goto L4
L3:
iload 1
iconst_1
isub
istore 1
bipush 83
istore 2
goto L4
L1:
iload 1
iconst_1
isub
istore 1
bipush 66
istore 2
goto L4
L5:
ldc2_w -9223372036854775807L
lstore 8
goto L6
L10:
lload 6
ldc2_w 10L
lmul
lstore 6
lload 6
iload 3
i2l
lload 8
ladd
lcmp
ifge L11
new java/math/BigInteger
dup
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/numberString()Ljava/lang/String;
invokespecial java/math/BigInteger/<init>(Ljava/lang/String;)V
areturn
L11:
lload 6
iload 3
i2l
lsub
lstore 6
iload 4
iconst_1
iadd
istore 4
goto L8
L9:
iload 5
ifeq L12
iload 4
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/np I
iconst_1
iadd
if_icmple L13
lload 6
ldc2_w -2147483648L
lcmp
iflt L14
iload 2
bipush 76
if_icmpeq L14
lload 6
l2i
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
areturn
L14:
lload 6
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
areturn
L13:
new java/lang/NumberFormatException
dup
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/numberString()Ljava/lang/String;
invokespecial java/lang/NumberFormatException/<init>(Ljava/lang/String;)V
athrow
L12:
lload 6
lneg
lstore 6
lload 6
ldc2_w 2147483647L
lcmp
ifgt L15
iload 2
bipush 76
if_icmpeq L15
iload 2
bipush 83
if_icmpne L16
lload 6
l2i
i2s
invokestatic java/lang/Short/valueOf(S)Ljava/lang/Short;
areturn
L16:
iload 2
bipush 66
if_icmpne L17
lload 6
l2i
i2b
invokestatic java/lang/Byte/valueOf(B)Ljava/lang/Byte;
areturn
L17:
lload 6
l2i
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
areturn
L15:
lload 6
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
areturn
.limit locals 10
.limit stack 6
.end method

.method public final isBlankInput()Z
iconst_0
istore 2
L0:
aload 0
iload 2
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/charAt(I)C
istore 1
iload 1
bipush 26
if_icmpne L1
iconst_1
ireturn
L1:
iload 1
invokestatic com/alibaba/fastjson/parser/JSONLexerBase/isWhitespace(C)Z
ifne L2
iconst_0
ireturn
L2:
iload 2
iconst_1
iadd
istore 2
goto L0
.limit locals 3
.limit stack 2
.end method

.method public abstract isEOF()Z
.end method

.method public final isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/features I
aload 1
invokestatic com/alibaba/fastjson/parser/Feature/isEnabled(ILcom/alibaba/fastjson/parser/Feature;)Z
ireturn
.limit locals 2
.limit stack 2
.end method

.method public final isRef()Z
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/sp I
iconst_4
if_icmpeq L0
L1:
iconst_0
ireturn
L0:
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/np I
iconst_1
iadd
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/charAt(I)C
bipush 36
if_icmpne L1
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/np I
iconst_2
iadd
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/charAt(I)C
bipush 114
if_icmpne L1
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/np I
iconst_3
iadd
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/charAt(I)C
bipush 101
if_icmpne L1
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/np I
iconst_4
iadd
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/charAt(I)C
bipush 102
if_icmpne L1
iconst_1
ireturn
.limit locals 1
.limit stack 3
.end method

.method protected transient lexError(Ljava/lang/String;[Ljava/lang/Object;)V
aload 0
iconst_1
putfield com/alibaba/fastjson/parser/JSONLexerBase/token I
return
.limit locals 3
.limit stack 2
.end method

.method public final longValue()J
.throws java/lang/NumberFormatException
lconst_0
lstore 6
iconst_0
istore 3
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/np I
istore 2
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/np I
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/sp I
iadd
istore 4
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/np I
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/charAt(I)C
bipush 45
if_icmpne L0
iconst_1
istore 3
ldc2_w -9223372036854775808L
lstore 8
iload 2
iconst_1
iadd
istore 2
L1:
iload 3
ifeq L2
L2:
iload 2
istore 1
iload 2
iload 4
if_icmpge L3
getstatic com/alibaba/fastjson/parser/JSONLexerBase/digits [I
aload 0
iload 2
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/charAt(I)C
iaload
ineg
i2l
lstore 6
iload 2
iconst_1
iadd
istore 1
L3:
iload 1
iload 4
if_icmpge L4
iload 1
iconst_1
iadd
istore 2
aload 0
iload 1
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/charAt(I)C
istore 5
iload 2
istore 1
iload 5
bipush 76
if_icmpeq L5
iload 2
istore 1
iload 5
bipush 83
if_icmpeq L5
iload 5
bipush 66
if_icmpne L6
iload 2
istore 1
L5:
iload 3
ifeq L7
iload 1
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/np I
iconst_1
iadd
if_icmple L8
lload 6
lreturn
L0:
ldc2_w -9223372036854775807L
lstore 8
goto L1
L6:
getstatic com/alibaba/fastjson/parser/JSONLexerBase/digits [I
iload 5
iaload
istore 1
lload 6
ldc2_w -922337203685477580L
lcmp
ifge L9
new java/lang/NumberFormatException
dup
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/numberString()Ljava/lang/String;
invokespecial java/lang/NumberFormatException/<init>(Ljava/lang/String;)V
athrow
L9:
lload 6
ldc2_w 10L
lmul
lstore 6
lload 6
iload 1
i2l
lload 8
ladd
lcmp
ifge L10
new java/lang/NumberFormatException
dup
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/numberString()Ljava/lang/String;
invokespecial java/lang/NumberFormatException/<init>(Ljava/lang/String;)V
athrow
L10:
lload 6
iload 1
i2l
lsub
lstore 6
iload 2
istore 1
goto L3
L8:
new java/lang/NumberFormatException
dup
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/numberString()Ljava/lang/String;
invokespecial java/lang/NumberFormatException/<init>(Ljava/lang/String;)V
athrow
L7:
lload 6
lneg
lreturn
L4:
goto L5
.limit locals 10
.limit stack 6
.end method

.method public final matchField([C)Z
aload 0
aload 1
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/charArrayCompare([C)Z
ifne L0
iconst_0
ireturn
L0:
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
aload 1
arraylength
iadd
putfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
aload 0
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/charAt(I)C
putfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 123
if_icmpne L1
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/next()C
pop
aload 0
bipush 12
putfield com/alibaba/fastjson/parser/JSONLexerBase/token I
L2:
iconst_1
ireturn
L1:
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 91
if_icmpne L3
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/next()C
pop
aload 0
bipush 14
putfield com/alibaba/fastjson/parser/JSONLexerBase/token I
goto L2
L3:
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/nextToken()V
goto L2
.limit locals 2
.limit stack 3
.end method

.method public final matchStat()I
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/matchStat I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public abstract next()C
.end method

.method public final nextIdent()V
L0:
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
invokestatic com/alibaba/fastjson/parser/JSONLexerBase/isWhitespace(C)Z
ifeq L1
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/next()C
pop
goto L0
L1:
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 95
if_icmpeq L2
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
invokestatic java/lang/Character/isLetter(C)Z
ifeq L3
L2:
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/scanIdent()V
return
L3:
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/nextToken()V
return
.limit locals 1
.limit stack 2
.end method

.method public final nextToken()V
aload 0
iconst_0
putfield com/alibaba/fastjson/parser/JSONLexerBase/sp I
L0:
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
putfield com/alibaba/fastjson/parser/JSONLexerBase/pos I
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 34
if_icmpne L1
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/scanString()V
return
L1:
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 44
if_icmpne L2
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/next()C
pop
aload 0
bipush 16
putfield com/alibaba/fastjson/parser/JSONLexerBase/token I
return
L2:
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 48
if_icmplt L3
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 57
if_icmpgt L3
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/scanNumber()V
return
L3:
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 45
if_icmpne L4
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/scanNumber()V
return
L4:
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
lookupswitch
8 : L5
9 : L5
10 : L5
12 : L5
13 : L5
32 : L5
39 : L6
40 : L7
41 : L8
58 : L9
83 : L10
84 : L11
91 : L12
93 : L13
102 : L14
110 : L15
116 : L16
123 : L17
125 : L18
default : L19
L19:
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/isEOF()Z
ifeq L20
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/token I
bipush 20
if_icmpne L21
new com/alibaba/fastjson/JSONException
dup
ldc "EOF error"
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
L6:
aload 0
getstatic com/alibaba/fastjson/parser/Feature/AllowSingleQuotes Lcom/alibaba/fastjson/parser/Feature;
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z
ifne L22
new com/alibaba/fastjson/JSONException
dup
ldc "Feature.AllowSingleQuotes is false"
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
L22:
aload 0
invokespecial com/alibaba/fastjson/parser/JSONLexerBase/scanStringSingleQuote()V
return
L5:
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/next()C
pop
goto L0
L16:
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/scanTrue()V
return
L11:
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/scanTreeSet()V
return
L10:
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/scanSet()V
return
L14:
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/scanFalse()V
return
L15:
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/scanNullOrNew()V
return
L7:
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/next()C
pop
aload 0
bipush 10
putfield com/alibaba/fastjson/parser/JSONLexerBase/token I
return
L8:
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/next()C
pop
aload 0
bipush 11
putfield com/alibaba/fastjson/parser/JSONLexerBase/token I
return
L12:
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/next()C
pop
aload 0
bipush 14
putfield com/alibaba/fastjson/parser/JSONLexerBase/token I
return
L13:
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/next()C
pop
aload 0
bipush 15
putfield com/alibaba/fastjson/parser/JSONLexerBase/token I
return
L17:
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/next()C
pop
aload 0
bipush 12
putfield com/alibaba/fastjson/parser/JSONLexerBase/token I
return
L18:
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/next()C
pop
aload 0
bipush 13
putfield com/alibaba/fastjson/parser/JSONLexerBase/token I
return
L9:
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/next()C
pop
aload 0
bipush 17
putfield com/alibaba/fastjson/parser/JSONLexerBase/token I
return
L21:
aload 0
bipush 20
putfield com/alibaba/fastjson/parser/JSONLexerBase/token I
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/eofPos I
istore 1
aload 0
iload 1
putfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
aload 0
iload 1
putfield com/alibaba/fastjson/parser/JSONLexerBase/pos I
return
L20:
aload 0
ldc "illegal.char"
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
aastore
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/lexError(Ljava/lang/String;[Ljava/lang/Object;)V
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/next()C
pop
return
.limit locals 2
.limit stack 6
.end method

.method public final nextToken(I)V
aload 0
iconst_0
putfield com/alibaba/fastjson/parser/JSONLexerBase/sp I
L0:
iload 1
tableswitch 2
L1
L2
L3
L2
L2
L2
L2
L2
L2
L2
L4
L2
L5
L6
L7
L2
L8
L2
L9
default : L2
L2:
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 32
if_icmpeq L10
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 10
if_icmpeq L10
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 13
if_icmpeq L10
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 9
if_icmpeq L10
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 12
if_icmpeq L10
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 8
if_icmpne L11
L10:
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/next()C
pop
goto L0
L4:
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 123
if_icmpne L12
aload 0
bipush 12
putfield com/alibaba/fastjson/parser/JSONLexerBase/token I
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/next()C
pop
return
L12:
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 91
if_icmpne L2
aload 0
bipush 14
putfield com/alibaba/fastjson/parser/JSONLexerBase/token I
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/next()C
pop
return
L7:
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 44
if_icmpne L13
aload 0
bipush 16
putfield com/alibaba/fastjson/parser/JSONLexerBase/token I
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/next()C
pop
return
L13:
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 125
if_icmpne L14
aload 0
bipush 13
putfield com/alibaba/fastjson/parser/JSONLexerBase/token I
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/next()C
pop
return
L14:
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 93
if_icmpne L15
aload 0
bipush 15
putfield com/alibaba/fastjson/parser/JSONLexerBase/token I
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/next()C
pop
return
L15:
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 26
if_icmpne L2
aload 0
bipush 20
putfield com/alibaba/fastjson/parser/JSONLexerBase/token I
return
L1:
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 48
if_icmplt L16
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 57
if_icmpgt L16
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
putfield com/alibaba/fastjson/parser/JSONLexerBase/pos I
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/scanNumber()V
return
L16:
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 34
if_icmpne L17
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
putfield com/alibaba/fastjson/parser/JSONLexerBase/pos I
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/scanString()V
return
L17:
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 91
if_icmpne L18
aload 0
bipush 14
putfield com/alibaba/fastjson/parser/JSONLexerBase/token I
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/next()C
pop
return
L18:
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 123
if_icmpne L2
aload 0
bipush 12
putfield com/alibaba/fastjson/parser/JSONLexerBase/token I
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/next()C
pop
return
L3:
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 34
if_icmpne L19
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
putfield com/alibaba/fastjson/parser/JSONLexerBase/pos I
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/scanString()V
return
L19:
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 48
if_icmplt L20
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 57
if_icmpgt L20
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
putfield com/alibaba/fastjson/parser/JSONLexerBase/pos I
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/scanNumber()V
return
L20:
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 91
if_icmpne L21
aload 0
bipush 14
putfield com/alibaba/fastjson/parser/JSONLexerBase/token I
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/next()C
pop
return
L21:
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 123
if_icmpne L2
aload 0
bipush 12
putfield com/alibaba/fastjson/parser/JSONLexerBase/token I
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/next()C
pop
return
L5:
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 91
if_icmpne L22
aload 0
bipush 14
putfield com/alibaba/fastjson/parser/JSONLexerBase/token I
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/next()C
pop
return
L22:
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 123
if_icmpne L2
aload 0
bipush 12
putfield com/alibaba/fastjson/parser/JSONLexerBase/token I
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/next()C
pop
return
L6:
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 93
if_icmpne L9
aload 0
bipush 15
putfield com/alibaba/fastjson/parser/JSONLexerBase/token I
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/next()C
pop
return
L9:
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 26
if_icmpne L2
aload 0
bipush 20
putfield com/alibaba/fastjson/parser/JSONLexerBase/token I
return
L8:
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/nextIdent()V
return
L11:
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/nextToken()V
return
.limit locals 2
.limit stack 2
.end method

.method public final nextTokenWithChar(C)V
aload 0
iconst_0
putfield com/alibaba/fastjson/parser/JSONLexerBase/sp I
L0:
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
iload 1
if_icmpne L1
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/next()C
pop
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/nextToken()V
return
L1:
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 32
if_icmpeq L2
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 10
if_icmpeq L2
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 13
if_icmpeq L2
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 9
if_icmpeq L2
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 12
if_icmpeq L2
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 8
if_icmpne L3
L2:
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/next()C
pop
goto L0
L3:
new com/alibaba/fastjson/JSONException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "not match "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 1
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
ldc " - "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
.limit locals 2
.limit stack 4
.end method

.method public final nextTokenWithChar(CI)V
aload 0
iconst_0
putfield com/alibaba/fastjson/parser/JSONLexerBase/sp I
L0:
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
iload 1
if_icmpne L1
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/next()C
pop
L2:
iload 2
iconst_2
if_icmpne L3
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 48
if_icmplt L4
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 57
if_icmpgt L4
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
putfield com/alibaba/fastjson/parser/JSONLexerBase/pos I
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/scanNumber()V
return
L1:
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
invokestatic com/alibaba/fastjson/parser/JSONLexerBase/isWhitespace(C)Z
ifeq L5
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/next()C
pop
goto L0
L5:
new com/alibaba/fastjson/JSONException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "not match "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 2
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc " - "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
L4:
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 34
if_icmpne L6
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
putfield com/alibaba/fastjson/parser/JSONLexerBase/pos I
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/scanString()V
return
L3:
iload 2
iconst_4
if_icmpne L7
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 34
if_icmpne L8
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
putfield com/alibaba/fastjson/parser/JSONLexerBase/pos I
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/scanString()V
return
L8:
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 48
if_icmplt L6
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 57
if_icmpgt L6
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
putfield com/alibaba/fastjson/parser/JSONLexerBase/pos I
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/scanNumber()V
return
L7:
iload 2
bipush 12
if_icmpne L9
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 123
if_icmpne L10
aload 0
bipush 12
putfield com/alibaba/fastjson/parser/JSONLexerBase/token I
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/next()C
pop
return
L10:
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 91
if_icmpne L6
aload 0
bipush 14
putfield com/alibaba/fastjson/parser/JSONLexerBase/token I
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/next()C
pop
return
L9:
iload 2
bipush 14
if_icmpne L6
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 91
if_icmpne L11
aload 0
bipush 14
putfield com/alibaba/fastjson/parser/JSONLexerBase/token I
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/next()C
pop
return
L11:
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 123
if_icmpne L6
aload 0
bipush 12
putfield com/alibaba/fastjson/parser/JSONLexerBase/token I
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/next()C
pop
return
L6:
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
invokestatic com/alibaba/fastjson/parser/JSONLexerBase/isWhitespace(C)Z
ifeq L12
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/next()C
pop
goto L2
L12:
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/nextToken()V
return
.limit locals 3
.limit stack 4
.end method

.method public final nextTokenWithColon()V
aload 0
bipush 58
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/nextTokenWithChar(C)V
return
.limit locals 1
.limit stack 2
.end method

.method public final nextTokenWithColon(I)V
aload 0
bipush 58
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/nextTokenWithChar(C)V
return
.limit locals 2
.limit stack 2
.end method

.method public final nextTokenWithComma()V
aload 0
bipush 58
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/nextTokenWithChar(C)V
return
.limit locals 1
.limit stack 2
.end method

.method public final nextTokenWithComma(I)V
aload 0
bipush 44
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/nextTokenWithChar(C)V
return
.limit locals 2
.limit stack 2
.end method

.method public abstract numberString()Ljava/lang/String;
.end method

.method public final numberValue()Ljava/lang/Number;
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/np I
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/sp I
iadd
iconst_1
isub
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/charAt(I)C
istore 1
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/numberString()Ljava/lang/String;
astore 2
iload 1
tableswitch 68
L0
L1
L2
default : L1
L1:
new java/math/BigDecimal
dup
aload 2
invokespecial java/math/BigDecimal/<init>(Ljava/lang/String;)V
areturn
L0:
aload 2
invokestatic java/lang/Double/parseDouble(Ljava/lang/String;)D
invokestatic java/lang/Double/valueOf(D)Ljava/lang/Double;
areturn
L2:
aload 2
invokestatic java/lang/Float/parseFloat(Ljava/lang/String;)F
invokestatic java/lang/Float/valueOf(F)Ljava/lang/Float;
areturn
.limit locals 3
.limit stack 3
.end method

.method public final pos()I
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/pos I
ireturn
.limit locals 1
.limit stack 1
.end method

.method protected final putChar(C)V
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/sp I
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/sbuf [C
arraylength
if_icmpne L0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/sbuf [C
arraylength
iconst_2
imul
newarray char
astore 3
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/sbuf [C
iconst_0
aload 3
iconst_0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/sbuf [C
arraylength
invokestatic java/lang/System/arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
aload 0
aload 3
putfield com/alibaba/fastjson/parser/JSONLexerBase/sbuf [C
L0:
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/sbuf [C
astore 3
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/sp I
istore 2
aload 0
iload 2
iconst_1
iadd
putfield com/alibaba/fastjson/parser/JSONLexerBase/sp I
aload 3
iload 2
iload 1
castore
return
.limit locals 4
.limit stack 5
.end method

.method public final resetStringPosition()V
aload 0
iconst_0
putfield com/alibaba/fastjson/parser/JSONLexerBase/sp I
return
.limit locals 1
.limit stack 2
.end method

.method public scanBoolean(C)Z
aload 0
iconst_0
putfield com/alibaba/fastjson/parser/JSONLexerBase/matchStat I
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
istore 2
iconst_0
iconst_1
iadd
istore 3
aload 0
iload 2
iconst_0
iadd
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/charAt(I)C
istore 2
iconst_0
istore 4
iload 2
bipush 116
if_icmpne L0
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
iconst_1
iadd
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/charAt(I)C
bipush 114
if_icmpne L1
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
iconst_1
iadd
iconst_1
iadd
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/charAt(I)C
bipush 117
if_icmpne L1
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
iconst_1
iadd
iconst_2
iadd
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/charAt(I)C
bipush 101
if_icmpne L1
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
istore 2
iload 3
iconst_3
iadd
iconst_1
iadd
istore 3
aload 0
iload 2
iconst_4
iadd
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/charAt(I)C
istore 2
iconst_1
istore 4
L2:
iload 2
iload 1
if_icmpne L3
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
iload 3
iconst_1
isub
iadd
putfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/next()C
pop
aload 0
iconst_3
putfield com/alibaba/fastjson/parser/JSONLexerBase/matchStat I
iload 4
ireturn
L1:
aload 0
iconst_m1
putfield com/alibaba/fastjson/parser/JSONLexerBase/matchStat I
iconst_0
ireturn
L0:
iload 2
bipush 102
if_icmpne L4
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
iconst_1
iadd
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/charAt(I)C
bipush 97
if_icmpne L5
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
iconst_1
iadd
iconst_1
iadd
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/charAt(I)C
bipush 108
if_icmpne L5
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
iconst_1
iadd
iconst_2
iadd
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/charAt(I)C
bipush 115
if_icmpne L5
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
iconst_1
iadd
iconst_3
iadd
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/charAt(I)C
bipush 101
if_icmpne L5
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
istore 2
iload 3
iconst_4
iadd
iconst_1
iadd
istore 3
aload 0
iload 2
iconst_5
iadd
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/charAt(I)C
istore 2
iconst_0
istore 4
goto L2
L5:
aload 0
iconst_m1
putfield com/alibaba/fastjson/parser/JSONLexerBase/matchStat I
iconst_0
ireturn
L3:
aload 0
iconst_m1
putfield com/alibaba/fastjson/parser/JSONLexerBase/matchStat I
iload 4
ireturn
L4:
goto L2
.limit locals 5
.limit stack 4
.end method

.method public scanEnum(Ljava/lang/Class;Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/Enum;
.signature "(Ljava/lang/Class<*>;Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/Enum<*>;"
aload 0
aload 2
iload 3
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/scanSymbolWithSeperator(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;
astore 2
aload 2
ifnonnull L0
aconst_null
areturn
L0:
aload 1
aload 2
invokestatic java/lang/Enum/valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
areturn
.limit locals 4
.limit stack 3
.end method

.method public final scanFalse()V
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 102
if_icmpeq L0
new com/alibaba/fastjson/JSONException
dup
ldc "error parse false"
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/next()C
pop
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 97
if_icmpeq L1
new com/alibaba/fastjson/JSONException
dup
ldc "error parse false"
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
L1:
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/next()C
pop
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 108
if_icmpeq L2
new com/alibaba/fastjson/JSONException
dup
ldc "error parse false"
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
L2:
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/next()C
pop
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 115
if_icmpeq L3
new com/alibaba/fastjson/JSONException
dup
ldc "error parse false"
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
L3:
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/next()C
pop
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 101
if_icmpeq L4
new com/alibaba/fastjson/JSONException
dup
ldc "error parse false"
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
L4:
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/next()C
pop
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 32
if_icmpeq L5
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 44
if_icmpeq L5
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 125
if_icmpeq L5
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 93
if_icmpeq L5
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 10
if_icmpeq L5
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 13
if_icmpeq L5
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 9
if_icmpeq L5
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 26
if_icmpeq L5
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 12
if_icmpeq L5
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 8
if_icmpne L6
L5:
aload 0
bipush 7
putfield com/alibaba/fastjson/parser/JSONLexerBase/token I
return
L6:
new com/alibaba/fastjson/JSONException
dup
ldc "scan false error"
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
.limit locals 1
.limit stack 3
.end method

.method public scanFieldBoolean([C)Z
aload 0
iconst_0
putfield com/alibaba/fastjson/parser/JSONLexerBase/matchStat I
aload 0
aload 1
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/charArrayCompare([C)Z
ifne L0
aload 0
bipush -2
putfield com/alibaba/fastjson/parser/JSONLexerBase/matchStat I
iconst_0
ireturn
L0:
aload 1
arraylength
istore 3
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
istore 4
iload 3
iconst_1
iadd
istore 2
aload 0
iload 4
iload 3
iadd
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/charAt(I)C
istore 3
iload 3
bipush 116
if_icmpne L1
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
istore 4
iload 2
iconst_1
iadd
istore 3
aload 0
iload 4
iload 2
iadd
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/charAt(I)C
bipush 114
if_icmpeq L2
aload 0
iconst_m1
putfield com/alibaba/fastjson/parser/JSONLexerBase/matchStat I
iconst_0
ireturn
L2:
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
istore 2
iload 3
iconst_1
iadd
istore 4
aload 0
iload 2
iload 3
iadd
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/charAt(I)C
bipush 117
if_icmpeq L3
aload 0
iconst_m1
putfield com/alibaba/fastjson/parser/JSONLexerBase/matchStat I
iconst_0
ireturn
L3:
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
istore 3
iload 4
iconst_1
iadd
istore 2
aload 0
iload 3
iload 4
iadd
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/charAt(I)C
bipush 101
if_icmpeq L4
aload 0
iconst_m1
putfield com/alibaba/fastjson/parser/JSONLexerBase/matchStat I
iconst_0
ireturn
L4:
iconst_1
istore 5
L5:
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
istore 4
iload 2
iconst_1
iadd
istore 3
aload 0
iload 4
iload 2
iadd
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/charAt(I)C
istore 2
iload 2
bipush 44
if_icmpne L6
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
iload 3
iconst_1
isub
iadd
putfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/next()C
pop
aload 0
iconst_3
putfield com/alibaba/fastjson/parser/JSONLexerBase/matchStat I
aload 0
bipush 16
putfield com/alibaba/fastjson/parser/JSONLexerBase/token I
iload 5
ireturn
L1:
iload 3
bipush 102
if_icmpne L7
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
istore 4
iload 2
iconst_1
iadd
istore 3
aload 0
iload 4
iload 2
iadd
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/charAt(I)C
bipush 97
if_icmpeq L8
aload 0
iconst_m1
putfield com/alibaba/fastjson/parser/JSONLexerBase/matchStat I
iconst_0
ireturn
L8:
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
istore 4
iload 3
iconst_1
iadd
istore 2
aload 0
iload 4
iload 3
iadd
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/charAt(I)C
bipush 108
if_icmpeq L9
aload 0
iconst_m1
putfield com/alibaba/fastjson/parser/JSONLexerBase/matchStat I
iconst_0
ireturn
L9:
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
istore 3
iload 2
iconst_1
iadd
istore 4
aload 0
iload 3
iload 2
iadd
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/charAt(I)C
bipush 115
if_icmpeq L10
aload 0
iconst_m1
putfield com/alibaba/fastjson/parser/JSONLexerBase/matchStat I
iconst_0
ireturn
L10:
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
iload 4
iadd
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/charAt(I)C
bipush 101
if_icmpeq L11
aload 0
iconst_m1
putfield com/alibaba/fastjson/parser/JSONLexerBase/matchStat I
iconst_0
ireturn
L11:
iconst_0
istore 5
iload 4
iconst_1
iadd
istore 2
goto L5
L7:
aload 0
iconst_m1
putfield com/alibaba/fastjson/parser/JSONLexerBase/matchStat I
iconst_0
ireturn
L6:
iload 2
bipush 125
if_icmpne L12
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
istore 4
iload 3
iconst_1
iadd
istore 2
aload 0
iload 4
iload 3
iadd
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/charAt(I)C
istore 3
iload 3
bipush 44
if_icmpne L13
aload 0
bipush 16
putfield com/alibaba/fastjson/parser/JSONLexerBase/token I
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
iload 2
iconst_1
isub
iadd
putfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/next()C
pop
L14:
aload 0
iconst_4
putfield com/alibaba/fastjson/parser/JSONLexerBase/matchStat I
iload 5
ireturn
L13:
iload 3
bipush 93
if_icmpne L15
aload 0
bipush 15
putfield com/alibaba/fastjson/parser/JSONLexerBase/token I
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
iload 2
iconst_1
isub
iadd
putfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/next()C
pop
goto L14
L15:
iload 3
bipush 125
if_icmpne L16
aload 0
bipush 13
putfield com/alibaba/fastjson/parser/JSONLexerBase/token I
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
iload 2
iconst_1
isub
iadd
putfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/next()C
pop
goto L14
L16:
iload 3
bipush 26
if_icmpne L17
aload 0
bipush 20
putfield com/alibaba/fastjson/parser/JSONLexerBase/token I
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
iload 2
iconst_1
isub
iadd
putfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
aload 0
bipush 26
putfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
goto L14
L17:
aload 0
iconst_m1
putfield com/alibaba/fastjson/parser/JSONLexerBase/matchStat I
iconst_0
ireturn
L12:
aload 0
iconst_m1
putfield com/alibaba/fastjson/parser/JSONLexerBase/matchStat I
iconst_0
ireturn
.limit locals 6
.limit stack 4
.end method

.method public final scanFieldDouble(C)D
aload 0
iconst_0
putfield com/alibaba/fastjson/parser/JSONLexerBase/matchStat I
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
iconst_0
iadd
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/charAt(I)C
istore 4
iload 4
bipush 48
if_icmplt L0
iload 4
bipush 57
if_icmpgt L0
iconst_0
iconst_1
iadd
istore 4
L1:
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
istore 5
iload 4
iconst_1
iadd
istore 6
aload 0
iload 5
iload 4
iadd
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/charAt(I)C
istore 7
iload 7
bipush 48
if_icmplt L2
iload 7
bipush 57
if_icmpgt L2
iload 6
istore 4
goto L1
L2:
iload 7
istore 5
iload 6
istore 4
iload 7
bipush 46
if_icmpne L3
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
istore 5
iload 6
iconst_1
iadd
istore 4
aload 0
iload 5
iload 6
iadd
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/charAt(I)C
istore 5
iload 5
bipush 48
if_icmplt L4
iload 5
bipush 57
if_icmpgt L4
L5:
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
istore 5
iload 4
iconst_1
iadd
istore 6
aload 0
iload 5
iload 4
iadd
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/charAt(I)C
istore 7
iload 7
istore 5
iload 6
istore 4
iload 7
bipush 48
if_icmplt L3
iload 7
istore 5
iload 6
istore 4
iload 7
bipush 57
if_icmpgt L3
iload 6
istore 4
goto L5
L4:
aload 0
iconst_m1
putfield com/alibaba/fastjson/parser/JSONLexerBase/matchStat I
dconst_0
dreturn
L3:
iload 5
bipush 101
if_icmpeq L6
iload 5
istore 6
iload 4
istore 7
iload 5
bipush 69
if_icmpne L7
L6:
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
istore 6
iload 4
iconst_1
iadd
istore 5
aload 0
iload 6
iload 4
iadd
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/charAt(I)C
istore 4
iload 4
bipush 43
if_icmpeq L8
iload 4
bipush 45
if_icmpne L9
L8:
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
istore 6
iload 5
iconst_1
iadd
istore 4
aload 0
iload 6
iload 5
iadd
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/charAt(I)C
istore 6
iload 4
istore 5
iload 6
istore 4
L10:
iload 4
istore 6
iload 5
istore 7
iload 4
bipush 48
if_icmplt L7
iload 4
istore 6
iload 5
istore 7
iload 4
bipush 57
if_icmpgt L7
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
iload 5
iadd
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/charAt(I)C
istore 4
iload 5
iconst_1
iadd
istore 5
goto L10
L7:
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
istore 4
aload 0
iload 4
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
iload 7
iadd
iload 4
isub
iconst_1
isub
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/subString(II)Ljava/lang/String;
invokestatic java/lang/Double/parseDouble(Ljava/lang/String;)D
dstore 2
iload 6
iload 1
if_icmpne L11
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
iload 7
iconst_1
isub
iadd
putfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/next()C
pop
aload 0
iconst_3
putfield com/alibaba/fastjson/parser/JSONLexerBase/matchStat I
aload 0
bipush 16
putfield com/alibaba/fastjson/parser/JSONLexerBase/token I
dload 2
dreturn
L0:
aload 0
iconst_m1
putfield com/alibaba/fastjson/parser/JSONLexerBase/matchStat I
dconst_0
dreturn
L11:
aload 0
iconst_m1
putfield com/alibaba/fastjson/parser/JSONLexerBase/matchStat I
dload 2
dreturn
L9:
goto L10
.limit locals 8
.limit stack 4
.end method

.method public final scanFieldDouble([C)D
aload 0
iconst_0
putfield com/alibaba/fastjson/parser/JSONLexerBase/matchStat I
aload 0
aload 1
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/charArrayCompare([C)Z
ifne L0
aload 0
bipush -2
putfield com/alibaba/fastjson/parser/JSONLexerBase/matchStat I
dconst_0
dreturn
L0:
aload 1
arraylength
istore 4
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
iload 4
iadd
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/charAt(I)C
istore 5
iload 5
bipush 48
if_icmplt L1
iload 5
bipush 57
if_icmpgt L1
iload 4
iconst_1
iadd
istore 4
L2:
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
istore 5
iload 4
iconst_1
iadd
istore 6
aload 0
iload 5
iload 4
iadd
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/charAt(I)C
istore 7
iload 7
bipush 48
if_icmplt L3
iload 7
bipush 57
if_icmpgt L3
iload 6
istore 4
goto L2
L3:
iload 7
istore 5
iload 6
istore 4
iload 7
bipush 46
if_icmpne L4
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
istore 5
iload 6
iconst_1
iadd
istore 4
aload 0
iload 5
iload 6
iadd
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/charAt(I)C
istore 5
iload 5
bipush 48
if_icmplt L5
iload 5
bipush 57
if_icmpgt L5
L6:
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
istore 5
iload 4
iconst_1
iadd
istore 6
aload 0
iload 5
iload 4
iadd
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/charAt(I)C
istore 7
iload 7
istore 5
iload 6
istore 4
iload 7
bipush 48
if_icmplt L4
iload 7
istore 5
iload 6
istore 4
iload 7
bipush 57
if_icmpgt L4
iload 6
istore 4
goto L6
L5:
aload 0
iconst_m1
putfield com/alibaba/fastjson/parser/JSONLexerBase/matchStat I
dconst_0
dreturn
L4:
iload 5
bipush 101
if_icmpeq L7
iload 5
istore 7
iload 4
istore 6
iload 5
bipush 69
if_icmpne L8
L7:
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
istore 6
iload 4
iconst_1
iadd
istore 5
aload 0
iload 6
iload 4
iadd
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/charAt(I)C
istore 4
iload 4
bipush 43
if_icmpeq L9
iload 4
bipush 45
if_icmpne L10
L9:
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
istore 6
iload 5
iconst_1
iadd
istore 4
aload 0
iload 6
iload 5
iadd
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/charAt(I)C
istore 6
iload 4
istore 5
iload 6
istore 4
L11:
iload 4
istore 7
iload 5
istore 6
iload 4
bipush 48
if_icmplt L8
iload 4
istore 7
iload 5
istore 6
iload 4
bipush 57
if_icmpgt L8
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
iload 5
iadd
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/charAt(I)C
istore 4
iload 5
iconst_1
iadd
istore 5
goto L11
L8:
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
aload 1
arraylength
iadd
istore 4
aload 0
iload 4
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
iload 6
iadd
iload 4
isub
iconst_1
isub
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/subString(II)Ljava/lang/String;
invokestatic java/lang/Double/parseDouble(Ljava/lang/String;)D
dstore 2
iload 7
bipush 44
if_icmpne L12
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
iload 6
iconst_1
isub
iadd
putfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/next()C
pop
aload 0
iconst_3
putfield com/alibaba/fastjson/parser/JSONLexerBase/matchStat I
aload 0
bipush 16
putfield com/alibaba/fastjson/parser/JSONLexerBase/token I
dload 2
dreturn
L1:
aload 0
iconst_m1
putfield com/alibaba/fastjson/parser/JSONLexerBase/matchStat I
dconst_0
dreturn
L12:
iload 7
bipush 125
if_icmpne L13
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
istore 5
iload 6
iconst_1
iadd
istore 4
aload 0
iload 5
iload 6
iadd
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/charAt(I)C
istore 5
iload 5
bipush 44
if_icmpne L14
aload 0
bipush 16
putfield com/alibaba/fastjson/parser/JSONLexerBase/token I
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
iload 4
iconst_1
isub
iadd
putfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/next()C
pop
L15:
aload 0
iconst_4
putfield com/alibaba/fastjson/parser/JSONLexerBase/matchStat I
dload 2
dreturn
L14:
iload 5
bipush 93
if_icmpne L16
aload 0
bipush 15
putfield com/alibaba/fastjson/parser/JSONLexerBase/token I
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
iload 4
iconst_1
isub
iadd
putfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/next()C
pop
goto L15
L16:
iload 5
bipush 125
if_icmpne L17
aload 0
bipush 13
putfield com/alibaba/fastjson/parser/JSONLexerBase/token I
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
iload 4
iconst_1
isub
iadd
putfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/next()C
pop
goto L15
L17:
iload 5
bipush 26
if_icmpne L18
aload 0
bipush 20
putfield com/alibaba/fastjson/parser/JSONLexerBase/token I
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
iload 4
iconst_1
isub
iadd
putfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
aload 0
bipush 26
putfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
goto L15
L18:
aload 0
iconst_m1
putfield com/alibaba/fastjson/parser/JSONLexerBase/matchStat I
dconst_0
dreturn
L13:
aload 0
iconst_m1
putfield com/alibaba/fastjson/parser/JSONLexerBase/matchStat I
dconst_0
dreturn
L10:
goto L11
.limit locals 8
.limit stack 4
.end method

.method public final scanFieldFloat([C)F
aload 0
iconst_0
putfield com/alibaba/fastjson/parser/JSONLexerBase/matchStat I
aload 0
aload 1
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/charArrayCompare([C)Z
ifne L0
aload 0
bipush -2
putfield com/alibaba/fastjson/parser/JSONLexerBase/matchStat I
fconst_0
freturn
L0:
aload 1
arraylength
istore 3
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
iload 3
iadd
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/charAt(I)C
istore 4
iload 4
bipush 48
if_icmplt L1
iload 4
bipush 57
if_icmpgt L1
iload 3
iconst_1
iadd
istore 3
L2:
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
istore 5
iload 3
iconst_1
iadd
istore 4
aload 0
iload 5
iload 3
iadd
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/charAt(I)C
istore 6
iload 6
bipush 48
if_icmplt L3
iload 6
bipush 57
if_icmpgt L3
iload 4
istore 3
goto L2
L3:
iload 6
istore 5
iload 4
istore 3
iload 6
bipush 46
if_icmpne L4
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
istore 5
iload 4
iconst_1
iadd
istore 3
aload 0
iload 5
iload 4
iadd
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/charAt(I)C
istore 4
iload 4
bipush 48
if_icmplt L5
iload 4
bipush 57
if_icmpgt L5
L6:
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
istore 5
iload 3
iconst_1
iadd
istore 4
aload 0
iload 5
iload 3
iadd
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/charAt(I)C
istore 6
iload 6
istore 5
iload 4
istore 3
iload 6
bipush 48
if_icmplt L4
iload 6
istore 5
iload 4
istore 3
iload 6
bipush 57
if_icmpgt L4
iload 4
istore 3
goto L6
L5:
aload 0
iconst_m1
putfield com/alibaba/fastjson/parser/JSONLexerBase/matchStat I
fconst_0
freturn
L4:
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
aload 1
arraylength
iadd
istore 4
aload 0
iload 4
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
iload 3
iadd
iload 4
isub
iconst_1
isub
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/subString(II)Ljava/lang/String;
invokestatic java/lang/Float/parseFloat(Ljava/lang/String;)F
fstore 2
iload 5
bipush 44
if_icmpne L7
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
iload 3
iconst_1
isub
iadd
putfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/next()C
pop
aload 0
iconst_3
putfield com/alibaba/fastjson/parser/JSONLexerBase/matchStat I
aload 0
bipush 16
putfield com/alibaba/fastjson/parser/JSONLexerBase/token I
fload 2
freturn
L1:
aload 0
iconst_m1
putfield com/alibaba/fastjson/parser/JSONLexerBase/matchStat I
fconst_0
freturn
L7:
iload 5
bipush 125
if_icmpne L8
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
istore 5
iload 3
iconst_1
iadd
istore 4
aload 0
iload 5
iload 3
iadd
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/charAt(I)C
istore 3
iload 3
bipush 44
if_icmpne L9
aload 0
bipush 16
putfield com/alibaba/fastjson/parser/JSONLexerBase/token I
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
iload 4
iconst_1
isub
iadd
putfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/next()C
pop
L10:
aload 0
iconst_4
putfield com/alibaba/fastjson/parser/JSONLexerBase/matchStat I
fload 2
freturn
L9:
iload 3
bipush 93
if_icmpne L11
aload 0
bipush 15
putfield com/alibaba/fastjson/parser/JSONLexerBase/token I
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
iload 4
iconst_1
isub
iadd
putfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/next()C
pop
goto L10
L11:
iload 3
bipush 125
if_icmpne L12
aload 0
bipush 13
putfield com/alibaba/fastjson/parser/JSONLexerBase/token I
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
iload 4
iconst_1
isub
iadd
putfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/next()C
pop
goto L10
L12:
iload 3
bipush 26
if_icmpne L13
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
iload 4
iconst_1
isub
iadd
putfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
aload 0
bipush 20
putfield com/alibaba/fastjson/parser/JSONLexerBase/token I
aload 0
bipush 26
putfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
goto L10
L13:
aload 0
iconst_m1
putfield com/alibaba/fastjson/parser/JSONLexerBase/matchStat I
fconst_0
freturn
L8:
aload 0
iconst_m1
putfield com/alibaba/fastjson/parser/JSONLexerBase/matchStat I
fconst_0
freturn
.limit locals 7
.limit stack 4
.end method

.method public scanFieldInt([C)I
aload 0
iconst_0
putfield com/alibaba/fastjson/parser/JSONLexerBase/matchStat I
aload 0
aload 1
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/charArrayCompare([C)Z
ifne L0
aload 0
bipush -2
putfield com/alibaba/fastjson/parser/JSONLexerBase/matchStat I
iconst_0
ireturn
L0:
aload 1
arraylength
istore 3
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
iload 3
iadd
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/charAt(I)C
istore 2
iload 2
bipush 48
if_icmplt L1
iload 2
bipush 57
if_icmpgt L1
getstatic com/alibaba/fastjson/parser/JSONLexerBase/digits [I
iload 2
iaload
istore 2
iload 3
iconst_1
iadd
istore 3
L2:
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
istore 5
iload 3
iconst_1
iadd
istore 4
aload 0
iload 5
iload 3
iadd
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/charAt(I)C
istore 3
iload 3
bipush 48
if_icmplt L3
iload 3
bipush 57
if_icmpgt L3
iload 2
bipush 10
imul
getstatic com/alibaba/fastjson/parser/JSONLexerBase/digits [I
iload 3
iaload
iadd
istore 2
iload 4
istore 3
goto L2
L3:
iload 3
bipush 46
if_icmpne L4
aload 0
iconst_m1
putfield com/alibaba/fastjson/parser/JSONLexerBase/matchStat I
iconst_0
ireturn
L4:
iload 2
ifge L5
aload 0
iconst_m1
putfield com/alibaba/fastjson/parser/JSONLexerBase/matchStat I
iconst_0
ireturn
L1:
aload 0
iconst_m1
putfield com/alibaba/fastjson/parser/JSONLexerBase/matchStat I
iconst_0
ireturn
L5:
iload 3
bipush 44
if_icmpne L6
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
iload 4
iconst_1
isub
iadd
putfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/next()C
pop
aload 0
iconst_3
putfield com/alibaba/fastjson/parser/JSONLexerBase/matchStat I
aload 0
bipush 16
putfield com/alibaba/fastjson/parser/JSONLexerBase/token I
iload 2
ireturn
L6:
iload 3
bipush 125
if_icmpne L7
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
istore 5
iload 4
iconst_1
iadd
istore 3
aload 0
iload 5
iload 4
iadd
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/charAt(I)C
istore 4
iload 4
bipush 44
if_icmpne L8
aload 0
bipush 16
putfield com/alibaba/fastjson/parser/JSONLexerBase/token I
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
iload 3
iconst_1
isub
iadd
putfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/next()C
pop
L9:
aload 0
iconst_4
putfield com/alibaba/fastjson/parser/JSONLexerBase/matchStat I
iload 2
ireturn
L8:
iload 4
bipush 93
if_icmpne L10
aload 0
bipush 15
putfield com/alibaba/fastjson/parser/JSONLexerBase/token I
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
iload 3
iconst_1
isub
iadd
putfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/next()C
pop
goto L9
L10:
iload 4
bipush 125
if_icmpne L11
aload 0
bipush 13
putfield com/alibaba/fastjson/parser/JSONLexerBase/token I
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
iload 3
iconst_1
isub
iadd
putfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/next()C
pop
goto L9
L11:
iload 4
bipush 26
if_icmpne L12
aload 0
bipush 20
putfield com/alibaba/fastjson/parser/JSONLexerBase/token I
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
iload 3
iconst_1
isub
iadd
putfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
aload 0
bipush 26
putfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
goto L9
L12:
aload 0
iconst_m1
putfield com/alibaba/fastjson/parser/JSONLexerBase/matchStat I
iconst_0
ireturn
L7:
aload 0
iconst_m1
putfield com/alibaba/fastjson/parser/JSONLexerBase/matchStat I
iconst_0
ireturn
.limit locals 6
.limit stack 4
.end method

.method public scanFieldLong([C)J
aload 0
iconst_0
putfield com/alibaba/fastjson/parser/JSONLexerBase/matchStat I
aload 0
aload 1
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/charArrayCompare([C)Z
ifne L0
aload 0
bipush -2
putfield com/alibaba/fastjson/parser/JSONLexerBase/matchStat I
lconst_0
lreturn
L0:
aload 1
arraylength
istore 2
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
iload 2
iadd
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/charAt(I)C
istore 3
iload 3
bipush 48
if_icmplt L1
iload 3
bipush 57
if_icmpgt L1
getstatic com/alibaba/fastjson/parser/JSONLexerBase/digits [I
iload 3
iaload
i2l
lstore 5
iload 2
iconst_1
iadd
istore 2
L2:
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
istore 4
iload 2
iconst_1
iadd
istore 3
aload 0
iload 4
iload 2
iadd
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/charAt(I)C
istore 2
iload 2
bipush 48
if_icmplt L3
iload 2
bipush 57
if_icmpgt L3
ldc2_w 10L
lload 5
lmul
getstatic com/alibaba/fastjson/parser/JSONLexerBase/digits [I
iload 2
iaload
i2l
ladd
lstore 5
iload 3
istore 2
goto L2
L3:
iload 2
bipush 46
if_icmpne L4
aload 0
iconst_m1
putfield com/alibaba/fastjson/parser/JSONLexerBase/matchStat I
lconst_0
lreturn
L4:
lload 5
lconst_0
lcmp
ifge L5
aload 0
iconst_m1
putfield com/alibaba/fastjson/parser/JSONLexerBase/matchStat I
lconst_0
lreturn
L1:
aload 0
iconst_m1
putfield com/alibaba/fastjson/parser/JSONLexerBase/matchStat I
lconst_0
lreturn
L5:
iload 2
bipush 44
if_icmpne L6
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
iload 3
iconst_1
isub
iadd
putfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/next()C
pop
aload 0
iconst_3
putfield com/alibaba/fastjson/parser/JSONLexerBase/matchStat I
aload 0
bipush 16
putfield com/alibaba/fastjson/parser/JSONLexerBase/token I
lload 5
lreturn
L6:
iload 2
bipush 125
if_icmpne L7
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
istore 4
iload 3
iconst_1
iadd
istore 2
aload 0
iload 4
iload 3
iadd
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/charAt(I)C
istore 3
iload 3
bipush 44
if_icmpne L8
aload 0
bipush 16
putfield com/alibaba/fastjson/parser/JSONLexerBase/token I
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
iload 2
iconst_1
isub
iadd
putfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/next()C
pop
L9:
aload 0
iconst_4
putfield com/alibaba/fastjson/parser/JSONLexerBase/matchStat I
lload 5
lreturn
L8:
iload 3
bipush 93
if_icmpne L10
aload 0
bipush 15
putfield com/alibaba/fastjson/parser/JSONLexerBase/token I
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
iload 2
iconst_1
isub
iadd
putfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/next()C
pop
goto L9
L10:
iload 3
bipush 125
if_icmpne L11
aload 0
bipush 13
putfield com/alibaba/fastjson/parser/JSONLexerBase/token I
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
iload 2
iconst_1
isub
iadd
putfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/next()C
pop
goto L9
L11:
iload 3
bipush 26
if_icmpne L12
aload 0
bipush 20
putfield com/alibaba/fastjson/parser/JSONLexerBase/token I
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
iload 2
iconst_1
isub
iadd
putfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
aload 0
bipush 26
putfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
goto L9
L12:
aload 0
iconst_m1
putfield com/alibaba/fastjson/parser/JSONLexerBase/matchStat I
lconst_0
lreturn
L7:
aload 0
iconst_m1
putfield com/alibaba/fastjson/parser/JSONLexerBase/matchStat I
lconst_0
lreturn
.limit locals 7
.limit stack 4
.end method

.method public scanFieldString([C)Ljava/lang/String;
aload 0
iconst_0
putfield com/alibaba/fastjson/parser/JSONLexerBase/matchStat I
aload 0
aload 1
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/charArrayCompare([C)Z
ifne L0
aload 0
bipush -2
putfield com/alibaba/fastjson/parser/JSONLexerBase/matchStat I
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/stringDefaultValue()Ljava/lang/String;
areturn
L0:
aload 1
arraylength
istore 5
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
iload 5
iadd
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/charAt(I)C
bipush 34
if_icmpeq L1
aload 0
iconst_m1
putfield com/alibaba/fastjson/parser/JSONLexerBase/matchStat I
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/stringDefaultValue()Ljava/lang/String;
areturn
L1:
iconst_0
istore 4
aload 0
bipush 34
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
aload 1
arraylength
iadd
iconst_1
iadd
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/indexOf(CI)I
istore 6
iload 6
iconst_m1
if_icmpne L2
new com/alibaba/fastjson/JSONException
dup
ldc "unclosed str"
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
L2:
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
aload 1
arraylength
iadd
iconst_1
iadd
istore 2
aload 0
iload 2
iload 6
iload 2
isub
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/subString(II)Ljava/lang/String;
astore 7
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
aload 1
arraylength
iadd
iconst_1
iadd
istore 2
L3:
iload 4
istore 3
iload 2
iload 6
if_icmpge L4
aload 0
iload 2
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/charAt(I)C
bipush 92
if_icmpne L5
iconst_1
istore 3
L4:
iload 3
ifeq L6
aload 0
iconst_m1
putfield com/alibaba/fastjson/parser/JSONLexerBase/matchStat I
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/stringDefaultValue()Ljava/lang/String;
areturn
L5:
iload 2
iconst_1
iadd
istore 2
goto L3
L6:
iload 5
iconst_1
iadd
iload 6
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
aload 1
arraylength
iadd
iconst_1
iadd
isub
iconst_1
iadd
iadd
istore 3
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
istore 4
iload 3
iconst_1
iadd
istore 2
aload 0
iload 4
iload 3
iadd
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/charAt(I)C
istore 3
iload 3
bipush 44
if_icmpne L7
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
iload 2
iconst_1
isub
iadd
putfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/next()C
pop
aload 0
iconst_3
putfield com/alibaba/fastjson/parser/JSONLexerBase/matchStat I
aload 7
areturn
L7:
iload 3
bipush 125
if_icmpne L8
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
istore 4
iload 2
iconst_1
iadd
istore 3
aload 0
iload 4
iload 2
iadd
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/charAt(I)C
istore 2
iload 2
bipush 44
if_icmpne L9
aload 0
bipush 16
putfield com/alibaba/fastjson/parser/JSONLexerBase/token I
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
iload 3
iconst_1
isub
iadd
putfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/next()C
pop
L10:
aload 0
iconst_4
putfield com/alibaba/fastjson/parser/JSONLexerBase/matchStat I
aload 7
areturn
L9:
iload 2
bipush 93
if_icmpne L11
aload 0
bipush 15
putfield com/alibaba/fastjson/parser/JSONLexerBase/token I
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
iload 3
iconst_1
isub
iadd
putfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/next()C
pop
goto L10
L11:
iload 2
bipush 125
if_icmpne L12
aload 0
bipush 13
putfield com/alibaba/fastjson/parser/JSONLexerBase/token I
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
iload 3
iconst_1
isub
iadd
putfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/next()C
pop
goto L10
L12:
iload 2
bipush 26
if_icmpne L13
aload 0
bipush 20
putfield com/alibaba/fastjson/parser/JSONLexerBase/token I
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
iload 3
iconst_1
isub
iadd
putfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
aload 0
bipush 26
putfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
goto L10
L13:
aload 0
iconst_m1
putfield com/alibaba/fastjson/parser/JSONLexerBase/matchStat I
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/stringDefaultValue()Ljava/lang/String;
areturn
L8:
aload 0
iconst_m1
putfield com/alibaba/fastjson/parser/JSONLexerBase/matchStat I
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/stringDefaultValue()Ljava/lang/String;
areturn
.limit locals 8
.limit stack 4
.end method

.method public scanFieldStringArray([CLjava/lang/Class;)Ljava/util/Collection;
.signature "([CLjava/lang/Class<*>;)Ljava/util/Collection<Ljava/lang/String;>;"
.catch java/lang/Exception from L0 to L1 using L2
aload 0
iconst_0
putfield com/alibaba/fastjson/parser/JSONLexerBase/matchStat I
aload 0
aload 1
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/charArrayCompare([C)Z
ifne L3
aload 0
bipush -2
putfield com/alibaba/fastjson/parser/JSONLexerBase/matchStat I
aconst_null
areturn
L3:
aload 2
ldc java/util/HashSet
invokevirtual java/lang/Class/isAssignableFrom(Ljava/lang/Class;)Z
ifeq L4
new java/util/HashSet
dup
invokespecial java/util/HashSet/<init>()V
astore 2
L5:
aload 1
arraylength
istore 3
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
istore 5
iload 3
iconst_1
iadd
istore 4
aload 0
iload 5
iload 3
iadd
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/charAt(I)C
bipush 91
if_icmpeq L6
aload 0
iconst_m1
putfield com/alibaba/fastjson/parser/JSONLexerBase/matchStat I
aconst_null
areturn
L4:
aload 2
ldc java/util/ArrayList
invokevirtual java/lang/Class/isAssignableFrom(Ljava/lang/Class;)Z
ifeq L0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 2
goto L5
L0:
aload 2
invokevirtual java/lang/Class/newInstance()Ljava/lang/Object;
checkcast java/util/Collection
astore 2
L1:
goto L5
L2:
astore 1
new com/alibaba/fastjson/JSONException
dup
aload 1
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
aload 1
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;Ljava/lang/Throwable;)V
athrow
L6:
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
istore 5
iload 4
iconst_1
iadd
istore 3
aload 0
iload 5
iload 4
iadd
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/charAt(I)C
istore 4
L7:
iload 4
bipush 34
if_icmpeq L8
aload 0
iconst_m1
putfield com/alibaba/fastjson/parser/JSONLexerBase/matchStat I
aconst_null
areturn
L8:
iload 3
istore 4
L9:
iload 4
istore 5
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
istore 6
iload 5
iconst_1
iadd
istore 4
aload 0
iload 6
iload 5
iadd
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/charAt(I)C
istore 5
iload 5
bipush 34
if_icmpne L10
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
iload 3
iadd
istore 3
aload 2
aload 0
iload 3
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
iload 4
iadd
iload 3
isub
iconst_1
isub
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/subString(II)Ljava/lang/String;
invokeinterface java/util/Collection/add(Ljava/lang/Object;)Z 1
pop
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
istore 5
iload 4
iconst_1
iadd
istore 3
aload 0
iload 5
iload 4
iadd
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/charAt(I)C
istore 4
iload 4
bipush 44
if_icmpne L11
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
iload 3
iadd
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/charAt(I)C
istore 4
iload 3
iconst_1
iadd
istore 3
goto L7
L10:
iload 5
bipush 92
if_icmpne L12
aload 0
iconst_m1
putfield com/alibaba/fastjson/parser/JSONLexerBase/matchStat I
aconst_null
areturn
L11:
iload 4
bipush 93
if_icmpne L13
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
istore 5
iload 3
iconst_1
iadd
istore 4
aload 0
iload 5
iload 3
iadd
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/charAt(I)C
istore 3
iload 3
bipush 44
if_icmpne L14
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
iload 4
iconst_1
isub
iadd
putfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/next()C
pop
aload 0
iconst_3
putfield com/alibaba/fastjson/parser/JSONLexerBase/matchStat I
aload 2
areturn
L13:
aload 0
iconst_m1
putfield com/alibaba/fastjson/parser/JSONLexerBase/matchStat I
aconst_null
areturn
L14:
iload 3
bipush 125
if_icmpne L15
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
istore 5
iload 4
iconst_1
iadd
istore 3
aload 0
iload 5
iload 4
iadd
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/charAt(I)C
istore 4
iload 4
bipush 44
if_icmpne L16
aload 0
bipush 16
putfield com/alibaba/fastjson/parser/JSONLexerBase/token I
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
iload 3
iconst_1
isub
iadd
putfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/next()C
pop
L17:
aload 0
iconst_4
putfield com/alibaba/fastjson/parser/JSONLexerBase/matchStat I
aload 2
areturn
L16:
iload 4
bipush 93
if_icmpne L18
aload 0
bipush 15
putfield com/alibaba/fastjson/parser/JSONLexerBase/token I
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
iload 3
iconst_1
isub
iadd
putfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/next()C
pop
goto L17
L18:
iload 4
bipush 125
if_icmpne L19
aload 0
bipush 13
putfield com/alibaba/fastjson/parser/JSONLexerBase/token I
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
iload 3
iconst_1
isub
iadd
putfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/next()C
pop
goto L17
L19:
iload 4
bipush 26
if_icmpne L20
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
iload 3
iconst_1
isub
iadd
putfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
aload 0
bipush 20
putfield com/alibaba/fastjson/parser/JSONLexerBase/token I
aload 0
bipush 26
putfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
goto L17
L20:
aload 0
iconst_m1
putfield com/alibaba/fastjson/parser/JSONLexerBase/matchStat I
aconst_null
areturn
L15:
aload 0
iconst_m1
putfield com/alibaba/fastjson/parser/JSONLexerBase/matchStat I
aconst_null
areturn
L12:
goto L9
.limit locals 7
.limit stack 5
.end method

.method public scanFieldSymbol([CLcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;
aload 0
iconst_0
putfield com/alibaba/fastjson/parser/JSONLexerBase/matchStat I
aload 0
aload 1
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/charArrayCompare([C)Z
ifne L0
aload 0
bipush -2
putfield com/alibaba/fastjson/parser/JSONLexerBase/matchStat I
aconst_null
areturn
L0:
aload 1
arraylength
istore 4
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
iload 4
iadd
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/charAt(I)C
bipush 34
if_icmpeq L1
aload 0
iconst_m1
putfield com/alibaba/fastjson/parser/JSONLexerBase/matchStat I
aconst_null
areturn
L1:
iconst_0
istore 3
iload 4
iconst_1
iadd
istore 4
L2:
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
istore 6
iload 4
iconst_1
iadd
istore 5
aload 0
iload 6
iload 4
iadd
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/charAt(I)C
istore 4
iload 4
bipush 34
if_icmpne L3
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
aload 1
arraylength
iadd
iconst_1
iadd
istore 4
aload 0
iload 4
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
iload 5
iadd
iload 4
isub
iconst_1
isub
iload 3
aload 2
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/addSymbol(IIILcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;
astore 1
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
istore 4
iload 5
iconst_1
iadd
istore 3
aload 0
iload 4
iload 5
iadd
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/charAt(I)C
istore 4
iload 4
bipush 44
if_icmpne L4
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
iload 3
iconst_1
isub
iadd
putfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/next()C
pop
aload 0
iconst_3
putfield com/alibaba/fastjson/parser/JSONLexerBase/matchStat I
aload 1
areturn
L3:
iload 3
bipush 31
imul
iload 4
iadd
istore 3
iload 4
bipush 92
if_icmpne L5
aload 0
iconst_m1
putfield com/alibaba/fastjson/parser/JSONLexerBase/matchStat I
aconst_null
areturn
L4:
iload 4
bipush 125
if_icmpne L6
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
istore 5
iload 3
iconst_1
iadd
istore 4
aload 0
iload 5
iload 3
iadd
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/charAt(I)C
istore 3
iload 3
bipush 44
if_icmpne L7
aload 0
bipush 16
putfield com/alibaba/fastjson/parser/JSONLexerBase/token I
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
iload 4
iconst_1
isub
iadd
putfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/next()C
pop
L8:
aload 0
iconst_4
putfield com/alibaba/fastjson/parser/JSONLexerBase/matchStat I
aload 1
areturn
L7:
iload 3
bipush 93
if_icmpne L9
aload 0
bipush 15
putfield com/alibaba/fastjson/parser/JSONLexerBase/token I
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
iload 4
iconst_1
isub
iadd
putfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/next()C
pop
goto L8
L9:
iload 3
bipush 125
if_icmpne L10
aload 0
bipush 13
putfield com/alibaba/fastjson/parser/JSONLexerBase/token I
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
iload 4
iconst_1
isub
iadd
putfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/next()C
pop
goto L8
L10:
iload 3
bipush 26
if_icmpne L11
aload 0
bipush 20
putfield com/alibaba/fastjson/parser/JSONLexerBase/token I
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
iload 4
iconst_1
isub
iadd
putfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
aload 0
bipush 26
putfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
goto L8
L11:
aload 0
iconst_m1
putfield com/alibaba/fastjson/parser/JSONLexerBase/matchStat I
aconst_null
areturn
L6:
aload 0
iconst_m1
putfield com/alibaba/fastjson/parser/JSONLexerBase/matchStat I
aconst_null
areturn
L5:
iload 5
istore 4
goto L2
.limit locals 7
.limit stack 5
.end method

.method public final scanFloat(C)F
aload 0
iconst_0
putfield com/alibaba/fastjson/parser/JSONLexerBase/matchStat I
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
iconst_0
iadd
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/charAt(I)C
istore 3
iload 3
bipush 48
if_icmplt L0
iload 3
bipush 57
if_icmpgt L0
iconst_0
iconst_1
iadd
istore 4
L1:
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
istore 5
iload 4
iconst_1
iadd
istore 3
aload 0
iload 5
iload 4
iadd
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/charAt(I)C
istore 6
iload 6
bipush 48
if_icmplt L2
iload 6
bipush 57
if_icmpgt L2
iload 3
istore 4
goto L1
L2:
iload 6
istore 4
iload 3
istore 5
iload 6
bipush 46
if_icmpne L3
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
istore 5
iload 3
iconst_1
iadd
istore 4
aload 0
iload 5
iload 3
iadd
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/charAt(I)C
istore 3
iload 3
bipush 48
if_icmplt L4
iload 3
bipush 57
if_icmpgt L4
L5:
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
istore 5
iload 4
iconst_1
iadd
istore 3
aload 0
iload 5
iload 4
iadd
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/charAt(I)C
istore 6
iload 6
istore 4
iload 3
istore 5
iload 6
bipush 48
if_icmplt L3
iload 6
istore 4
iload 3
istore 5
iload 6
bipush 57
if_icmpgt L3
iload 3
istore 4
goto L5
L4:
aload 0
iconst_m1
putfield com/alibaba/fastjson/parser/JSONLexerBase/matchStat I
fconst_0
freturn
L3:
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
istore 3
aload 0
iload 3
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
iload 5
iadd
iload 3
isub
iconst_1
isub
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/subString(II)Ljava/lang/String;
invokestatic java/lang/Float/parseFloat(Ljava/lang/String;)F
fstore 2
iload 4
iload 1
if_icmpne L6
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
iload 5
iconst_1
isub
iadd
putfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/next()C
pop
aload 0
iconst_3
putfield com/alibaba/fastjson/parser/JSONLexerBase/matchStat I
aload 0
bipush 16
putfield com/alibaba/fastjson/parser/JSONLexerBase/token I
fload 2
freturn
L0:
aload 0
iconst_m1
putfield com/alibaba/fastjson/parser/JSONLexerBase/matchStat I
fconst_0
freturn
L6:
aload 0
iconst_m1
putfield com/alibaba/fastjson/parser/JSONLexerBase/matchStat I
fload 2
freturn
.limit locals 7
.limit stack 4
.end method

.method public final scanIdent()V
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
iconst_1
isub
putfield com/alibaba/fastjson/parser/JSONLexerBase/np I
aload 0
iconst_0
putfield com/alibaba/fastjson/parser/JSONLexerBase/hasSpecial Z
L0:
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/sp I
iconst_1
iadd
putfield com/alibaba/fastjson/parser/JSONLexerBase/sp I
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/next()C
pop
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
invokestatic java/lang/Character/isLetterOrDigit(C)Z
ifne L0
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/stringVal()Ljava/lang/String;
astore 1
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/keywods Lcom/alibaba/fastjson/parser/Keywords;
aload 1
invokevirtual com/alibaba/fastjson/parser/Keywords/getKeyword(Ljava/lang/String;)Ljava/lang/Integer;
astore 1
aload 1
ifnull L1
aload 0
aload 1
invokevirtual java/lang/Integer/intValue()I
putfield com/alibaba/fastjson/parser/JSONLexerBase/token I
return
L1:
aload 0
bipush 18
putfield com/alibaba/fastjson/parser/JSONLexerBase/token I
return
.limit locals 2
.limit stack 3
.end method

.method public scanInt(C)I
aload 0
iconst_0
putfield com/alibaba/fastjson/parser/JSONLexerBase/matchStat I
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
iconst_0
iadd
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/charAt(I)C
istore 2
iload 2
bipush 48
if_icmplt L0
iload 2
bipush 57
if_icmpgt L0
getstatic com/alibaba/fastjson/parser/JSONLexerBase/digits [I
iload 2
iaload
istore 2
iconst_0
iconst_1
iadd
istore 3
L1:
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
istore 5
iload 3
iconst_1
iadd
istore 4
aload 0
iload 5
iload 3
iadd
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/charAt(I)C
istore 3
iload 3
bipush 48
if_icmplt L2
iload 3
bipush 57
if_icmpgt L2
iload 2
bipush 10
imul
getstatic com/alibaba/fastjson/parser/JSONLexerBase/digits [I
iload 3
iaload
iadd
istore 2
iload 4
istore 3
goto L1
L2:
iload 3
bipush 46
if_icmpne L3
aload 0
iconst_m1
putfield com/alibaba/fastjson/parser/JSONLexerBase/matchStat I
iconst_0
ireturn
L3:
iload 2
ifge L4
aload 0
iconst_m1
putfield com/alibaba/fastjson/parser/JSONLexerBase/matchStat I
iconst_0
ireturn
L0:
aload 0
iconst_m1
putfield com/alibaba/fastjson/parser/JSONLexerBase/matchStat I
iconst_0
ireturn
L4:
iload 3
iload 1
if_icmpne L5
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
iload 4
iconst_1
isub
iadd
putfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/next()C
pop
aload 0
iconst_3
putfield com/alibaba/fastjson/parser/JSONLexerBase/matchStat I
aload 0
bipush 16
putfield com/alibaba/fastjson/parser/JSONLexerBase/token I
iload 2
ireturn
L5:
aload 0
iconst_m1
putfield com/alibaba/fastjson/parser/JSONLexerBase/matchStat I
iload 2
ireturn
.limit locals 6
.limit stack 4
.end method

.method public scanLong(C)J
aload 0
iconst_0
putfield com/alibaba/fastjson/parser/JSONLexerBase/matchStat I
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
iconst_0
iadd
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/charAt(I)C
istore 2
iload 2
bipush 48
if_icmplt L0
iload 2
bipush 57
if_icmpgt L0
getstatic com/alibaba/fastjson/parser/JSONLexerBase/digits [I
iload 2
iaload
i2l
lstore 5
iconst_0
iconst_1
iadd
istore 2
L1:
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
istore 4
iload 2
iconst_1
iadd
istore 3
aload 0
iload 4
iload 2
iadd
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/charAt(I)C
istore 2
iload 2
bipush 48
if_icmplt L2
iload 2
bipush 57
if_icmpgt L2
ldc2_w 10L
lload 5
lmul
getstatic com/alibaba/fastjson/parser/JSONLexerBase/digits [I
iload 2
iaload
i2l
ladd
lstore 5
iload 3
istore 2
goto L1
L2:
iload 2
bipush 46
if_icmpne L3
aload 0
iconst_m1
putfield com/alibaba/fastjson/parser/JSONLexerBase/matchStat I
lconst_0
lreturn
L3:
lload 5
lconst_0
lcmp
ifge L4
aload 0
iconst_m1
putfield com/alibaba/fastjson/parser/JSONLexerBase/matchStat I
lconst_0
lreturn
L0:
aload 0
iconst_m1
putfield com/alibaba/fastjson/parser/JSONLexerBase/matchStat I
lconst_0
lreturn
L4:
iload 2
iload 1
if_icmpne L5
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
iload 3
iconst_1
isub
iadd
putfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/next()C
pop
aload 0
iconst_3
putfield com/alibaba/fastjson/parser/JSONLexerBase/matchStat I
aload 0
bipush 16
putfield com/alibaba/fastjson/parser/JSONLexerBase/token I
lload 5
lreturn
L5:
aload 0
iconst_m1
putfield com/alibaba/fastjson/parser/JSONLexerBase/matchStat I
lload 5
lreturn
.limit locals 7
.limit stack 4
.end method

.method public final scanNullOrNew()V
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 110
if_icmpeq L0
new com/alibaba/fastjson/JSONException
dup
ldc "error parse null or new"
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/next()C
pop
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 117
if_icmpne L1
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/next()C
pop
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 108
if_icmpeq L2
new com/alibaba/fastjson/JSONException
dup
ldc "error parse true"
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
L2:
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/next()C
pop
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 108
if_icmpeq L3
new com/alibaba/fastjson/JSONException
dup
ldc "error parse true"
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
L3:
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/next()C
pop
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 32
if_icmpeq L4
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 44
if_icmpeq L4
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 125
if_icmpeq L4
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 93
if_icmpeq L4
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 10
if_icmpeq L4
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 13
if_icmpeq L4
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 9
if_icmpeq L4
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 26
if_icmpeq L4
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 12
if_icmpeq L4
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 8
if_icmpne L5
L4:
aload 0
bipush 8
putfield com/alibaba/fastjson/parser/JSONLexerBase/token I
return
L5:
new com/alibaba/fastjson/JSONException
dup
ldc "scan true error"
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
L1:
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 101
if_icmpeq L6
new com/alibaba/fastjson/JSONException
dup
ldc "error parse e"
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
L6:
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/next()C
pop
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 119
if_icmpeq L7
new com/alibaba/fastjson/JSONException
dup
ldc "error parse w"
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
L7:
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/next()C
pop
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 32
if_icmpeq L8
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 44
if_icmpeq L8
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 125
if_icmpeq L8
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 93
if_icmpeq L8
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 10
if_icmpeq L8
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 13
if_icmpeq L8
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 9
if_icmpeq L8
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 26
if_icmpeq L8
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 12
if_icmpeq L8
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 8
if_icmpne L9
L8:
aload 0
bipush 9
putfield com/alibaba/fastjson/parser/JSONLexerBase/token I
return
L9:
new com/alibaba/fastjson/JSONException
dup
ldc "scan true error"
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
.limit locals 1
.limit stack 3
.end method

.method public final scanNumber()V
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
putfield com/alibaba/fastjson/parser/JSONLexerBase/np I
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 45
if_icmpne L0
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/sp I
iconst_1
iadd
putfield com/alibaba/fastjson/parser/JSONLexerBase/sp I
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/next()C
pop
L0:
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 48
if_icmplt L1
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 57
if_icmpgt L1
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/sp I
iconst_1
iadd
putfield com/alibaba/fastjson/parser/JSONLexerBase/sp I
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/next()C
pop
goto L0
L1:
iconst_0
istore 1
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 46
if_icmpne L2
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/sp I
iconst_1
iadd
putfield com/alibaba/fastjson/parser/JSONLexerBase/sp I
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/next()C
pop
iconst_1
istore 2
L3:
iload 2
istore 1
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 48
if_icmplt L2
iload 2
istore 1
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 57
if_icmpgt L2
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/sp I
iconst_1
iadd
putfield com/alibaba/fastjson/parser/JSONLexerBase/sp I
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/next()C
pop
goto L3
L2:
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 76
if_icmpne L4
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/sp I
iconst_1
iadd
putfield com/alibaba/fastjson/parser/JSONLexerBase/sp I
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/next()C
pop
L5:
iload 1
ifeq L6
aload 0
iconst_3
putfield com/alibaba/fastjson/parser/JSONLexerBase/token I
return
L4:
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 83
if_icmpne L7
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/sp I
iconst_1
iadd
putfield com/alibaba/fastjson/parser/JSONLexerBase/sp I
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/next()C
pop
goto L5
L7:
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 66
if_icmpne L8
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/sp I
iconst_1
iadd
putfield com/alibaba/fastjson/parser/JSONLexerBase/sp I
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/next()C
pop
goto L5
L8:
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 70
if_icmpne L9
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/sp I
iconst_1
iadd
putfield com/alibaba/fastjson/parser/JSONLexerBase/sp I
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/next()C
pop
iconst_1
istore 1
goto L5
L9:
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 68
if_icmpne L10
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/sp I
iconst_1
iadd
putfield com/alibaba/fastjson/parser/JSONLexerBase/sp I
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/next()C
pop
iconst_1
istore 1
goto L5
L10:
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 101
if_icmpeq L11
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 69
if_icmpne L5
L11:
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/sp I
iconst_1
iadd
putfield com/alibaba/fastjson/parser/JSONLexerBase/sp I
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/next()C
pop
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 43
if_icmpeq L12
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 45
if_icmpne L13
L12:
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/sp I
iconst_1
iadd
putfield com/alibaba/fastjson/parser/JSONLexerBase/sp I
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/next()C
pop
L13:
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 48
if_icmplt L14
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 57
if_icmpgt L14
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/sp I
iconst_1
iadd
putfield com/alibaba/fastjson/parser/JSONLexerBase/sp I
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/next()C
pop
goto L13
L14:
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 68
if_icmpeq L15
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 70
if_icmpne L16
L15:
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/sp I
iconst_1
iadd
putfield com/alibaba/fastjson/parser/JSONLexerBase/sp I
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/next()C
pop
L16:
iconst_1
istore 1
goto L5
L6:
aload 0
iconst_2
putfield com/alibaba/fastjson/parser/JSONLexerBase/token I
return
.limit locals 3
.limit stack 3
.end method

.method public final scanSet()V
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 83
if_icmpeq L0
new com/alibaba/fastjson/JSONException
dup
ldc "error parse true"
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/next()C
pop
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 101
if_icmpeq L1
new com/alibaba/fastjson/JSONException
dup
ldc "error parse true"
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
L1:
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/next()C
pop
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 116
if_icmpeq L2
new com/alibaba/fastjson/JSONException
dup
ldc "error parse true"
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
L2:
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/next()C
pop
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 32
if_icmpeq L3
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 10
if_icmpeq L3
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 13
if_icmpeq L3
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 9
if_icmpeq L3
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 12
if_icmpeq L3
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 8
if_icmpeq L3
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 91
if_icmpeq L3
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 40
if_icmpne L4
L3:
aload 0
bipush 21
putfield com/alibaba/fastjson/parser/JSONLexerBase/token I
return
L4:
new com/alibaba/fastjson/JSONException
dup
ldc "scan set error"
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
.limit locals 1
.limit stack 3
.end method

.method public scanString(C)Ljava/lang/String;
aload 0
iconst_0
putfield com/alibaba/fastjson/parser/JSONLexerBase/matchStat I
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
iconst_0
iadd
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/charAt(I)C
istore 2
iload 2
bipush 110
if_icmpne L0
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
iconst_1
iadd
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/charAt(I)C
bipush 117
if_icmpne L1
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
iconst_1
iadd
iconst_1
iadd
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/charAt(I)C
bipush 108
if_icmpne L1
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
iconst_1
iadd
iconst_2
iadd
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/charAt(I)C
bipush 108
if_icmpne L1
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
iconst_4
iadd
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/charAt(I)C
iload 1
if_icmpne L2
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
iconst_4
iadd
putfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/next()C
pop
aload 0
iconst_3
putfield com/alibaba/fastjson/parser/JSONLexerBase/matchStat I
aconst_null
areturn
L1:
aload 0
iconst_m1
putfield com/alibaba/fastjson/parser/JSONLexerBase/matchStat I
aconst_null
areturn
L2:
aload 0
iconst_m1
putfield com/alibaba/fastjson/parser/JSONLexerBase/matchStat I
aconst_null
areturn
L0:
iload 2
bipush 34
if_icmpeq L3
aload 0
iconst_m1
putfield com/alibaba/fastjson/parser/JSONLexerBase/matchStat I
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/stringDefaultValue()Ljava/lang/String;
areturn
L3:
iconst_0
istore 4
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
iconst_1
iadd
istore 2
aload 0
bipush 34
iload 2
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/indexOf(CI)I
istore 5
iload 5
iconst_m1
if_icmpne L4
new com/alibaba/fastjson/JSONException
dup
ldc "unclosed str"
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
L4:
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
iconst_1
iadd
iload 5
iload 2
isub
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/subString(II)Ljava/lang/String;
astore 6
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
iconst_1
iadd
istore 2
L5:
iload 4
istore 3
iload 2
iload 5
if_icmpge L6
aload 0
iload 2
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/charAt(I)C
bipush 92
if_icmpne L7
iconst_1
istore 3
L6:
iload 3
ifeq L8
aload 0
iconst_m1
putfield com/alibaba/fastjson/parser/JSONLexerBase/matchStat I
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/stringDefaultValue()Ljava/lang/String;
areturn
L7:
iload 2
iconst_1
iadd
istore 2
goto L5
L8:
iload 5
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
iconst_1
iadd
isub
iconst_1
iadd
iconst_1
iadd
istore 2
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
iload 2
iadd
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/charAt(I)C
iload 1
if_icmpne L9
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
iload 2
iconst_1
iadd
iconst_1
isub
iadd
putfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/next()C
pop
aload 0
iconst_3
putfield com/alibaba/fastjson/parser/JSONLexerBase/matchStat I
aload 6
areturn
L9:
aload 0
iconst_m1
putfield com/alibaba/fastjson/parser/JSONLexerBase/matchStat I
aload 6
areturn
.limit locals 7
.limit stack 4
.end method

.method public final scanString()V
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
putfield com/alibaba/fastjson/parser/JSONLexerBase/np I
aload 0
iconst_0
putfield com/alibaba/fastjson/parser/JSONLexerBase/hasSpecial Z
L0:
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/next()C
istore 1
iload 1
bipush 34
if_icmpne L1
aload 0
iconst_4
putfield com/alibaba/fastjson/parser/JSONLexerBase/token I
aload 0
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/next()C
putfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
return
L1:
iload 1
bipush 26
if_icmpne L2
new com/alibaba/fastjson/JSONException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "unclosed string : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 1
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
L2:
iload 1
bipush 92
if_icmpne L3
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/hasSpecial Z
ifne L4
aload 0
iconst_1
putfield com/alibaba/fastjson/parser/JSONLexerBase/hasSpecial Z
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/sp I
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/sbuf [C
arraylength
if_icmplt L5
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/sbuf [C
arraylength
iconst_2
imul
istore 3
iload 3
istore 2
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/sp I
iload 3
if_icmple L6
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/sp I
istore 2
L6:
iload 2
newarray char
astore 4
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/sbuf [C
iconst_0
aload 4
iconst_0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/sbuf [C
arraylength
invokestatic java/lang/System/arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
aload 0
aload 4
putfield com/alibaba/fastjson/parser/JSONLexerBase/sbuf [C
L5:
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/np I
iconst_1
iadd
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/sp I
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/sbuf [C
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/copyTo(II[C)V
L4:
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/next()C
istore 1
iload 1
lookupswitch
34 : L7
39 : L8
47 : L9
48 : L10
49 : L11
50 : L12
51 : L13
52 : L14
53 : L15
54 : L16
55 : L17
70 : L18
92 : L19
98 : L20
102 : L18
110 : L21
114 : L22
116 : L23
117 : L24
118 : L25
120 : L26
default : L27
L27:
aload 0
iload 1
putfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
new com/alibaba/fastjson/JSONException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "unclosed string : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 1
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
L10:
aload 0
iconst_0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/putChar(C)V
goto L0
L11:
aload 0
iconst_1
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/putChar(C)V
goto L0
L12:
aload 0
iconst_2
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/putChar(C)V
goto L0
L13:
aload 0
iconst_3
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/putChar(C)V
goto L0
L14:
aload 0
iconst_4
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/putChar(C)V
goto L0
L15:
aload 0
iconst_5
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/putChar(C)V
goto L0
L16:
aload 0
bipush 6
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/putChar(C)V
goto L0
L17:
aload 0
bipush 7
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/putChar(C)V
goto L0
L20:
aload 0
bipush 8
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/putChar(C)V
goto L0
L23:
aload 0
bipush 9
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/putChar(C)V
goto L0
L21:
aload 0
bipush 10
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/putChar(C)V
goto L0
L25:
aload 0
bipush 11
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/putChar(C)V
goto L0
L18:
aload 0
bipush 12
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/putChar(C)V
goto L0
L22:
aload 0
bipush 13
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/putChar(C)V
goto L0
L7:
aload 0
bipush 34
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/putChar(C)V
goto L0
L8:
aload 0
bipush 39
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/putChar(C)V
goto L0
L9:
aload 0
bipush 47
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/putChar(C)V
goto L0
L19:
aload 0
bipush 92
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/putChar(C)V
goto L0
L26:
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/next()C
istore 2
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/next()C
istore 3
aload 0
getstatic com/alibaba/fastjson/parser/JSONLexerBase/digits [I
iload 2
iaload
bipush 16
imul
getstatic com/alibaba/fastjson/parser/JSONLexerBase/digits [I
iload 3
iaload
iadd
i2c
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/putChar(C)V
goto L0
L24:
aload 0
new java/lang/String
dup
iconst_4
newarray char
dup
iconst_0
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/next()C
castore
dup
iconst_1
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/next()C
castore
dup
iconst_2
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/next()C
castore
dup
iconst_3
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/next()C
castore
invokespecial java/lang/String/<init>([C)V
bipush 16
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;I)I
i2c
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/putChar(C)V
goto L0
L3:
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/hasSpecial Z
ifne L28
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/sp I
iconst_1
iadd
putfield com/alibaba/fastjson/parser/JSONLexerBase/sp I
goto L0
L28:
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/sp I
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/sbuf [C
arraylength
if_icmpne L29
aload 0
iload 1
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/putChar(C)V
goto L0
L29:
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/sbuf [C
astore 4
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/sp I
istore 2
aload 0
iload 2
iconst_1
iadd
putfield com/alibaba/fastjson/parser/JSONLexerBase/sp I
aload 4
iload 2
iload 1
castore
goto L0
.limit locals 5
.limit stack 7
.end method

.method public scanStringArray(Ljava/lang/Class;C)Ljava/util/Collection;
.signature "(Ljava/lang/Class<*>;C)Ljava/util/Collection<Ljava/lang/String;>;"
.catch java/lang/Exception from L0 to L1 using L2
aload 0
iconst_0
putfield com/alibaba/fastjson/parser/JSONLexerBase/matchStat I
aload 1
ldc java/util/HashSet
invokevirtual java/lang/Class/isAssignableFrom(Ljava/lang/Class;)Z
ifeq L3
new java/util/HashSet
dup
invokespecial java/util/HashSet/<init>()V
astore 1
L4:
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
istore 4
iconst_0
iconst_1
iadd
istore 3
aload 0
iload 4
iconst_0
iadd
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/charAt(I)C
istore 4
iload 4
bipush 110
if_icmpne L5
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
iconst_1
iadd
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/charAt(I)C
bipush 117
if_icmpne L6
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
iconst_1
iadd
iconst_1
iadd
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/charAt(I)C
bipush 108
if_icmpne L6
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
iconst_1
iadd
iconst_2
iadd
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/charAt(I)C
bipush 108
if_icmpne L6
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
iconst_4
iadd
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/charAt(I)C
iload 2
if_icmpne L7
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
iconst_4
iadd
putfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/next()C
pop
aload 0
iconst_3
putfield com/alibaba/fastjson/parser/JSONLexerBase/matchStat I
aconst_null
areturn
L3:
aload 1
ldc java/util/ArrayList
invokevirtual java/lang/Class/isAssignableFrom(Ljava/lang/Class;)Z
ifeq L0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 1
goto L4
L0:
aload 1
invokevirtual java/lang/Class/newInstance()Ljava/lang/Object;
checkcast java/util/Collection
astore 1
L1:
goto L4
L2:
astore 1
new com/alibaba/fastjson/JSONException
dup
aload 1
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
aload 1
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;Ljava/lang/Throwable;)V
athrow
L6:
aload 0
iconst_m1
putfield com/alibaba/fastjson/parser/JSONLexerBase/matchStat I
aconst_null
areturn
L7:
aload 0
iconst_m1
putfield com/alibaba/fastjson/parser/JSONLexerBase/matchStat I
aconst_null
areturn
L5:
iload 4
bipush 91
if_icmpeq L8
aload 0
iconst_m1
putfield com/alibaba/fastjson/parser/JSONLexerBase/matchStat I
aconst_null
areturn
L8:
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
istore 4
iload 3
iconst_1
iadd
istore 3
aload 0
iload 4
iconst_1
iadd
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/charAt(I)C
istore 4
L9:
iload 4
bipush 110
if_icmpne L10
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
iload 3
iadd
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/charAt(I)C
bipush 117
if_icmpne L10
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
iload 3
iadd
iconst_1
iadd
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/charAt(I)C
bipush 108
if_icmpne L10
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
iload 3
iadd
iconst_2
iadd
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/charAt(I)C
bipush 108
if_icmpne L10
iload 3
iconst_3
iadd
istore 4
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
istore 5
iload 4
iconst_1
iadd
istore 3
aload 0
iload 5
iload 4
iadd
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/charAt(I)C
istore 4
L11:
iload 4
bipush 44
if_icmpne L12
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
istore 4
iload 3
iconst_1
iadd
istore 5
aload 0
iload 4
iload 3
iadd
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/charAt(I)C
istore 4
iload 5
istore 3
goto L9
L10:
iload 4
bipush 34
if_icmpeq L13
aload 0
iconst_m1
putfield com/alibaba/fastjson/parser/JSONLexerBase/matchStat I
aconst_null
areturn
L13:
iload 3
istore 4
L14:
iload 4
istore 5
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
istore 6
iload 5
iconst_1
iadd
istore 4
aload 0
iload 6
iload 5
iadd
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/charAt(I)C
istore 5
iload 5
bipush 34
if_icmpne L15
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
iload 3
iadd
istore 3
aload 1
aload 0
iload 3
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
iload 4
iadd
iload 3
isub
iconst_1
isub
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/subString(II)Ljava/lang/String;
invokeinterface java/util/Collection/add(Ljava/lang/Object;)Z 1
pop
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
iload 4
iadd
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/charAt(I)C
istore 3
iload 4
iconst_1
iadd
istore 5
iload 3
istore 4
iload 5
istore 3
goto L11
L15:
iload 5
bipush 92
if_icmpne L16
aload 0
iconst_m1
putfield com/alibaba/fastjson/parser/JSONLexerBase/matchStat I
aconst_null
areturn
L12:
iload 4
bipush 93
if_icmpne L17
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
iload 3
iadd
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/charAt(I)C
iload 2
if_icmpne L18
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
iload 3
iconst_1
iadd
iconst_1
isub
iadd
putfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/next()C
pop
aload 0
iconst_3
putfield com/alibaba/fastjson/parser/JSONLexerBase/matchStat I
aload 1
areturn
L17:
aload 0
iconst_m1
putfield com/alibaba/fastjson/parser/JSONLexerBase/matchStat I
aconst_null
areturn
L18:
aload 0
iconst_m1
putfield com/alibaba/fastjson/parser/JSONLexerBase/matchStat I
aload 1
areturn
L16:
goto L14
.limit locals 7
.limit stack 5
.end method

.method public final scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/skipWhitespace()V
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 34
if_icmpne L0
aload 0
aload 1
bipush 34
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;
areturn
L0:
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 39
if_icmpne L1
aload 0
getstatic com/alibaba/fastjson/parser/Feature/AllowSingleQuotes Lcom/alibaba/fastjson/parser/Feature;
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z
ifne L2
new com/alibaba/fastjson/JSONException
dup
ldc "syntax error"
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
L2:
aload 0
aload 1
bipush 39
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;
areturn
L1:
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 125
if_icmpne L3
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/next()C
pop
aload 0
bipush 13
putfield com/alibaba/fastjson/parser/JSONLexerBase/token I
aconst_null
areturn
L3:
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 44
if_icmpne L4
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/next()C
pop
aload 0
bipush 16
putfield com/alibaba/fastjson/parser/JSONLexerBase/token I
aconst_null
areturn
L4:
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 26
if_icmpne L5
aload 0
bipush 20
putfield com/alibaba/fastjson/parser/JSONLexerBase/token I
aconst_null
areturn
L5:
aload 0
getstatic com/alibaba/fastjson/parser/Feature/AllowUnQuotedFieldNames Lcom/alibaba/fastjson/parser/Feature;
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z
ifne L6
new com/alibaba/fastjson/JSONException
dup
ldc "syntax error"
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
L6:
aload 0
aload 1
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/scanSymbolUnQuoted(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;
areturn
.limit locals 2
.limit stack 3
.end method

.method public final scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;
iconst_0
istore 5
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
putfield com/alibaba/fastjson/parser/JSONLexerBase/np I
aload 0
iconst_0
putfield com/alibaba/fastjson/parser/JSONLexerBase/sp I
iconst_0
istore 6
L0:
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/next()C
istore 3
iload 3
iload 2
if_icmpne L1
aload 0
iconst_4
putfield com/alibaba/fastjson/parser/JSONLexerBase/token I
iload 6
ifne L2
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/np I
iconst_m1
if_icmpne L3
iconst_0
istore 2
L4:
aload 0
iload 2
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/sp I
iload 5
aload 1
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/addSymbol(IIILcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;
astore 1
L5:
aload 0
iconst_0
putfield com/alibaba/fastjson/parser/JSONLexerBase/sp I
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/next()C
pop
aload 1
areturn
L1:
iload 3
bipush 26
if_icmpne L6
new com/alibaba/fastjson/JSONException
dup
ldc "unclosed.str"
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
L6:
iload 3
bipush 92
if_icmpne L7
iload 6
istore 7
iload 6
ifne L8
iconst_1
istore 7
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/sp I
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/sbuf [C
arraylength
if_icmplt L9
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/sbuf [C
arraylength
iconst_2
imul
istore 8
iload 8
istore 6
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/sp I
iload 8
if_icmple L10
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/sp I
istore 6
L10:
iload 6
newarray char
astore 9
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/sbuf [C
iconst_0
aload 9
iconst_0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/sbuf [C
arraylength
invokestatic java/lang/System/arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
aload 0
aload 9
putfield com/alibaba/fastjson/parser/JSONLexerBase/sbuf [C
L9:
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/np I
iconst_1
iadd
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/sbuf [C
iconst_0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/sp I
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/arrayCopy(I[CII)V
L8:
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/next()C
istore 3
iload 3
lookupswitch
34 : L11
39 : L12
47 : L13
48 : L14
49 : L15
50 : L16
51 : L17
52 : L18
53 : L19
54 : L20
55 : L21
70 : L22
92 : L23
98 : L24
102 : L22
110 : L25
114 : L26
116 : L27
117 : L28
118 : L29
120 : L30
default : L31
L31:
aload 0
iload 3
putfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
new com/alibaba/fastjson/JSONException
dup
ldc "unclosed.str.lit"
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
L14:
iload 5
bipush 31
imul
iload 3
iadd
istore 5
aload 0
iconst_0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/putChar(C)V
iload 7
istore 6
goto L0
L15:
iload 5
bipush 31
imul
iload 3
iadd
istore 5
aload 0
iconst_1
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/putChar(C)V
iload 7
istore 6
goto L0
L16:
iload 5
bipush 31
imul
iload 3
iadd
istore 5
aload 0
iconst_2
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/putChar(C)V
iload 7
istore 6
goto L0
L17:
iload 5
bipush 31
imul
iload 3
iadd
istore 5
aload 0
iconst_3
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/putChar(C)V
iload 7
istore 6
goto L0
L18:
iload 5
bipush 31
imul
iload 3
iadd
istore 5
aload 0
iconst_4
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/putChar(C)V
iload 7
istore 6
goto L0
L19:
iload 5
bipush 31
imul
iload 3
iadd
istore 5
aload 0
iconst_5
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/putChar(C)V
iload 7
istore 6
goto L0
L20:
iload 5
bipush 31
imul
iload 3
iadd
istore 5
aload 0
bipush 6
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/putChar(C)V
iload 7
istore 6
goto L0
L21:
iload 5
bipush 31
imul
iload 3
iadd
istore 5
aload 0
bipush 7
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/putChar(C)V
iload 7
istore 6
goto L0
L24:
iload 5
bipush 31
imul
bipush 8
iadd
istore 5
aload 0
bipush 8
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/putChar(C)V
iload 7
istore 6
goto L0
L27:
iload 5
bipush 31
imul
bipush 9
iadd
istore 5
aload 0
bipush 9
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/putChar(C)V
iload 7
istore 6
goto L0
L25:
iload 5
bipush 31
imul
bipush 10
iadd
istore 5
aload 0
bipush 10
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/putChar(C)V
iload 7
istore 6
goto L0
L29:
iload 5
bipush 31
imul
bipush 11
iadd
istore 5
aload 0
bipush 11
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/putChar(C)V
iload 7
istore 6
goto L0
L22:
iload 5
bipush 31
imul
bipush 12
iadd
istore 5
aload 0
bipush 12
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/putChar(C)V
iload 7
istore 6
goto L0
L26:
iload 5
bipush 31
imul
bipush 13
iadd
istore 5
aload 0
bipush 13
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/putChar(C)V
iload 7
istore 6
goto L0
L11:
iload 5
bipush 31
imul
bipush 34
iadd
istore 5
aload 0
bipush 34
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/putChar(C)V
iload 7
istore 6
goto L0
L12:
iload 5
bipush 31
imul
bipush 39
iadd
istore 5
aload 0
bipush 39
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/putChar(C)V
iload 7
istore 6
goto L0
L13:
iload 5
bipush 31
imul
bipush 47
iadd
istore 5
aload 0
bipush 47
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/putChar(C)V
iload 7
istore 6
goto L0
L23:
iload 5
bipush 31
imul
bipush 92
iadd
istore 5
aload 0
bipush 92
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/putChar(C)V
iload 7
istore 6
goto L0
L30:
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/next()C
istore 3
aload 0
iload 3
putfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/next()C
istore 4
aload 0
iload 4
putfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
getstatic com/alibaba/fastjson/parser/JSONLexerBase/digits [I
iload 3
iaload
bipush 16
imul
getstatic com/alibaba/fastjson/parser/JSONLexerBase/digits [I
iload 4
iaload
iadd
i2c
istore 3
iload 5
bipush 31
imul
iload 3
iadd
istore 5
aload 0
iload 3
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/putChar(C)V
iload 7
istore 6
goto L0
L28:
new java/lang/String
dup
iconst_4
newarray char
dup
iconst_0
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/next()C
castore
dup
iconst_1
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/next()C
castore
dup
iconst_2
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/next()C
castore
dup
iconst_3
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/next()C
castore
invokespecial java/lang/String/<init>([C)V
bipush 16
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;I)I
istore 6
iload 5
bipush 31
imul
iload 6
iadd
istore 5
aload 0
iload 6
i2c
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/putChar(C)V
iload 7
istore 6
goto L0
L7:
iload 5
bipush 31
imul
iload 3
iadd
istore 5
iload 6
ifne L32
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/sp I
iconst_1
iadd
putfield com/alibaba/fastjson/parser/JSONLexerBase/sp I
goto L0
L32:
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/sp I
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/sbuf [C
arraylength
if_icmpne L33
aload 0
iload 3
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/putChar(C)V
goto L0
L33:
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/sbuf [C
astore 9
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/sp I
istore 7
aload 0
iload 7
iconst_1
iadd
putfield com/alibaba/fastjson/parser/JSONLexerBase/sp I
aload 9
iload 7
iload 3
castore
goto L0
L3:
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/np I
iconst_1
iadd
istore 2
goto L4
L2:
aload 1
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/sbuf [C
iconst_0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/sp I
iload 5
invokevirtual com/alibaba/fastjson/parser/SymbolTable/addSymbol([CIII)Ljava/lang/String;
astore 1
goto L5
.limit locals 10
.limit stack 6
.end method

.method public final scanSymbolUnQuoted(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;
getstatic com/alibaba/fastjson/parser/CharTypes/firstIdentifierFlags [Z
astore 4
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
istore 3
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
aload 4
arraylength
if_icmpge L0
aload 4
iload 3
baload
ifeq L1
L0:
iconst_1
istore 2
L2:
iload 2
ifne L3
new com/alibaba/fastjson/JSONException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "illegal identifier : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
L1:
iconst_0
istore 2
goto L2
L3:
getstatic com/alibaba/fastjson/parser/CharTypes/identifierFlags [Z
astore 4
iload 3
istore 2
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
putfield com/alibaba/fastjson/parser/JSONLexerBase/np I
aload 0
iconst_1
putfield com/alibaba/fastjson/parser/JSONLexerBase/sp I
L4:
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/next()C
istore 3
iload 3
aload 4
arraylength
if_icmpge L5
aload 4
iload 3
baload
ifne L5
aload 0
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/charAt(I)C
putfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
aload 0
bipush 18
putfield com/alibaba/fastjson/parser/JSONLexerBase/token I
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/sp I
iconst_4
if_icmpne L6
iload 2
ldc_w 3392903
if_icmpne L6
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/np I
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/charAt(I)C
bipush 110
if_icmpne L6
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/np I
iconst_1
iadd
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/charAt(I)C
bipush 117
if_icmpne L6
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/np I
iconst_2
iadd
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/charAt(I)C
bipush 108
if_icmpne L6
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/np I
iconst_3
iadd
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/charAt(I)C
bipush 108
if_icmpne L6
aconst_null
areturn
L5:
iload 2
bipush 31
imul
iload 3
iadd
istore 2
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/sp I
iconst_1
iadd
putfield com/alibaba/fastjson/parser/JSONLexerBase/sp I
goto L4
L6:
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/np I
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/sp I
iload 2
aload 1
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/addSymbol(IIILcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;
areturn
.limit locals 5
.limit stack 5
.end method

.method public scanSymbolWithSeperator(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;
aload 0
iconst_0
putfield com/alibaba/fastjson/parser/JSONLexerBase/matchStat I
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
istore 3
iconst_0
iconst_1
iadd
istore 4
aload 0
iload 3
iconst_0
iadd
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/charAt(I)C
istore 3
iload 3
bipush 110
if_icmpne L0
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
iconst_1
iadd
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/charAt(I)C
bipush 117
if_icmpne L1
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
iconst_1
iadd
iconst_1
iadd
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/charAt(I)C
bipush 108
if_icmpne L1
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
iconst_1
iadd
iconst_2
iadd
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/charAt(I)C
bipush 108
if_icmpne L1
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
iconst_4
iadd
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/charAt(I)C
iload 2
if_icmpne L2
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
iconst_4
iadd
putfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/next()C
pop
aload 0
iconst_3
putfield com/alibaba/fastjson/parser/JSONLexerBase/matchStat I
aconst_null
areturn
L1:
aload 0
iconst_m1
putfield com/alibaba/fastjson/parser/JSONLexerBase/matchStat I
aconst_null
areturn
L2:
aload 0
iconst_m1
putfield com/alibaba/fastjson/parser/JSONLexerBase/matchStat I
aconst_null
areturn
L0:
iload 3
bipush 34
if_icmpeq L3
aload 0
iconst_m1
putfield com/alibaba/fastjson/parser/JSONLexerBase/matchStat I
aconst_null
areturn
L3:
iconst_0
istore 3
L4:
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
istore 6
iload 4
iconst_1
iadd
istore 5
aload 0
iload 6
iload 4
iadd
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/charAt(I)C
istore 4
iload 4
bipush 34
if_icmpne L5
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
iconst_0
iadd
iconst_1
iadd
istore 4
aload 0
iload 4
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
iload 5
iadd
iload 4
isub
iconst_1
isub
iload 3
aload 1
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/addSymbol(IIILcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;
astore 1
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
iload 5
iadd
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/charAt(I)C
iload 2
if_icmpne L6
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
iload 5
iconst_1
iadd
iconst_1
isub
iadd
putfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/next()C
pop
aload 0
iconst_3
putfield com/alibaba/fastjson/parser/JSONLexerBase/matchStat I
aload 1
areturn
L5:
iload 3
bipush 31
imul
iload 4
iadd
istore 3
iload 4
bipush 92
if_icmpne L7
aload 0
iconst_m1
putfield com/alibaba/fastjson/parser/JSONLexerBase/matchStat I
aconst_null
areturn
L6:
aload 0
iconst_m1
putfield com/alibaba/fastjson/parser/JSONLexerBase/matchStat I
aload 1
areturn
L7:
iload 5
istore 4
goto L4
.limit locals 7
.limit stack 5
.end method

.method public final scanTreeSet()V
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 84
if_icmpeq L0
new com/alibaba/fastjson/JSONException
dup
ldc "error parse true"
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/next()C
pop
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 114
if_icmpeq L1
new com/alibaba/fastjson/JSONException
dup
ldc "error parse true"
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
L1:
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/next()C
pop
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 101
if_icmpeq L2
new com/alibaba/fastjson/JSONException
dup
ldc "error parse true"
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
L2:
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/next()C
pop
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 101
if_icmpeq L3
new com/alibaba/fastjson/JSONException
dup
ldc "error parse true"
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
L3:
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/next()C
pop
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 83
if_icmpeq L4
new com/alibaba/fastjson/JSONException
dup
ldc "error parse true"
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
L4:
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/next()C
pop
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 101
if_icmpeq L5
new com/alibaba/fastjson/JSONException
dup
ldc "error parse true"
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
L5:
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/next()C
pop
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 116
if_icmpeq L6
new com/alibaba/fastjson/JSONException
dup
ldc "error parse true"
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
L6:
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/next()C
pop
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 32
if_icmpeq L7
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 10
if_icmpeq L7
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 13
if_icmpeq L7
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 9
if_icmpeq L7
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 12
if_icmpeq L7
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 8
if_icmpeq L7
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 91
if_icmpeq L7
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 40
if_icmpne L8
L7:
aload 0
bipush 22
putfield com/alibaba/fastjson/parser/JSONLexerBase/token I
return
L8:
new com/alibaba/fastjson/JSONException
dup
ldc "scan set error"
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
.limit locals 1
.limit stack 3
.end method

.method public final scanTrue()V
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 116
if_icmpeq L0
new com/alibaba/fastjson/JSONException
dup
ldc "error parse true"
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/next()C
pop
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 114
if_icmpeq L1
new com/alibaba/fastjson/JSONException
dup
ldc "error parse true"
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
L1:
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/next()C
pop
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 117
if_icmpeq L2
new com/alibaba/fastjson/JSONException
dup
ldc "error parse true"
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
L2:
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/next()C
pop
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 101
if_icmpeq L3
new com/alibaba/fastjson/JSONException
dup
ldc "error parse true"
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
L3:
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/next()C
pop
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 32
if_icmpeq L4
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 44
if_icmpeq L4
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 125
if_icmpeq L4
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 93
if_icmpeq L4
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 10
if_icmpeq L4
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 13
if_icmpeq L4
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 9
if_icmpeq L4
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 26
if_icmpeq L4
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 12
if_icmpeq L4
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 8
if_icmpne L5
L4:
aload 0
bipush 6
putfield com/alibaba/fastjson/parser/JSONLexerBase/token I
return
L5:
new com/alibaba/fastjson/JSONException
dup
ldc "scan true error"
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
.limit locals 1
.limit stack 3
.end method

.method public scanType(Ljava/lang/String;)I
iconst_m1
istore 4
aload 0
iconst_0
putfield com/alibaba/fastjson/parser/JSONLexerBase/matchStat I
aload 0
getstatic com/alibaba/fastjson/parser/JSONLexerBase/typeFieldName [C
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/charArrayCompare([C)Z
ifne L0
bipush -2
istore 2
L1:
iload 2
ireturn
L0:
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
getstatic com/alibaba/fastjson/parser/JSONLexerBase/typeFieldName [C
arraylength
iadd
istore 5
aload 1
invokevirtual java/lang/String/length()I
istore 6
iconst_0
istore 3
L2:
iload 3
iload 6
if_icmpge L3
iload 4
istore 2
aload 1
iload 3
invokevirtual java/lang/String/charAt(I)C
aload 0
iload 5
iload 3
iadd
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/charAt(I)C
if_icmpne L1
iload 3
iconst_1
iadd
istore 3
goto L2
L3:
iload 5
iload 6
iadd
istore 3
iload 4
istore 2
aload 0
iload 3
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/charAt(I)C
bipush 34
if_icmpne L1
iload 3
iconst_1
iadd
istore 3
aload 0
aload 0
iload 3
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/charAt(I)C
putfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 44
if_icmpne L4
iload 3
iconst_1
iadd
istore 2
aload 0
aload 0
iload 2
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/charAt(I)C
putfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
aload 0
iload 2
putfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
aload 0
bipush 16
putfield com/alibaba/fastjson/parser/JSONLexerBase/token I
iconst_3
ireturn
L4:
iload 3
istore 2
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 125
if_icmpne L5
iload 3
iconst_1
iadd
istore 3
aload 0
aload 0
iload 3
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/charAt(I)C
putfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 44
if_icmpne L6
aload 0
bipush 16
putfield com/alibaba/fastjson/parser/JSONLexerBase/token I
iload 3
iconst_1
iadd
istore 2
aload 0
aload 0
iload 2
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/charAt(I)C
putfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
L7:
aload 0
iconst_4
putfield com/alibaba/fastjson/parser/JSONLexerBase/matchStat I
L5:
aload 0
iload 2
putfield com/alibaba/fastjson/parser/JSONLexerBase/bp I
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/matchStat I
ireturn
L6:
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 93
if_icmpne L8
aload 0
bipush 15
putfield com/alibaba/fastjson/parser/JSONLexerBase/token I
iload 3
iconst_1
iadd
istore 2
aload 0
aload 0
iload 2
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/charAt(I)C
putfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
goto L7
L8:
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 125
if_icmpne L9
aload 0
bipush 13
putfield com/alibaba/fastjson/parser/JSONLexerBase/token I
iload 3
iconst_1
iadd
istore 2
aload 0
aload 0
iload 2
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/charAt(I)C
putfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
goto L7
L9:
iload 4
istore 2
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
bipush 26
if_icmpne L1
aload 0
bipush 20
putfield com/alibaba/fastjson/parser/JSONLexerBase/token I
iload 3
istore 2
goto L7
.limit locals 7
.limit stack 4
.end method

.method public final skipWhitespace()V
L0:
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
getstatic com/alibaba/fastjson/parser/JSONLexerBase/whitespaceFlags [Z
arraylength
if_icmpge L1
getstatic com/alibaba/fastjson/parser/JSONLexerBase/whitespaceFlags [Z
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/ch C
baload
ifeq L1
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/next()C
pop
goto L0
L1:
return
.limit locals 1
.limit stack 2
.end method

.method public final stringDefaultValue()Ljava/lang/String;
aload 0
getstatic com/alibaba/fastjson/parser/Feature/InitStringFieldAsEmpty Lcom/alibaba/fastjson/parser/Feature;
invokevirtual com/alibaba/fastjson/parser/JSONLexerBase/isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z
ifeq L0
ldc ""
areturn
L0:
aconst_null
areturn
.limit locals 1
.limit stack 2
.end method

.method public abstract stringVal()Ljava/lang/String;
.end method

.method public abstract subString(II)Ljava/lang/String;
.end method

.method public final token()I
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/token I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public final tokenName()Ljava/lang/String;
aload 0
getfield com/alibaba/fastjson/parser/JSONLexerBase/token I
invokestatic com/alibaba/fastjson/parser/JSONToken/name(I)Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method
