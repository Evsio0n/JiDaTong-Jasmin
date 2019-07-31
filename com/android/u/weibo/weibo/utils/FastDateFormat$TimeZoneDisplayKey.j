.bytecode 50.0
.class synchronized com/android/u/weibo/weibo/utils/FastDateFormat$TimeZoneDisplayKey
.super java/lang/Object
.inner class private static TimeZoneDisplayKey inner com/android/u/weibo/weibo/utils/FastDateFormat$TimeZoneDisplayKey outer com/android/u/weibo/weibo/utils/FastDateFormat

.field private final 'mLocale' Ljava/util/Locale;

.field private final 'mStyle' I

.field private final 'mTimeZone' Ljava/util/TimeZone;

.method <init>(Ljava/util/TimeZone;ZILjava/util/Locale;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/android/u/weibo/weibo/utils/FastDateFormat$TimeZoneDisplayKey/mTimeZone Ljava/util/TimeZone;
iload 3
istore 5
iload 2
ifeq L0
iload 3
ldc_w -2147483648
ior
istore 5
L0:
aload 0
iload 5
putfield com/android/u/weibo/weibo/utils/FastDateFormat$TimeZoneDisplayKey/mStyle I
aload 0
aload 4
putfield com/android/u/weibo/weibo/utils/FastDateFormat$TimeZoneDisplayKey/mLocale Ljava/util/Locale;
return
.limit locals 6
.limit stack 2
.end method

.method public equals(Ljava/lang/Object;)Z
aload 0
aload 1
if_acmpne L0
L1:
iconst_1
ireturn
L0:
aload 1
instanceof com/android/u/weibo/weibo/utils/FastDateFormat$TimeZoneDisplayKey
ifeq L2
aload 1
checkcast com/android/u/weibo/weibo/utils/FastDateFormat$TimeZoneDisplayKey
astore 1
aload 0
getfield com/android/u/weibo/weibo/utils/FastDateFormat$TimeZoneDisplayKey/mTimeZone Ljava/util/TimeZone;
aload 1
getfield com/android/u/weibo/weibo/utils/FastDateFormat$TimeZoneDisplayKey/mTimeZone Ljava/util/TimeZone;
invokevirtual java/lang/Object/equals(Ljava/lang/Object;)Z
ifeq L3
aload 0
getfield com/android/u/weibo/weibo/utils/FastDateFormat$TimeZoneDisplayKey/mStyle I
aload 1
getfield com/android/u/weibo/weibo/utils/FastDateFormat$TimeZoneDisplayKey/mStyle I
if_icmpne L3
aload 0
getfield com/android/u/weibo/weibo/utils/FastDateFormat$TimeZoneDisplayKey/mLocale Ljava/util/Locale;
aload 1
getfield com/android/u/weibo/weibo/utils/FastDateFormat$TimeZoneDisplayKey/mLocale Ljava/util/Locale;
invokevirtual java/util/Locale/equals(Ljava/lang/Object;)Z
ifne L1
L3:
iconst_0
ireturn
L2:
iconst_0
ireturn
.limit locals 2
.limit stack 2
.end method

.method public hashCode()I
aload 0
getfield com/android/u/weibo/weibo/utils/FastDateFormat$TimeZoneDisplayKey/mStyle I
bipush 31
imul
aload 0
getfield com/android/u/weibo/weibo/utils/FastDateFormat$TimeZoneDisplayKey/mLocale Ljava/util/Locale;
invokevirtual java/util/Locale/hashCode()I
iadd
ireturn
.limit locals 1
.limit stack 2
.end method
