.bytecode 50.0
.class public synchronized com/common/android/utils/LunarCalendarUtils
.super java/lang/Object

.field private static final 'Animals' [Ljava/lang/String;

.field private static final 'Gan' [Ljava/lang/String;

.field private static final 'Zhi' [Ljava/lang/String;

.field private static 'lunarInfo' [J

.field public static final 'nStr1' [Ljava/lang/String;

.field private static 'sdf' Ljava/text/SimpleDateFormat;
.annotation invisible Landroid/annotation/SuppressLint;
value [s = "SimpleDateFormat" 
.end annotation
.end field

.method static <clinit>()V
new java/text/SimpleDateFormat
dup
ldc "yyyy\u5e74M\u6708d\u65e5 EEEEE"
invokespecial java/text/SimpleDateFormat/<init>(Ljava/lang/String;)V
putstatic com/common/android/utils/LunarCalendarUtils/sdf Ljava/text/SimpleDateFormat;
sipush 150
newarray long
dup
iconst_0
ldc2_w 19416L
lastore
dup
iconst_1
ldc2_w 19168L
lastore
dup
iconst_2
ldc2_w 42352L
lastore
dup
iconst_3
ldc2_w 21717L
lastore
dup
iconst_4
ldc2_w 53856L
lastore
dup
iconst_5
ldc2_w 55632L
lastore
dup
bipush 6
ldc2_w 91476L
lastore
dup
bipush 7
ldc2_w 22176L
lastore
dup
bipush 8
ldc2_w 39632L
lastore
dup
bipush 9
ldc2_w 21970L
lastore
dup
bipush 10
ldc2_w 19168L
lastore
dup
bipush 11
ldc2_w 42422L
lastore
dup
bipush 12
ldc2_w 42192L
lastore
dup
bipush 13
ldc2_w 53840L
lastore
dup
bipush 14
ldc2_w 119381L
lastore
dup
bipush 15
ldc2_w 46400L
lastore
dup
bipush 16
ldc2_w 54944L
lastore
dup
bipush 17
ldc2_w 44450L
lastore
dup
bipush 18
ldc2_w 38320L
lastore
dup
bipush 19
ldc2_w 84343L
lastore
dup
bipush 20
ldc2_w 18800L
lastore
dup
bipush 21
ldc2_w 42160L
lastore
dup
bipush 22
ldc2_w 46261L
lastore
dup
bipush 23
ldc2_w 27216L
lastore
dup
bipush 24
ldc2_w 27968L
lastore
dup
bipush 25
ldc2_w 109396L
lastore
dup
bipush 26
ldc2_w 11104L
lastore
dup
bipush 27
ldc2_w 38256L
lastore
dup
bipush 28
ldc2_w 21234L
lastore
dup
bipush 29
ldc2_w 18800L
lastore
dup
bipush 30
ldc2_w 25958L
lastore
dup
bipush 31
ldc2_w 54432L
lastore
dup
bipush 32
ldc2_w 59984L
lastore
dup
bipush 33
ldc2_w 28309L
lastore
dup
bipush 34
ldc2_w 23248L
lastore
dup
bipush 35
ldc2_w 11104L
lastore
dup
bipush 36
ldc2_w 100067L
lastore
dup
bipush 37
ldc2_w 37600L
lastore
dup
bipush 38
ldc2_w 116951L
lastore
dup
bipush 39
ldc2_w 51536L
lastore
dup
bipush 40
ldc2_w 54432L
lastore
dup
bipush 41
ldc2_w 120998L
lastore
dup
bipush 42
ldc2_w 46416L
lastore
dup
bipush 43
ldc2_w 22176L
lastore
dup
bipush 44
ldc2_w 107956L
lastore
dup
bipush 45
ldc2_w 9680L
lastore
dup
bipush 46
ldc2_w 37584L
lastore
dup
bipush 47
ldc2_w 53938L
lastore
dup
bipush 48
ldc2_w 43344L
lastore
dup
bipush 49
ldc2_w 46423L
lastore
dup
bipush 50
ldc2_w 27808L
lastore
dup
bipush 51
ldc2_w 46416L
lastore
dup
bipush 52
ldc2_w 86869L
lastore
dup
bipush 53
ldc2_w 19872L
lastore
dup
bipush 54
ldc2_w 42448L
lastore
dup
bipush 55
ldc2_w 83315L
lastore
dup
bipush 56
ldc2_w 21200L
lastore
dup
bipush 57
ldc2_w 43432L
lastore
dup
bipush 58
ldc2_w 59728L
lastore
dup
bipush 59
ldc2_w 27296L
lastore
dup
bipush 60
ldc2_w 44710L
lastore
dup
bipush 61
ldc2_w 43856L
lastore
dup
bipush 62
ldc2_w 19296L
lastore
dup
bipush 63
ldc2_w 43748L
lastore
dup
bipush 64
ldc2_w 42352L
lastore
dup
bipush 65
ldc2_w 21088L
lastore
dup
bipush 66
ldc2_w 62051L
lastore
dup
bipush 67
ldc2_w 55632L
lastore
dup
bipush 68
ldc2_w 23383L
lastore
dup
bipush 69
ldc2_w 22176L
lastore
dup
bipush 70
ldc2_w 38608L
lastore
dup
bipush 71
ldc2_w 19925L
lastore
dup
bipush 72
ldc2_w 19152L
lastore
dup
bipush 73
ldc2_w 42192L
lastore
dup
bipush 74
ldc2_w 54484L
lastore
dup
bipush 75
ldc2_w 53840L
lastore
dup
bipush 76
ldc2_w 54616L
lastore
dup
bipush 77
ldc2_w 46400L
lastore
dup
bipush 78
ldc2_w 46496L
lastore
dup
bipush 79
ldc2_w 103846L
lastore
dup
bipush 80
ldc2_w 38320L
lastore
dup
bipush 81
ldc2_w 18864L
lastore
dup
bipush 82
ldc2_w 43380L
lastore
dup
bipush 83
ldc2_w 42160L
lastore
dup
bipush 84
ldc2_w 45690L
lastore
dup
bipush 85
ldc2_w 27216L
lastore
dup
bipush 86
ldc2_w 27968L
lastore
dup
bipush 87
ldc2_w 44870L
lastore
dup
bipush 88
ldc2_w 43872L
lastore
dup
bipush 89
ldc2_w 38256L
lastore
dup
bipush 90
ldc2_w 19189L
lastore
dup
bipush 91
ldc2_w 18800L
lastore
dup
bipush 92
ldc2_w 25776L
lastore
dup
bipush 93
ldc2_w 29859L
lastore
dup
bipush 94
ldc2_w 59984L
lastore
dup
bipush 95
ldc2_w 27480L
lastore
dup
bipush 96
ldc2_w 21952L
lastore
dup
bipush 97
ldc2_w 43872L
lastore
dup
bipush 98
ldc2_w 38613L
lastore
dup
bipush 99
ldc2_w 37600L
lastore
dup
bipush 100
ldc2_w 51552L
lastore
dup
bipush 101
ldc2_w 55636L
lastore
dup
bipush 102
ldc2_w 54432L
lastore
dup
bipush 103
ldc2_w 55888L
lastore
dup
bipush 104
ldc2_w 30034L
lastore
dup
bipush 105
ldc2_w 22176L
lastore
dup
bipush 106
ldc2_w 43959L
lastore
dup
bipush 107
ldc2_w 9680L
lastore
dup
bipush 108
ldc2_w 37584L
lastore
dup
bipush 109
ldc2_w 51893L
lastore
dup
bipush 110
ldc2_w 43344L
lastore
dup
bipush 111
ldc2_w 46240L
lastore
dup
bipush 112
ldc2_w 47780L
lastore
dup
bipush 113
ldc2_w 44368L
lastore
dup
bipush 114
ldc2_w 21977L
lastore
dup
bipush 115
ldc2_w 19360L
lastore
dup
bipush 116
ldc2_w 42416L
lastore
dup
bipush 117
ldc2_w 86390L
lastore
dup
bipush 118
ldc2_w 21168L
lastore
dup
bipush 119
ldc2_w 43312L
lastore
dup
bipush 120
ldc2_w 31060L
lastore
dup
bipush 121
ldc2_w 27296L
lastore
dup
bipush 122
ldc2_w 44368L
lastore
dup
bipush 123
ldc2_w 23378L
lastore
dup
bipush 124
ldc2_w 19296L
lastore
dup
bipush 125
ldc2_w 42726L
lastore
dup
bipush 126
ldc2_w 42208L
lastore
dup
bipush 127
ldc2_w 53856L
lastore
dup
sipush 128
ldc2_w 60005L
lastore
dup
sipush 129
ldc2_w 54576L
lastore
dup
sipush 130
ldc2_w 23200L
lastore
dup
sipush 131
ldc2_w 30371L
lastore
dup
sipush 132
ldc2_w 38608L
lastore
dup
sipush 133
ldc2_w 19415L
lastore
dup
sipush 134
ldc2_w 19152L
lastore
dup
sipush 135
ldc2_w 42192L
lastore
dup
sipush 136
ldc2_w 118966L
lastore
dup
sipush 137
ldc2_w 53840L
lastore
dup
sipush 138
ldc2_w 54560L
lastore
dup
sipush 139
ldc2_w 56645L
lastore
dup
sipush 140
ldc2_w 46496L
lastore
dup
sipush 141
ldc2_w 22224L
lastore
dup
sipush 142
ldc2_w 21938L
lastore
dup
sipush 143
ldc2_w 18864L
lastore
dup
sipush 144
ldc2_w 42359L
lastore
dup
sipush 145
ldc2_w 42160L
lastore
dup
sipush 146
ldc2_w 43600L
lastore
dup
sipush 147
ldc2_w 111189L
lastore
dup
sipush 148
ldc2_w 27936L
lastore
dup
sipush 149
ldc2_w 44448L
lastore
putstatic com/common/android/utils/LunarCalendarUtils/lunarInfo [J
bipush 13
anewarray java/lang/String
dup
iconst_0
ldc ""
aastore
dup
iconst_1
ldc "\u6b63"
aastore
dup
iconst_2
ldc "\u4e8c"
aastore
dup
iconst_3
ldc "\u4e09"
aastore
dup
iconst_4
ldc "\u56db"
aastore
dup
iconst_5
ldc "\u4e94"
aastore
dup
bipush 6
ldc "\u516d"
aastore
dup
bipush 7
ldc "\u4e03"
aastore
dup
bipush 8
ldc "\u516b"
aastore
dup
bipush 9
ldc "\u4e5d"
aastore
dup
bipush 10
ldc "\u5341"
aastore
dup
bipush 11
ldc "\u5341\u4e00"
aastore
dup
bipush 12
ldc "\u5341\u4e8c"
aastore
putstatic com/common/android/utils/LunarCalendarUtils/nStr1 [Ljava/lang/String;
bipush 10
anewarray java/lang/String
dup
iconst_0
ldc "\u7532"
aastore
dup
iconst_1
ldc "\u4e59"
aastore
dup
iconst_2
ldc "\u4e19"
aastore
dup
iconst_3
ldc "\u4e01"
aastore
dup
iconst_4
ldc "\u620a"
aastore
dup
iconst_5
ldc "\u5df1"
aastore
dup
bipush 6
ldc "\u5e9a"
aastore
dup
bipush 7
ldc "\u8f9b"
aastore
dup
bipush 8
ldc "\u58ec"
aastore
dup
bipush 9
ldc "\u7678"
aastore
putstatic com/common/android/utils/LunarCalendarUtils/Gan [Ljava/lang/String;
bipush 12
anewarray java/lang/String
dup
iconst_0
ldc "\u5b50"
aastore
dup
iconst_1
ldc "\u4e11"
aastore
dup
iconst_2
ldc "\u5bc5"
aastore
dup
iconst_3
ldc "\u536f"
aastore
dup
iconst_4
ldc "\u8fb0"
aastore
dup
iconst_5
ldc "\u5df3"
aastore
dup
bipush 6
ldc "\u5348"
aastore
dup
bipush 7
ldc "\u672a"
aastore
dup
bipush 8
ldc "\u7533"
aastore
dup
bipush 9
ldc "\u9149"
aastore
dup
bipush 10
ldc "\u620c"
aastore
dup
bipush 11
ldc "\u4ea5"
aastore
putstatic com/common/android/utils/LunarCalendarUtils/Zhi [Ljava/lang/String;
bipush 12
anewarray java/lang/String
dup
iconst_0
ldc "\u9f20"
aastore
dup
iconst_1
ldc "\u725b"
aastore
dup
iconst_2
ldc "\u864e"
aastore
dup
iconst_3
ldc "\u5154"
aastore
dup
iconst_4
ldc "\u9f99"
aastore
dup
iconst_5
ldc "\u86c7"
aastore
dup
bipush 6
ldc "\u9a6c"
aastore
dup
bipush 7
ldc "\u7f8a"
aastore
dup
bipush 8
ldc "\u7334"
aastore
dup
bipush 9
ldc "\u9e21"
aastore
dup
bipush 10
ldc "\u72d7"
aastore
dup
bipush 11
ldc "\u732a"
aastore
putstatic com/common/android/utils/LunarCalendarUtils/Animals [Ljava/lang/String;
return
.limit locals 0
.limit stack 5
.end method

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method private static AnimalsYear(I)Ljava/lang/String;
getstatic com/common/android/utils/LunarCalendarUtils/Animals [Ljava/lang/String;
iload 0
iconst_4
isub
bipush 12
irem
aaload
areturn
.limit locals 1
.limit stack 3
.end method

.method public static ParseDate()Ljava/lang/String;
getstatic java/util/Locale/SIMPLIFIED_CHINESE Ljava/util/Locale;
invokestatic java/util/Calendar/getInstance(Ljava/util/Locale;)Ljava/util/Calendar;
invokestatic com/common/android/utils/LunarCalendarUtils/ParseDate(Ljava/util/Calendar;)Ljava/lang/String;
areturn
.limit locals 0
.limit stack 1
.end method

.method public static ParseDate(Ljava/util/Calendar;)Ljava/lang/String;
.catch all from L0 to L1 using L2
aload 0
iconst_1
invokevirtual java/util/Calendar/get(I)I
aload 0
iconst_2
invokevirtual java/util/Calendar/get(I)I
iconst_1
iadd
aload 0
iconst_5
invokevirtual java/util/Calendar/get(I)I
invokestatic com/common/android/utils/LunarCalendarUtils/calElement(III)[J
astore 0
new java/lang/StringBuffer
dup
invokespecial java/lang/StringBuffer/<init>()V
astore 1
L0:
aload 1
ldc " \u519c\u5386"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 1
getstatic com/common/android/utils/LunarCalendarUtils/nStr1 [Ljava/lang/String;
aload 0
iconst_1
laload
l2i
aaload
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 1
ldc "\u6708"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 1
aload 0
iconst_2
laload
l2i
invokestatic com/common/android/utils/LunarCalendarUtils/getChinaDate(I)Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 1
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
astore 0
L1:
aload 0
areturn
L2:
astore 0
aload 0
athrow
.limit locals 2
.limit stack 4
.end method

.method public static ParseDateAll()Ljava/lang/String;
.catch all from L0 to L1 using L2
.catch all from L1 to L3 using L4
.catch all from L3 to L5 using L2
.catch all from L6 to L7 using L4
.catch all from L7 to L2 using L2
getstatic java/util/Locale/SIMPLIFIED_CHINESE Ljava/util/Locale;
invokestatic java/util/Calendar/getInstance(Ljava/util/Locale;)Ljava/util/Calendar;
astore 2
aload 2
iconst_1
invokevirtual java/util/Calendar/get(I)I
istore 0
iload 0
aload 2
iconst_2
invokevirtual java/util/Calendar/get(I)I
iconst_1
iadd
aload 2
iconst_5
invokevirtual java/util/Calendar/get(I)I
invokestatic com/common/android/utils/LunarCalendarUtils/calElement(III)[J
astore 3
new java/lang/StringBuffer
dup
invokespecial java/lang/StringBuffer/<init>()V
astore 4
L0:
getstatic com/common/android/utils/LunarCalendarUtils/sdf Ljava/text/SimpleDateFormat;
astore 1
aload 1
monitorenter
L1:
aload 4
getstatic com/common/android/utils/LunarCalendarUtils/sdf Ljava/text/SimpleDateFormat;
aload 2
invokevirtual java/util/Calendar/getTime()Ljava/util/Date;
invokevirtual java/text/SimpleDateFormat/format(Ljava/util/Date;)Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 1
monitorexit
L3:
aload 4
ldc " \u519c\u5386"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 4
iload 0
invokestatic com/common/android/utils/LunarCalendarUtils/cyclical(I)Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 4
bipush 40
invokevirtual java/lang/StringBuffer/append(C)Ljava/lang/StringBuffer;
pop
aload 4
iload 0
invokestatic com/common/android/utils/LunarCalendarUtils/AnimalsYear(I)Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 4
ldc ")\u5e74"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 4
getstatic com/common/android/utils/LunarCalendarUtils/nStr1 [Ljava/lang/String;
aload 3
iconst_1
laload
l2i
aaload
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 4
ldc "\u6708"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 4
aload 3
iconst_2
laload
l2i
invokestatic com/common/android/utils/LunarCalendarUtils/getChinaDate(I)Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 4
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
astore 1
L5:
aload 1
areturn
L4:
astore 2
L6:
aload 1
monitorexit
L7:
aload 2
athrow
L2:
astore 1
aload 1
athrow
.limit locals 5
.limit stack 4
.end method

.method private static calElement(III)[J
bipush 7
newarray long
astore 8
iconst_0
istore 3
new java/util/GregorianCalendar
dup
sipush 1900
iconst_0
bipush 31
invokespecial java/util/GregorianCalendar/<init>(III)V
invokevirtual java/util/GregorianCalendar/getTime()Ljava/util/Date;
astore 9
new java/util/GregorianCalendar
dup
iload 0
iload 1
iconst_1
isub
iload 2
invokespecial java/util/GregorianCalendar/<init>(III)V
invokevirtual java/util/GregorianCalendar/getTime()Ljava/util/Date;
invokevirtual java/util/Date/getTime()J
aload 9
invokevirtual java/util/Date/getTime()J
lsub
ldc2_w 86400000L
ldiv
lstore 4
aload 8
iconst_5
ldc2_w 40L
lload 4
ladd
lastore
aload 8
iconst_4
ldc2_w 14L
lastore
sipush 1900
istore 1
iload 3
istore 0
L0:
iload 1
sipush 2050
if_icmpge L1
lload 4
lconst_0
lcmp
ifle L1
iload 1
invokestatic com/common/android/utils/LunarCalendarUtils/lYearDays(I)I
istore 0
lload 4
iload 0
i2l
lsub
lstore 4
aload 8
iconst_4
aload 8
iconst_4
laload
ldc2_w 12L
ladd
lastore
iload 1
iconst_1
iadd
istore 1
goto L0
L1:
iload 1
istore 2
lload 4
lstore 6
lload 4
lconst_0
lcmp
ifge L2
lload 4
iload 0
i2l
ladd
lstore 6
iload 1
iconst_1
isub
istore 2
aload 8
iconst_4
aload 8
iconst_4
laload
ldc2_w 12L
lsub
lastore
L2:
aload 8
iconst_0
iload 2
i2l
lastore
aload 8
iconst_3
iload 2
sipush 1864
isub
i2l
lastore
iload 2
invokestatic com/common/android/utils/LunarCalendarUtils/leapMonth(I)I
istore 3
aload 8
bipush 6
lconst_0
lastore
iconst_1
istore 1
iload 0
istore 2
iload 1
istore 0
L3:
iload 0
bipush 13
if_icmpge L4
lload 6
lconst_0
lcmp
ifle L4
iload 3
ifle L5
iload 0
iload 3
iconst_1
iadd
if_icmpne L5
aload 8
bipush 6
laload
lconst_0
lcmp
ifne L5
iload 0
iconst_1
isub
istore 0
aload 8
bipush 6
lconst_1
lastore
aload 8
iconst_0
laload
l2i
invokestatic com/common/android/utils/LunarCalendarUtils/leapDays(I)I
istore 1
L6:
aload 8
bipush 6
laload
lconst_1
lcmp
ifne L7
iload 0
iload 3
iconst_1
iadd
if_icmpne L7
aload 8
bipush 6
lconst_0
lastore
L7:
lload 6
iload 1
i2l
lsub
lstore 6
aload 8
bipush 6
laload
lconst_0
lcmp
ifne L8
aload 8
iconst_4
aload 8
iconst_4
laload
lconst_1
ladd
lastore
L8:
iload 0
iconst_1
iadd
istore 0
iload 1
istore 2
goto L3
L5:
aload 8
iconst_0
laload
l2i
iload 0
invokestatic com/common/android/utils/LunarCalendarUtils/monthDays(II)I
istore 1
goto L6
L4:
iload 0
istore 1
lload 6
lconst_0
lcmp
ifne L9
iload 0
istore 1
iload 3
ifle L9
iload 0
istore 1
iload 0
iload 3
iconst_1
iadd
if_icmpne L9
aload 8
bipush 6
laload
lconst_1
lcmp
ifne L10
aload 8
bipush 6
lconst_0
lastore
iload 0
istore 1
L9:
iload 1
istore 0
lload 6
lstore 4
lload 6
lconst_0
lcmp
ifge L11
lload 6
iload 2
i2l
ladd
lstore 4
iload 1
iconst_1
isub
istore 0
aload 8
iconst_4
aload 8
iconst_4
laload
lconst_1
lsub
lastore
L11:
aload 8
iconst_1
iload 0
i2l
lastore
aload 8
iconst_2
lconst_1
lload 4
ladd
lastore
aload 8
areturn
L10:
aload 8
bipush 6
lconst_1
lastore
iload 0
iconst_1
isub
istore 1
aload 8
iconst_4
aload 8
iconst_4
laload
lconst_1
lsub
lastore
goto L9
.limit locals 10
.limit stack 6
.end method

.method private static cyclical(I)Ljava/lang/String;
iload 0
sipush 1900
isub
bipush 36
iadd
invokestatic com/common/android/utils/LunarCalendarUtils/cyclicalm(I)Ljava/lang/String;
areturn
.limit locals 1
.limit stack 2
.end method

.method private static cyclicalm(I)Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/common/android/utils/LunarCalendarUtils/Gan [Ljava/lang/String;
iload 0
bipush 10
irem
aaload
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
getstatic com/common/android/utils/LunarCalendarUtils/Zhi [Ljava/lang/String;
iload 0
bipush 12
irem
aaload
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 1
.limit stack 4
.end method

.method private static getChinaDate(I)Ljava/lang/String;
ldc ""
astore 2
iload 0
bipush 10
if_icmpne L0
ldc "\u521d\u5341"
areturn
L0:
iload 0
bipush 20
if_icmpne L1
ldc "\u4e8c\u5341"
areturn
L1:
iload 0
bipush 30
if_icmpne L2
ldc "\u4e09\u5341"
areturn
L2:
iload 0
bipush 10
idiv
istore 1
iload 1
ifne L3
ldc "\u521d"
astore 2
L3:
iload 1
iconst_1
if_icmpne L4
ldc "\u5341"
astore 2
L4:
iload 1
iconst_2
if_icmpne L5
ldc "\u5eff"
astore 2
L5:
iload 1
iconst_3
if_icmpne L6
ldc "\u4e09"
astore 2
L6:
iload 0
bipush 10
irem
tableswitch 1
L7
L8
L9
L10
L11
L12
L13
L14
L15
default : L16
L16:
aload 2
areturn
L7:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "\u4e00"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 2
goto L16
L8:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "\u4e8c"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 2
goto L16
L9:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "\u4e09"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 2
goto L16
L10:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "\u56db"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 2
goto L16
L11:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "\u4e94"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 2
goto L16
L12:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "\u516d"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 2
goto L16
L13:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "\u4e03"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 2
goto L16
L14:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "\u516b"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 2
goto L16
L15:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "\u4e5d"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 2
goto L16
.limit locals 3
.limit stack 2
.end method

.method private static lYearDays(I)I
sipush 348
istore 2
ldc_w 32768
istore 1
L0:
iload 1
bipush 8
if_icmple L1
iload 2
istore 3
getstatic com/common/android/utils/LunarCalendarUtils/lunarInfo [J
iload 0
sipush 1900
isub
laload
iload 1
i2l
land
lconst_0
lcmp
ifeq L2
iload 2
iconst_1
iadd
istore 3
L2:
iload 1
iconst_1
ishr
istore 1
iload 3
istore 2
goto L0
L1:
iload 0
invokestatic com/common/android/utils/LunarCalendarUtils/leapDays(I)I
iload 2
iadd
ireturn
.limit locals 4
.limit stack 4
.end method

.method private static leapDays(I)I
iload 0
invokestatic com/common/android/utils/LunarCalendarUtils/leapMonth(I)I
ifeq L0
getstatic com/common/android/utils/LunarCalendarUtils/lunarInfo [J
iload 0
sipush 1900
isub
laload
ldc2_w 65536L
land
lconst_0
lcmp
ifeq L1
bipush 30
ireturn
L1:
bipush 29
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 4
.end method

.method private static leapMonth(I)I
getstatic com/common/android/utils/LunarCalendarUtils/lunarInfo [J
iload 0
sipush 1900
isub
laload
ldc2_w 15L
land
l2i
ireturn
.limit locals 1
.limit stack 4
.end method

.method private static monthDays(II)I
getstatic com/common/android/utils/LunarCalendarUtils/lunarInfo [J
iload 0
sipush 1900
isub
laload
ldc_w 65536
iload 1
ishr
i2l
land
lconst_0
lcmp
ifne L0
bipush 29
ireturn
L0:
bipush 30
ireturn
.limit locals 2
.limit stack 4
.end method
