.bytecode 50.0
.class synchronized com/android/u/weibo/weibo/utils/FastDateFormat$TextField
.super java/lang/Object
.implements com/android/u/weibo/weibo/utils/FastDateFormat$Rule
.inner class private static TextField inner com/android/u/weibo/weibo/utils/FastDateFormat$TextField outer com/android/u/weibo/weibo/utils/FastDateFormat

.field private final 'mField' I

.field private final 'mValues' [Ljava/lang/String;

.method <init>(I[Ljava/lang/String;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iload 1
putfield com/android/u/weibo/weibo/utils/FastDateFormat$TextField/mField I
aload 0
aload 2
putfield com/android/u/weibo/weibo/utils/FastDateFormat$TextField/mValues [Ljava/lang/String;
return
.limit locals 3
.limit stack 2
.end method

.method public appendTo(Ljava/lang/StringBuffer;Ljava/util/Calendar;)V
aload 1
aload 0
getfield com/android/u/weibo/weibo/utils/FastDateFormat$TextField/mValues [Ljava/lang/String;
aload 2
aload 0
getfield com/android/u/weibo/weibo/utils/FastDateFormat$TextField/mField I
invokevirtual java/util/Calendar/get(I)I
aaload
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
return
.limit locals 3
.limit stack 4
.end method

.method public estimateLength()I
iconst_0
istore 2
aload 0
getfield com/android/u/weibo/weibo/utils/FastDateFormat$TextField/mValues [Ljava/lang/String;
arraylength
istore 1
L0:
iload 1
iconst_1
isub
istore 3
iload 3
iflt L1
aload 0
getfield com/android/u/weibo/weibo/utils/FastDateFormat$TextField/mValues [Ljava/lang/String;
iload 3
aaload
invokevirtual java/lang/String/length()I
istore 4
iload 3
istore 1
iload 4
iload 2
if_icmple L0
iload 4
istore 2
iload 3
istore 1
goto L0
L1:
iload 2
ireturn
.limit locals 5
.limit stack 2
.end method
