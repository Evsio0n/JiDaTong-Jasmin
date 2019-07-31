.bytecode 50.0
.class synchronized com/android/u/weibo/weibo/utils/FastDateFormat$TimeZoneNumberRule
.super java/lang/Object
.implements com/android/u/weibo/weibo/utils/FastDateFormat$Rule
.inner class private static TimeZoneNumberRule inner com/android/u/weibo/weibo/utils/FastDateFormat$TimeZoneNumberRule outer com/android/u/weibo/weibo/utils/FastDateFormat

.field static final 'INSTANCE_COLON' Lcom/android/u/weibo/weibo/utils/FastDateFormat$TimeZoneNumberRule;

.field static final 'INSTANCE_NO_COLON' Lcom/android/u/weibo/weibo/utils/FastDateFormat$TimeZoneNumberRule;

.field final 'mColon' Z

.method static <clinit>()V
new com/android/u/weibo/weibo/utils/FastDateFormat$TimeZoneNumberRule
dup
iconst_1
invokespecial com/android/u/weibo/weibo/utils/FastDateFormat$TimeZoneNumberRule/<init>(Z)V
putstatic com/android/u/weibo/weibo/utils/FastDateFormat$TimeZoneNumberRule/INSTANCE_COLON Lcom/android/u/weibo/weibo/utils/FastDateFormat$TimeZoneNumberRule;
new com/android/u/weibo/weibo/utils/FastDateFormat$TimeZoneNumberRule
dup
iconst_0
invokespecial com/android/u/weibo/weibo/utils/FastDateFormat$TimeZoneNumberRule/<init>(Z)V
putstatic com/android/u/weibo/weibo/utils/FastDateFormat$TimeZoneNumberRule/INSTANCE_NO_COLON Lcom/android/u/weibo/weibo/utils/FastDateFormat$TimeZoneNumberRule;
return
.limit locals 0
.limit stack 3
.end method

.method <init>(Z)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iload 1
putfield com/android/u/weibo/weibo/utils/FastDateFormat$TimeZoneNumberRule/mColon Z
return
.limit locals 2
.limit stack 2
.end method

.method public appendTo(Ljava/lang/StringBuffer;Ljava/util/Calendar;)V
aload 2
bipush 15
invokevirtual java/util/Calendar/get(I)I
aload 2
bipush 16
invokevirtual java/util/Calendar/get(I)I
iadd
istore 3
iload 3
ifge L0
aload 1
bipush 45
invokevirtual java/lang/StringBuffer/append(C)Ljava/lang/StringBuffer;
pop
iload 3
ineg
istore 3
L1:
iload 3
ldc_w 3600000
idiv
istore 4
aload 1
iload 4
bipush 10
idiv
bipush 48
iadd
i2c
invokevirtual java/lang/StringBuffer/append(C)Ljava/lang/StringBuffer;
pop
aload 1
iload 4
bipush 10
irem
bipush 48
iadd
i2c
invokevirtual java/lang/StringBuffer/append(C)Ljava/lang/StringBuffer;
pop
aload 0
getfield com/android/u/weibo/weibo/utils/FastDateFormat$TimeZoneNumberRule/mColon Z
ifeq L2
aload 1
bipush 58
invokevirtual java/lang/StringBuffer/append(C)Ljava/lang/StringBuffer;
pop
L2:
iload 3
ldc_w 60000
idiv
iload 4
bipush 60
imul
isub
istore 3
aload 1
iload 3
bipush 10
idiv
bipush 48
iadd
i2c
invokevirtual java/lang/StringBuffer/append(C)Ljava/lang/StringBuffer;
pop
aload 1
iload 3
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
bipush 43
invokevirtual java/lang/StringBuffer/append(C)Ljava/lang/StringBuffer;
pop
goto L1
.limit locals 5
.limit stack 3
.end method

.method public estimateLength()I
iconst_5
ireturn
.limit locals 1
.limit stack 1
.end method
