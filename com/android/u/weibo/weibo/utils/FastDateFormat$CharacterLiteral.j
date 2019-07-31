.bytecode 50.0
.class synchronized com/android/u/weibo/weibo/utils/FastDateFormat$CharacterLiteral
.super java/lang/Object
.implements com/android/u/weibo/weibo/utils/FastDateFormat$Rule
.inner class private static CharacterLiteral inner com/android/u/weibo/weibo/utils/FastDateFormat$CharacterLiteral outer com/android/u/weibo/weibo/utils/FastDateFormat

.field private final 'mValue' C

.method <init>(C)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iload 1
putfield com/android/u/weibo/weibo/utils/FastDateFormat$CharacterLiteral/mValue C
return
.limit locals 2
.limit stack 2
.end method

.method public appendTo(Ljava/lang/StringBuffer;Ljava/util/Calendar;)V
aload 1
aload 0
getfield com/android/u/weibo/weibo/utils/FastDateFormat$CharacterLiteral/mValue C
invokevirtual java/lang/StringBuffer/append(C)Ljava/lang/StringBuffer;
pop
return
.limit locals 3
.limit stack 2
.end method

.method public estimateLength()I
iconst_1
ireturn
.limit locals 1
.limit stack 1
.end method
