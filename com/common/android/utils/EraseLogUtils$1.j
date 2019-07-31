.bytecode 50.0
.class synchronized com/common/android/utils/EraseLogUtils$1
.super java/lang/Object
.implements java/io/FileFilter
.enclosing method com/common/android/utils/EraseLogUtils/eraseLogs(Ljava/lang/String;)V
.inner class inner com/common/android/utils/EraseLogUtils$1

.field final synthetic 'this$0' Lcom/common/android/utils/EraseLogUtils;

.field final synthetic 'val$iCriticalDate' I

.method <init>(Lcom/common/android/utils/EraseLogUtils;I)V
aload 0
aload 1
putfield com/common/android/utils/EraseLogUtils$1/this$0 Lcom/common/android/utils/EraseLogUtils;
aload 0
iload 2
putfield com/common/android/utils/EraseLogUtils$1/val$iCriticalDate I
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public accept(Ljava/io/File;)Z
.catch java/lang/NumberFormatException from L0 to L1 using L2
iconst_0
istore 5
aload 1
invokevirtual java/io/File/getName()Ljava/lang/String;
invokestatic java/util/Locale/getDefault()Ljava/util/Locale;
invokevirtual java/lang/String/toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
astore 1
iload 5
istore 4
aload 1
invokevirtual java/lang/String/length()I
bipush 14
if_icmpne L3
iload 5
istore 4
aload 1
ldc ".log"
invokevirtual java/lang/String/endsWith(Ljava/lang/String;)Z
ifeq L3
iload 5
istore 4
ldc "\\d{4}-\\d{2}-\\d{2}.log"
invokestatic java/util/regex/Pattern/compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
aload 1
invokevirtual java/util/regex/Pattern/matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
invokevirtual java/util/regex/Matcher/matches()Z
ifeq L3
aload 1
iconst_0
bipush 10
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
ldc "-"
ldc ""
invokevirtual java/lang/String/replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
astore 1
L0:
aload 1
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
istore 2
aload 0
getfield com/common/android/utils/EraseLogUtils$1/val$iCriticalDate I
istore 3
L1:
iload 5
istore 4
iload 2
iload 3
if_icmpgt L3
iconst_1
istore 4
L3:
iload 4
ireturn
L2:
astore 1
iconst_0
ireturn
.limit locals 6
.limit stack 3
.end method
