.bytecode 50.0
.class public synchronized com/product/android/utils/WbRegexUtils
.super java/lang/Object

.field public static final 'AT_M_TAG_PATTERN' Ljava/util/regex/Pattern;

.field public static final 'AT_UID_PATTERN' Ljava/util/regex/Pattern;

.field public static final 'AT_USER_PATTERN' Ljava/util/regex/Pattern;

.field public static final 'AUTO_AT_PATTERN' Ljava/util/regex/Pattern;

.field private static 'AUTO_AT_PATTERN_STRING' Ljava/lang/String;

.field public static final 'HASHTAGS_PATTERN' Ljava/util/regex/Pattern;

.field private static 'M_AT_PATTERN_STRING' Ljava/lang/String;

.field public static final 'M_TAG_BEGIN_PATTERN' Ljava/util/regex/Pattern;

.field private static 'M_TAG_STRING_BEGIN' Ljava/lang/String;

.field public static 'M_TAG_STRING_END' Ljava/lang/String;

.method static <clinit>()V
ldc "<M [0-9]+>"
putstatic com/product/android/utils/WbRegexUtils/M_TAG_STRING_BEGIN Ljava/lang/String;
ldc "</M>"
putstatic com/product/android/utils/WbRegexUtils/M_TAG_STRING_END Ljava/lang/String;
ldc "@.+?"
putstatic com/product/android/utils/WbRegexUtils/M_AT_PATTERN_STRING Ljava/lang/String;
getstatic com/product/android/utils/WbRegexUtils/M_TAG_STRING_BEGIN Ljava/lang/String;
invokestatic java/util/regex/Pattern/compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
putstatic com/product/android/utils/WbRegexUtils/M_TAG_BEGIN_PATTERN Ljava/util/regex/Pattern;
new java/lang/StringBuilder
dup
getstatic com/product/android/utils/WbRegexUtils/M_TAG_STRING_BEGIN Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
getstatic com/product/android/utils/WbRegexUtils/M_AT_PATTERN_STRING Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
getstatic com/product/android/utils/WbRegexUtils/M_TAG_STRING_END Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic java/util/regex/Pattern/compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
putstatic com/product/android/utils/WbRegexUtils/AT_M_TAG_PATTERN Ljava/util/regex/Pattern;
new java/lang/StringBuilder
dup
ldc "@.+?(?="
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
getstatic com/product/android/utils/WbRegexUtils/M_TAG_STRING_END Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ")"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic java/util/regex/Pattern/compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
putstatic com/product/android/utils/WbRegexUtils/AT_USER_PATTERN Ljava/util/regex/Pattern;
ldc "@[^\\s@]+"
putstatic com/product/android/utils/WbRegexUtils/AUTO_AT_PATTERN_STRING Ljava/lang/String;
getstatic com/product/android/utils/WbRegexUtils/AUTO_AT_PATTERN_STRING Ljava/lang/String;
invokestatic java/util/regex/Pattern/compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
putstatic com/product/android/utils/WbRegexUtils/AUTO_AT_PATTERN Ljava/util/regex/Pattern;
ldc "[0-9]+"
invokestatic java/util/regex/Pattern/compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
putstatic com/product/android/utils/WbRegexUtils/AT_UID_PATTERN Ljava/util/regex/Pattern;
ldc "#([^\\[\\]\\#\\{\\};\\>\\<@\\-/\\(\\)$\\\\]{1,40})#"
invokestatic java/util/regex/Pattern/compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
putstatic com/product/android/utils/WbRegexUtils/HASHTAGS_PATTERN Ljava/util/regex/Pattern;
return
.limit locals 0
.limit stack 3
.end method

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method
