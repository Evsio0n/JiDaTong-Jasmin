.bytecode 50.0
.class synchronized com/android/u/weibo/weibo/utils/FastDateFormat$PaddedNumberField
.super java/lang/Object
.implements com/android/u/weibo/weibo/utils/FastDateFormat$NumberRule
.inner class private static PaddedNumberField inner com/android/u/weibo/weibo/utils/FastDateFormat$PaddedNumberField outer com/android/u/weibo/weibo/utils/FastDateFormat

.field private final 'mField' I

.field private final 'mSize' I

.method <init>(II)V
aload 0
invokespecial java/lang/Object/<init>()V
iload 2
iconst_3
if_icmpge L0
new java/lang/IllegalArgumentException
dup
invokespecial java/lang/IllegalArgumentException/<init>()V
athrow
L0:
aload 0
iload 1
putfield com/android/u/weibo/weibo/utils/FastDateFormat$PaddedNumberField/mField I
aload 0
iload 2
putfield com/android/u/weibo/weibo/utils/FastDateFormat$PaddedNumberField/mSize I
return
.limit locals 3
.limit stack 2
.end method

.method public final appendTo(Ljava/lang/StringBuffer;I)V
iload 2
bipush 100
if_icmpge L0
aload 0
getfield com/android/u/weibo/weibo/utils/FastDateFormat$PaddedNumberField/mSize I
istore 3
L1:
iload 3
iconst_1
isub
istore 3
iload 3
iconst_2
if_icmplt L2
aload 1
bipush 48
invokevirtual java/lang/StringBuffer/append(C)Ljava/lang/StringBuffer;
pop
goto L1
L2:
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
iload 2
sipush 1000
if_icmpge L3
iconst_3
istore 3
L4:
aload 0
getfield com/android/u/weibo/weibo/utils/FastDateFormat$PaddedNumberField/mSize I
istore 4
L5:
iload 4
iconst_1
isub
istore 4
iload 4
iload 3
if_icmplt L6
aload 1
bipush 48
invokevirtual java/lang/StringBuffer/append(C)Ljava/lang/StringBuffer;
pop
goto L5
L3:
iload 2
iconst_m1
if_icmple L7
iconst_1
istore 5
L8:
iload 5
ldc "Negative values should not be possible"
iload 2
i2l
invokestatic com/android/u/weibo/weibo/utils/FastDateFormat/isTrue(ZLjava/lang/String;J)V
iload 2
invokestatic java/lang/Integer/toString(I)Ljava/lang/String;
invokevirtual java/lang/String/length()I
istore 3
goto L4
L7:
iconst_0
istore 5
goto L8
L6:
aload 1
iload 2
invokestatic java/lang/Integer/toString(I)Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
return
.limit locals 6
.limit stack 4
.end method

.method public appendTo(Ljava/lang/StringBuffer;Ljava/util/Calendar;)V
aload 0
aload 1
aload 2
aload 0
getfield com/android/u/weibo/weibo/utils/FastDateFormat$PaddedNumberField/mField I
invokevirtual java/util/Calendar/get(I)I
invokevirtual com/android/u/weibo/weibo/utils/FastDateFormat$PaddedNumberField/appendTo(Ljava/lang/StringBuffer;I)V
return
.limit locals 3
.limit stack 4
.end method

.method public estimateLength()I
iconst_4
ireturn
.limit locals 1
.limit stack 1
.end method
