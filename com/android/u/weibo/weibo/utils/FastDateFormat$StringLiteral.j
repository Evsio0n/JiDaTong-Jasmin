.bytecode 50.0
.class synchronized com/android/u/weibo/weibo/utils/FastDateFormat$StringLiteral
.super java/lang/Object
.implements com/android/u/weibo/weibo/utils/FastDateFormat$Rule
.inner class private static StringLiteral inner com/android/u/weibo/weibo/utils/FastDateFormat$StringLiteral outer com/android/u/weibo/weibo/utils/FastDateFormat

.field private final 'mValue' Ljava/lang/String;

.method <init>(Ljava/lang/String;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/android/u/weibo/weibo/utils/FastDateFormat$StringLiteral/mValue Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public appendTo(Ljava/lang/StringBuffer;Ljava/util/Calendar;)V
aload 1
aload 0
getfield com/android/u/weibo/weibo/utils/FastDateFormat$StringLiteral/mValue Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
return
.limit locals 3
.limit stack 2
.end method

.method public estimateLength()I
aload 0
getfield com/android/u/weibo/weibo/utils/FastDateFormat$StringLiteral/mValue Ljava/lang/String;
invokevirtual java/lang/String/length()I
ireturn
.limit locals 1
.limit stack 1
.end method
