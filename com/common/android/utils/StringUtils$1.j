.bytecode 50.0
.class final synchronized com/common/android/utils/StringUtils$1
.super java/lang/Object
.implements android/text/util/Linkify$MatchFilter
.enclosing method com/common/android/utils/StringUtils
.inner class static final inner com/common/android/utils/StringUtils$1

.method <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public final acceptMatch(Ljava/lang/CharSequence;II)Z
aload 1
iload 2
iconst_1
iadd
iload 3
invokeinterface java/lang/CharSequence/subSequence(II)Ljava/lang/CharSequence; 2
invokeinterface java/lang/CharSequence/toString()Ljava/lang/String; 0
invokevirtual java/lang/String/trim()Ljava/lang/String;
astore 1
invokestatic com/common/android/utils/StringUtils/access$000()Ljava/util/HashMap;
aload 1
invokevirtual java/util/HashMap/containsKey(Ljava/lang/Object;)Z
ireturn
.limit locals 4
.limit stack 3
.end method
