.bytecode 50.0
.class public final synchronized com/nd/android/u/tast/experience/calendar/DayStyle
.super java/lang/Object

.field private static final 'vecStrPopWeekDayNames' [Ljava/lang/String;

.field private static final 'vecStrWeekDayNames' [Ljava/lang/String;

.method static <clinit>()V
invokestatic com/nd/android/u/tast/experience/calendar/DayStyle/getWeekDayNames()[Ljava/lang/String;
putstatic com/nd/android/u/tast/experience/calendar/DayStyle/vecStrWeekDayNames [Ljava/lang/String;
invokestatic com/nd/android/u/tast/experience/calendar/DayStyle/getPopWeekDayNames()[Ljava/lang/String;
putstatic com/nd/android/u/tast/experience/calendar/DayStyle/vecStrPopWeekDayNames [Ljava/lang/String;
return
.limit locals 0
.limit stack 1
.end method

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method private static getPopWeekDayNames()[Ljava/lang/String;
bipush 10
anewarray java/lang/String
astore 0
aload 0
iconst_1
ldc "\u5468\u65e5"
aastore
aload 0
iconst_2
ldc "\u5468\u4e00"
aastore
aload 0
iconst_3
ldc "\u5468\u4e8c"
aastore
aload 0
iconst_4
ldc "\u5468\u4e09"
aastore
aload 0
iconst_5
ldc "\u5468\u56db"
aastore
aload 0
bipush 6
ldc "\u5468\u4e94"
aastore
aload 0
bipush 7
ldc "\u5468\u516d"
aastore
aload 0
areturn
.limit locals 1
.limit stack 3
.end method

.method public static getWeekDay(II)I
iconst_m1
istore 2
iload 1
iconst_2
if_icmpne L0
iload 0
iconst_2
iadd
istore 3
iload 3
istore 2
iload 3
bipush 7
if_icmple L0
iconst_1
istore 2
L0:
iload 1
iconst_1
if_icmpne L1
iload 0
iconst_1
iadd
istore 2
L1:
iload 2
ireturn
.limit locals 4
.limit stack 2
.end method

.method public static getWeekDayName(IZ)Ljava/lang/String;
iload 1
ifeq L0
getstatic com/nd/android/u/tast/experience/calendar/DayStyle/vecStrPopWeekDayNames [Ljava/lang/String;
iload 0
aaload
areturn
L0:
getstatic com/nd/android/u/tast/experience/calendar/DayStyle/vecStrWeekDayNames [Ljava/lang/String;
iload 0
aaload
areturn
.limit locals 2
.limit stack 2
.end method

.method private static getWeekDayNames()[Ljava/lang/String;
bipush 10
anewarray java/lang/String
astore 0
aload 0
iconst_1
ldc "\u65e5"
aastore
aload 0
iconst_2
ldc "\u4e00"
aastore
aload 0
iconst_3
ldc "\u4e8c"
aastore
aload 0
iconst_4
ldc "\u4e09"
aastore
aload 0
iconst_5
ldc "\u56db"
aastore
aload 0
bipush 6
ldc "\u4e94"
aastore
aload 0
bipush 7
ldc "\u516d"
aastore
aload 0
areturn
.limit locals 1
.limit stack 3
.end method
