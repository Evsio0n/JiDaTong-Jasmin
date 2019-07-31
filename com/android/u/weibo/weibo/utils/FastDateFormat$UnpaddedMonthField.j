.bytecode 50.0
.class synchronized com/android/u/weibo/weibo/utils/FastDateFormat$UnpaddedMonthField
.super java/lang/Object
.implements com/android/u/weibo/weibo/utils/FastDateFormat$NumberRule
.inner class private static UnpaddedMonthField inner com/android/u/weibo/weibo/utils/FastDateFormat$UnpaddedMonthField outer com/android/u/weibo/weibo/utils/FastDateFormat

.field static final 'INSTANCE' Lcom/android/u/weibo/weibo/utils/FastDateFormat$UnpaddedMonthField;

.method static <clinit>()V
new com/android/u/weibo/weibo/utils/FastDateFormat$UnpaddedMonthField
dup
invokespecial com/android/u/weibo/weibo/utils/FastDateFormat$UnpaddedMonthField/<init>()V
putstatic com/android/u/weibo/weibo/utils/FastDateFormat$UnpaddedMonthField/INSTANCE Lcom/android/u/weibo/weibo/utils/FastDateFormat$UnpaddedMonthField;
return
.limit locals 0
.limit stack 2
.end method

.method <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public final appendTo(Ljava/lang/StringBuffer;I)V
iload 2
bipush 10
if_icmpge L0
aload 1
iload 2
bipush 48
iadd
i2c
invokevirtual java/lang/StringBuffer/append(C)Ljava/lang/StringBuffer;
pop
return
L0:
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
.limit locals 3
.limit stack 3
.end method

.method public appendTo(Ljava/lang/StringBuffer;Ljava/util/Calendar;)V
aload 0
aload 1
aload 2
iconst_2
invokevirtual java/util/Calendar/get(I)I
iconst_1
iadd
invokevirtual com/android/u/weibo/weibo/utils/FastDateFormat$UnpaddedMonthField/appendTo(Ljava/lang/StringBuffer;I)V
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
