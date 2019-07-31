.bytecode 50.0
.class final synchronized com/common/android/utils/StringUtils$3
.super java/lang/Object
.implements android/text/util/Linkify$TransformFilter
.enclosing method com/common/android/utils/StringUtils
.inner class static final inner com/common/android/utils/StringUtils$3

.method <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public final transformUrl(Ljava/util/regex/Matcher;Ljava/lang/String;)Ljava/lang/String;
aload 2
invokevirtual java/lang/String/length()I
iconst_1
if_icmple L0
aload 2
iconst_1
aload 2
invokevirtual java/lang/String/length()I
iconst_1
isub
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
astore 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "%23"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "%23"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
L0:
ldc ""
areturn
.limit locals 3
.limit stack 4
.end method
