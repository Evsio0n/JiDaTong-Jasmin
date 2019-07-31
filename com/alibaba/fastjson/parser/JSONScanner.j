.bytecode 50.0
.class public final synchronized com/alibaba/fastjson/parser/JSONScanner
.super com/alibaba/fastjson/parser/JSONLexerBase

.field protected static final 'typeFieldName' [C

.field public final 'ISO8601_LEN_0' I

.field public final 'ISO8601_LEN_1' I

.field public final 'ISO8601_LEN_2' I

.field private final 'text' Ljava/lang/String;

.method static <clinit>()V
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
putstatic com/alibaba/fastjson/parser/JSONScanner/typeFieldName [C
return
.limit locals 0
.limit stack 2
.end method

.method public <init>(Ljava/lang/String;)V
aload 0
aload 1
getstatic com/alibaba/fastjson/JSON/DEFAULT_PARSER_FEATURE I
invokespecial com/alibaba/fastjson/parser/JSONScanner/<init>(Ljava/lang/String;I)V
return
.limit locals 2
.limit stack 3
.end method

.method public <init>(Ljava/lang/String;I)V
aload 0
invokespecial com/alibaba/fastjson/parser/JSONLexerBase/<init>()V
aload 0
ldc "0000-00-00"
invokevirtual java/lang/String/length()I
putfield com/alibaba/fastjson/parser/JSONScanner/ISO8601_LEN_0 I
aload 0
ldc "0000-00-00T00:00:00"
invokevirtual java/lang/String/length()I
putfield com/alibaba/fastjson/parser/JSONScanner/ISO8601_LEN_1 I
aload 0
ldc "0000-00-00T00:00:00.000"
invokevirtual java/lang/String/length()I
putfield com/alibaba/fastjson/parser/JSONScanner/ISO8601_LEN_2 I
aload 0
iload 2
putfield com/alibaba/fastjson/parser/JSONScanner/features I
aload 0
aload 1
putfield com/alibaba/fastjson/parser/JSONScanner/text Ljava/lang/String;
aload 0
iconst_m1
putfield com/alibaba/fastjson/parser/JSONScanner/bp I
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONScanner/next()C
pop
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/ch C
ldc_w 65279
if_icmpne L0
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONScanner/next()C
pop
L0:
return
.limit locals 3
.limit stack 2
.end method

.method public <init>([CI)V
aload 0
aload 1
iload 2
getstatic com/alibaba/fastjson/JSON/DEFAULT_PARSER_FEATURE I
invokespecial com/alibaba/fastjson/parser/JSONScanner/<init>([CII)V
return
.limit locals 3
.limit stack 4
.end method

.method public <init>([CII)V
aload 0
new java/lang/String
dup
aload 1
iconst_0
iload 2
invokespecial java/lang/String/<init>([CII)V
iload 3
invokespecial com/alibaba/fastjson/parser/JSONScanner/<init>(Ljava/lang/String;I)V
return
.limit locals 4
.limit stack 6
.end method

.method static final charArrayCompare(Ljava/lang/String;I[C)Z
aload 2
arraylength
istore 4
iload 4
iload 1
iadd
aload 0
invokevirtual java/lang/String/length()I
if_icmple L0
L1:
iconst_0
ireturn
L0:
iconst_0
istore 3
L2:
iload 3
iload 4
if_icmpge L3
aload 2
iload 3
caload
aload 0
iload 1
iload 3
iadd
invokevirtual java/lang/String/charAt(I)C
if_icmpne L1
iload 3
iconst_1
iadd
istore 3
goto L2
L3:
iconst_1
ireturn
.limit locals 5
.limit stack 4
.end method

.method static checkDate(CCCCCCII)Z
iload 0
bipush 49
if_icmpeq L0
iload 0
bipush 50
if_icmpeq L0
L1:
iconst_0
ireturn
L0:
iload 1
bipush 48
if_icmplt L1
iload 1
bipush 57
if_icmpgt L1
iload 2
bipush 48
if_icmplt L1
iload 2
bipush 57
if_icmpgt L1
iload 3
bipush 48
if_icmplt L1
iload 3
bipush 57
if_icmpgt L1
iload 4
bipush 48
if_icmpne L2
iload 5
bipush 49
if_icmplt L1
iload 5
bipush 57
if_icmpgt L1
L3:
iload 6
bipush 48
if_icmpne L4
iload 7
bipush 49
if_icmplt L1
iload 7
bipush 57
if_icmpgt L1
L5:
iconst_1
ireturn
L2:
iload 4
bipush 49
if_icmpne L1
iload 5
bipush 48
if_icmpeq L3
iload 5
bipush 49
if_icmpeq L3
iload 5
bipush 50
if_icmpeq L3
iconst_0
ireturn
L4:
iload 6
bipush 49
if_icmpeq L6
iload 6
bipush 50
if_icmpne L7
L6:
iload 7
bipush 48
if_icmplt L1
iload 7
bipush 57
if_icmple L5
iconst_0
ireturn
L7:
iload 6
bipush 51
if_icmpne L1
iload 7
bipush 48
if_icmpeq L5
iload 7
bipush 49
if_icmpeq L5
iconst_0
ireturn
.limit locals 8
.limit stack 2
.end method

.method private checkTime(CCCCCC)Z
iload 1
bipush 48
if_icmpne L0
iload 2
bipush 48
if_icmplt L1
iload 2
bipush 57
if_icmple L2
L1:
iconst_0
ireturn
L0:
iload 1
bipush 49
if_icmpne L3
iload 2
bipush 48
if_icmplt L1
iload 2
bipush 57
if_icmpgt L1
L2:
iload 3
bipush 48
if_icmplt L4
iload 3
bipush 53
if_icmpgt L4
iload 4
bipush 48
if_icmplt L1
iload 4
bipush 57
if_icmpgt L1
L5:
iload 5
bipush 48
if_icmplt L6
iload 5
bipush 53
if_icmpgt L6
iload 6
bipush 48
if_icmplt L1
iload 6
bipush 57
if_icmpgt L1
L7:
iconst_1
ireturn
L3:
iload 1
bipush 50
if_icmpne L1
iload 2
bipush 48
if_icmplt L1
iload 2
bipush 52
if_icmple L2
iconst_0
ireturn
L4:
iload 3
bipush 54
if_icmpne L1
iload 4
bipush 48
if_icmpeq L5
iconst_0
ireturn
L6:
iload 5
bipush 54
if_icmpne L1
iload 6
bipush 48
if_icmpeq L7
iconst_0
ireturn
.limit locals 7
.limit stack 2
.end method

.method private setCalendar(CCCCCCCC)V
invokestatic java/util/Locale/getDefault()Ljava/util/Locale;
astore 9
aload 0
invokestatic java/util/TimeZone/getDefault()Ljava/util/TimeZone;
aload 9
invokestatic java/util/Calendar/getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;
putfield com/alibaba/fastjson/parser/JSONScanner/calendar Ljava/util/Calendar;
getstatic com/alibaba/fastjson/parser/JSONScanner/digits [I
iload 1
iaload
istore 1
getstatic com/alibaba/fastjson/parser/JSONScanner/digits [I
iload 2
iaload
istore 2
getstatic com/alibaba/fastjson/parser/JSONScanner/digits [I
iload 3
iaload
istore 3
getstatic com/alibaba/fastjson/parser/JSONScanner/digits [I
iload 4
iaload
istore 4
getstatic com/alibaba/fastjson/parser/JSONScanner/digits [I
iload 5
iaload
istore 5
getstatic com/alibaba/fastjson/parser/JSONScanner/digits [I
iload 6
iaload
istore 6
getstatic com/alibaba/fastjson/parser/JSONScanner/digits [I
iload 7
iaload
istore 7
getstatic com/alibaba/fastjson/parser/JSONScanner/digits [I
iload 8
iaload
istore 8
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/calendar Ljava/util/Calendar;
iconst_1
iload 1
sipush 1000
imul
iload 2
bipush 100
imul
iadd
iload 3
bipush 10
imul
iadd
iload 4
iadd
invokevirtual java/util/Calendar/set(II)V
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/calendar Ljava/util/Calendar;
iconst_2
iload 5
bipush 10
imul
iload 6
iadd
iconst_1
isub
invokevirtual java/util/Calendar/set(II)V
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/calendar Ljava/util/Calendar;
iconst_5
iload 7
bipush 10
imul
iload 8
iadd
invokevirtual java/util/Calendar/set(II)V
return
.limit locals 10
.limit stack 5
.end method

.method public final addSymbol(IIILcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;
aload 4
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/text Ljava/lang/String;
iload 1
iload 2
iload 3
invokevirtual com/alibaba/fastjson/parser/SymbolTable/addSymbol(Ljava/lang/String;III)Ljava/lang/String;
areturn
.limit locals 5
.limit stack 5
.end method

.method protected final arrayCopy(I[CII)V
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/text Ljava/lang/String;
iload 1
iload 1
iload 4
iadd
aload 2
iload 3
invokevirtual java/lang/String/getChars(II[CI)V
return
.limit locals 5
.limit stack 5
.end method

.method public bytesValue()[B
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/text Ljava/lang/String;
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/np I
iconst_1
iadd
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/sp I
invokestatic com/alibaba/fastjson/util/Base64/decodeFast(Ljava/lang/String;II)[B
areturn
.limit locals 1
.limit stack 3
.end method

.method public final charArrayCompare([C)Z
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/text Ljava/lang/String;
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/bp I
aload 1
invokestatic com/alibaba/fastjson/parser/JSONScanner/charArrayCompare(Ljava/lang/String;I[C)Z
ireturn
.limit locals 2
.limit stack 3
.end method

.method public final charAt(I)C
iload 1
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/text Ljava/lang/String;
invokevirtual java/lang/String/length()I
if_icmplt L0
bipush 26
ireturn
L0:
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/text Ljava/lang/String;
iload 1
invokevirtual java/lang/String/charAt(I)C
ireturn
.limit locals 2
.limit stack 2
.end method

.method protected final copyTo(II[C)V
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/text Ljava/lang/String;
iload 1
iload 1
iload 2
iadd
aload 3
iconst_0
invokevirtual java/lang/String/getChars(II[CI)V
return
.limit locals 4
.limit stack 5
.end method

.method public final indexOf(CI)I
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/text Ljava/lang/String;
iload 1
iload 2
invokevirtual java/lang/String/indexOf(II)I
ireturn
.limit locals 3
.limit stack 3
.end method

.method public isEOF()Z
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/bp I
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/text Ljava/lang/String;
invokevirtual java/lang/String/length()I
if_icmpeq L0
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/ch C
bipush 26
if_icmpne L1
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/bp I
iconst_1
iadd
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/text Ljava/lang/String;
invokevirtual java/lang/String/length()I
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

.method public final next()C
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/bp I
iconst_1
iadd
istore 2
aload 0
iload 2
putfield com/alibaba/fastjson/parser/JSONScanner/bp I
aload 0
iload 2
invokevirtual com/alibaba/fastjson/parser/JSONScanner/charAt(I)C
istore 1
aload 0
iload 1
putfield com/alibaba/fastjson/parser/JSONScanner/ch C
iload 1
ireturn
.limit locals 3
.limit stack 2
.end method

.method public final numberString()Ljava/lang/String;
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/np I
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/sp I
iadd
iconst_1
isub
invokevirtual com/alibaba/fastjson/parser/JSONScanner/charAt(I)C
istore 3
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/sp I
istore 2
iload 3
bipush 76
if_icmpeq L0
iload 3
bipush 83
if_icmpeq L0
iload 3
bipush 66
if_icmpeq L0
iload 3
bipush 70
if_icmpeq L0
iload 2
istore 1
iload 3
bipush 68
if_icmpne L1
L0:
iload 2
iconst_1
isub
istore 1
L1:
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/text Ljava/lang/String;
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/np I
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/np I
iload 1
iadd
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
areturn
.limit locals 4
.limit stack 4
.end method

.method public scanFieldBoolean([C)Z
aload 0
iconst_0
putfield com/alibaba/fastjson/parser/JSONScanner/matchStat I
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/text Ljava/lang/String;
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/bp I
aload 1
invokestatic com/alibaba/fastjson/parser/JSONScanner/charArrayCompare(Ljava/lang/String;I[C)Z
ifne L0
aload 0
bipush -2
putfield com/alibaba/fastjson/parser/JSONScanner/matchStat I
iconst_0
ireturn
L0:
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/bp I
aload 1
arraylength
iadd
istore 3
iload 3
iconst_1
iadd
istore 2
aload 0
iload 3
invokevirtual com/alibaba/fastjson/parser/JSONScanner/charAt(I)C
istore 3
iload 3
bipush 116
if_icmpne L1
iload 2
iconst_1
iadd
istore 3
aload 0
iload 2
invokevirtual com/alibaba/fastjson/parser/JSONScanner/charAt(I)C
bipush 114
if_icmpeq L2
aload 0
iconst_m1
putfield com/alibaba/fastjson/parser/JSONScanner/matchStat I
iconst_0
ireturn
L2:
iload 3
iconst_1
iadd
istore 2
aload 0
iload 3
invokevirtual com/alibaba/fastjson/parser/JSONScanner/charAt(I)C
bipush 117
if_icmpeq L3
aload 0
iconst_m1
putfield com/alibaba/fastjson/parser/JSONScanner/matchStat I
iconst_0
ireturn
L3:
aload 0
iload 2
invokevirtual com/alibaba/fastjson/parser/JSONScanner/charAt(I)C
bipush 101
if_icmpeq L4
aload 0
iconst_m1
putfield com/alibaba/fastjson/parser/JSONScanner/matchStat I
iconst_0
ireturn
L4:
aload 0
iload 2
iconst_1
iadd
putfield com/alibaba/fastjson/parser/JSONScanner/bp I
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/bp I
invokevirtual com/alibaba/fastjson/parser/JSONScanner/charAt(I)C
istore 2
iconst_1
istore 4
L5:
iload 2
bipush 44
if_icmpne L6
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/bp I
iconst_1
iadd
istore 2
aload 0
iload 2
putfield com/alibaba/fastjson/parser/JSONScanner/bp I
aload 0
aload 0
iload 2
invokevirtual com/alibaba/fastjson/parser/JSONScanner/charAt(I)C
putfield com/alibaba/fastjson/parser/JSONScanner/ch C
aload 0
iconst_3
putfield com/alibaba/fastjson/parser/JSONScanner/matchStat I
aload 0
bipush 16
putfield com/alibaba/fastjson/parser/JSONScanner/token I
iload 4
ireturn
L1:
iload 3
bipush 102
if_icmpne L7
iload 2
iconst_1
iadd
istore 3
aload 0
iload 2
invokevirtual com/alibaba/fastjson/parser/JSONScanner/charAt(I)C
bipush 97
if_icmpeq L8
aload 0
iconst_m1
putfield com/alibaba/fastjson/parser/JSONScanner/matchStat I
iconst_0
ireturn
L8:
iload 3
iconst_1
iadd
istore 2
aload 0
iload 3
invokevirtual com/alibaba/fastjson/parser/JSONScanner/charAt(I)C
bipush 108
if_icmpeq L9
aload 0
iconst_m1
putfield com/alibaba/fastjson/parser/JSONScanner/matchStat I
iconst_0
ireturn
L9:
iload 2
iconst_1
iadd
istore 3
aload 0
iload 2
invokevirtual com/alibaba/fastjson/parser/JSONScanner/charAt(I)C
bipush 115
if_icmpeq L10
aload 0
iconst_m1
putfield com/alibaba/fastjson/parser/JSONScanner/matchStat I
iconst_0
ireturn
L10:
aload 0
iload 3
invokevirtual com/alibaba/fastjson/parser/JSONScanner/charAt(I)C
bipush 101
if_icmpeq L11
aload 0
iconst_m1
putfield com/alibaba/fastjson/parser/JSONScanner/matchStat I
iconst_0
ireturn
L11:
aload 0
iload 3
iconst_1
iadd
putfield com/alibaba/fastjson/parser/JSONScanner/bp I
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/bp I
invokevirtual com/alibaba/fastjson/parser/JSONScanner/charAt(I)C
istore 2
iconst_0
istore 4
goto L5
L7:
aload 0
iconst_m1
putfield com/alibaba/fastjson/parser/JSONScanner/matchStat I
iconst_0
ireturn
L6:
iload 2
bipush 125
if_icmpne L12
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/bp I
iconst_1
iadd
istore 2
aload 0
iload 2
putfield com/alibaba/fastjson/parser/JSONScanner/bp I
aload 0
iload 2
invokevirtual com/alibaba/fastjson/parser/JSONScanner/charAt(I)C
istore 2
iload 2
bipush 44
if_icmpne L13
aload 0
bipush 16
putfield com/alibaba/fastjson/parser/JSONScanner/token I
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/bp I
iconst_1
iadd
istore 2
aload 0
iload 2
putfield com/alibaba/fastjson/parser/JSONScanner/bp I
aload 0
aload 0
iload 2
invokevirtual com/alibaba/fastjson/parser/JSONScanner/charAt(I)C
putfield com/alibaba/fastjson/parser/JSONScanner/ch C
L14:
aload 0
iconst_4
putfield com/alibaba/fastjson/parser/JSONScanner/matchStat I
iload 4
ireturn
L13:
iload 2
bipush 93
if_icmpne L15
aload 0
bipush 15
putfield com/alibaba/fastjson/parser/JSONScanner/token I
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/bp I
iconst_1
iadd
istore 2
aload 0
iload 2
putfield com/alibaba/fastjson/parser/JSONScanner/bp I
aload 0
aload 0
iload 2
invokevirtual com/alibaba/fastjson/parser/JSONScanner/charAt(I)C
putfield com/alibaba/fastjson/parser/JSONScanner/ch C
goto L14
L15:
iload 2
bipush 125
if_icmpne L16
aload 0
bipush 13
putfield com/alibaba/fastjson/parser/JSONScanner/token I
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/bp I
iconst_1
iadd
istore 2
aload 0
iload 2
putfield com/alibaba/fastjson/parser/JSONScanner/bp I
aload 0
aload 0
iload 2
invokevirtual com/alibaba/fastjson/parser/JSONScanner/charAt(I)C
putfield com/alibaba/fastjson/parser/JSONScanner/ch C
goto L14
L16:
iload 2
bipush 26
if_icmpne L17
aload 0
bipush 20
putfield com/alibaba/fastjson/parser/JSONScanner/token I
goto L14
L17:
aload 0
iconst_m1
putfield com/alibaba/fastjson/parser/JSONScanner/matchStat I
iconst_0
ireturn
L12:
aload 0
iconst_m1
putfield com/alibaba/fastjson/parser/JSONScanner/matchStat I
iconst_0
ireturn
.limit locals 5
.limit stack 3
.end method

.method public scanFieldInt([C)I
aload 0
iconst_0
putfield com/alibaba/fastjson/parser/JSONScanner/matchStat I
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/bp I
istore 6
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/ch C
istore 2
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/text Ljava/lang/String;
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/bp I
aload 1
invokestatic com/alibaba/fastjson/parser/JSONScanner/charArrayCompare(Ljava/lang/String;I[C)Z
ifne L0
aload 0
bipush -2
putfield com/alibaba/fastjson/parser/JSONScanner/matchStat I
iconst_0
istore 4
L1:
iload 4
ireturn
L0:
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/bp I
aload 1
arraylength
iadd
istore 4
aload 0
iload 4
invokevirtual com/alibaba/fastjson/parser/JSONScanner/charAt(I)C
istore 3
iload 3
bipush 48
if_icmplt L2
iload 3
bipush 57
if_icmpgt L2
getstatic com/alibaba/fastjson/parser/JSONScanner/digits [I
iload 3
iaload
istore 3
iload 4
iconst_1
iadd
istore 4
L3:
iload 4
iconst_1
iadd
istore 5
aload 0
iload 4
invokevirtual com/alibaba/fastjson/parser/JSONScanner/charAt(I)C
istore 7
iload 7
bipush 48
if_icmplt L4
iload 7
bipush 57
if_icmpgt L4
iload 3
bipush 10
imul
getstatic com/alibaba/fastjson/parser/JSONScanner/digits [I
iload 7
iaload
iadd
istore 3
iload 5
istore 4
goto L3
L4:
iload 7
bipush 46
if_icmpne L5
aload 0
iconst_m1
putfield com/alibaba/fastjson/parser/JSONScanner/matchStat I
iconst_0
ireturn
L5:
aload 0
iload 5
iconst_1
isub
putfield com/alibaba/fastjson/parser/JSONScanner/bp I
iload 3
ifge L6
aload 0
iconst_m1
putfield com/alibaba/fastjson/parser/JSONScanner/matchStat I
iconst_0
ireturn
L2:
aload 0
iconst_m1
putfield com/alibaba/fastjson/parser/JSONScanner/matchStat I
iconst_0
ireturn
L6:
iload 7
bipush 44
if_icmpne L7
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/bp I
iconst_1
iadd
istore 4
aload 0
iload 4
putfield com/alibaba/fastjson/parser/JSONScanner/bp I
aload 0
aload 0
iload 4
invokevirtual com/alibaba/fastjson/parser/JSONScanner/charAt(I)C
putfield com/alibaba/fastjson/parser/JSONScanner/ch C
aload 0
iconst_3
putfield com/alibaba/fastjson/parser/JSONScanner/matchStat I
aload 0
bipush 16
putfield com/alibaba/fastjson/parser/JSONScanner/token I
iload 3
ireturn
L7:
iload 3
istore 4
iload 7
bipush 125
if_icmpne L1
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/bp I
iconst_1
iadd
istore 4
aload 0
iload 4
putfield com/alibaba/fastjson/parser/JSONScanner/bp I
aload 0
iload 4
invokevirtual com/alibaba/fastjson/parser/JSONScanner/charAt(I)C
istore 4
iload 4
bipush 44
if_icmpne L8
aload 0
bipush 16
putfield com/alibaba/fastjson/parser/JSONScanner/token I
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/bp I
iconst_1
iadd
istore 4
aload 0
iload 4
putfield com/alibaba/fastjson/parser/JSONScanner/bp I
aload 0
aload 0
iload 4
invokevirtual com/alibaba/fastjson/parser/JSONScanner/charAt(I)C
putfield com/alibaba/fastjson/parser/JSONScanner/ch C
L9:
aload 0
iconst_4
putfield com/alibaba/fastjson/parser/JSONScanner/matchStat I
iload 3
ireturn
L8:
iload 4
bipush 93
if_icmpne L10
aload 0
bipush 15
putfield com/alibaba/fastjson/parser/JSONScanner/token I
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/bp I
iconst_1
iadd
istore 4
aload 0
iload 4
putfield com/alibaba/fastjson/parser/JSONScanner/bp I
aload 0
aload 0
iload 4
invokevirtual com/alibaba/fastjson/parser/JSONScanner/charAt(I)C
putfield com/alibaba/fastjson/parser/JSONScanner/ch C
goto L9
L10:
iload 4
bipush 125
if_icmpne L11
aload 0
bipush 13
putfield com/alibaba/fastjson/parser/JSONScanner/token I
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/bp I
iconst_1
iadd
istore 4
aload 0
iload 4
putfield com/alibaba/fastjson/parser/JSONScanner/bp I
aload 0
aload 0
iload 4
invokevirtual com/alibaba/fastjson/parser/JSONScanner/charAt(I)C
putfield com/alibaba/fastjson/parser/JSONScanner/ch C
goto L9
L11:
iload 4
bipush 26
if_icmpne L12
aload 0
bipush 20
putfield com/alibaba/fastjson/parser/JSONScanner/token I
goto L9
L12:
aload 0
iload 6
putfield com/alibaba/fastjson/parser/JSONScanner/bp I
aload 0
iload 2
putfield com/alibaba/fastjson/parser/JSONScanner/ch C
aload 0
iconst_m1
putfield com/alibaba/fastjson/parser/JSONScanner/matchStat I
iconst_0
ireturn
.limit locals 8
.limit stack 3
.end method

.method public scanFieldLong([C)J
aload 0
iconst_0
putfield com/alibaba/fastjson/parser/JSONScanner/matchStat I
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/bp I
istore 5
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/ch C
istore 2
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/text Ljava/lang/String;
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/bp I
aload 1
invokestatic com/alibaba/fastjson/parser/JSONScanner/charArrayCompare(Ljava/lang/String;I[C)Z
ifne L0
aload 0
bipush -2
putfield com/alibaba/fastjson/parser/JSONScanner/matchStat I
lconst_0
lreturn
L0:
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/bp I
aload 1
arraylength
iadd
istore 3
aload 0
iload 3
invokevirtual com/alibaba/fastjson/parser/JSONScanner/charAt(I)C
istore 4
iload 4
bipush 48
if_icmplt L1
iload 4
bipush 57
if_icmpgt L1
getstatic com/alibaba/fastjson/parser/JSONScanner/digits [I
iload 4
iaload
i2l
lstore 6
iload 3
iconst_1
iadd
istore 3
L2:
iload 3
iconst_1
iadd
istore 4
aload 0
iload 3
invokevirtual com/alibaba/fastjson/parser/JSONScanner/charAt(I)C
istore 3
iload 3
bipush 48
if_icmplt L3
iload 3
bipush 57
if_icmpgt L3
ldc2_w 10L
lload 6
lmul
getstatic com/alibaba/fastjson/parser/JSONScanner/digits [I
iload 3
iaload
i2l
ladd
lstore 6
iload 4
istore 3
goto L2
L3:
iload 3
bipush 46
if_icmpne L4
aload 0
iconst_m1
putfield com/alibaba/fastjson/parser/JSONScanner/matchStat I
lconst_0
lreturn
L4:
aload 0
iload 4
iconst_1
isub
putfield com/alibaba/fastjson/parser/JSONScanner/bp I
lload 6
lconst_0
lcmp
ifge L5
aload 0
iload 5
putfield com/alibaba/fastjson/parser/JSONScanner/bp I
aload 0
iload 2
putfield com/alibaba/fastjson/parser/JSONScanner/ch C
aload 0
iconst_m1
putfield com/alibaba/fastjson/parser/JSONScanner/matchStat I
lconst_0
lreturn
L1:
aload 0
iload 5
putfield com/alibaba/fastjson/parser/JSONScanner/bp I
aload 0
iload 2
putfield com/alibaba/fastjson/parser/JSONScanner/ch C
aload 0
iconst_m1
putfield com/alibaba/fastjson/parser/JSONScanner/matchStat I
lconst_0
lreturn
L5:
iload 3
bipush 44
if_icmpne L6
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/bp I
iconst_1
iadd
istore 3
aload 0
iload 3
putfield com/alibaba/fastjson/parser/JSONScanner/bp I
aload 0
iload 3
invokevirtual com/alibaba/fastjson/parser/JSONScanner/charAt(I)C
pop
aload 0
iconst_3
putfield com/alibaba/fastjson/parser/JSONScanner/matchStat I
aload 0
bipush 16
putfield com/alibaba/fastjson/parser/JSONScanner/token I
lload 6
lreturn
L6:
iload 3
bipush 125
if_icmpne L7
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/bp I
iconst_1
iadd
istore 3
aload 0
iload 3
putfield com/alibaba/fastjson/parser/JSONScanner/bp I
aload 0
iload 3
invokevirtual com/alibaba/fastjson/parser/JSONScanner/charAt(I)C
istore 3
iload 3
bipush 44
if_icmpne L8
aload 0
bipush 16
putfield com/alibaba/fastjson/parser/JSONScanner/token I
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/bp I
iconst_1
iadd
istore 3
aload 0
iload 3
putfield com/alibaba/fastjson/parser/JSONScanner/bp I
aload 0
aload 0
iload 3
invokevirtual com/alibaba/fastjson/parser/JSONScanner/charAt(I)C
putfield com/alibaba/fastjson/parser/JSONScanner/ch C
L9:
aload 0
iconst_4
putfield com/alibaba/fastjson/parser/JSONScanner/matchStat I
lload 6
lreturn
L8:
iload 3
bipush 93
if_icmpne L10
aload 0
bipush 15
putfield com/alibaba/fastjson/parser/JSONScanner/token I
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/bp I
iconst_1
iadd
istore 3
aload 0
iload 3
putfield com/alibaba/fastjson/parser/JSONScanner/bp I
aload 0
aload 0
iload 3
invokevirtual com/alibaba/fastjson/parser/JSONScanner/charAt(I)C
putfield com/alibaba/fastjson/parser/JSONScanner/ch C
goto L9
L10:
iload 3
bipush 125
if_icmpne L11
aload 0
bipush 13
putfield com/alibaba/fastjson/parser/JSONScanner/token I
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/bp I
iconst_1
iadd
istore 3
aload 0
iload 3
putfield com/alibaba/fastjson/parser/JSONScanner/bp I
aload 0
aload 0
iload 3
invokevirtual com/alibaba/fastjson/parser/JSONScanner/charAt(I)C
putfield com/alibaba/fastjson/parser/JSONScanner/ch C
goto L9
L11:
iload 3
bipush 26
if_icmpne L12
aload 0
bipush 20
putfield com/alibaba/fastjson/parser/JSONScanner/token I
goto L9
L12:
aload 0
iload 5
putfield com/alibaba/fastjson/parser/JSONScanner/bp I
aload 0
iload 2
putfield com/alibaba/fastjson/parser/JSONScanner/ch C
aload 0
iconst_m1
putfield com/alibaba/fastjson/parser/JSONScanner/matchStat I
lconst_0
lreturn
L7:
aload 0
iconst_m1
putfield com/alibaba/fastjson/parser/JSONScanner/matchStat I
lconst_0
lreturn
.limit locals 8
.limit stack 4
.end method

.method public scanFieldString([C)Ljava/lang/String;
aload 0
iconst_0
putfield com/alibaba/fastjson/parser/JSONScanner/matchStat I
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/bp I
istore 7
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/ch C
istore 2
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/text Ljava/lang/String;
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/bp I
aload 1
invokestatic com/alibaba/fastjson/parser/JSONScanner/charArrayCompare(Ljava/lang/String;I[C)Z
ifne L0
aload 0
bipush -2
putfield com/alibaba/fastjson/parser/JSONScanner/matchStat I
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONScanner/stringDefaultValue()Ljava/lang/String;
areturn
L0:
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/bp I
aload 1
arraylength
iadd
istore 5
iload 5
iconst_1
iadd
istore 4
aload 0
iload 5
invokevirtual com/alibaba/fastjson/parser/JSONScanner/charAt(I)C
bipush 34
if_icmpeq L1
aload 0
iconst_m1
putfield com/alibaba/fastjson/parser/JSONScanner/matchStat I
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONScanner/stringDefaultValue()Ljava/lang/String;
areturn
L1:
iconst_0
istore 6
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/text Ljava/lang/String;
bipush 34
iload 4
invokevirtual java/lang/String/indexOf(II)I
istore 8
iload 8
iconst_m1
if_icmpne L2
new com/alibaba/fastjson/JSONException
dup
ldc "unclosed str"
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
L2:
aload 0
iload 4
iload 8
iload 4
isub
invokevirtual com/alibaba/fastjson/parser/JSONScanner/subString(II)Ljava/lang/String;
astore 1
iconst_0
istore 4
L3:
iload 6
istore 5
iload 4
aload 1
invokevirtual java/lang/String/length()I
if_icmpge L4
aload 1
iload 4
invokevirtual java/lang/String/charAt(I)C
bipush 92
if_icmpne L5
iconst_1
istore 5
L4:
iload 5
ifeq L6
aload 0
iconst_m1
putfield com/alibaba/fastjson/parser/JSONScanner/matchStat I
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONScanner/stringDefaultValue()Ljava/lang/String;
areturn
L5:
iload 4
iconst_1
iadd
istore 4
goto L3
L6:
aload 0
iload 8
iconst_1
iadd
putfield com/alibaba/fastjson/parser/JSONScanner/bp I
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/bp I
invokevirtual com/alibaba/fastjson/parser/JSONScanner/charAt(I)C
istore 3
aload 0
iload 3
putfield com/alibaba/fastjson/parser/JSONScanner/ch C
iload 3
bipush 44
if_icmpne L7
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/bp I
iconst_1
iadd
istore 4
aload 0
iload 4
putfield com/alibaba/fastjson/parser/JSONScanner/bp I
aload 0
aload 0
iload 4
invokevirtual com/alibaba/fastjson/parser/JSONScanner/charAt(I)C
putfield com/alibaba/fastjson/parser/JSONScanner/ch C
aload 0
iconst_3
putfield com/alibaba/fastjson/parser/JSONScanner/matchStat I
aload 1
areturn
L7:
iload 3
bipush 125
if_icmpne L8
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/bp I
iconst_1
iadd
istore 4
aload 0
iload 4
putfield com/alibaba/fastjson/parser/JSONScanner/bp I
aload 0
iload 4
invokevirtual com/alibaba/fastjson/parser/JSONScanner/charAt(I)C
istore 4
iload 4
bipush 44
if_icmpne L9
aload 0
bipush 16
putfield com/alibaba/fastjson/parser/JSONScanner/token I
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/bp I
iconst_1
iadd
istore 4
aload 0
iload 4
putfield com/alibaba/fastjson/parser/JSONScanner/bp I
aload 0
aload 0
iload 4
invokevirtual com/alibaba/fastjson/parser/JSONScanner/charAt(I)C
putfield com/alibaba/fastjson/parser/JSONScanner/ch C
L10:
aload 0
iconst_4
putfield com/alibaba/fastjson/parser/JSONScanner/matchStat I
aload 1
areturn
L9:
iload 4
bipush 93
if_icmpne L11
aload 0
bipush 15
putfield com/alibaba/fastjson/parser/JSONScanner/token I
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/bp I
iconst_1
iadd
istore 4
aload 0
iload 4
putfield com/alibaba/fastjson/parser/JSONScanner/bp I
aload 0
aload 0
iload 4
invokevirtual com/alibaba/fastjson/parser/JSONScanner/charAt(I)C
putfield com/alibaba/fastjson/parser/JSONScanner/ch C
goto L10
L11:
iload 4
bipush 125
if_icmpne L12
aload 0
bipush 13
putfield com/alibaba/fastjson/parser/JSONScanner/token I
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/bp I
iconst_1
iadd
istore 4
aload 0
iload 4
putfield com/alibaba/fastjson/parser/JSONScanner/bp I
aload 0
aload 0
iload 4
invokevirtual com/alibaba/fastjson/parser/JSONScanner/charAt(I)C
putfield com/alibaba/fastjson/parser/JSONScanner/ch C
goto L10
L12:
iload 4
bipush 26
if_icmpne L13
aload 0
bipush 20
putfield com/alibaba/fastjson/parser/JSONScanner/token I
goto L10
L13:
aload 0
iload 7
putfield com/alibaba/fastjson/parser/JSONScanner/bp I
aload 0
iload 2
putfield com/alibaba/fastjson/parser/JSONScanner/ch C
aload 0
iconst_m1
putfield com/alibaba/fastjson/parser/JSONScanner/matchStat I
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONScanner/stringDefaultValue()Ljava/lang/String;
areturn
L8:
aload 0
iconst_m1
putfield com/alibaba/fastjson/parser/JSONScanner/matchStat I
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONScanner/stringDefaultValue()Ljava/lang/String;
areturn
.limit locals 9
.limit stack 4
.end method

.method public scanFieldStringArray([CLjava/lang/Class;)Ljava/util/Collection;
.signature "([CLjava/lang/Class<*>;)Ljava/util/Collection<Ljava/lang/String;>;"
.catch java/lang/Exception from L0 to L1 using L2
aload 0
iconst_0
putfield com/alibaba/fastjson/parser/JSONScanner/matchStat I
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/text Ljava/lang/String;
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/bp I
aload 1
invokestatic com/alibaba/fastjson/parser/JSONScanner/charArrayCompare(Ljava/lang/String;I[C)Z
ifne L3
aload 0
bipush -2
putfield com/alibaba/fastjson/parser/JSONScanner/matchStat I
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
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/bp I
aload 1
arraylength
iadd
istore 4
iload 4
iconst_1
iadd
istore 5
aload 0
iload 4
invokevirtual com/alibaba/fastjson/parser/JSONScanner/charAt(I)C
bipush 91
if_icmpeq L6
aload 0
iconst_m1
putfield com/alibaba/fastjson/parser/JSONScanner/matchStat I
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
iload 5
iconst_1
iadd
istore 4
aload 0
iload 5
invokevirtual com/alibaba/fastjson/parser/JSONScanner/charAt(I)C
istore 5
L7:
iload 5
bipush 34
if_icmpeq L8
aload 0
iconst_m1
putfield com/alibaba/fastjson/parser/JSONScanner/matchStat I
aconst_null
areturn
L8:
iload 4
istore 5
L9:
iload 5
istore 6
iload 6
iconst_1
iadd
istore 5
aload 0
iload 6
invokevirtual com/alibaba/fastjson/parser/JSONScanner/charAt(I)C
istore 6
iload 6
bipush 34
if_icmpne L10
aload 2
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/text Ljava/lang/String;
iload 4
iload 5
iconst_1
isub
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
invokeinterface java/util/Collection/add(Ljava/lang/Object;)Z 1
pop
iload 5
iconst_1
iadd
istore 4
aload 0
iload 5
invokevirtual com/alibaba/fastjson/parser/JSONScanner/charAt(I)C
istore 5
iload 5
bipush 44
if_icmpne L11
aload 0
iload 4
invokevirtual com/alibaba/fastjson/parser/JSONScanner/charAt(I)C
istore 5
iload 4
iconst_1
iadd
istore 4
goto L7
L10:
iload 6
bipush 92
if_icmpne L12
aload 0
iconst_m1
putfield com/alibaba/fastjson/parser/JSONScanner/matchStat I
aconst_null
areturn
L11:
iload 5
bipush 93
if_icmpne L13
aload 0
iload 4
invokevirtual com/alibaba/fastjson/parser/JSONScanner/charAt(I)C
istore 5
aload 0
iload 4
iconst_1
iadd
putfield com/alibaba/fastjson/parser/JSONScanner/bp I
iload 5
bipush 44
if_icmpne L14
aload 0
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/bp I
invokevirtual com/alibaba/fastjson/parser/JSONScanner/charAt(I)C
putfield com/alibaba/fastjson/parser/JSONScanner/ch C
aload 0
iconst_3
putfield com/alibaba/fastjson/parser/JSONScanner/matchStat I
aload 2
areturn
L13:
aload 0
iconst_m1
putfield com/alibaba/fastjson/parser/JSONScanner/matchStat I
aconst_null
areturn
L14:
iload 5
bipush 125
if_icmpne L15
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/bp I
invokevirtual com/alibaba/fastjson/parser/JSONScanner/charAt(I)C
istore 3
iload 3
bipush 44
if_icmpne L16
aload 0
bipush 16
putfield com/alibaba/fastjson/parser/JSONScanner/token I
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/bp I
iconst_1
iadd
istore 4
aload 0
iload 4
putfield com/alibaba/fastjson/parser/JSONScanner/bp I
aload 0
aload 0
iload 4
invokevirtual com/alibaba/fastjson/parser/JSONScanner/charAt(I)C
putfield com/alibaba/fastjson/parser/JSONScanner/ch C
L17:
aload 0
iconst_4
putfield com/alibaba/fastjson/parser/JSONScanner/matchStat I
aload 2
areturn
L16:
iload 3
bipush 93
if_icmpne L18
aload 0
bipush 15
putfield com/alibaba/fastjson/parser/JSONScanner/token I
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/bp I
iconst_1
iadd
istore 4
aload 0
iload 4
putfield com/alibaba/fastjson/parser/JSONScanner/bp I
aload 0
aload 0
iload 4
invokevirtual com/alibaba/fastjson/parser/JSONScanner/charAt(I)C
putfield com/alibaba/fastjson/parser/JSONScanner/ch C
goto L17
L18:
iload 3
bipush 125
if_icmpne L19
aload 0
bipush 13
putfield com/alibaba/fastjson/parser/JSONScanner/token I
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/bp I
iconst_1
iadd
istore 4
aload 0
iload 4
putfield com/alibaba/fastjson/parser/JSONScanner/bp I
aload 0
aload 0
iload 4
invokevirtual com/alibaba/fastjson/parser/JSONScanner/charAt(I)C
putfield com/alibaba/fastjson/parser/JSONScanner/ch C
goto L17
L19:
iload 3
bipush 26
if_icmpne L20
aload 0
bipush 20
putfield com/alibaba/fastjson/parser/JSONScanner/token I
aload 0
iload 3
putfield com/alibaba/fastjson/parser/JSONScanner/ch C
goto L17
L20:
aload 0
iconst_m1
putfield com/alibaba/fastjson/parser/JSONScanner/matchStat I
aconst_null
areturn
L15:
aload 0
iconst_m1
putfield com/alibaba/fastjson/parser/JSONScanner/matchStat I
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
putfield com/alibaba/fastjson/parser/JSONScanner/matchStat I
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/text Ljava/lang/String;
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/bp I
aload 1
invokestatic com/alibaba/fastjson/parser/JSONScanner/charArrayCompare(Ljava/lang/String;I[C)Z
ifne L0
aload 0
bipush -2
putfield com/alibaba/fastjson/parser/JSONScanner/matchStat I
aconst_null
areturn
L0:
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/bp I
aload 1
arraylength
iadd
istore 4
iload 4
iconst_1
iadd
istore 6
aload 0
iload 4
invokevirtual com/alibaba/fastjson/parser/JSONScanner/charAt(I)C
bipush 34
if_icmpeq L1
aload 0
iconst_m1
putfield com/alibaba/fastjson/parser/JSONScanner/matchStat I
aconst_null
areturn
L1:
iconst_0
istore 4
iload 6
istore 5
L2:
iload 5
iconst_1
iadd
istore 7
aload 0
iload 5
invokevirtual com/alibaba/fastjson/parser/JSONScanner/charAt(I)C
istore 5
iload 5
bipush 34
if_icmpne L3
aload 0
iload 7
putfield com/alibaba/fastjson/parser/JSONScanner/bp I
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/bp I
invokevirtual com/alibaba/fastjson/parser/JSONScanner/charAt(I)C
istore 3
aload 0
iload 3
putfield com/alibaba/fastjson/parser/JSONScanner/ch C
aload 2
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/text Ljava/lang/String;
iload 6
iload 7
iload 6
isub
iconst_1
isub
iload 4
invokevirtual com/alibaba/fastjson/parser/SymbolTable/addSymbol(Ljava/lang/String;III)Ljava/lang/String;
astore 1
iload 3
bipush 44
if_icmpne L4
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/bp I
iconst_1
iadd
istore 4
aload 0
iload 4
putfield com/alibaba/fastjson/parser/JSONScanner/bp I
aload 0
aload 0
iload 4
invokevirtual com/alibaba/fastjson/parser/JSONScanner/charAt(I)C
putfield com/alibaba/fastjson/parser/JSONScanner/ch C
aload 0
iconst_3
putfield com/alibaba/fastjson/parser/JSONScanner/matchStat I
aload 1
areturn
L3:
iload 4
bipush 31
imul
iload 5
iadd
istore 4
iload 5
bipush 92
if_icmpne L5
aload 0
iconst_m1
putfield com/alibaba/fastjson/parser/JSONScanner/matchStat I
aconst_null
areturn
L4:
iload 3
bipush 125
if_icmpne L6
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/bp I
iconst_1
iadd
istore 4
aload 0
iload 4
putfield com/alibaba/fastjson/parser/JSONScanner/bp I
aload 0
iload 4
invokevirtual com/alibaba/fastjson/parser/JSONScanner/charAt(I)C
istore 4
iload 4
bipush 44
if_icmpne L7
aload 0
bipush 16
putfield com/alibaba/fastjson/parser/JSONScanner/token I
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/bp I
iconst_1
iadd
istore 4
aload 0
iload 4
putfield com/alibaba/fastjson/parser/JSONScanner/bp I
aload 0
aload 0
iload 4
invokevirtual com/alibaba/fastjson/parser/JSONScanner/charAt(I)C
putfield com/alibaba/fastjson/parser/JSONScanner/ch C
L8:
aload 0
iconst_4
putfield com/alibaba/fastjson/parser/JSONScanner/matchStat I
aload 1
areturn
L7:
iload 4
bipush 93
if_icmpne L9
aload 0
bipush 15
putfield com/alibaba/fastjson/parser/JSONScanner/token I
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/bp I
iconst_1
iadd
istore 4
aload 0
iload 4
putfield com/alibaba/fastjson/parser/JSONScanner/bp I
aload 0
aload 0
iload 4
invokevirtual com/alibaba/fastjson/parser/JSONScanner/charAt(I)C
putfield com/alibaba/fastjson/parser/JSONScanner/ch C
goto L8
L9:
iload 4
bipush 125
if_icmpne L10
aload 0
bipush 13
putfield com/alibaba/fastjson/parser/JSONScanner/token I
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/bp I
iconst_1
iadd
istore 4
aload 0
iload 4
putfield com/alibaba/fastjson/parser/JSONScanner/bp I
aload 0
aload 0
iload 4
invokevirtual com/alibaba/fastjson/parser/JSONScanner/charAt(I)C
putfield com/alibaba/fastjson/parser/JSONScanner/ch C
goto L8
L10:
iload 4
bipush 26
if_icmpne L11
aload 0
bipush 20
putfield com/alibaba/fastjson/parser/JSONScanner/token I
goto L8
L11:
aload 0
iconst_m1
putfield com/alibaba/fastjson/parser/JSONScanner/matchStat I
aconst_null
areturn
L6:
aload 0
iconst_m1
putfield com/alibaba/fastjson/parser/JSONScanner/matchStat I
aconst_null
areturn
L5:
iload 7
istore 5
goto L2
.limit locals 8
.limit stack 5
.end method

.method public scanISO8601DateIfMatch()Z
aload 0
iconst_1
invokevirtual com/alibaba/fastjson/parser/JSONScanner/scanISO8601DateIfMatch(Z)Z
ireturn
.limit locals 1
.limit stack 2
.end method

.method public scanISO8601DateIfMatch(Z)Z
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/text Ljava/lang/String;
invokevirtual java/lang/String/length()I
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/bp I
isub
istore 13
iload 1
ifne L0
iload 13
bipush 13
if_icmple L0
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/bp I
invokevirtual com/alibaba/fastjson/parser/JSONScanner/charAt(I)C
istore 10
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/bp I
iconst_1
iadd
invokevirtual com/alibaba/fastjson/parser/JSONScanner/charAt(I)C
istore 11
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/bp I
iconst_2
iadd
invokevirtual com/alibaba/fastjson/parser/JSONScanner/charAt(I)C
istore 12
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/bp I
iconst_3
iadd
invokevirtual com/alibaba/fastjson/parser/JSONScanner/charAt(I)C
istore 14
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/bp I
iconst_4
iadd
invokevirtual com/alibaba/fastjson/parser/JSONScanner/charAt(I)C
istore 15
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/bp I
iconst_5
iadd
invokevirtual com/alibaba/fastjson/parser/JSONScanner/charAt(I)C
istore 16
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/bp I
iload 13
iadd
iconst_1
isub
invokevirtual com/alibaba/fastjson/parser/JSONScanner/charAt(I)C
istore 17
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/bp I
iload 13
iadd
iconst_2
isub
invokevirtual com/alibaba/fastjson/parser/JSONScanner/charAt(I)C
istore 18
iload 10
bipush 47
if_icmpne L0
iload 11
bipush 68
if_icmpne L0
iload 12
bipush 97
if_icmpne L0
iload 14
bipush 116
if_icmpne L0
iload 15
bipush 101
if_icmpne L0
iload 16
bipush 40
if_icmpne L0
iload 17
bipush 47
if_icmpne L0
iload 18
bipush 41
if_icmpne L0
iconst_m1
istore 11
bipush 6
istore 10
L1:
iload 10
iload 13
if_icmpge L2
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/bp I
iload 10
iadd
invokevirtual com/alibaba/fastjson/parser/JSONScanner/charAt(I)C
istore 14
iload 14
bipush 43
if_icmpne L3
iload 10
istore 12
L4:
iload 10
iconst_1
iadd
istore 10
iload 12
istore 11
goto L1
L3:
iload 14
bipush 48
if_icmplt L2
iload 11
istore 12
iload 14
bipush 57
if_icmple L4
L2:
iload 11
iconst_m1
if_icmpne L5
iconst_0
ireturn
L5:
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/bp I
bipush 6
iadd
istore 10
aload 0
iload 10
iload 11
iload 10
isub
invokevirtual com/alibaba/fastjson/parser/JSONScanner/subString(II)Ljava/lang/String;
invokestatic java/lang/Long/parseLong(Ljava/lang/String;)J
lstore 19
invokestatic java/util/Locale/getDefault()Ljava/util/Locale;
astore 21
aload 0
invokestatic java/util/TimeZone/getDefault()Ljava/util/TimeZone;
aload 21
invokestatic java/util/Calendar/getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;
putfield com/alibaba/fastjson/parser/JSONScanner/calendar Ljava/util/Calendar;
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/calendar Ljava/util/Calendar;
lload 19
invokevirtual java/util/Calendar/setTimeInMillis(J)V
aload 0
iconst_5
putfield com/alibaba/fastjson/parser/JSONScanner/token I
iconst_1
ireturn
L0:
iload 13
bipush 8
if_icmpeq L6
iload 13
bipush 14
if_icmpeq L6
iload 13
bipush 17
if_icmpne L7
L6:
iload 1
ifeq L8
iconst_0
ireturn
L8:
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/bp I
invokevirtual com/alibaba/fastjson/parser/JSONScanner/charAt(I)C
istore 2
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/bp I
iconst_1
iadd
invokevirtual com/alibaba/fastjson/parser/JSONScanner/charAt(I)C
istore 3
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/bp I
iconst_2
iadd
invokevirtual com/alibaba/fastjson/parser/JSONScanner/charAt(I)C
istore 4
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/bp I
iconst_3
iadd
invokevirtual com/alibaba/fastjson/parser/JSONScanner/charAt(I)C
istore 5
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/bp I
iconst_4
iadd
invokevirtual com/alibaba/fastjson/parser/JSONScanner/charAt(I)C
istore 6
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/bp I
iconst_5
iadd
invokevirtual com/alibaba/fastjson/parser/JSONScanner/charAt(I)C
istore 7
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/bp I
bipush 6
iadd
invokevirtual com/alibaba/fastjson/parser/JSONScanner/charAt(I)C
istore 8
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/bp I
bipush 7
iadd
invokevirtual com/alibaba/fastjson/parser/JSONScanner/charAt(I)C
istore 9
iload 2
iload 3
iload 4
iload 5
iload 6
iload 7
iload 8
iload 9
invokestatic com/alibaba/fastjson/parser/JSONScanner/checkDate(CCCCCCII)Z
ifne L9
iconst_0
ireturn
L9:
aload 0
iload 2
iload 3
iload 4
iload 5
iload 6
iload 7
iload 8
iload 9
invokespecial com/alibaba/fastjson/parser/JSONScanner/setCalendar(CCCCCCCC)V
iload 13
bipush 8
if_icmpeq L10
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/bp I
bipush 8
iadd
invokevirtual com/alibaba/fastjson/parser/JSONScanner/charAt(I)C
istore 2
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/bp I
bipush 9
iadd
invokevirtual com/alibaba/fastjson/parser/JSONScanner/charAt(I)C
istore 3
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/bp I
bipush 10
iadd
invokevirtual com/alibaba/fastjson/parser/JSONScanner/charAt(I)C
istore 4
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/bp I
bipush 11
iadd
invokevirtual com/alibaba/fastjson/parser/JSONScanner/charAt(I)C
istore 5
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/bp I
bipush 12
iadd
invokevirtual com/alibaba/fastjson/parser/JSONScanner/charAt(I)C
istore 6
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/bp I
bipush 13
iadd
invokevirtual com/alibaba/fastjson/parser/JSONScanner/charAt(I)C
istore 7
aload 0
iload 2
iload 3
iload 4
iload 5
iload 6
iload 7
invokespecial com/alibaba/fastjson/parser/JSONScanner/checkTime(CCCCCC)Z
ifne L11
iconst_0
ireturn
L11:
iload 13
bipush 17
if_icmpne L12
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/bp I
bipush 14
iadd
invokevirtual com/alibaba/fastjson/parser/JSONScanner/charAt(I)C
istore 10
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/bp I
bipush 15
iadd
invokevirtual com/alibaba/fastjson/parser/JSONScanner/charAt(I)C
istore 11
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/bp I
bipush 16
iadd
invokevirtual com/alibaba/fastjson/parser/JSONScanner/charAt(I)C
istore 12
iload 10
bipush 48
if_icmplt L13
iload 10
bipush 57
if_icmple L14
L13:
iconst_0
ireturn
L14:
iload 11
bipush 48
if_icmplt L15
iload 11
bipush 57
if_icmple L16
L15:
iconst_0
ireturn
L16:
iload 12
bipush 48
if_icmplt L17
iload 12
bipush 57
if_icmple L18
L17:
iconst_0
ireturn
L18:
getstatic com/alibaba/fastjson/parser/JSONScanner/digits [I
iload 10
iaload
bipush 100
imul
getstatic com/alibaba/fastjson/parser/JSONScanner/digits [I
iload 11
iaload
bipush 10
imul
iadd
getstatic com/alibaba/fastjson/parser/JSONScanner/digits [I
iload 12
iaload
iadd
istore 10
L19:
getstatic com/alibaba/fastjson/parser/JSONScanner/digits [I
iload 2
iaload
bipush 10
imul
getstatic com/alibaba/fastjson/parser/JSONScanner/digits [I
iload 3
iaload
iadd
istore 14
getstatic com/alibaba/fastjson/parser/JSONScanner/digits [I
iload 4
iaload
bipush 10
imul
getstatic com/alibaba/fastjson/parser/JSONScanner/digits [I
iload 5
iaload
iadd
istore 12
getstatic com/alibaba/fastjson/parser/JSONScanner/digits [I
iload 6
iaload
bipush 10
imul
getstatic com/alibaba/fastjson/parser/JSONScanner/digits [I
iload 7
iaload
iadd
istore 13
iload 10
istore 11
iload 14
istore 10
L20:
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/calendar Ljava/util/Calendar;
bipush 11
iload 10
invokevirtual java/util/Calendar/set(II)V
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/calendar Ljava/util/Calendar;
bipush 12
iload 12
invokevirtual java/util/Calendar/set(II)V
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/calendar Ljava/util/Calendar;
bipush 13
iload 13
invokevirtual java/util/Calendar/set(II)V
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/calendar Ljava/util/Calendar;
bipush 14
iload 11
invokevirtual java/util/Calendar/set(II)V
aload 0
iconst_5
putfield com/alibaba/fastjson/parser/JSONScanner/token I
iconst_1
ireturn
L12:
iconst_0
istore 10
goto L19
L10:
iconst_0
istore 10
iconst_0
istore 12
iconst_0
istore 13
iconst_0
istore 11
goto L20
L7:
iload 13
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/ISO8601_LEN_0 I
if_icmpge L21
iconst_0
ireturn
L21:
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/bp I
iconst_4
iadd
invokevirtual com/alibaba/fastjson/parser/JSONScanner/charAt(I)C
bipush 45
if_icmpeq L22
iconst_0
ireturn
L22:
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/bp I
bipush 7
iadd
invokevirtual com/alibaba/fastjson/parser/JSONScanner/charAt(I)C
bipush 45
if_icmpeq L23
iconst_0
ireturn
L23:
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/bp I
invokevirtual com/alibaba/fastjson/parser/JSONScanner/charAt(I)C
istore 2
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/bp I
iconst_1
iadd
invokevirtual com/alibaba/fastjson/parser/JSONScanner/charAt(I)C
istore 3
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/bp I
iconst_2
iadd
invokevirtual com/alibaba/fastjson/parser/JSONScanner/charAt(I)C
istore 4
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/bp I
iconst_3
iadd
invokevirtual com/alibaba/fastjson/parser/JSONScanner/charAt(I)C
istore 5
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/bp I
iconst_5
iadd
invokevirtual com/alibaba/fastjson/parser/JSONScanner/charAt(I)C
istore 6
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/bp I
bipush 6
iadd
invokevirtual com/alibaba/fastjson/parser/JSONScanner/charAt(I)C
istore 7
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/bp I
bipush 8
iadd
invokevirtual com/alibaba/fastjson/parser/JSONScanner/charAt(I)C
istore 8
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/bp I
bipush 9
iadd
invokevirtual com/alibaba/fastjson/parser/JSONScanner/charAt(I)C
istore 9
iload 2
iload 3
iload 4
iload 5
iload 6
iload 7
iload 8
iload 9
invokestatic com/alibaba/fastjson/parser/JSONScanner/checkDate(CCCCCCII)Z
ifne L24
iconst_0
ireturn
L24:
aload 0
iload 2
iload 3
iload 4
iload 5
iload 6
iload 7
iload 8
iload 9
invokespecial com/alibaba/fastjson/parser/JSONScanner/setCalendar(CCCCCCCC)V
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/bp I
bipush 10
iadd
invokevirtual com/alibaba/fastjson/parser/JSONScanner/charAt(I)C
istore 10
iload 10
bipush 84
if_icmpeq L25
iload 10
bipush 32
if_icmpne L26
iload 1
ifne L26
L25:
iload 13
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/ISO8601_LEN_1 I
if_icmpge L27
iconst_0
ireturn
L26:
iload 10
bipush 34
if_icmpeq L28
iload 10
bipush 26
if_icmpne L29
L28:
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/calendar Ljava/util/Calendar;
bipush 11
iconst_0
invokevirtual java/util/Calendar/set(II)V
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/calendar Ljava/util/Calendar;
bipush 12
iconst_0
invokevirtual java/util/Calendar/set(II)V
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/calendar Ljava/util/Calendar;
bipush 13
iconst_0
invokevirtual java/util/Calendar/set(II)V
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/calendar Ljava/util/Calendar;
bipush 14
iconst_0
invokevirtual java/util/Calendar/set(II)V
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/bp I
bipush 10
iadd
istore 10
aload 0
iload 10
putfield com/alibaba/fastjson/parser/JSONScanner/bp I
aload 0
aload 0
iload 10
invokevirtual com/alibaba/fastjson/parser/JSONScanner/charAt(I)C
putfield com/alibaba/fastjson/parser/JSONScanner/ch C
aload 0
iconst_5
putfield com/alibaba/fastjson/parser/JSONScanner/token I
iconst_1
ireturn
L29:
iconst_0
ireturn
L27:
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/bp I
bipush 13
iadd
invokevirtual com/alibaba/fastjson/parser/JSONScanner/charAt(I)C
bipush 58
if_icmpeq L30
iconst_0
ireturn
L30:
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/bp I
bipush 16
iadd
invokevirtual com/alibaba/fastjson/parser/JSONScanner/charAt(I)C
bipush 58
if_icmpeq L31
iconst_0
ireturn
L31:
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/bp I
bipush 11
iadd
invokevirtual com/alibaba/fastjson/parser/JSONScanner/charAt(I)C
istore 2
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/bp I
bipush 12
iadd
invokevirtual com/alibaba/fastjson/parser/JSONScanner/charAt(I)C
istore 3
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/bp I
bipush 14
iadd
invokevirtual com/alibaba/fastjson/parser/JSONScanner/charAt(I)C
istore 4
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/bp I
bipush 15
iadd
invokevirtual com/alibaba/fastjson/parser/JSONScanner/charAt(I)C
istore 5
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/bp I
bipush 17
iadd
invokevirtual com/alibaba/fastjson/parser/JSONScanner/charAt(I)C
istore 6
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/bp I
bipush 18
iadd
invokevirtual com/alibaba/fastjson/parser/JSONScanner/charAt(I)C
istore 7
aload 0
iload 2
iload 3
iload 4
iload 5
iload 6
iload 7
invokespecial com/alibaba/fastjson/parser/JSONScanner/checkTime(CCCCCC)Z
ifne L32
iconst_0
ireturn
L32:
getstatic com/alibaba/fastjson/parser/JSONScanner/digits [I
iload 2
iaload
istore 10
getstatic com/alibaba/fastjson/parser/JSONScanner/digits [I
iload 3
iaload
istore 11
getstatic com/alibaba/fastjson/parser/JSONScanner/digits [I
iload 4
iaload
istore 12
getstatic com/alibaba/fastjson/parser/JSONScanner/digits [I
iload 5
iaload
istore 14
getstatic com/alibaba/fastjson/parser/JSONScanner/digits [I
iload 6
iaload
istore 15
getstatic com/alibaba/fastjson/parser/JSONScanner/digits [I
iload 7
iaload
istore 16
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/calendar Ljava/util/Calendar;
bipush 11
iload 10
bipush 10
imul
iload 11
iadd
invokevirtual java/util/Calendar/set(II)V
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/calendar Ljava/util/Calendar;
bipush 12
iload 12
bipush 10
imul
iload 14
iadd
invokevirtual java/util/Calendar/set(II)V
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/calendar Ljava/util/Calendar;
bipush 13
iload 15
bipush 10
imul
iload 16
iadd
invokevirtual java/util/Calendar/set(II)V
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/bp I
bipush 19
iadd
invokevirtual com/alibaba/fastjson/parser/JSONScanner/charAt(I)C
bipush 46
if_icmpne L33
iload 13
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/ISO8601_LEN_2 I
if_icmpge L34
iconst_0
ireturn
L33:
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/calendar Ljava/util/Calendar;
bipush 14
iconst_0
invokevirtual java/util/Calendar/set(II)V
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/bp I
bipush 19
iadd
istore 10
aload 0
iload 10
putfield com/alibaba/fastjson/parser/JSONScanner/bp I
aload 0
aload 0
iload 10
invokevirtual com/alibaba/fastjson/parser/JSONScanner/charAt(I)C
putfield com/alibaba/fastjson/parser/JSONScanner/ch C
aload 0
iconst_5
putfield com/alibaba/fastjson/parser/JSONScanner/token I
iconst_1
ireturn
L34:
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/bp I
bipush 20
iadd
invokevirtual com/alibaba/fastjson/parser/JSONScanner/charAt(I)C
istore 11
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/bp I
bipush 21
iadd
invokevirtual com/alibaba/fastjson/parser/JSONScanner/charAt(I)C
istore 12
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/bp I
bipush 22
iadd
invokevirtual com/alibaba/fastjson/parser/JSONScanner/charAt(I)C
istore 10
iload 11
bipush 48
if_icmplt L35
iload 11
bipush 57
if_icmple L36
L35:
iconst_0
ireturn
L36:
iload 12
bipush 48
if_icmplt L37
iload 12
bipush 57
if_icmple L38
L37:
iconst_0
ireturn
L38:
iload 10
bipush 48
if_icmplt L39
iload 10
bipush 57
if_icmple L40
L39:
iconst_0
ireturn
L40:
getstatic com/alibaba/fastjson/parser/JSONScanner/digits [I
iload 11
iaload
istore 11
getstatic com/alibaba/fastjson/parser/JSONScanner/digits [I
iload 12
iaload
istore 12
getstatic com/alibaba/fastjson/parser/JSONScanner/digits [I
iload 10
iaload
istore 10
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/calendar Ljava/util/Calendar;
bipush 14
iload 11
bipush 100
imul
iload 12
bipush 10
imul
iadd
iload 10
iadd
invokevirtual java/util/Calendar/set(II)V
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/bp I
bipush 23
iadd
istore 10
aload 0
iload 10
putfield com/alibaba/fastjson/parser/JSONScanner/bp I
aload 0
aload 0
iload 10
invokevirtual com/alibaba/fastjson/parser/JSONScanner/charAt(I)C
putfield com/alibaba/fastjson/parser/JSONScanner/ch C
aload 0
iconst_5
putfield com/alibaba/fastjson/parser/JSONScanner/token I
iconst_1
ireturn
.limit locals 22
.limit stack 9
.end method

.method public final scanType(Ljava/lang/String;)I
iconst_m1
istore 4
aload 0
iconst_0
putfield com/alibaba/fastjson/parser/JSONScanner/matchStat I
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/text Ljava/lang/String;
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/bp I
getstatic com/alibaba/fastjson/parser/JSONScanner/typeFieldName [C
invokestatic com/alibaba/fastjson/parser/JSONScanner/charArrayCompare(Ljava/lang/String;I[C)Z
ifne L0
bipush -2
istore 2
L1:
iload 2
ireturn
L0:
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/bp I
getstatic com/alibaba/fastjson/parser/JSONScanner/typeFieldName [C
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
invokevirtual com/alibaba/fastjson/parser/JSONScanner/charAt(I)C
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
invokevirtual com/alibaba/fastjson/parser/JSONScanner/charAt(I)C
bipush 34
if_icmpne L1
iload 3
iconst_1
iadd
istore 3
aload 0
aload 0
iload 3
invokevirtual com/alibaba/fastjson/parser/JSONScanner/charAt(I)C
putfield com/alibaba/fastjson/parser/JSONScanner/ch C
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/ch C
bipush 44
if_icmpne L4
iload 3
iconst_1
iadd
istore 2
aload 0
aload 0
iload 2
invokevirtual com/alibaba/fastjson/parser/JSONScanner/charAt(I)C
putfield com/alibaba/fastjson/parser/JSONScanner/ch C
aload 0
iload 2
putfield com/alibaba/fastjson/parser/JSONScanner/bp I
aload 0
bipush 16
putfield com/alibaba/fastjson/parser/JSONScanner/token I
iconst_3
ireturn
L4:
iload 3
istore 2
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/ch C
bipush 125
if_icmpne L5
iload 3
iconst_1
iadd
istore 3
aload 0
aload 0
iload 3
invokevirtual com/alibaba/fastjson/parser/JSONScanner/charAt(I)C
putfield com/alibaba/fastjson/parser/JSONScanner/ch C
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/ch C
bipush 44
if_icmpne L6
aload 0
bipush 16
putfield com/alibaba/fastjson/parser/JSONScanner/token I
iload 3
iconst_1
iadd
istore 2
aload 0
aload 0
iload 2
invokevirtual com/alibaba/fastjson/parser/JSONScanner/charAt(I)C
putfield com/alibaba/fastjson/parser/JSONScanner/ch C
L7:
aload 0
iconst_4
putfield com/alibaba/fastjson/parser/JSONScanner/matchStat I
L5:
aload 0
iload 2
putfield com/alibaba/fastjson/parser/JSONScanner/bp I
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/matchStat I
ireturn
L6:
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/ch C
bipush 93
if_icmpne L8
aload 0
bipush 15
putfield com/alibaba/fastjson/parser/JSONScanner/token I
iload 3
iconst_1
iadd
istore 2
aload 0
aload 0
iload 2
invokevirtual com/alibaba/fastjson/parser/JSONScanner/charAt(I)C
putfield com/alibaba/fastjson/parser/JSONScanner/ch C
goto L7
L8:
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/ch C
bipush 125
if_icmpne L9
aload 0
bipush 13
putfield com/alibaba/fastjson/parser/JSONScanner/token I
iload 3
iconst_1
iadd
istore 2
aload 0
aload 0
iload 2
invokevirtual com/alibaba/fastjson/parser/JSONScanner/charAt(I)C
putfield com/alibaba/fastjson/parser/JSONScanner/ch C
goto L7
L9:
iload 4
istore 2
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/ch C
bipush 26
if_icmpne L1
aload 0
bipush 20
putfield com/alibaba/fastjson/parser/JSONScanner/token I
iload 3
istore 2
goto L7
.limit locals 7
.limit stack 4
.end method

.method public final stringVal()Ljava/lang/String;
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/hasSpecial Z
ifne L0
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/text Ljava/lang/String;
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/np I
iconst_1
iadd
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/np I
iconst_1
iadd
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/sp I
iadd
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
areturn
L0:
new java/lang/String
dup
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/sbuf [C
iconst_0
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/sp I
invokespecial java/lang/String/<init>([CII)V
areturn
.limit locals 1
.limit stack 5
.end method

.method public final subString(II)Ljava/lang/String;
aload 0
getfield com/alibaba/fastjson/parser/JSONScanner/text Ljava/lang/String;
iload 1
iload 1
iload 2
iadd
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
areturn
.limit locals 3
.limit stack 4
.end method
