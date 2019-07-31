.bytecode 50.0
.class synchronized com/android/u/weibo/weibo/utils/FastDateFormat$TwoDigitNumberField
.super java/lang/Object
.implements com/android/u/weibo/weibo/utils/FastDateFormat$NumberRule
.inner class private static TwoDigitNumberField inner com/android/u/weibo/weibo/utils/FastDateFormat$TwoDigitNumberField outer com/android/u/weibo/weibo/utils/FastDateFormat

.field private final 'mField' I

.method <init>(I)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iload 1
putfield com/android/u/weibo/weibo/utils/FastDateFormat$TwoDigitNumberField/mField I
return
.limit locals 2
.limit stack 2
.end method

.method public final appendTo(Ljava/lang/StringBuffer;I)V
iload 2
bipush 100
if_icmpge L0
aload 1
iload 2
bipush 10
idiv
bipush 48
iadd
i2c
invokevirtual java/lang/StringBuffer/append(C)Ljava/lang/StringBuffer;
pop
aload 1
iload 2
bipush 10
irem
bipush 48
iadd
i2c
invokevirtual java/lang/StringBuffer/append(C)Ljava/lang/StringBuffer;
pop
return
L0:
aload 1
iload 2
invokestatic java/lang/Integer/toString(I)Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
return
.limit locals 3
.limit stack 3
.end method

.method public appendTo(Ljava/lang/StringBuffer;Ljava/util/Calendar;)V
aload 0
aload 1
aload 2
aload 0
getfield com/android/u/weibo/weibo/utils/FastDateFormat$TwoDigitNumberField/mField I
invokevirtual java/util/Calendar/get(I)I
invokevirtual com/android/u/weibo/weibo/utils/FastDateFormat$TwoDigitNumberField/appendTo(Ljava/lang/StringBuffer;I)V
return
.limit locals 3
.limit stack 4
.end method

.method public estimateLength()I
iconst_2
ireturn
.limit locals 1
.limit stack 1
.end method
