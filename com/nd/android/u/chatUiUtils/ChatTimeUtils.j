.bytecode 50.0
.class public synchronized com/nd/android/u/chatUiUtils/ChatTimeUtils
.super java/lang/Object

.field public static final 'TYPE_BEFORE_DAY' I = 3


.field public static final 'TYPE_BEFORE_MONTH' I = 2


.field public static final 'TYPE_BEFORE_YEAR' I = 1


.field public static final 'TYPE_FUTURE' I = 0


.field public static final 'TYPE_TODAY' I = 4


.field private static final 'beforeYesterDayChatSdf' Ljava/text/SimpleDateFormat;

.field private static final 'beforeYesterDayRecentSdf' Ljava/text/SimpleDateFormat;

.field private static final 'dateChatSdf' Ljava/text/SimpleDateFormat;

.field private static final 'monthHourRecentformat' Ljava/text/SimpleDateFormat;

.field private static final 'monthRecentformat' Ljava/text/SimpleDateFormat;

.field private static final 'monthformat' Ljava/text/SimpleDateFormat;

.field private static final 'otherChatSdf' Ljava/text/SimpleDateFormat;

.field private static final 'otherRecentSdf' Ljava/text/SimpleDateFormat;

.field private static final 'otheryearRecentSdf' Ljava/text/SimpleDateFormat;

.field private static final 'todayRecentSdf' Ljava/text/SimpleDateFormat;

.field private static final 'yesterdayChatSdf' Ljava/text/SimpleDateFormat;

.field private static final 'yesterdayRecentSdf' Ljava/text/SimpleDateFormat;

.field private static final 'yesterdayaftRecentSdf' Ljava/text/SimpleDateFormat;

.field private static final 'yesterdayearRecentSdf' Ljava/text/SimpleDateFormat;

.field private static final 'yesterdaymorRecentSdf' Ljava/text/SimpleDateFormat;

.field private static final 'yesterdaynigRecentSdf' Ljava/text/SimpleDateFormat;

.method static <clinit>()V
new java/text/SimpleDateFormat
dup
ldc "\u4eca\u5929HH:mm"
invokespecial java/text/SimpleDateFormat/<init>(Ljava/lang/String;)V
putstatic com/nd/android/u/chatUiUtils/ChatTimeUtils/todayRecentSdf Ljava/text/SimpleDateFormat;
new java/text/SimpleDateFormat
dup
ldc "\u6628\u5929HH:mm"
invokespecial java/text/SimpleDateFormat/<init>(Ljava/lang/String;)V
putstatic com/nd/android/u/chatUiUtils/ChatTimeUtils/yesterdayRecentSdf Ljava/text/SimpleDateFormat;
new java/text/SimpleDateFormat
dup
ldc "\u524d\u5929HH:mm"
invokespecial java/text/SimpleDateFormat/<init>(Ljava/lang/String;)V
putstatic com/nd/android/u/chatUiUtils/ChatTimeUtils/beforeYesterDayRecentSdf Ljava/text/SimpleDateFormat;
new java/text/SimpleDateFormat
dup
ldc "\u4eca\u5929HH:mm"
invokespecial java/text/SimpleDateFormat/<init>(Ljava/lang/String;)V
putstatic com/nd/android/u/chatUiUtils/ChatTimeUtils/dateChatSdf Ljava/text/SimpleDateFormat;
new java/text/SimpleDateFormat
dup
ldc "\u6628\u5929HH:mm"
invokespecial java/text/SimpleDateFormat/<init>(Ljava/lang/String;)V
putstatic com/nd/android/u/chatUiUtils/ChatTimeUtils/yesterdayChatSdf Ljava/text/SimpleDateFormat;
new java/text/SimpleDateFormat
dup
ldc "\u524d\u5929HH:mm"
invokespecial java/text/SimpleDateFormat/<init>(Ljava/lang/String;)V
putstatic com/nd/android/u/chatUiUtils/ChatTimeUtils/beforeYesterDayChatSdf Ljava/text/SimpleDateFormat;
new java/text/SimpleDateFormat
dup
ldc "MM-dd HH:mm"
invokespecial java/text/SimpleDateFormat/<init>(Ljava/lang/String;)V
putstatic com/nd/android/u/chatUiUtils/ChatTimeUtils/otherRecentSdf Ljava/text/SimpleDateFormat;
new java/text/SimpleDateFormat
dup
ldc "yyyy-MM-dd HH:mm"
invokespecial java/text/SimpleDateFormat/<init>(Ljava/lang/String;)V
putstatic com/nd/android/u/chatUiUtils/ChatTimeUtils/otherChatSdf Ljava/text/SimpleDateFormat;
new java/text/SimpleDateFormat
dup
ldc "MM-dd"
invokespecial java/text/SimpleDateFormat/<init>(Ljava/lang/String;)V
putstatic com/nd/android/u/chatUiUtils/ChatTimeUtils/monthformat Ljava/text/SimpleDateFormat;
new java/text/SimpleDateFormat
dup
ldc "yyyy\u5e74MM\u6708dd\u65e5"
invokespecial java/text/SimpleDateFormat/<init>(Ljava/lang/String;)V
putstatic com/nd/android/u/chatUiUtils/ChatTimeUtils/otheryearRecentSdf Ljava/text/SimpleDateFormat;
new java/text/SimpleDateFormat
dup
ldc "MM\u6708dd\u53f7HH:mm"
invokespecial java/text/SimpleDateFormat/<init>(Ljava/lang/String;)V
putstatic com/nd/android/u/chatUiUtils/ChatTimeUtils/monthHourRecentformat Ljava/text/SimpleDateFormat;
new java/text/SimpleDateFormat
dup
ldc "MM\u6708dd\u53f7"
invokespecial java/text/SimpleDateFormat/<init>(Ljava/lang/String;)V
putstatic com/nd/android/u/chatUiUtils/ChatTimeUtils/monthRecentformat Ljava/text/SimpleDateFormat;
new java/text/SimpleDateFormat
dup
ldc "\u6628\u5929\u51cc\u6668HH:mm"
invokespecial java/text/SimpleDateFormat/<init>(Ljava/lang/String;)V
putstatic com/nd/android/u/chatUiUtils/ChatTimeUtils/yesterdayearRecentSdf Ljava/text/SimpleDateFormat;
new java/text/SimpleDateFormat
dup
ldc "\u6628\u5929\u65e9\u4e0aHH:mm"
invokespecial java/text/SimpleDateFormat/<init>(Ljava/lang/String;)V
putstatic com/nd/android/u/chatUiUtils/ChatTimeUtils/yesterdaymorRecentSdf Ljava/text/SimpleDateFormat;
new java/text/SimpleDateFormat
dup
ldc "\u6628\u5929\u4e0b\u5348HH:mm"
invokespecial java/text/SimpleDateFormat/<init>(Ljava/lang/String;)V
putstatic com/nd/android/u/chatUiUtils/ChatTimeUtils/yesterdayaftRecentSdf Ljava/text/SimpleDateFormat;
new java/text/SimpleDateFormat
dup
ldc "\u6628\u5929\u665a\u4e0aHH:mm"
invokespecial java/text/SimpleDateFormat/<init>(Ljava/lang/String;)V
putstatic com/nd/android/u/chatUiUtils/ChatTimeUtils/yesterdaynigRecentSdf Ljava/text/SimpleDateFormat;
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
invokestatic com/nd/android/u/chatUiUtils/ChatTimeUtils/GetDate(J)Ljava/lang/String;
astore 5
lload 2
ldc2_w 86400000L
lsub
invokestatic com/nd/android/u/chatUiUtils/ChatTimeUtils/GetDate(J)Ljava/lang/String;
astore 6
lload 0
invokestatic com/nd/android/u/chatUiUtils/ChatTimeUtils/GetDate(J)Ljava/lang/String;
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
invokestatic com/nd/android/u/chatUiUtils/ChatTimeUtils/GetTime(J)Ljava/lang/String;
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
invokestatic com/nd/android/u/chatUiUtils/ChatTimeUtils/formateMillisTime(J)Ljava/lang/String;
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
getstatic com/nd/android/u/chatUiUtils/ChatTimeUtils/otherChatSdf Ljava/text/SimpleDateFormat;
areturn
.limit locals 0
.limit stack 1
.end method

.method public static getCurrentTime()Ljava/lang/String;
invokestatic java/lang/System/currentTimeMillis()J
lstore 0
lload 0
invokestatic com/nd/android/u/chatUiUtils/ChatTimeUtils/GetDate(J)Ljava/lang/String;
astore 2
lload 0
invokestatic com/nd/android/u/chatUiUtils/ChatTimeUtils/getTime(J)Ljava/lang/String;
astore 3
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 4
.limit stack 2
.end method

.method public static getMsgBeforeYesterdayFormatStr(Ljava/util/Date;I)Ljava/lang/String;
iload 1
ifne L0
getstatic com/nd/android/u/chatUiUtils/ChatTimeUtils/beforeYesterDayRecentSdf Ljava/text/SimpleDateFormat;
aload 0
invokevirtual java/text/SimpleDateFormat/format(Ljava/util/Date;)Ljava/lang/String;
areturn
L0:
getstatic com/nd/android/u/chatUiUtils/ChatTimeUtils/beforeYesterDayChatSdf Ljava/text/SimpleDateFormat;
aload 0
invokevirtual java/text/SimpleDateFormat/format(Ljava/util/Date;)Ljava/lang/String;
areturn
.limit locals 2
.limit stack 2
.end method

.method public static getMsgHourFormatStr(Ljava/util/Date;I)Ljava/lang/String;
iload 1
ifne L0
getstatic com/nd/android/u/chatUiUtils/ChatTimeUtils/todayRecentSdf Ljava/text/SimpleDateFormat;
aload 0
invokevirtual java/text/SimpleDateFormat/format(Ljava/util/Date;)Ljava/lang/String;
areturn
L0:
getstatic com/nd/android/u/chatUiUtils/ChatTimeUtils/dateChatSdf Ljava/text/SimpleDateFormat;
aload 0
invokevirtual java/text/SimpleDateFormat/format(Ljava/util/Date;)Ljava/lang/String;
areturn
.limit locals 2
.limit stack 2
.end method

.method public static getMsgMonthHourFormatStr(Ljava/util/Date;)Ljava/lang/String;
getstatic com/nd/android/u/chatUiUtils/ChatTimeUtils/monthformat Ljava/text/SimpleDateFormat;
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
getstatic com/nd/android/u/chatUiUtils/ChatTimeUtils/otherRecentSdf Ljava/text/SimpleDateFormat;
aload 0
invokevirtual java/text/SimpleDateFormat/format(Ljava/util/Date;)Ljava/lang/String;
areturn
.limit locals 1
.limit stack 2
.end method

.method public static getMsgYesterdayFormatStr(Ljava/util/Date;I)Ljava/lang/String;
iload 1
ifne L0
getstatic com/nd/android/u/chatUiUtils/ChatTimeUtils/yesterdayRecentSdf Ljava/text/SimpleDateFormat;
aload 0
invokevirtual java/text/SimpleDateFormat/format(Ljava/util/Date;)Ljava/lang/String;
areturn
L0:
getstatic com/nd/android/u/chatUiUtils/ChatTimeUtils/yesterdayChatSdf Ljava/text/SimpleDateFormat;
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
invokestatic com/nd/android/u/chatUiUtils/ChatTimeUtils/getNowTime()Ljava/util/Date;
invokestatic com/nd/android/u/chatUiUtils/ChatTimeUtils/getMsgTime(Ljava/util/Date;)Ljava/lang/String;
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
invokestatic com/nd/android/u/chatUiUtils/ChatTimeUtils/GetDate(J)Ljava/lang/String;
astore 7
lload 3
ldc2_w 86400000L
lsub
invokestatic com/nd/android/u/chatUiUtils/ChatTimeUtils/GetDate(J)Ljava/lang/String;
astore 11
lload 3
ldc2_w 2L
ldc2_w 86400000L
lmul
lsub
invokestatic com/nd/android/u/chatUiUtils/ChatTimeUtils/GetDate(J)Ljava/lang/String;
astore 12
lload 3
ldc2_w 6L
ldc2_w 86400000L
lmul
lsub
invokestatic com/nd/android/u/chatUiUtils/ChatTimeUtils/GetDate(J)Ljava/lang/String;
invokestatic com/nd/android/u/chatUiUtils/ChatTimeUtils/getTimeStamp(Ljava/lang/String;)J
lstore 5
lload 0
invokestatic com/nd/android/u/chatUiUtils/ChatTimeUtils/GetDate(J)Ljava/lang/String;
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
invokespecial java/lang/StringBuilder/<init>()V
aload 8
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
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
invokestatic com/nd/android/u/chatUiUtils/ChatTimeUtils/getTimeFormat(Ljava/lang/String;J)Ljava/lang/String;
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
invokestatic com/nd/android/u/chatUiUtils/ChatTimeUtils/getTime(J)Ljava/lang/String;
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

.method public static getTimeType(J)I
invokestatic ims/IMSdk/computeServertime()J
ldc2_w 1000L
lmul
lstore 2
lload 0
lload 2
lcmp
ifle L0
iconst_0
ireturn
L0:
invokestatic java/util/Calendar/getInstance()Ljava/util/Calendar;
astore 4
aload 4
lload 0
invokevirtual java/util/Calendar/setTimeInMillis(J)V
invokestatic java/util/Calendar/getInstance()Ljava/util/Calendar;
astore 5
aload 5
lload 2
invokevirtual java/util/Calendar/setTimeInMillis(J)V
aload 4
iconst_1
invokevirtual java/util/Calendar/get(I)I
aload 5
iconst_1
invokevirtual java/util/Calendar/get(I)I
if_icmpge L1
iconst_1
ireturn
L1:
aload 4
iconst_2
invokevirtual java/util/Calendar/get(I)I
aload 4
iconst_2
invokevirtual java/util/Calendar/get(I)I
if_icmpge L2
iconst_2
ireturn
L2:
aload 4
iconst_5
invokevirtual java/util/Calendar/get(I)I
aload 5
iconst_5
invokevirtual java/util/Calendar/get(I)I
if_icmpge L3
iconst_3
ireturn
L3:
iconst_4
ireturn
.limit locals 6
.limit stack 4
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
.catch java/lang/Exception from L8 to L9 using L2
iload 1
ifne L10
getstatic com/nd/android/u/chatUiUtils/ChatTimeUtils/todayRecentSdf Ljava/text/SimpleDateFormat;
astore 8
getstatic com/nd/android/u/chatUiUtils/ChatTimeUtils/yesterdayRecentSdf Ljava/text/SimpleDateFormat;
astore 9
getstatic com/nd/android/u/chatUiUtils/ChatTimeUtils/beforeYesterDayRecentSdf Ljava/text/SimpleDateFormat;
astore 10
getstatic com/nd/android/u/chatUiUtils/ChatTimeUtils/otherRecentSdf Ljava/text/SimpleDateFormat;
astore 11
L0:
invokestatic java/util/Calendar/getInstance()Ljava/util/Calendar;
astore 12
aload 12
aload 0
invokevirtual java/util/Calendar/setTime(Ljava/util/Date;)V
aload 12
invokevirtual java/util/Calendar/getTimeInMillis()J
lstore 2
invokestatic java/util/Calendar/getInstance()Ljava/util/Calendar;
astore 12
aload 12
bipush 11
invokevirtual java/util/Calendar/get(I)I
sipush 3600
imul
aload 12
bipush 12
invokevirtual java/util/Calendar/get(I)I
bipush 60
imul
iadd
aload 12
bipush 13
invokevirtual java/util/Calendar/get(I)I
iadd
sipush 1000
imul
i2l
lstore 4
aload 12
invokevirtual java/util/Calendar/getTimeInMillis()J
lstore 6
L1:
lload 6
lload 2
lsub
lload 4
lcmp
ifge L11
L3:
aload 8
aload 0
invokevirtual java/text/SimpleDateFormat/format(Ljava/util/Date;)Ljava/lang/String;
astore 0
L4:
aload 0
areturn
L10:
getstatic com/nd/android/u/chatUiUtils/ChatTimeUtils/dateChatSdf Ljava/text/SimpleDateFormat;
astore 8
getstatic com/nd/android/u/chatUiUtils/ChatTimeUtils/yesterdayChatSdf Ljava/text/SimpleDateFormat;
astore 9
getstatic com/nd/android/u/chatUiUtils/ChatTimeUtils/beforeYesterDayChatSdf Ljava/text/SimpleDateFormat;
astore 10
getstatic com/nd/android/u/chatUiUtils/ChatTimeUtils/otherChatSdf Ljava/text/SimpleDateFormat;
astore 11
goto L0
L11:
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
aload 11
aload 0
invokevirtual java/text/SimpleDateFormat/format(Ljava/util/Date;)Ljava/lang/String;
astore 0
L9:
aload 0
areturn
L2:
astore 0
aload 0
invokevirtual java/lang/Exception/printStackTrace()V
ldc ""
areturn
.limit locals 13
.limit stack 6
.end method
