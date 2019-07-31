.bytecode 50.0
.class synchronized com/nd/android/u/allCommonUtils/StringUtils$2
.super java/lang/Object
.implements android/text/util/Linkify$TransformFilter
.enclosing method com/nd/android/u/allCommonUtils/StringUtils
.inner class inner com/nd/android/u/allCommonUtils/StringUtils$2

.method <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public transformUrl(Ljava/util/regex/Matcher;Ljava/lang/String;)Ljava/lang/String;
aload 2
iconst_1
aload 2
invokevirtual java/lang/String/length()I
invokevirtual java/lang/String/subSequence(II)Ljava/lang/CharSequence;
invokeinterface java/lang/CharSequence/toString()Ljava/lang/String; 0
invokevirtual java/lang/String/trim()Ljava/lang/String;
astore 1
invokestatic com/nd/android/u/allCommonUtils/StringUtils/access$0()Ljava/util/HashMap;
aload 1
invokevirtual java/util/HashMap/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast java/lang/String
areturn
.limit locals 3
.limit stack 3
.end method
