.bytecode 50.0
.class synchronized com/android/u/weibo/weibo/utils/FastDateFormat$TimeZoneNameRule
.super java/lang/Object
.implements com/android/u/weibo/weibo/utils/FastDateFormat$Rule
.inner class private static TimeZoneNameRule inner com/android/u/weibo/weibo/utils/FastDateFormat$TimeZoneNameRule outer com/android/u/weibo/weibo/utils/FastDateFormat

.field private final 'mDaylight' Ljava/lang/String;

.field private final 'mLocale' Ljava/util/Locale;

.field private final 'mStandard' Ljava/lang/String;

.field private final 'mStyle' I

.field private final 'mTimeZone' Ljava/util/TimeZone;

.field private final 'mTimeZoneForced' Z

.method <init>(Ljava/util/TimeZone;ZLjava/util/Locale;I)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/android/u/weibo/weibo/utils/FastDateFormat$TimeZoneNameRule/mTimeZone Ljava/util/TimeZone;
aload 0
iload 2
putfield com/android/u/weibo/weibo/utils/FastDateFormat$TimeZoneNameRule/mTimeZoneForced Z
aload 0
aload 3
putfield com/android/u/weibo/weibo/utils/FastDateFormat$TimeZoneNameRule/mLocale Ljava/util/Locale;
aload 0
iload 4
putfield com/android/u/weibo/weibo/utils/FastDateFormat$TimeZoneNameRule/mStyle I
iload 2
ifeq L0
aload 0
aload 1
iconst_0
iload 4
aload 3
invokestatic com/android/u/weibo/weibo/utils/FastDateFormat/getTimeZoneDisplay(Ljava/util/TimeZone;ZILjava/util/Locale;)Ljava/lang/String;
putfield com/android/u/weibo/weibo/utils/FastDateFormat$TimeZoneNameRule/mStandard Ljava/lang/String;
aload 0
aload 1
iconst_1
iload 4
aload 3
invokestatic com/android/u/weibo/weibo/utils/FastDateFormat/getTimeZoneDisplay(Ljava/util/TimeZone;ZILjava/util/Locale;)Ljava/lang/String;
putfield com/android/u/weibo/weibo/utils/FastDateFormat$TimeZoneNameRule/mDaylight Ljava/lang/String;
return
L0:
aload 0
aconst_null
putfield com/android/u/weibo/weibo/utils/FastDateFormat$TimeZoneNameRule/mStandard Ljava/lang/String;
aload 0
aconst_null
putfield com/android/u/weibo/weibo/utils/FastDateFormat$TimeZoneNameRule/mDaylight Ljava/lang/String;
return
.limit locals 5
.limit stack 5
.end method

.method public appendTo(Ljava/lang/StringBuffer;Ljava/util/Calendar;)V
aload 0
getfield com/android/u/weibo/weibo/utils/FastDateFormat$TimeZoneNameRule/mTimeZoneForced Z
ifeq L0
aload 0
getfield com/android/u/weibo/weibo/utils/FastDateFormat$TimeZoneNameRule/mTimeZone Ljava/util/TimeZone;
invokevirtual java/util/TimeZone/useDaylightTime()Z
ifeq L1
aload 2
bipush 16
invokevirtual java/util/Calendar/get(I)I
ifeq L1
aload 1
aload 0
getfield com/android/u/weibo/weibo/utils/FastDateFormat$TimeZoneNameRule/mDaylight Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
return
L1:
aload 1
aload 0
getfield com/android/u/weibo/weibo/utils/FastDateFormat$TimeZoneNameRule/mStandard Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
return
L0:
aload 2
invokevirtual java/util/Calendar/getTimeZone()Ljava/util/TimeZone;
astore 3
aload 3
invokevirtual java/util/TimeZone/useDaylightTime()Z
ifeq L2
aload 2
bipush 16
invokevirtual java/util/Calendar/get(I)I
ifeq L2
aload 1
aload 3
iconst_1
aload 0
getfield com/android/u/weibo/weibo/utils/FastDateFormat$TimeZoneNameRule/mStyle I
aload 0
getfield com/android/u/weibo/weibo/utils/FastDateFormat$TimeZoneNameRule/mLocale Ljava/util/Locale;
invokestatic com/android/u/weibo/weibo/utils/FastDateFormat/getTimeZoneDisplay(Ljava/util/TimeZone;ZILjava/util/Locale;)Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
return
L2:
aload 1
aload 3
iconst_0
aload 0
getfield com/android/u/weibo/weibo/utils/FastDateFormat$TimeZoneNameRule/mStyle I
aload 0
getfield com/android/u/weibo/weibo/utils/FastDateFormat$TimeZoneNameRule/mLocale Ljava/util/Locale;
invokestatic com/android/u/weibo/weibo/utils/FastDateFormat/getTimeZoneDisplay(Ljava/util/TimeZone;ZILjava/util/Locale;)Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
return
.limit locals 4
.limit stack 5
.end method

.method public estimateLength()I
aload 0
getfield com/android/u/weibo/weibo/utils/FastDateFormat$TimeZoneNameRule/mTimeZoneForced Z
ifeq L0
aload 0
getfield com/android/u/weibo/weibo/utils/FastDateFormat$TimeZoneNameRule/mStandard Ljava/lang/String;
invokevirtual java/lang/String/length()I
aload 0
getfield com/android/u/weibo/weibo/utils/FastDateFormat$TimeZoneNameRule/mDaylight Ljava/lang/String;
invokevirtual java/lang/String/length()I
invokestatic java/lang/Math/max(II)I
ireturn
L0:
aload 0
getfield com/android/u/weibo/weibo/utils/FastDateFormat$TimeZoneNameRule/mStyle I
ifne L1
iconst_4
ireturn
L1:
bipush 40
ireturn
.limit locals 1
.limit stack 2
.end method
