.bytecode 50.0
.class public synchronized com/nd/android/u/allCommonUtils/TimeUtils
.super java/lang/Object

.field private static final 'DATETIME' J = 86400L


.field private static final 'TAG' Ljava/lang/String; = "TimeUtils"

.field private static final 'beforeYesterDayChatSdf' Ljava/text/SimpleDateFormat;

.field private static final 'beforeYesterDayRecentSdf' Ljava/text/SimpleDateFormat;

.field private static final 'dateChatSdf' Ljava/text/SimpleDateFormat;

.field private static final 'monthformat' Ljava/text/SimpleDateFormat;

.field private static final 'otherChatSdf' Ljava/text/SimpleDateFormat;

.field private static final 'otherRecentSdf' Ljava/text/SimpleDateFormat;

.field private static final 'todayRecentSdf' Ljava/text/SimpleDateFormat;

.field private static final 'yesterdayChatSdf' Ljava/text/SimpleDateFormat;

.field private static final 'yesterdayRecentSdf' Ljava/text/SimpleDateFormat;

.method static <clinit>()V
new java/text/SimpleDateFormat
dup
ldc "\u4eca\u5929HH:mm"
invokespecial java/text/SimpleDateFormat/<init>(Ljava/lang/String;)V
putstatic com/nd/android/u/allCommonUtils/TimeUtils/todayRecentSdf Ljava/text/SimpleDateFormat;
new java/text/SimpleDateFormat
dup
ldc "\u6628\u5929HH:mm"
invokespecial java/text/SimpleDateFormat/<init>(Ljava/lang/String;)V
putstatic com/nd/android/u/allCommonUtils/TimeUtils/yesterdayRecentSdf Ljava/text/SimpleDateFormat;
new java/text/SimpleDateFormat
dup
ldc "\u524d\u5929HH:mm"
invokespecial java/text/SimpleDateFormat/<init>(Ljava/lang/String;)V
putstatic com/nd/android/u/allCommonUtils/TimeUtils/beforeYesterDayRecentSdf Ljava/text/SimpleDateFormat;
new java/text/SimpleDateFormat
dup
ldc "\u4eca\u5929HH:mm"
invokespecial java/text/SimpleDateFormat/<init>(Ljava/lang/String;)V
putstatic com/nd/android/u/allCommonUtils/TimeUtils/dateChatSdf Ljava/text/SimpleDateFormat;
new java/text/SimpleDateFormat
dup
ldc "\u6628\u5929HH:mm"
invokespecial java/text/SimpleDateFormat/<init>(Ljava/lang/String;)V
putstatic com/nd/android/u/allCommonUtils/TimeUtils/yesterdayChatSdf Ljava/text/SimpleDateFormat;
new java/text/SimpleDateFormat
dup
ldc "\u524d\u5929HH:mm"
invokespecial java/text/SimpleDateFormat/<init>(Ljava/lang/String;)V
putstatic com/nd/android/u/allCommonUtils/TimeUtils/beforeYesterDayChatSdf Ljava/text/SimpleDateFormat;
new java/text/SimpleDateFormat
dup
ldc "MM-dd HH:mm"
invokespecial java/text/SimpleDateFormat/<init>(Ljava/lang/String;)V
putstatic com/nd/android/u/allCommonUtils/TimeUtils/otherRecentSdf Ljava/text/SimpleDateFormat;
new java/text/SimpleDateFormat
dup
ldc "yyyy-MM-dd HH:mm"
invokespecial java/text/SimpleDateFormat/<init>(Ljava/lang/String;)V
putstatic com/nd/android/u/allCommonUtils/TimeUtils/otherChatSdf Ljava/text/SimpleDateFormat;
new java/text/SimpleDateFormat
dup
ldc "MM-dd"
invokespecial java/text/SimpleDateFormat/<init>(Ljava/lang/String;)V
putstatic com/nd/android/u/allCommonUtils/TimeUtils/monthformat Ljava/text/SimpleDateFormat;
return
.limit locals 0
.limit stack 3
.end method

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static GetDate(J)Ljava/lang/String;
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

.method public static GetDateString(J)Ljava/lang/String;
new java/lang/StringBuffer
dup
ldc ""
invokespecial java/lang/StringBuffer/<init>(Ljava/lang/String;)V
astore 4
invokestatic java/lang/System/currentTimeMillis()J
lstore 2
lload 2
invokestatic com/nd/android/u/allCommonUtils/TimeUtils/GetDate(J)Ljava/lang/String;
astore 5
lload 2
ldc2_w 86400000L
lsub
invokestatic com/nd/android/u/allCommonUtils/TimeUtils/GetDate(J)Ljava/lang/String;
astore 6
lload 0
invokestatic com/nd/android/u/allCommonUtils/TimeUtils/GetDate(J)Ljava/lang/String;
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
invokestatic com/nd/android/u/allCommonUtils/TimeUtils/GetTime(J)Ljava/lang/String;
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

.method public static GetDurationString(I)Ljava/lang/String;
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

.method public static GetFullTime(J)Ljava/lang/String;
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

.method public static GetTime(J)Ljava/lang/String;
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

.method public static formateEpochTime(J)Ljava/lang/String;
ldc2_w 1000L
lload 0
lmul
invokestatic com/nd/android/u/allCommonUtils/TimeUtils/formateMillisTime(J)Ljava/lang/String;
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

.method public static getChatSdf()Ljava/text/SimpleDateFormat;
getstatic com/nd/android/u/allCommonUtils/TimeUtils/otherChatSdf Ljava/text/SimpleDateFormat;
areturn
.limit locals 0
.limit stack 1
.end method

.method public static getCurrentTime()Ljava/lang/String;
invokestatic java/lang/System/currentTimeMillis()J
lstore 0
lload 0
invokestatic com/nd/android/u/allCommonUtils/TimeUtils/GetDate(J)Ljava/lang/String;
astore 2
lload 0
invokestatic com/nd/android/u/allCommonUtils/TimeUtils/getTime(J)Ljava/lang/String;
astore 3
new java/lang/StringBuilder
dup
aload 2
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
ldc " "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 4
.limit stack 3
.end method

.method public static getLastTime(J)Ljava/lang/String;
new java/util/Date
dup
lload 0
invokespecial java/util/Date/<init>(J)V
invokestatic com/nd/android/u/allCommonUtils/TimeUtils/getLastTime(Ljava/util/Date;)Ljava/lang/String;
areturn
.limit locals 2
.limit stack 4
.end method

.method public static getLastTime(Ljava/util/Date;)Ljava/lang/String;
iconst_1
istore 1
invokestatic java/util/Calendar/getInstance()Ljava/util/Calendar;
astore 6
aload 6
aload 0
invokevirtual java/util/Calendar/setTime(Ljava/util/Date;)V
invokestatic java/lang/System/currentTimeMillis()J
aload 6
invokevirtual java/util/Calendar/getTimeInMillis()J
lsub
ldc2_w 1000L
ldiv
lstore 2
lload 2
lconst_0
lcmp
ifne L0
ldc "\u521a\u521a"
areturn
L0:
lload 2
lconst_0
lcmp
ifle L1
lload 2
ldc2_w 60L
lcmp
ifge L1
new java/lang/StringBuilder
dup
lload 2
invokestatic java/lang/String/valueOf(J)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
ldc "\u79d2\u524d"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
L1:
lload 2
ldc2_w 60L
lcmp
iflt L2
lload 2
ldc2_w 3600L
lcmp
ifge L2
new java/lang/StringBuilder
dup
ldc "\u7ea6"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
astore 0
lload 2
ldc2_w 60L
ldiv
lstore 4
lload 2
ldc2_w 60L
ldiv
ldc2_w 60L
lrem
lconst_0
lcmp
ifne L3
iconst_0
istore 1
L3:
aload 0
lload 4
iload 1
i2l
ladd
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc "\u5206\u949f\u524d"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
L2:
aload 0
iconst_1
invokestatic com/nd/android/u/allCommonUtils/TimeUtils/parseDate(Ljava/util/Date;I)Ljava/lang/String;
areturn
.limit locals 7
.limit stack 5
.end method

.method public static getMsgBeforeYesterdayFormatStr(Ljava/util/Date;I)Ljava/lang/String;
iload 1
ifne L0
getstatic com/nd/android/u/allCommonUtils/TimeUtils/beforeYesterDayRecentSdf Ljava/text/SimpleDateFormat;
aload 0
invokevirtual java/text/SimpleDateFormat/format(Ljava/util/Date;)Ljava/lang/String;
areturn
L0:
getstatic com/nd/android/u/allCommonUtils/TimeUtils/beforeYesterDayChatSdf Ljava/text/SimpleDateFormat;
aload 0
invokevirtual java/text/SimpleDateFormat/format(Ljava/util/Date;)Ljava/lang/String;
areturn
.limit locals 2
.limit stack 2
.end method

.method public static getMsgHourFormatStr(Ljava/util/Date;I)Ljava/lang/String;
iload 1
ifne L0
getstatic com/nd/android/u/allCommonUtils/TimeUtils/todayRecentSdf Ljava/text/SimpleDateFormat;
aload 0
invokevirtual java/text/SimpleDateFormat/format(Ljava/util/Date;)Ljava/lang/String;
areturn
L0:
getstatic com/nd/android/u/allCommonUtils/TimeUtils/dateChatSdf Ljava/text/SimpleDateFormat;
aload 0
invokevirtual java/text/SimpleDateFormat/format(Ljava/util/Date;)Ljava/lang/String;
areturn
.limit locals 2
.limit stack 2
.end method

.method public static getMsgMonthHourFormatStr(Ljava/util/Date;)Ljava/lang/String;
getstatic com/nd/android/u/allCommonUtils/TimeUtils/monthformat Ljava/text/SimpleDateFormat;
aload 0
invokevirtual java/text/SimpleDateFormat/format(Ljava/util/Date;)Ljava/lang/String;
areturn
.limit locals 1
.limit stack 2
.end method

.method public static getMsgTime(Ljava/util/Date;)Ljava/lang/String;
aload 0
ifnonnull L0
ldc ""
areturn
L0:
getstatic com/nd/android/u/allCommonUtils/TimeUtils/otherRecentSdf Ljava/text/SimpleDateFormat;
aload 0
invokevirtual java/text/SimpleDateFormat/format(Ljava/util/Date;)Ljava/lang/String;
areturn
.limit locals 1
.limit stack 2
.end method

.method public static getMsgYesterdayFormatStr(Ljava/util/Date;I)Ljava/lang/String;
iload 1
ifne L0
getstatic com/nd/android/u/allCommonUtils/TimeUtils/yesterdayRecentSdf Ljava/text/SimpleDateFormat;
aload 0
invokevirtual java/text/SimpleDateFormat/format(Ljava/util/Date;)Ljava/lang/String;
areturn
L0:
getstatic com/nd/android/u/allCommonUtils/TimeUtils/yesterdayChatSdf Ljava/text/SimpleDateFormat;
aload 0
invokevirtual java/text/SimpleDateFormat/format(Ljava/util/Date;)Ljava/lang/String;
areturn
.limit locals 2
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
invokestatic com/nd/android/u/allCommonUtils/TimeUtils/getNowTime()Ljava/util/Date;
invokestatic com/nd/android/u/allCommonUtils/TimeUtils/getMsgTime(Ljava/util/Date;)Ljava/lang/String;
areturn
.limit locals 0
.limit stack 1
.end method

.method public static getTime(J)Ljava/lang/String;
lload 0
ldc2_w 10000000000L
lcmp
ifge L0
sipush 1000
istore 2
L1:
lload 0
iload 2
i2l
lmul
lstore 0
invokestatic java/lang/System/currentTimeMillis()J
lstore 3
lload 3
invokestatic com/nd/android/u/allCommonUtils/TimeUtils/GetDate(J)Ljava/lang/String;
astore 7
lload 3
ldc2_w 86400000L
lsub
invokestatic com/nd/android/u/allCommonUtils/TimeUtils/GetDate(J)Ljava/lang/String;
astore 11
lload 3
ldc2_w 2L
ldc2_w 86400000L
lmul
lsub
invokestatic com/nd/android/u/allCommonUtils/TimeUtils/GetDate(J)Ljava/lang/String;
astore 12
lload 3
ldc2_w 6L
ldc2_w 86400000L
lmul
lsub
invokestatic com/nd/android/u/allCommonUtils/TimeUtils/GetDate(J)Ljava/lang/String;
invokestatic com/nd/android/u/allCommonUtils/TimeUtils/getTimeStamp(Ljava/lang/String;)J
lstore 5
lload 0
invokestatic com/nd/android/u/allCommonUtils/TimeUtils/GetDate(J)Ljava/lang/String;
astore 13
ldc "MM-dd HH:mm"
astore 10
ldc ""
astore 9
aload 13
aload 7
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L2
ldc "HH:mm"
astore 7
aload 9
astore 8
L3:
new java/lang/StringBuilder
dup
aload 8
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 7
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
invokestatic com/nd/android/u/allCommonUtils/TimeUtils/getTimeFormat(Ljava/lang/String;J)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
L0:
iconst_1
istore 2
goto L1
L2:
aload 10
astore 7
aload 9
astore 8
lload 3
lload 0
lsub
lconst_0
lcmp
iflt L3
aload 13
aload 11
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L4
ldc "HH:mm"
astore 7
ldc "\u6628\u5929"
astore 8
goto L3
L4:
aload 13
aload 12
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L5
ldc "HH:mm"
astore 7
ldc "\u524d\u5929"
astore 8
goto L3
L5:
aload 10
astore 7
aload 9
astore 8
lload 0
lload 5
lcmp
ifle L3
ldc "E HH:mm"
astore 7
aload 9
astore 8
goto L3
.limit locals 14
.limit stack 6
.end method

.method public static getTime(Landroid/content/Context;J)Ljava/lang/String;
lload 1
invokestatic com/nd/android/u/allCommonUtils/TimeUtils/getTime(J)Ljava/lang/String;
areturn
.limit locals 3
.limit stack 2
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
.catch java/lang/Exception from L5 to L6 using L2
.catch java/lang/Exception from L7 to L8 using L2
.catch java/lang/Exception from L9 to L10 using L2
.catch java/lang/Exception from L10 to L11 using L2
aconst_null
astore 12
iload 1
ifne L12
getstatic com/nd/android/u/allCommonUtils/TimeUtils/todayRecentSdf Ljava/text/SimpleDateFormat;
astore 8
getstatic com/nd/android/u/allCommonUtils/TimeUtils/yesterdayRecentSdf Ljava/text/SimpleDateFormat;
astore 9
getstatic com/nd/android/u/allCommonUtils/TimeUtils/beforeYesterDayRecentSdf Ljava/text/SimpleDateFormat;
astore 10
getstatic com/nd/android/u/allCommonUtils/TimeUtils/otherRecentSdf Ljava/text/SimpleDateFormat;
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
ifge L13
L3:
aload 8
aload 0
invokevirtual java/text/SimpleDateFormat/format(Ljava/util/Date;)Ljava/lang/String;
astore 0
L4:
aload 0
areturn
L12:
getstatic com/nd/android/u/allCommonUtils/TimeUtils/dateChatSdf Ljava/text/SimpleDateFormat;
astore 8
getstatic com/nd/android/u/allCommonUtils/TimeUtils/yesterdayChatSdf Ljava/text/SimpleDateFormat;
astore 9
getstatic com/nd/android/u/allCommonUtils/TimeUtils/beforeYesterDayChatSdf Ljava/text/SimpleDateFormat;
astore 10
getstatic com/nd/android/u/allCommonUtils/TimeUtils/otherChatSdf Ljava/text/SimpleDateFormat;
astore 11
getstatic com/nd/android/u/allCommonUtils/TimeUtils/otherRecentSdf Ljava/text/SimpleDateFormat;
astore 12
goto L0
L13:
lload 6
lload 2
lsub
ldc2_w 86400000L
lload 4
ladd
lcmp
ifge L6
L5:
aload 9
aload 0
invokevirtual java/text/SimpleDateFormat/format(Ljava/util/Date;)Ljava/lang/String;
areturn
L6:
lload 6
lload 2
lsub
ldc2_w 172800000L
lload 4
ladd
lcmp
ifge L8
L7:
aload 10
aload 0
invokevirtual java/text/SimpleDateFormat/format(Ljava/util/Date;)Ljava/lang/String;
areturn
L8:
lload 6
lload 2
lsub
ldc2_w 172800000L
lload 4
ladd
lcmp
ifle L10
L9:
aload 13
iconst_1
invokevirtual java/util/Calendar/get(I)I
aload 14
iconst_1
invokevirtual java/util/Calendar/get(I)I
if_icmpne L10
aload 12
aload 0
invokevirtual java/text/SimpleDateFormat/format(Ljava/util/Date;)Ljava/lang/String;
areturn
L10:
aload 11
aload 0
invokevirtual java/text/SimpleDateFormat/format(Ljava/util/Date;)Ljava/lang/String;
astore 0
L11:
aload 0
areturn
L2:
astore 0
aload 0
invokevirtual java/lang/Exception/printStackTrace()V
ldc ""
areturn
.limit locals 15
.limit stack 6
.end method
