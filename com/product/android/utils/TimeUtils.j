.bytecode 50.0
.class public synchronized com/product/android/utils/TimeUtils
.super java/lang/Object
.annotation invisible Landroid/annotation/SuppressLint;
value [s = "SimpleDateFormat" 
.end annotation

.field public static final 'AGO_FULL_DATE_FORMATTER' Ljava/text/SimpleDateFormat;

.field public static final 'BIRTHDATE_FORMATTER' Ljava/text/SimpleDateFormat;

.field public static final 'DATE_FORMATTER_YMD' Ljava/text/SimpleDateFormat;

.field public static final 'DB_DATE_FORMATTER' Ljava/text/SimpleDateFormat;

.field public static final 'ONEDAY_SECONDSMillis' J = 86400000L


.field private static final 'TAG' Ljava/lang/String; = "TimeUtils"

.field public static final 'TWITTER_DATE_FORMATTER' Ljava/text/SimpleDateFormat;

.field public static final 'TWITTER_SEARCH_API_DATE_FORMATTER' Ljava/text/SimpleDateFormat;

.field private static final 'beforeYesterDayRecentSdf' Ljava/text/SimpleDateFormat;

.field private static final 'monthformat' Ljava/text/SimpleDateFormat;

.field private static final 'otherChatSdf' Ljava/text/SimpleDateFormat;

.field private static final 'otherRecentSdf' Ljava/text/SimpleDateFormat;

.field private static final 'todayRecentSdf' Ljava/text/SimpleDateFormat;

.field private static final 'yesterdayRecentSdf' Ljava/text/SimpleDateFormat;

.method static <clinit>()V
new java/text/SimpleDateFormat
dup
ldc "\u4eca\u5929HH:mm"
invokespecial java/text/SimpleDateFormat/<init>(Ljava/lang/String;)V
putstatic com/product/android/utils/TimeUtils/todayRecentSdf Ljava/text/SimpleDateFormat;
new java/text/SimpleDateFormat
dup
ldc "\u6628\u5929HH:mm"
invokespecial java/text/SimpleDateFormat/<init>(Ljava/lang/String;)V
putstatic com/product/android/utils/TimeUtils/yesterdayRecentSdf Ljava/text/SimpleDateFormat;
new java/text/SimpleDateFormat
dup
ldc "\u524d\u5929HH:mm"
invokespecial java/text/SimpleDateFormat/<init>(Ljava/lang/String;)V
putstatic com/product/android/utils/TimeUtils/beforeYesterDayRecentSdf Ljava/text/SimpleDateFormat;
new java/text/SimpleDateFormat
dup
ldc "MM-dd HH:mm"
invokespecial java/text/SimpleDateFormat/<init>(Ljava/lang/String;)V
putstatic com/product/android/utils/TimeUtils/otherRecentSdf Ljava/text/SimpleDateFormat;
new java/text/SimpleDateFormat
dup
ldc "yyyy-MM-dd HH:mm"
invokespecial java/text/SimpleDateFormat/<init>(Ljava/lang/String;)V
putstatic com/product/android/utils/TimeUtils/otherChatSdf Ljava/text/SimpleDateFormat;
new java/text/SimpleDateFormat
dup
ldc "MM-dd"
invokespecial java/text/SimpleDateFormat/<init>(Ljava/lang/String;)V
putstatic com/product/android/utils/TimeUtils/monthformat Ljava/text/SimpleDateFormat;
new java/text/SimpleDateFormat
dup
ldc "yyyy-MM-dd HH:mm:ss.SSS"
invokespecial java/text/SimpleDateFormat/<init>(Ljava/lang/String;)V
putstatic com/product/android/utils/TimeUtils/DB_DATE_FORMATTER Ljava/text/SimpleDateFormat;
new java/text/SimpleDateFormat
dup
ldc "yyyy\u5e74MM\u6708dd\u65e5"
invokespecial java/text/SimpleDateFormat/<init>(Ljava/lang/String;)V
putstatic com/product/android/utils/TimeUtils/DATE_FORMATTER_YMD Ljava/text/SimpleDateFormat;
new java/text/SimpleDateFormat
dup
ldc "E MMM d HH:mm:ss Z yyyy"
getstatic java/util/Locale/US Ljava/util/Locale;
invokespecial java/text/SimpleDateFormat/<init>(Ljava/lang/String;Ljava/util/Locale;)V
putstatic com/product/android/utils/TimeUtils/TWITTER_DATE_FORMATTER Ljava/text/SimpleDateFormat;
new java/text/SimpleDateFormat
dup
ldc "E, d MMM yyyy HH:mm:ss Z"
getstatic java/util/Locale/US Ljava/util/Locale;
invokespecial java/text/SimpleDateFormat/<init>(Ljava/lang/String;Ljava/util/Locale;)V
putstatic com/product/android/utils/TimeUtils/TWITTER_SEARCH_API_DATE_FORMATTER Ljava/text/SimpleDateFormat;
new java/text/SimpleDateFormat
dup
ldc "yyyyMMdd"
invokespecial java/text/SimpleDateFormat/<init>(Ljava/lang/String;)V
putstatic com/product/android/utils/TimeUtils/BIRTHDATE_FORMATTER Ljava/text/SimpleDateFormat;
new java/text/SimpleDateFormat
dup
ldc "yyyy-MM-dd HH:mm"
invokespecial java/text/SimpleDateFormat/<init>(Ljava/lang/String;)V
putstatic com/product/android/utils/TimeUtils/AGO_FULL_DATE_FORMATTER Ljava/text/SimpleDateFormat;
return
.limit locals 0
.limit stack 4
.end method

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static addZeroPrefix(I)Ljava/lang/String;
iload 0
bipush 10
if_icmpge L0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "0"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 0
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
L0:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 0
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 1
.limit stack 2
.end method

.method public static comparent(Ljava/util/Date;Ljava/util/Date;)Z
aload 0
ifnull L0
aload 1
ifnonnull L1
L0:
iconst_1
ireturn
L1:
invokestatic java/util/Calendar/getInstance()Ljava/util/Calendar;
astore 4
aload 4
aload 0
invokevirtual java/util/Calendar/setTime(Ljava/util/Date;)V
aload 4
invokevirtual java/util/Calendar/getTimeInMillis()J
lstore 2
aload 4
aload 1
invokevirtual java/util/Calendar/setTime(Ljava/util/Date;)V
aload 4
invokevirtual java/util/Calendar/getTimeInMillis()J
lload 2
lsub
ldc2_w 180000L
lcmp
ifgt L0
iconst_0
ireturn
.limit locals 5
.limit stack 4
.end method

.method public static formatDate(Ljava/util/Date;Ljava/text/SimpleDateFormat;)Ljava/lang/String;
aload 1
aload 0
invokevirtual java/text/SimpleDateFormat/format(Ljava/util/Date;)Ljava/lang/String;
areturn
.limit locals 2
.limit stack 2
.end method

.method public static formateEpochTime(J)Ljava/lang/String;
ldc2_w 1000L
lload 0
lmul
invokestatic com/product/android/utils/TimeUtils/formateMillisTime(J)Ljava/lang/String;
areturn
.limit locals 2
.limit stack 4
.end method

.method public static formateMillisTime(J)Ljava/lang/String;
invokestatic java/util/Calendar/getInstance()Ljava/util/Calendar;
iconst_1
invokevirtual java/util/Calendar/get(I)I
istore 2
invokestatic java/util/Calendar/getInstance()Ljava/util/Calendar;
astore 3
aload 3
lload 0
invokevirtual java/util/Calendar/setTimeInMillis(J)V
iload 2
aload 3
iconst_1
invokevirtual java/util/Calendar/get(I)I
if_icmple L0
ldc "yyyy-MM-dd"
lload 0
invokestatic android/text/format/DateFormat/format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;
invokeinterface java/lang/CharSequence/toString()Ljava/lang/String; 0
areturn
L0:
ldc "MM-dd"
lload 0
invokestatic android/text/format/DateFormat/format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;
invokeinterface java/lang/CharSequence/toString()Ljava/lang/String; 0
areturn
.limit locals 4
.limit stack 3
.end method

.method public static generateLong()J
invokestatic java/lang/System/currentTimeMillis()J
new java/util/Random
dup
invokespecial java/util/Random/<init>()V
sipush 10000
invokevirtual java/util/Random/nextInt(I)I
i2l
lmul
lreturn
.limit locals 0
.limit stack 4
.end method

.method public static getAgeByBirthday(Ljava/lang/String;)Ljava/lang/String;
.catch java/lang/RuntimeException from L0 to L1 using L2
aload 0
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L3
aload 0
ldc "0000-00-00"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L4
L3:
ldc "-"
areturn
L4:
ldc "//^[\\d]{4}[-\\ ][\\d]{1,2}[-\\ ][\\d]{1,2}$//"
invokestatic java/util/regex/Pattern/compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
aload 0
invokevirtual java/util/regex/Pattern/matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
invokevirtual java/util/regex/Matcher/matches()Z
ifeq L0
ldc "-"
areturn
L0:
aload 0
ldc "-"
ldc "/"
invokevirtual java/lang/String/replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
invokestatic java/util/Date/parse(Ljava/lang/String;)J
lstore 7
L1:
invokestatic java/util/Calendar/getInstance()Ljava/util/Calendar;
astore 0
aload 0
invokevirtual java/util/Calendar/getTime()Ljava/util/Date;
astore 9
aload 9
invokevirtual java/util/Date/getYear()I
istore 3
aload 9
invokevirtual java/util/Date/getMonth()I
istore 1
aload 9
invokevirtual java/util/Date/getDate()I
istore 4
aload 0
lload 7
invokevirtual java/util/Calendar/setTimeInMillis(J)V
aload 0
invokevirtual java/util/Calendar/getTime()Ljava/util/Date;
astore 0
aload 0
invokevirtual java/util/Date/getYear()I
istore 6
aload 0
invokevirtual java/util/Date/getMonth()I
istore 2
aload 0
invokevirtual java/util/Date/getDate()I
istore 5
iload 3
iload 6
isub
istore 3
iload 1
iload 2
isub
istore 2
iload 2
istore 1
iload 4
iload 5
isub
ifge L5
iload 2
iconst_1
isub
istore 1
L5:
iload 3
istore 2
iload 1
ifge L6
iload 3
iconst_1
isub
istore 2
L6:
iload 2
ifle L7
iload 2
invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
areturn
L2:
astore 0
ldc "-"
areturn
L7:
ldc "0"
areturn
.limit locals 10
.limit stack 3
.end method

.method public static getChatSdf()Ljava/text/SimpleDateFormat;
getstatic com/product/android/utils/TimeUtils/otherChatSdf Ljava/text/SimpleDateFormat;
areturn
.limit locals 0
.limit stack 1
.end method

.method public static getCurrentDate()Ljava/lang/String;
.catch java/lang/Exception from L0 to L1 using L2
L0:
new java/text/SimpleDateFormat
dup
ldc "yyyy-MM-dd"
invokespecial java/text/SimpleDateFormat/<init>(Ljava/lang/String;)V
new java/util/Date
dup
invokespecial java/util/Date/<init>()V
invokevirtual java/text/SimpleDateFormat/format(Ljava/util/Date;)Ljava/lang/String;
astore 0
L1:
aload 0
areturn
L2:
astore 0
getstatic java/lang/System/out Ljava/io/PrintStream;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "CommUtil.getCurrentDateTime"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/io/PrintStream/println(Ljava/lang/String;)V
aconst_null
areturn
.limit locals 1
.limit stack 3
.end method

.method public static getCurrentDateTime()Ljava/lang/String;
.catch java/lang/Exception from L0 to L1 using L2
L0:
new java/text/SimpleDateFormat
dup
ldc "yyyy-MM-dd HH:mm:ss"
invokespecial java/text/SimpleDateFormat/<init>(Ljava/lang/String;)V
new java/util/Date
dup
invokespecial java/util/Date/<init>()V
invokevirtual java/text/SimpleDateFormat/format(Ljava/util/Date;)Ljava/lang/String;
astore 0
L1:
aload 0
areturn
L2:
astore 0
getstatic java/lang/System/out Ljava/io/PrintStream;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "CommUtil.getCurrentDateTime"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/io/PrintStream/println(Ljava/lang/String;)V
aconst_null
areturn
.limit locals 1
.limit stack 3
.end method

.method public static getCurrentDay()I
.catch java/lang/Exception from L0 to L1 using L2
L0:
new java/text/SimpleDateFormat
dup
ldc "yyyy-MM-dd"
invokespecial java/text/SimpleDateFormat/<init>(Ljava/lang/String;)V
new java/util/Date
dup
invokespecial java/util/Date/<init>()V
invokevirtual java/text/SimpleDateFormat/format(Ljava/util/Date;)Ljava/lang/String;
bipush 8
bipush 10
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
invokestatic com/common/android/utils/FormatUtils/parseInt(Ljava/lang/String;)I
istore 0
L1:
iload 0
ireturn
L2:
astore 1
getstatic java/lang/System/out Ljava/io/PrintStream;
aload 1
invokevirtual java/io/PrintStream/println(Ljava/lang/Object;)V
iconst_0
ireturn
.limit locals 2
.limit stack 3
.end method

.method public static getCurrentMonth()I
.catch java/lang/Exception from L0 to L1 using L2
L0:
new java/text/SimpleDateFormat
dup
ldc "yyyy-MM-dd"
invokespecial java/text/SimpleDateFormat/<init>(Ljava/lang/String;)V
new java/util/Date
dup
invokespecial java/util/Date/<init>()V
invokevirtual java/text/SimpleDateFormat/format(Ljava/util/Date;)Ljava/lang/String;
iconst_5
bipush 7
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
invokestatic com/common/android/utils/FormatUtils/parseInt(Ljava/lang/String;)I
istore 0
L1:
iload 0
ireturn
L2:
astore 1
getstatic java/lang/System/out Ljava/io/PrintStream;
aload 1
invokevirtual java/io/PrintStream/println(Ljava/lang/Object;)V
bipush 12
ireturn
.limit locals 2
.limit stack 3
.end method

.method public static getCurrentTime()J
invokestatic java/util/Calendar/getInstance()Ljava/util/Calendar;
invokevirtual java/util/Calendar/getTime()Ljava/util/Date;
invokevirtual java/util/Date/getTime()J
lreturn
.limit locals 0
.limit stack 2
.end method

.method public static getCurrentTime(Ljava/util/Date;)Ljava/lang/String;
.catch java/lang/Exception from L0 to L1 using L2
L0:
new java/text/SimpleDateFormat
dup
ldc "HH:mm"
invokespecial java/text/SimpleDateFormat/<init>(Ljava/lang/String;)V
aload 0
invokevirtual java/text/SimpleDateFormat/format(Ljava/util/Date;)Ljava/lang/String;
astore 0
L1:
aload 0
areturn
L2:
astore 0
getstatic java/lang/System/out Ljava/io/PrintStream;
aload 0
invokevirtual java/io/PrintStream/println(Ljava/lang/Object;)V
ldc ""
areturn
.limit locals 1
.limit stack 3
.end method

.method public static getCurrentYear()Ljava/lang/String;
.catch java/lang/Exception from L0 to L1 using L2
L0:
new java/text/SimpleDateFormat
dup
ldc "yyyy-MM-dd"
invokespecial java/text/SimpleDateFormat/<init>(Ljava/lang/String;)V
new java/util/Date
dup
invokespecial java/util/Date/<init>()V
invokevirtual java/text/SimpleDateFormat/format(Ljava/util/Date;)Ljava/lang/String;
iconst_0
iconst_4
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
astore 0
L1:
aload 0
areturn
L2:
astore 0
getstatic java/lang/System/out Ljava/io/PrintStream;
aload 0
invokevirtual java/io/PrintStream/println(Ljava/lang/Object;)V
aconst_null
areturn
.limit locals 1
.limit stack 3
.end method

.method public static getDate(J)Ljava/lang/String;
ldc "yyyy-MM-dd"
new java/util/Date
dup
lload 0
invokespecial java/util/Date/<init>(J)V
invokestatic android/text/format/DateFormat/format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;
invokeinterface java/lang/CharSequence/toString()Ljava/lang/String; 0
areturn
.limit locals 2
.limit stack 5
.end method

.method public static getDate(Ljava/util/Date;)Ljava/lang/String;
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L1 to L3 using L2
aload 0
ifnonnull L0
ldc ""
areturn
L0:
aload 0
invokestatic com/product/android/utils/TimeUtils/getDayDiffFromToday(Ljava/util/Date;)Z
ifeq L1
aload 0
invokestatic com/product/android/utils/TimeUtils/getCurrentTime(Ljava/util/Date;)Ljava/lang/String;
areturn
L1:
new java/text/SimpleDateFormat
dup
ldc "yyyy-MM-dd"
invokespecial java/text/SimpleDateFormat/<init>(Ljava/lang/String;)V
aload 0
invokevirtual java/text/SimpleDateFormat/format(Ljava/util/Date;)Ljava/lang/String;
astore 0
L3:
aload 0
areturn
L2:
astore 0
ldc ""
areturn
.limit locals 1
.limit stack 3
.end method

.method public static getDate(Ljava/lang/Long;)Ljava/util/Date;
aload 0
invokevirtual java/lang/Long/longValue()J
lstore 1
aload 0
invokevirtual java/lang/Long/longValue()J
ldc2_w 10000000000L
lcmp
ifge L0
aload 0
invokevirtual java/lang/Long/longValue()J
ldc2_w 1000L
lmul
lstore 1
L0:
new java/util/Date
dup
ldc "GMT+8:00 "
invokestatic java/util/TimeZone/getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;
invokevirtual java/util/TimeZone/getRawOffset()I
i2l
lload 1
ladd
invokestatic java/util/TimeZone/getDefault()Ljava/util/TimeZone;
invokevirtual java/util/TimeZone/getRawOffset()I
i2l
lsub
invokespecial java/util/Date/<init>(J)V
areturn
.limit locals 3
.limit stack 6
.end method

.method public static getDateOfDT(Ljava/lang/String;)Ljava/lang/String;
ldc ""
astore 1
aload 0
invokestatic com/common/android/utils/StringUtils/isBlank(Ljava/lang/String;)Z
ifne L0
aload 0
invokevirtual java/lang/String/length()I
bipush 10
if_icmpgt L1
aload 0
astore 1
L0:
aload 1
areturn
L1:
aload 0
iconst_0
bipush 10
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
areturn
.limit locals 2
.limit stack 3
.end method

.method public static getDateString(J)Ljava/lang/String;
new java/lang/StringBuffer
dup
ldc ""
invokespecial java/lang/StringBuffer/<init>(Ljava/lang/String;)V
astore 4
invokestatic java/lang/System/currentTimeMillis()J
lstore 2
lload 2
invokestatic com/product/android/utils/TimeUtils/getDate(J)Ljava/lang/String;
astore 5
lload 2
ldc2_w 86400000L
lsub
invokestatic com/product/android/utils/TimeUtils/getDate(J)Ljava/lang/String;
astore 6
lload 0
invokestatic com/product/android/utils/TimeUtils/getDate(J)Ljava/lang/String;
astore 7
aload 7
aload 5
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L0
aload 4
ldc "\u4eca\u5929"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
L1:
aload 4
ldc " "
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 4
lload 0
invokestatic com/product/android/utils/TimeUtils/getTime(J)Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 4
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
areturn
L0:
aload 7
aload 6
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L2
aload 4
ldc "\u6628\u5929"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
goto L1
L2:
aload 4
aload 7
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
goto L1
.limit locals 8
.limit stack 4
.end method

.method public static getDateTime(Ljava/util/Date;)Ljava/lang/String;
.catch java/lang/Exception from L0 to L1 using L2
aload 0
ifnonnull L0
ldc ""
areturn
L0:
new java/text/SimpleDateFormat
dup
ldc "yyyy-MM-dd HH:mm:ss"
invokespecial java/text/SimpleDateFormat/<init>(Ljava/lang/String;)V
aload 0
invokevirtual java/text/SimpleDateFormat/format(Ljava/util/Date;)Ljava/lang/String;
astore 0
L1:
aload 0
areturn
L2:
astore 0
getstatic java/lang/System/out Ljava/io/PrintStream;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "CommUtil.getCurrentDateTime"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/io/PrintStream/println(Ljava/lang/String;)V
aconst_null
areturn
.limit locals 1
.limit stack 3
.end method

.method public static getDayBetween(Ljava/lang/String;Ljava/util/Date;)I
.catch java/text/ParseException from L0 to L1 using L2
.catch all from L0 to L1 using L3
.catch all from L4 to L5 using L3
.catch all from L6 to L7 using L3
.catch all from L8 to L9 using L3
getstatic com/product/android/utils/TimeUtils/BIRTHDATE_FORMATTER Ljava/text/SimpleDateFormat;
astore 5
aload 5
monitorenter
L0:
getstatic com/product/android/utils/TimeUtils/BIRTHDATE_FORMATTER Ljava/text/SimpleDateFormat;
aload 0
invokevirtual java/text/SimpleDateFormat/parse(Ljava/lang/String;)Ljava/util/Date;
invokevirtual java/util/Date/getTime()J
aload 1
invokevirtual java/util/Date/getTime()J
lsub
ldc2_w 86400000L
ldiv
lstore 3
L1:
lload 3
l2i
istore 2
L4:
aload 5
monitorexit
L5:
iload 2
ireturn
L2:
astore 0
L6:
aload 0
invokevirtual java/text/ParseException/printStackTrace()V
aload 5
monitorexit
L7:
iconst_0
ireturn
L3:
astore 0
L8:
aload 5
monitorexit
L9:
aload 0
athrow
.limit locals 6
.limit stack 4
.end method

.method public static getDayDiffFromToday(Ljava/util/Date;)Z
new java/util/Date
dup
invokespecial java/util/Date/<init>()V
astore 5
aload 5
bipush 23
invokevirtual java/util/Date/setHours(I)V
aload 5
bipush 59
invokevirtual java/util/Date/setMinutes(I)V
aload 5
bipush 59
invokevirtual java/util/Date/setSeconds(I)V
aload 5
invokevirtual java/util/Date/getTime()J
aload 0
invokevirtual java/util/Date/getTime()J
lsub
lstore 3
lload 3
lstore 1
lload 3
lconst_0
lcmp
ifge L0
lconst_0
lstore 1
L0:
lload 1
ldc2_w 86400000L
ldiv
lconst_0
lcmp
ifne L1
iconst_1
ireturn
L1:
iconst_0
ireturn
.limit locals 6
.limit stack 4
.end method

.method public static getDuration(Ljava/util/Date;J)Ljava/lang/String;
aload 0
ifnonnull L0
ldc ""
areturn
L0:
lload 1
aload 0
invokevirtual java/util/Date/getTime()J
lsub
l2d
dconst_1
dmul
ldc2_w 1000.0D
ddiv
invokestatic java/lang/Math/ceil(D)D
d2i
istore 4
iload 4
sipush 3600
idiv
istore 3
iload 4
sipush 3600
irem
istore 4
iload 4
bipush 60
idiv
istore 5
new java/lang/StringBuffer
dup
invokespecial java/lang/StringBuffer/<init>()V
astore 0
iload 3
ifle L1
aload 0
iload 3
invokestatic com/product/android/utils/TimeUtils/addZeroPrefix(I)Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 0
ldc ":"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
L1:
aload 0
iload 5
invokestatic com/product/android/utils/TimeUtils/addZeroPrefix(I)Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 0
ldc ":"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 0
iload 4
bipush 60
irem
invokestatic com/product/android/utils/TimeUtils/addZeroPrefix(I)Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 0
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
areturn
.limit locals 6
.limit stack 4
.end method

.method public static getDurationString(I)Ljava/lang/String;
iload 0
sipush 3600
idiv
istore 1
iload 0
bipush 60
idiv
istore 2
new java/lang/StringBuffer
dup
ldc ""
invokespecial java/lang/StringBuffer/<init>(Ljava/lang/String;)V
astore 3
iload 1
ifeq L0
aload 3
iload 1
invokevirtual java/lang/StringBuffer/append(I)Ljava/lang/StringBuffer;
pop
aload 3
ldc " \u5c0f\u65f6 "
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
L0:
aload 3
iload 2
invokevirtual java/lang/StringBuffer/append(I)Ljava/lang/StringBuffer;
pop
aload 3
ldc " \u5206\u949f "
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 3
iload 0
bipush 60
irem
invokevirtual java/lang/StringBuffer/append(I)Ljava/lang/StringBuffer;
pop
aload 3
ldc " \u79d2 "
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 3
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
areturn
.limit locals 4
.limit stack 3
.end method

.method public static getFullTime(J)Ljava/lang/String;
ldc "yyyy-MM-dd k:mm:ss"
new java/util/Date
dup
lload 0
invokespecial java/util/Date/<init>(J)V
invokestatic android/text/format/DateFormat/format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;
invokeinterface java/lang/CharSequence/toString()Ljava/lang/String; 0
areturn
.limit locals 2
.limit stack 5
.end method

.method public static getHourMinute(II)Ljava/lang/String;
new java/lang/StringBuffer
dup
invokespecial java/lang/StringBuffer/<init>()V
astore 4
ldc ""
astore 3
iload 0
bipush 6
idiv
tableswitch 0
L0
L0
L1
L1
default : L2
L2:
iload 0
istore 2
iload 0
ifne L3
bipush 12
istore 2
L3:
aload 4
iload 2
invokestatic com/product/android/utils/TimeUtils/addZeroPrefix(I)Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 4
ldc ":"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 4
iload 1
invokestatic com/product/android/utils/TimeUtils/addZeroPrefix(I)Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 4
aload 3
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 4
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
areturn
L0:
ldc " AM"
astore 3
goto L2
L1:
iload 0
istore 2
iload 0
bipush 12
if_icmpeq L4
iload 0
bipush 12
isub
istore 2
L4:
ldc " PM"
astore 3
iload 2
istore 0
goto L2
.limit locals 5
.limit stack 2
.end method

.method public static getLastTime(J)Ljava/lang/String;
new java/util/Date
dup
lload 0
invokespecial java/util/Date/<init>(J)V
invokestatic com/product/android/utils/TimeUtils/getLastTime(Ljava/util/Date;)Ljava/lang/String;
areturn
.limit locals 2
.limit stack 4
.end method

.method public static getLastTime(Ljava/util/Date;)Ljava/lang/String;
invokestatic java/util/Calendar/getInstance()Ljava/util/Calendar;
astore 3
aload 3
aload 0
invokevirtual java/util/Calendar/setTime(Ljava/util/Date;)V
invokestatic java/lang/System/currentTimeMillis()J
aload 3
invokevirtual java/util/Calendar/getTimeInMillis()J
lsub
ldc2_w 1000L
ldiv
lstore 1
lload 1
lconst_0
lcmp
ifne L0
ldc "\u521a\u521a"
areturn
L0:
lload 1
lconst_0
lcmp
ifle L1
lload 1
ldc2_w 60L
lcmp
ifge L1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc "\u79d2\u524d"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
L1:
lload 1
ldc2_w 60L
lcmp
iflt L2
lload 1
ldc2_w 3600L
lcmp
ifge L2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "\u7ea6"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 1
ldc2_w 60L
ldiv
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc "\u5206\u949f\u524d"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
L2:
aload 0
iconst_1
invokestatic com/product/android/utils/TimeUtils/parseDate(Ljava/util/Date;I)Ljava/lang/String;
areturn
.limit locals 4
.limit stack 5
.end method

.method public static getLastWeekDay(I)Ljava/util/Date;
invokestatic java/util/Calendar/getInstance()Ljava/util/Calendar;
astore 1
aload 1
iconst_2
invokevirtual java/util/Calendar/setFirstDayOfWeek(I)V
aload 1
iconst_3
iconst_m1
invokevirtual java/util/Calendar/roll(II)V
aload 1
bipush 7
iload 0
invokevirtual java/util/Calendar/set(II)V
aload 1
invokevirtual java/util/Calendar/getTime()Ljava/util/Date;
areturn
.limit locals 2
.limit stack 3
.end method

.method public static getLastWeekStr()Ljava/lang/String;
iconst_2
invokestatic com/product/android/utils/TimeUtils/getLastWeekDay(I)Ljava/util/Date;
astore 2
iconst_1
invokestatic com/product/android/utils/TimeUtils/getLastWeekDay(I)Ljava/util/Date;
astore 1
iconst_0
istore 0
aload 2
invokevirtual java/util/Date/getYear()I
aload 1
invokevirtual java/util/Date/getYear()I
if_icmpne L0
iconst_1
istore 0
L0:
aload 2
getstatic com/product/android/utils/TimeUtils/DATE_FORMATTER_YMD Ljava/text/SimpleDateFormat;
invokestatic com/product/android/utils/TimeUtils/formatDate(Ljava/util/Date;Ljava/text/SimpleDateFormat;)Ljava/lang/String;
astore 2
aload 1
getstatic com/product/android/utils/TimeUtils/DATE_FORMATTER_YMD Ljava/text/SimpleDateFormat;
invokestatic com/product/android/utils/TimeUtils/formatDate(Ljava/util/Date;Ljava/text/SimpleDateFormat;)Ljava/lang/String;
astore 1
iload 0
ifeq L1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "\uff5e"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
iconst_5
invokevirtual java/lang/String/substring(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
L1:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "\uff5e"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 3
.limit stack 3
.end method

.method public static getMinutesTween(JJ)I
lload 0
lload 2
lsub
l2d
dconst_1
dmul
ldc2_w 60000.0D
ddiv
invokestatic java/lang/Math/ceil(D)D
d2i
ireturn
.limit locals 4
.limit stack 4
.end method

.method public static getMinutesTween(Ljava/util/Date;Ljava/util/Date;)I
aload 0
invokevirtual java/util/Date/getTime()J
aload 1
invokevirtual java/util/Date/getTime()J
lsub
l2d
dconst_1
dmul
ldc2_w 60000.0D
ddiv
invokestatic java/lang/Math/ceil(D)D
d2i
ireturn
.limit locals 2
.limit stack 4
.end method

.method public static getMonth(Ljava/lang/String;)I
aload 0
ifnull L0
aload 0
invokevirtual java/lang/String/length()I
bipush 7
if_icmpge L1
L0:
invokestatic com/product/android/utils/TimeUtils/getCurrentMonth()I
ireturn
L1:
aload 0
iconst_5
bipush 7
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
astore 0
ldc "TimeUtils"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "month :"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokestatic com/common/android/utils/FormatUtils/parseInt(Ljava/lang/String;)I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/product/android/utils/LogUtils/v(Ljava/lang/String;Ljava/lang/String;)V
aload 0
invokestatic com/common/android/utils/FormatUtils/parseInt(Ljava/lang/String;)I
ireturn
.limit locals 1
.limit stack 3
.end method

.method public static getMsgBeforeYesterdayFormatStr(Ljava/util/Date;I)Ljava/lang/String;
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
.catch all from L5 to L6 using L2
getstatic com/product/android/utils/TimeUtils/beforeYesterDayRecentSdf Ljava/text/SimpleDateFormat;
astore 2
aload 2
monitorenter
iload 1
ifne L3
L0:
getstatic com/product/android/utils/TimeUtils/beforeYesterDayRecentSdf Ljava/text/SimpleDateFormat;
aload 0
invokevirtual java/text/SimpleDateFormat/format(Ljava/util/Date;)Ljava/lang/String;
astore 0
aload 2
monitorexit
L1:
aload 0
areturn
L3:
getstatic com/product/android/utils/TimeUtils/beforeYesterDayRecentSdf Ljava/text/SimpleDateFormat;
aload 0
invokevirtual java/text/SimpleDateFormat/format(Ljava/util/Date;)Ljava/lang/String;
astore 0
aload 2
monitorexit
L4:
aload 0
areturn
L2:
astore 0
L5:
aload 2
monitorexit
L6:
aload 0
athrow
.limit locals 3
.limit stack 2
.end method

.method public static getMsgHourFormatStr(Ljava/util/Date;I)Ljava/lang/String;
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
.catch all from L5 to L6 using L2
getstatic com/product/android/utils/TimeUtils/todayRecentSdf Ljava/text/SimpleDateFormat;
astore 2
aload 2
monitorenter
iload 1
ifne L3
L0:
getstatic com/product/android/utils/TimeUtils/todayRecentSdf Ljava/text/SimpleDateFormat;
aload 0
invokevirtual java/text/SimpleDateFormat/format(Ljava/util/Date;)Ljava/lang/String;
astore 0
aload 2
monitorexit
L1:
aload 0
areturn
L3:
getstatic com/product/android/utils/TimeUtils/todayRecentSdf Ljava/text/SimpleDateFormat;
aload 0
invokevirtual java/text/SimpleDateFormat/format(Ljava/util/Date;)Ljava/lang/String;
astore 0
aload 2
monitorexit
L4:
aload 0
areturn
L2:
astore 0
L5:
aload 2
monitorexit
L6:
aload 0
athrow
.limit locals 3
.limit stack 2
.end method

.method public static getMsgMonthHourFormatStr(Ljava/util/Date;)Ljava/lang/String;
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
getstatic com/product/android/utils/TimeUtils/monthformat Ljava/text/SimpleDateFormat;
astore 1
aload 1
monitorenter
L0:
getstatic com/product/android/utils/TimeUtils/monthformat Ljava/text/SimpleDateFormat;
aload 0
invokevirtual java/text/SimpleDateFormat/format(Ljava/util/Date;)Ljava/lang/String;
astore 0
aload 1
monitorexit
L1:
aload 0
areturn
L2:
astore 0
L3:
aload 1
monitorexit
L4:
aload 0
athrow
.limit locals 2
.limit stack 2
.end method

.method public static getMsgTime(Ljava/util/Date;)Ljava/lang/String;
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
aload 0
ifnonnull L5
ldc ""
areturn
L5:
getstatic com/product/android/utils/TimeUtils/otherRecentSdf Ljava/text/SimpleDateFormat;
astore 1
aload 1
monitorenter
L0:
getstatic com/product/android/utils/TimeUtils/otherRecentSdf Ljava/text/SimpleDateFormat;
aload 0
invokevirtual java/text/SimpleDateFormat/format(Ljava/util/Date;)Ljava/lang/String;
astore 0
aload 1
monitorexit
L1:
aload 0
areturn
L2:
astore 0
L3:
aload 1
monitorexit
L4:
aload 0
athrow
.limit locals 2
.limit stack 2
.end method

.method public static getMsgYesterdayFormatStr(Ljava/util/Date;I)Ljava/lang/String;
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
.catch all from L5 to L6 using L2
getstatic com/product/android/utils/TimeUtils/yesterdayRecentSdf Ljava/text/SimpleDateFormat;
astore 2
aload 2
monitorenter
iload 1
ifne L3
L0:
getstatic com/product/android/utils/TimeUtils/yesterdayRecentSdf Ljava/text/SimpleDateFormat;
aload 0
invokevirtual java/text/SimpleDateFormat/format(Ljava/util/Date;)Ljava/lang/String;
astore 0
aload 2
monitorexit
L1:
aload 0
areturn
L3:
getstatic com/product/android/utils/TimeUtils/yesterdayRecentSdf Ljava/text/SimpleDateFormat;
aload 0
invokevirtual java/text/SimpleDateFormat/format(Ljava/util/Date;)Ljava/lang/String;
astore 0
aload 2
monitorexit
L4:
aload 0
areturn
L2:
astore 0
L5:
aload 2
monitorexit
L6:
aload 0
athrow
.limit locals 3
.limit stack 2
.end method

.method public static getNowTime()Ljava/util/Date;
invokestatic java/util/Calendar/getInstance()Ljava/util/Calendar;
invokevirtual java/util/Calendar/getTime()Ljava/util/Date;
areturn
.limit locals 0
.limit stack 1
.end method

.method public static getNowTimeStr()Ljava/lang/String;
invokestatic com/product/android/utils/TimeUtils/getNowTime()Ljava/util/Date;
invokestatic com/product/android/utils/TimeUtils/getMsgTime(Ljava/util/Date;)Ljava/lang/String;
areturn
.limit locals 0
.limit stack 1
.end method

.method public static getSecondTween(Ljava/lang/String;I)Z
invokestatic java/lang/System/currentTimeMillis()J
aload 0
invokestatic java/lang/Long/parseLong(Ljava/lang/String;)J
lsub
ldc2_w 1000L
ldiv
l2i
iload 1
if_icmplt L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 2
.limit stack 4
.end method

.method public static getSeconds(JJ)Ljava/lang/String;
lload 0
lload 2
lsub
l2d
ldc2_w 1000.0D
ddiv
iconst_2
invokestatic com/common/android/utils/FormatUtils/formatDoubleNumber(DI)Ljava/lang/String;
areturn
.limit locals 4
.limit stack 4
.end method

.method public static getSecondsTween(JJ)I
lload 0
lload 2
lsub
l2d
dconst_1
dmul
ldc2_w 1000.0D
ddiv
invokestatic java/lang/Math/ceil(D)D
d2i
ireturn
.limit locals 4
.limit stack 4
.end method

.method public static getShowTime(I)Ljava/lang/String;
iload 0
ifne L0
ldc "00:00"
areturn
L0:
new java/lang/StringBuffer
dup
invokespecial java/lang/StringBuffer/<init>()V
astore 1
iload 0
bipush 60
irem
bipush 10
if_icmpge L1
iload 0
bipush 60
idiv
bipush 10
if_icmpge L1
aload 1
ldc "0"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 1
iload 0
bipush 60
idiv
invokevirtual java/lang/StringBuffer/append(I)Ljava/lang/StringBuffer;
pop
aload 1
ldc ":0"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 1
iload 0
bipush 60
irem
invokevirtual java/lang/StringBuffer/append(I)Ljava/lang/StringBuffer;
pop
L2:
aload 1
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
areturn
L1:
iload 0
bipush 60
irem
bipush 9
if_icmple L3
iload 0
bipush 60
idiv
bipush 10
if_icmpge L3
aload 1
ldc "0"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 1
iload 0
bipush 60
idiv
invokevirtual java/lang/StringBuffer/append(I)Ljava/lang/StringBuffer;
pop
aload 1
ldc ":"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 1
iload 0
bipush 60
irem
invokevirtual java/lang/StringBuffer/append(I)Ljava/lang/StringBuffer;
pop
goto L2
L3:
iload 0
bipush 60
irem
bipush 10
if_icmpge L4
iload 0
bipush 60
idiv
bipush 9
if_icmple L4
aload 1
iload 0
bipush 60
idiv
invokevirtual java/lang/StringBuffer/append(I)Ljava/lang/StringBuffer;
pop
aload 1
ldc ":0"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 1
iload 0
bipush 60
irem
invokevirtual java/lang/StringBuffer/append(I)Ljava/lang/StringBuffer;
pop
goto L2
L4:
aload 1
iload 0
bipush 60
idiv
invokevirtual java/lang/StringBuffer/append(I)Ljava/lang/StringBuffer;
pop
aload 1
ldc ":"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 1
iload 0
bipush 60
irem
invokevirtual java/lang/StringBuffer/append(I)Ljava/lang/StringBuffer;
pop
goto L2
.limit locals 2
.limit stack 3
.end method

.method public static getTime(J)Ljava/lang/String;
ldc "k:mm"
new java/util/Date
dup
lload 0
invokespecial java/util/Date/<init>(J)V
invokestatic android/text/format/DateFormat/format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;
invokeinterface java/lang/CharSequence/toString()Ljava/lang/String; 0
areturn
.limit locals 2
.limit stack 5
.end method

.method public static getTimeFormat(Ljava/lang/String;J)Ljava/lang/String;
new java/text/SimpleDateFormat
dup
aload 0
invokespecial java/text/SimpleDateFormat/<init>(Ljava/lang/String;)V
new java/util/Date
dup
lload 1
invokespecial java/util/Date/<init>(J)V
invokevirtual java/text/SimpleDateFormat/format(Ljava/util/Date;)Ljava/lang/String;
areturn
.limit locals 3
.limit stack 5
.end method

.method public static getTimeGMT8(J)Ljava/lang/String;
lload 0
lstore 2
lload 0
ldc2_w 10000000000L
lcmp
ifge L0
lload 0
ldc2_w 1000L
lmul
lstore 2
L0:
ldc "yyyy-MM-dd HH:mm"
ldc "GMT+8:00 "
invokestatic java/util/TimeZone/getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;
invokevirtual java/util/TimeZone/getRawOffset()I
i2l
lload 2
ladd
invokestatic java/util/TimeZone/getDefault()Ljava/util/TimeZone;
invokevirtual java/util/TimeZone/getRawOffset()I
i2l
lsub
invokestatic com/product/android/utils/TimeUtils/getTimeFormat(Ljava/lang/String;J)Ljava/lang/String;
astore 5
aload 5
astore 4
aload 5
ifnull L1
aload 5
astore 4
aload 5
invokestatic com/product/android/utils/TimeUtils/getCurrentYear()Ljava/lang/String;
invokevirtual java/lang/String/indexOf(Ljava/lang/String;)I
iconst_m1
if_icmpeq L1
aload 5
iconst_5
invokevirtual java/lang/String/substring(I)Ljava/lang/String;
astore 4
L1:
aload 4
areturn
.limit locals 6
.limit stack 5
.end method

.method public static getTimePeriod(J)Ljava/lang/String;
lload 0
ldc2_w 10000000000L
lcmp
ifge L0
lload 0
ldc2_w 1000L
lmul
lstore 0
L1:
invokestatic java/lang/System/currentTimeMillis()J
lstore 2
lload 2
invokestatic com/product/android/utils/TimeUtils/getDate(J)Ljava/lang/String;
astore 6
lload 2
ldc2_w 86400000L
lsub
invokestatic com/product/android/utils/TimeUtils/getDate(J)Ljava/lang/String;
astore 10
lload 2
ldc2_w 2L
ldc2_w 86400000L
lmul
lsub
invokestatic com/product/android/utils/TimeUtils/getDate(J)Ljava/lang/String;
astore 11
lload 2
ldc2_w 6L
ldc2_w 86400000L
lmul
lsub
invokestatic com/product/android/utils/TimeUtils/getDate(J)Ljava/lang/String;
invokestatic com/product/android/utils/TimeUtils/getTimeStamp(Ljava/lang/String;)J
lstore 4
lload 0
invokestatic com/product/android/utils/TimeUtils/getDate(J)Ljava/lang/String;
astore 12
ldc "MM-dd HH:mm"
astore 9
ldc ""
astore 8
aload 12
aload 6
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L2
ldc "HH:mm"
astore 6
aload 8
astore 7
L3:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 7
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 6
ldc "GMT+8:00 "
invokestatic java/util/TimeZone/getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;
invokevirtual java/util/TimeZone/getRawOffset()I
i2l
lload 0
ladd
invokestatic java/util/TimeZone/getDefault()Ljava/util/TimeZone;
invokevirtual java/util/TimeZone/getRawOffset()I
i2l
lsub
invokestatic com/product/android/utils/TimeUtils/getTimeFormat(Ljava/lang/String;J)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
L0:
goto L1
L2:
aload 9
astore 6
aload 8
astore 7
lload 2
lload 0
lsub
lconst_0
lcmp
iflt L3
aload 12
aload 10
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L4
ldc "HH:mm"
astore 6
ldc "\u6628\u5929"
astore 7
goto L3
L4:
aload 12
aload 11
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L5
ldc "HH:mm"
astore 6
ldc "\u524d\u5929"
astore 7
goto L3
L5:
aload 9
astore 6
aload 8
astore 7
lload 0
lload 4
lcmp
ifle L3
ldc "E HH:mm"
astore 6
aload 8
astore 7
goto L3
.limit locals 13
.limit stack 6
.end method

.method public static getTimeStamp(Ljava/lang/String;)J
aload 0
ifnull L0
aload 0
invokevirtual java/lang/String/length()I
iconst_1
if_icmpge L1
L0:
lconst_0
lreturn
L1:
aload 0
ldc "-"
invokevirtual java/lang/String/split(Ljava/lang/String;)[Ljava/lang/String;
astore 0
aload 0
arraylength
iconst_3
if_icmpne L2
aload 0
iconst_0
aaload
invokestatic java/lang/Integer/valueOf(Ljava/lang/String;)Ljava/lang/Integer;
invokevirtual java/lang/Integer/intValue()I
sipush 1900
isub
aload 0
iconst_1
aaload
invokestatic java/lang/Integer/valueOf(Ljava/lang/String;)Ljava/lang/Integer;
invokevirtual java/lang/Integer/intValue()I
iconst_1
isub
aload 0
iconst_2
aaload
invokestatic java/lang/Integer/valueOf(Ljava/lang/String;)Ljava/lang/Integer;
invokevirtual java/lang/Integer/intValue()I
iconst_0
iconst_0
iconst_0
invokestatic java/util/Date/UTC(IIIIII)J
lreturn
L2:
aload 0
arraylength
iconst_2
if_icmpne L0
iconst_0
aload 0
iconst_0
aaload
invokestatic java/lang/Integer/valueOf(Ljava/lang/String;)Ljava/lang/Integer;
invokevirtual java/lang/Integer/intValue()I
iconst_1
isub
aload 0
iconst_1
aaload
invokestatic java/lang/Integer/valueOf(Ljava/lang/String;)Ljava/lang/Integer;
invokevirtual java/lang/Integer/intValue()I
iconst_0
iconst_0
iconst_0
invokestatic java/util/Date/UTC(IIIIII)J
lreturn
.limit locals 1
.limit stack 6
.end method

.method public static getVTLastTime(JZ)Ljava/lang/String;
new java/util/Date
dup
lload 0
invokespecial java/util/Date/<init>(J)V
iload 2
invokestatic com/product/android/utils/TimeUtils/getVTLastTime(Ljava/util/Date;Z)Ljava/lang/String;
areturn
.limit locals 3
.limit stack 4
.end method

.method public static getVTLastTime(Ljava/util/Date;Z)Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 4
invokestatic java/lang/System/currentTimeMillis()J
lstore 2
invokestatic java/util/Calendar/getInstance()Ljava/util/Calendar;
astore 5
aload 5
aload 0
invokevirtual java/util/Calendar/setTime(Ljava/util/Date;)V
invokestatic java/util/Calendar/getInstance()Ljava/util/Calendar;
astore 0
aload 0
lload 2
invokevirtual java/util/Calendar/setTimeInMillis(J)V
aload 5
iconst_1
invokevirtual java/util/Calendar/get(I)I
aload 0
iconst_1
invokevirtual java/util/Calendar/get(I)I
if_icmpne L0
aload 5
iconst_2
invokevirtual java/util/Calendar/get(I)I
aload 0
iconst_2
invokevirtual java/util/Calendar/get(I)I
if_icmpne L0
aload 5
iconst_5
invokevirtual java/util/Calendar/get(I)I
aload 0
iconst_5
invokevirtual java/util/Calendar/get(I)I
if_icmpne L0
aload 4
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
getstatic com/nd/android/u/allcommon/R$string/hhmm I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
iconst_2
anewarray java/lang/Object
dup
iconst_0
aload 5
bipush 11
invokevirtual java/util/Calendar/get(I)I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
dup
iconst_1
aload 5
bipush 12
invokevirtual java/util/Calendar/get(I)I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L1:
aload 4
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
L0:
invokestatic java/util/Calendar/getInstance()Ljava/util/Calendar;
astore 6
aload 6
lload 2
invokevirtual java/util/Calendar/setTimeInMillis(J)V
aload 6
bipush 11
iconst_0
invokevirtual java/util/Calendar/set(II)V
aload 6
bipush 12
iconst_0
invokevirtual java/util/Calendar/set(II)V
aload 6
bipush 13
iconst_0
invokevirtual java/util/Calendar/set(II)V
aload 6
bipush 6
iconst_m1
invokevirtual java/util/Calendar/add(II)V
invokestatic java/util/Calendar/getInstance()Ljava/util/Calendar;
astore 7
aload 7
lload 2
invokevirtual java/util/Calendar/setTimeInMillis(J)V
aload 7
bipush 11
bipush 23
invokevirtual java/util/Calendar/set(II)V
aload 7
bipush 12
bipush 59
invokevirtual java/util/Calendar/set(II)V
aload 7
bipush 13
bipush 59
invokevirtual java/util/Calendar/set(II)V
aload 7
bipush 6
iconst_m1
invokevirtual java/util/Calendar/add(II)V
aload 5
invokevirtual java/util/Calendar/getTimeInMillis()J
aload 6
invokevirtual java/util/Calendar/getTimeInMillis()J
lcmp
iflt L2
aload 5
invokevirtual java/util/Calendar/getTimeInMillis()J
aload 7
invokevirtual java/util/Calendar/getTimeInMillis()J
lcmp
ifge L2
aload 4
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
getstatic com/nd/android/u/allcommon/R$string/yesterday I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L3:
iload 1
ifeq L1
aload 4
ldc " "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
getstatic com/nd/android/u/allcommon/R$string/hhmm I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
iconst_2
anewarray java/lang/Object
dup
iconst_0
aload 5
bipush 11
invokevirtual java/util/Calendar/get(I)I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
dup
iconst_1
aload 5
bipush 12
invokevirtual java/util/Calendar/get(I)I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
goto L1
L2:
aload 6
bipush 6
bipush -5
invokevirtual java/util/Calendar/add(II)V
aload 5
invokevirtual java/util/Calendar/getTimeInMillis()J
aload 6
invokevirtual java/util/Calendar/getTimeInMillis()J
lcmp
iflt L4
aload 5
invokevirtual java/util/Calendar/getTimeInMillis()J
aload 7
invokevirtual java/util/Calendar/getTimeInMillis()J
lcmp
ifge L4
aload 4
aload 5
bipush 7
invokevirtual java/util/Calendar/get(I)I
iconst_1
isub
invokestatic com/product/android/utils/TimeUtils/getWeekDescription(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
goto L3
L4:
aload 5
iconst_1
invokevirtual java/util/Calendar/get(I)I
aload 0
iconst_1
invokevirtual java/util/Calendar/get(I)I
if_icmpne L5
aload 4
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
getstatic com/nd/android/u/allcommon/R$string/mmdd I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
iconst_2
anewarray java/lang/Object
dup
iconst_0
aload 5
iconst_2
invokevirtual java/util/Calendar/get(I)I
iconst_1
iadd
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
dup
iconst_1
aload 5
iconst_5
invokevirtual java/util/Calendar/get(I)I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
goto L3
L5:
aload 4
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
getstatic com/nd/android/u/allcommon/R$string/yymmdd I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
iconst_3
anewarray java/lang/Object
dup
iconst_0
aload 5
iconst_1
invokevirtual java/util/Calendar/get(I)I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
dup
iconst_1
aload 5
iconst_2
invokevirtual java/util/Calendar/get(I)I
iconst_1
iadd
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
dup
iconst_2
aload 5
iconst_5
invokevirtual java/util/Calendar/get(I)I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
goto L3
.limit locals 8
.limit stack 7
.end method

.method public static getWeekDescription(I)Ljava/lang/String;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
astore 1
iload 0
tableswitch 1
L0
L1
L2
L3
L4
L5
L6
default : L7
L7:
getstatic com/nd/android/u/allcommon/R$string/sunday I
istore 0
L8:
aload 1
iload 0
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
areturn
L0:
getstatic com/nd/android/u/allcommon/R$string/monday I
istore 0
goto L8
L1:
getstatic com/nd/android/u/allcommon/R$string/tuesday I
istore 0
goto L8
L2:
getstatic com/nd/android/u/allcommon/R$string/wednesday I
istore 0
goto L8
L3:
getstatic com/nd/android/u/allcommon/R$string/thursday I
istore 0
goto L8
L4:
getstatic com/nd/android/u/allcommon/R$string/friday I
istore 0
goto L8
L5:
getstatic com/nd/android/u/allcommon/R$string/saturday I
istore 0
goto L8
L6:
getstatic com/nd/android/u/allcommon/R$string/sunday I
istore 0
goto L8
.limit locals 2
.limit stack 2
.end method

.method public static getYear(Ljava/lang/String;)I
aload 0
ifnull L0
aload 0
invokevirtual java/lang/String/length()I
iconst_4
if_icmpge L1
L0:
invokestatic com/product/android/utils/TimeUtils/getCurrentYear()Ljava/lang/String;
invokestatic com/common/android/utils/FormatUtils/parseInt(Ljava/lang/String;)I
ireturn
L1:
aload 0
iconst_0
iconst_4
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
invokestatic com/common/android/utils/FormatUtils/parseInt(Ljava/lang/String;)I
ireturn
.limit locals 1
.limit stack 3
.end method

.method public static getcurrentTimeMillis(Ljava/lang/String;)Ljava/lang/String;
aload 0
invokestatic com/common/android/utils/StringUtils/isBlank(Ljava/lang/String;)Z
ifeq L0
L1:
aconst_null
areturn
L0:
aload 0
ldc "-"
invokevirtual java/lang/String/indexOf(Ljava/lang/String;)I
istore 1
iload 1
iconst_m1
if_icmpeq L1
aload 0
iconst_0
iload 1
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
areturn
.limit locals 2
.limit stack 3
.end method

.method public static isBetweenPeriod(IIII)Z
iconst_1
istore 6
iconst_1
istore 5
iload 0
ifne L0
bipush 12
istore 4
L1:
iload 2
ifne L2
bipush 12
istore 0
L3:
new java/util/Date
dup
invokespecial java/util/Date/<init>()V
astore 7
aload 7
invokevirtual java/util/Date/getHours()I
bipush 60
imul
aload 7
invokevirtual java/util/Date/getMinutes()I
iadd
istore 2
iload 4
bipush 60
imul
iload 1
iadd
istore 4
iload 0
bipush 60
imul
iload 3
iadd
istore 1
iload 1
iload 4
if_icmple L4
iload 2
iload 4
if_icmplt L5
iconst_1
istore 0
L6:
iload 1
iload 2
if_icmplt L7
iload 5
istore 1
L8:
iload 1
iload 0
iand
istore 6
L9:
iload 6
ireturn
L0:
iload 0
istore 4
iload 0
bipush 12
if_icmpne L1
iconst_0
istore 4
goto L1
L2:
iload 2
istore 0
iload 2
bipush 12
if_icmpne L3
iconst_0
istore 0
goto L3
L5:
iconst_0
istore 0
goto L6
L7:
iconst_0
istore 1
goto L8
L4:
iload 4
iload 1
if_icmpeq L9
iconst_0
ireturn
.limit locals 8
.limit stack 2
.end method

.method public static isBetweenPeriodEx(IIII)Z
iload 0
bipush 60
imul
iload 1
iadd
istore 4
iload 2
bipush 60
imul
iload 3
iadd
istore 1
new java/util/Date
dup
invokespecial java/util/Date/<init>()V
astore 5
aload 5
invokevirtual java/util/Date/getHours()I
bipush 60
imul
aload 5
invokevirtual java/util/Date/getMinutes()I
iadd
istore 2
iload 1
iload 4
if_icmpne L0
L1:
iconst_1
ireturn
L0:
iload 1
istore 0
iload 1
iload 4
if_icmpge L2
iload 1
sipush 1440
iadd
istore 0
L2:
iload 2
iload 4
if_icmple L3
iload 0
iload 2
if_icmpgt L1
L3:
iconst_0
ireturn
.limit locals 6
.limit stack 2
.end method

.method public static isTodayOrYesterDay(Ljava/util/Date;)I
invokestatic java/util/Calendar/getInstance()Ljava/util/Calendar;
invokevirtual java/util/Calendar/getTime()Ljava/util/Date;
astore 1
new java/text/SimpleDateFormat
dup
ldc "yyyy-MM-dd"
invokespecial java/text/SimpleDateFormat/<init>(Ljava/lang/String;)V
astore 2
aload 2
aload 1
invokevirtual java/text/SimpleDateFormat/format(Ljava/util/Date;)Ljava/lang/String;
aload 2
aload 0
invokevirtual java/text/SimpleDateFormat/format(Ljava/util/Date;)Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 3
.limit stack 3
.end method

.method public static parseDate(Ljava/util/Date;I)Ljava/lang/String;
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
.catch all from L4 to L5 using L6
.catch all from L7 to L8 using L6
.catch java/lang/Exception from L8 to L2 using L2
.catch java/lang/Exception from L9 to L10 using L2
.catch all from L10 to L11 using L12
.catch all from L13 to L14 using L12
.catch java/lang/Exception from L14 to L15 using L2
.catch java/lang/Exception from L16 to L17 using L2
.catch all from L17 to L18 using L19
.catch all from L20 to L21 using L19
.catch java/lang/Exception from L21 to L22 using L2
.catch java/lang/Exception from L23 to L24 using L2
.catch all from L24 to L25 using L26
.catch all from L27 to L28 using L26
.catch java/lang/Exception from L28 to L29 using L2
.catch java/lang/Exception from L29 to L30 using L2
.catch all from L30 to L31 using L32
.catch all from L33 to L34 using L32
.catch java/lang/Exception from L34 to L35 using L2
aconst_null
astore 12
iload 1
ifne L36
getstatic com/product/android/utils/TimeUtils/todayRecentSdf Ljava/text/SimpleDateFormat;
astore 8
getstatic com/product/android/utils/TimeUtils/yesterdayRecentSdf Ljava/text/SimpleDateFormat;
astore 9
getstatic com/product/android/utils/TimeUtils/beforeYesterDayRecentSdf Ljava/text/SimpleDateFormat;
astore 10
getstatic com/product/android/utils/TimeUtils/otherRecentSdf Ljava/text/SimpleDateFormat;
astore 11
L0:
invokestatic java/util/Calendar/getInstance()Ljava/util/Calendar;
astore 13
aload 13
aload 0
invokevirtual java/util/Calendar/setTime(Ljava/util/Date;)V
aload 13
invokevirtual java/util/Calendar/getTimeInMillis()J
lstore 2
invokestatic java/util/Calendar/getInstance()Ljava/util/Calendar;
astore 14
aload 14
bipush 11
invokevirtual java/util/Calendar/get(I)I
sipush 3600
imul
aload 14
bipush 12
invokevirtual java/util/Calendar/get(I)I
bipush 60
imul
iadd
aload 14
bipush 13
invokevirtual java/util/Calendar/get(I)I
iadd
sipush 1000
imul
i2l
lstore 4
aload 14
invokevirtual java/util/Calendar/getTimeInMillis()J
lstore 6
L1:
lload 6
lload 2
lsub
lload 4
lcmp
ifge L37
L3:
aload 8
monitorenter
L4:
aload 8
aload 0
invokevirtual java/text/SimpleDateFormat/format(Ljava/util/Date;)Ljava/lang/String;
astore 0
aload 8
monitorexit
L5:
aload 0
areturn
L36:
getstatic com/product/android/utils/TimeUtils/todayRecentSdf Ljava/text/SimpleDateFormat;
astore 8
getstatic com/product/android/utils/TimeUtils/yesterdayRecentSdf Ljava/text/SimpleDateFormat;
astore 9
getstatic com/product/android/utils/TimeUtils/beforeYesterDayRecentSdf Ljava/text/SimpleDateFormat;
astore 10
getstatic com/product/android/utils/TimeUtils/otherChatSdf Ljava/text/SimpleDateFormat;
astore 11
getstatic com/product/android/utils/TimeUtils/otherRecentSdf Ljava/text/SimpleDateFormat;
astore 12
goto L0
L6:
astore 0
L7:
aload 8
monitorexit
L8:
aload 0
athrow
L2:
astore 0
aload 0
invokevirtual java/lang/Exception/printStackTrace()V
ldc ""
areturn
L37:
lload 6
lload 2
lsub
ldc2_w 86400000L
lload 4
ladd
lcmp
ifge L15
L9:
aload 9
monitorenter
L10:
aload 9
aload 0
invokevirtual java/text/SimpleDateFormat/format(Ljava/util/Date;)Ljava/lang/String;
astore 0
aload 9
monitorexit
L11:
aload 0
areturn
L12:
astore 0
L13:
aload 9
monitorexit
L14:
aload 0
athrow
L15:
lload 6
lload 2
lsub
ldc2_w 172800000L
lload 4
ladd
lcmp
ifge L22
L16:
aload 10
monitorenter
L17:
aload 10
aload 0
invokevirtual java/text/SimpleDateFormat/format(Ljava/util/Date;)Ljava/lang/String;
astore 0
aload 10
monitorexit
L18:
aload 0
areturn
L19:
astore 0
L20:
aload 10
monitorexit
L21:
aload 0
athrow
L22:
lload 6
lload 2
lsub
ldc2_w 172800000L
lload 4
ladd
lcmp
ifle L29
L23:
aload 13
iconst_1
invokevirtual java/util/Calendar/get(I)I
aload 14
iconst_1
invokevirtual java/util/Calendar/get(I)I
if_icmpne L29
aload 12
monitorenter
L24:
aload 12
aload 0
invokevirtual java/text/SimpleDateFormat/format(Ljava/util/Date;)Ljava/lang/String;
astore 0
aload 12
monitorexit
L25:
aload 0
areturn
L26:
astore 0
L27:
aload 12
monitorexit
L28:
aload 0
athrow
L29:
aload 11
monitorenter
L30:
aload 11
aload 0
invokevirtual java/text/SimpleDateFormat/format(Ljava/util/Date;)Ljava/lang/String;
astore 0
aload 11
monitorexit
L31:
aload 0
areturn
L32:
astore 0
L33:
aload 11
monitorexit
L34:
aload 0
athrow
L35:
.limit locals 15
.limit stack 6
.end method

.method public static final parseDateTime(Ljava/lang/String;)Ljava/util/Date;
.catch java/text/ParseException from L0 to L1 using L2
.catch all from L1 to L3 using L4
.catch all from L5 to L6 using L4
.catch java/text/ParseException from L6 to L2 using L2
L0:
getstatic com/product/android/utils/TimeUtils/TWITTER_DATE_FORMATTER Ljava/text/SimpleDateFormat;
astore 1
aload 1
monitorenter
L1:
getstatic com/product/android/utils/TimeUtils/TWITTER_DATE_FORMATTER Ljava/text/SimpleDateFormat;
aload 0
invokevirtual java/text/SimpleDateFormat/parse(Ljava/lang/String;)Ljava/util/Date;
astore 2
aload 1
monitorexit
L3:
aload 2
areturn
L4:
astore 2
L5:
aload 1
monitorexit
L6:
aload 2
athrow
L2:
astore 1
ldc "TimeUtils"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Could not parse Twitter date string: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/product/android/utils/LogUtils/w(Ljava/lang/String;Ljava/lang/String;)V
new java/util/Date
dup
invokestatic java/lang/System/currentTimeMillis()J
invokespecial java/util/Date/<init>(J)V
areturn
.limit locals 3
.limit stack 4
.end method

.method public static final parseDateTimeFromSqlite(Ljava/lang/String;)Ljava/util/Date;
.catch java/text/ParseException from L0 to L1 using L2
.catch all from L1 to L3 using L4
.catch all from L5 to L6 using L4
.catch java/text/ParseException from L6 to L2 using L2
L0:
getstatic com/product/android/utils/TimeUtils/DB_DATE_FORMATTER Ljava/text/SimpleDateFormat;
astore 1
aload 1
monitorenter
L1:
getstatic com/product/android/utils/TimeUtils/DB_DATE_FORMATTER Ljava/text/SimpleDateFormat;
aload 0
invokevirtual java/text/SimpleDateFormat/parse(Ljava/lang/String;)Ljava/util/Date;
astore 2
aload 1
monitorexit
L3:
aload 2
areturn
L4:
astore 2
L5:
aload 1
monitorexit
L6:
aload 2
athrow
L2:
astore 1
ldc "TimeUtils"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Could not parse Twitter date string: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/product/android/utils/LogUtils/w(Ljava/lang/String;Ljava/lang/String;)V
new java/util/Date
dup
invokestatic java/lang/System/currentTimeMillis()J
invokespecial java/util/Date/<init>(J)V
areturn
.limit locals 3
.limit stack 4
.end method

.method public static final parseSearchApiDateTime(Ljava/lang/String;)Ljava/util/Date;
.catch java/text/ParseException from L0 to L1 using L2
.catch all from L1 to L3 using L4
.catch all from L5 to L6 using L4
.catch java/text/ParseException from L6 to L2 using L2
L0:
getstatic com/product/android/utils/TimeUtils/TWITTER_SEARCH_API_DATE_FORMATTER Ljava/text/SimpleDateFormat;
astore 1
aload 1
monitorenter
L1:
getstatic com/product/android/utils/TimeUtils/TWITTER_SEARCH_API_DATE_FORMATTER Ljava/text/SimpleDateFormat;
aload 0
invokevirtual java/text/SimpleDateFormat/parse(Ljava/lang/String;)Ljava/util/Date;
astore 2
aload 1
monitorexit
L3:
aload 2
areturn
L4:
astore 2
L5:
aload 1
monitorexit
L6:
aload 2
athrow
L2:
astore 1
ldc "TimeUtils"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Could not parse Twitter search date string: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/product/android/utils/LogUtils/w(Ljava/lang/String;Ljava/lang/String;)V
new java/util/Date
dup
invokestatic java/lang/System/currentTimeMillis()J
invokespecial java/util/Date/<init>(J)V
areturn
.limit locals 3
.limit stack 4
.end method
