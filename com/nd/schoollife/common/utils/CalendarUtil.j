.bytecode 50.0
.class public final synchronized com/nd/schoollife/common/utils/CalendarUtil
.super java/lang/Object

.field private static final 'DAY' J = 86400000L


.field private static final 'HOUR' J = 3600000L


.field private static final 'MINUTE' J = 60000L


.field private static final 'OFFSET' J = 5000L


.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static getFormatDate(JLjava/lang/String;)Ljava/lang/String;
lload 0
lconst_0
lcmp
ifne L0
ldc ""
areturn
L0:
aload 2
astore 3
aload 2
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L1
ldc "yyyy-MM-dd HH:mm"
astore 3
L1:
new java/util/Date
dup
lload 0
invokespecial java/util/Date/<init>(J)V
astore 2
new java/text/SimpleDateFormat
dup
aload 3
invokespecial java/text/SimpleDateFormat/<init>(Ljava/lang/String;)V
aload 2
invokevirtual java/text/SimpleDateFormat/format(Ljava/util/Date;)Ljava/lang/String;
areturn
.limit locals 4
.limit stack 4
.end method

.method public static getFriendTime(Landroid/content/Context;J)Ljava/lang/String;
invokestatic java/lang/System/currentTimeMillis()J
lstore 9
lload 9
lload 1
lsub
lstore 11
invokestatic java/util/Calendar/getInstance()Ljava/util/Calendar;
astore 13
aload 13
lload 1
invokevirtual java/util/Calendar/setTimeInMillis(J)V
aload 13
iconst_1
invokevirtual java/util/Calendar/get(I)I
istore 3
aload 13
iconst_2
invokevirtual java/util/Calendar/get(I)I
iconst_1
iadd
istore 4
aload 13
iconst_5
invokevirtual java/util/Calendar/get(I)I
istore 5
aload 13
bipush 11
invokevirtual java/util/Calendar/get(I)I
istore 6
aload 13
bipush 12
invokevirtual java/util/Calendar/get(I)I
istore 7
aload 13
lload 9
invokevirtual java/util/Calendar/setTimeInMillis(J)V
aload 13
iconst_1
invokevirtual java/util/Calendar/get(I)I
istore 8
lload 11
ldc2_w -5000L
lcmp
ifge L0
aload 0
getstatic com/nd/schoollife/R$string/time_year_month_day I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
iconst_3
anewarray java/lang/Object
dup
iconst_0
iload 3
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
dup
iconst_1
iload 4
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
dup
iconst_2
iload 5
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
areturn
L0:
lload 11
ldc2_w 60000L
lcmp
ifge L1
ldc "\u521a\u521a"
areturn
L1:
lload 11
ldc2_w 3600000L
lcmp
ifge L2
aload 0
getstatic com/nd/schoollife/R$string/time_minute I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
iconst_1
anewarray java/lang/Object
dup
iconst_0
lload 11
ldc2_w 60000L
ldiv
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
areturn
L2:
lload 11
ldc2_w 86400000L
lcmp
ifge L3
aload 0
getstatic com/nd/schoollife/R$string/time_hour I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
iconst_1
anewarray java/lang/Object
dup
iconst_0
lload 11
ldc2_w 3600000L
ldiv
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
areturn
L3:
lload 11
ldc2_w 172800000L
lcmp
ifge L4
aload 13
iconst_5
invokevirtual java/util/Calendar/get(I)I
iload 5
isub
iconst_2
if_icmpge L5
aload 0
getstatic com/nd/schoollife/R$string/time_hour_minute_yesterday I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
astore 0
L6:
aload 0
iconst_2
anewarray java/lang/Object
dup
iconst_0
iload 6
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
dup
iconst_1
iload 7
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
areturn
L5:
aload 0
getstatic com/nd/schoollife/R$string/time_hour_minute_before_yesterday I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
astore 0
goto L6
L4:
iload 3
iload 8
if_icmpeq L7
aload 0
getstatic com/nd/schoollife/R$string/time_year_month_day I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
iconst_3
anewarray java/lang/Object
dup
iconst_0
iload 3
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
dup
iconst_1
iload 4
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
dup
iconst_2
iload 5
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
areturn
L7:
aload 0
getstatic com/nd/schoollife/R$string/time_month_day I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
iconst_2
anewarray java/lang/Object
dup
iconst_0
iload 4
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
dup
iconst_1
iload 5
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
areturn
.limit locals 14
.limit stack 8
.end method
