.bytecode 50.0
.class synchronized com/android/u/weibo/weibo/utils/FastDateFormat$TwelveHourField
.super java/lang/Object
.implements com/android/u/weibo/weibo/utils/FastDateFormat$NumberRule
.inner class private static TwelveHourField inner com/android/u/weibo/weibo/utils/FastDateFormat$TwelveHourField outer com/android/u/weibo/weibo/utils/FastDateFormat

.field private final 'mRule' Lcom/android/u/weibo/weibo/utils/FastDateFormat$NumberRule;

.method <init>(Lcom/android/u/weibo/weibo/utils/FastDateFormat$NumberRule;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/android/u/weibo/weibo/utils/FastDateFormat$TwelveHourField/mRule Lcom/android/u/weibo/weibo/utils/FastDateFormat$NumberRule;
return
.limit locals 2
.limit stack 2
.end method

.method public appendTo(Ljava/lang/StringBuffer;I)V
aload 0
getfield com/android/u/weibo/weibo/utils/FastDateFormat$TwelveHourField/mRule Lcom/android/u/weibo/weibo/utils/FastDateFormat$NumberRule;
aload 1
iload 2
invokeinterface com/android/u/weibo/weibo/utils/FastDateFormat$NumberRule/appendTo(Ljava/lang/StringBuffer;I)V 2
return
.limit locals 3
.limit stack 3
.end method

.method public appendTo(Ljava/lang/StringBuffer;Ljava/util/Calendar;)V
aload 2
bipush 10
invokevirtual java/util/Calendar/get(I)I
istore 4
iload 4
istore 3
iload 4
ifne L0
aload 2
bipush 10
invokevirtual java/util/Calendar/getLeastMaximum(I)I
iconst_1
iadd
istore 3
L0:
aload 0
getfield com/android/u/weibo/weibo/utils/FastDateFormat$TwelveHourField/mRule Lcom/android/u/weibo/weibo/utils/FastDateFormat$NumberRule;
aload 1
iload 3
invokeinterface com/android/u/weibo/weibo/utils/FastDateFormat$NumberRule/appendTo(Ljava/lang/StringBuffer;I)V 2
return
.limit locals 5
.limit stack 3
.end method

.method public estimateLength()I
aload 0
getfield com/android/u/weibo/weibo/utils/FastDateFormat$TwelveHourField/mRule Lcom/android/u/weibo/weibo/utils/FastDateFormat$NumberRule;
invokeinterface com/android/u/weibo/weibo/utils/FastDateFormat$NumberRule/estimateLength()I 0
ireturn
.limit locals 1
.limit stack 1
.end method
