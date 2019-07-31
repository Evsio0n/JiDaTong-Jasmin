.bytecode 50.0
.class public synchronized com/common/android/utils/StringUtils
.super java/lang/Object
.inner class static final inner com/common/android/utils/StringUtils$1
.inner class static final inner com/common/android/utils/StringUtils$2
.inner class static final inner com/common/android/utils/StringUtils$3

.field private static final 'NAME_MATCHER' Ljava/util/regex/Pattern;

.field private static final 'NAME_MATCHER_MATCH_FILTER' Landroid/text/util/Linkify$MatchFilter;

.field private static final 'NAME_MATCHER_TRANSFORM_FILTER' Landroid/text/util/Linkify$TransformFilter;

.field private static final 'TAG_MATCHER' Ljava/util/regex/Pattern;

.field private static final 'TAG_MATCHER_TRANSFORM_FILTER' Landroid/text/util/Linkify$TransformFilter;

.field private static final 'TWITTA_SEARCH_URL' Ljava/lang/String; = "twitta://search/"

.field private static final 'TWITTA_USER_URL' Ljava/lang/String; = "twitta://users/"

.field private static 'userLinkMapping' Ljava/util/HashMap; signature "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"

.method static <clinit>()V
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
putstatic com/common/android/utils/StringUtils/userLinkMapping Ljava/util/HashMap;
ldc "@.+?\\s"
invokestatic java/util/regex/Pattern/compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
putstatic com/common/android/utils/StringUtils/NAME_MATCHER Ljava/util/regex/Pattern;
ldc "#\\w+#"
invokestatic java/util/regex/Pattern/compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
putstatic com/common/android/utils/StringUtils/TAG_MATCHER Ljava/util/regex/Pattern;
new com/common/android/utils/StringUtils$1
dup
invokespecial com/common/android/utils/StringUtils$1/<init>()V
putstatic com/common/android/utils/StringUtils/NAME_MATCHER_MATCH_FILTER Landroid/text/util/Linkify$MatchFilter;
new com/common/android/utils/StringUtils$2
dup
invokespecial com/common/android/utils/StringUtils$2/<init>()V
putstatic com/common/android/utils/StringUtils/NAME_MATCHER_TRANSFORM_FILTER Landroid/text/util/Linkify$TransformFilter;
new com/common/android/utils/StringUtils$3
dup
invokespecial com/common/android/utils/StringUtils$3/<init>()V
putstatic com/common/android/utils/StringUtils/TAG_MATCHER_TRANSFORM_FILTER Landroid/text/util/Linkify$TransformFilter;
return
.limit locals 0
.limit stack 2
.end method

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$000()Ljava/util/HashMap;
getstatic com/common/android/utils/StringUtils/userLinkMapping Ljava/util/HashMap;
areturn
.limit locals 0
.limit stack 1
.end method

.method public static changeCharset(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.catch java/io/UnsupportedEncodingException from L0 to L1 using L2
aload 0
ifnull L3
L0:
new java/lang/String
dup
aload 0
aload 1
invokevirtual java/lang/String/getBytes(Ljava/lang/String;)[B
aload 2
invokespecial java/lang/String/<init>([BLjava/lang/String;)V
astore 0
L1:
aload 0
areturn
L2:
astore 0
aload 0
invokevirtual java/io/UnsupportedEncodingException/printStackTrace()V
L3:
ldc ""
areturn
.limit locals 3
.limit stack 4
.end method

.method private static charToByte(C)B
ldc "0123456789ABCDEF"
iload 0
invokevirtual java/lang/String/indexOf(I)I
i2b
ireturn
.limit locals 1
.limit stack 2
.end method

.method public static getFliteStr(Ljava/lang/String;)Ljava/lang/String;
aload 0
ifnull L0
aload 0
ldc "null"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L1
L0:
ldc ""
areturn
L1:
aload 0
invokevirtual java/lang/String/trim()Ljava/lang/String;
areturn
.limit locals 1
.limit stack 2
.end method

.method public static getGUID()Ljava/lang/String;
invokestatic java/util/UUID/randomUUID()Ljava/util/UUID;
invokevirtual java/util/UUID/toString()Ljava/lang/String;
areturn
.limit locals 0
.limit stack 1
.end method

.method public static getShortWord(Ljava/lang/String;I)Ljava/lang/String;
aload 0
astore 2
aload 0
ifnonnull L0
ldc ""
astore 2
L1:
aload 2
areturn
L0:
aload 0
invokevirtual java/lang/String/length()I
iload 1
if_icmple L1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
iconst_0
iload 1
iconst_1
isub
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ".."
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 3
.limit stack 5
.end method

.method public static getSimpleHtmlText(Ljava/lang/String;)Ljava/lang/String;
aload 0
ldc "<.*?>"
ldc ""
invokevirtual java/lang/String/replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
ldc "&lt;"
ldc "<"
invokevirtual java/lang/String/replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
ldc "&gt;"
ldc ">"
invokevirtual java/lang/String/replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
ldc "&nbsp;"
ldc " "
invokevirtual java/lang/String/replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
ldc "&amp;"
ldc "&"
invokevirtual java/lang/String/replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
ldc "&quot;"
ldc "\""
invokevirtual java/lang/String/replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
areturn
.limit locals 1
.limit stack 3
.end method

.method public static hexStringToBytes(Ljava/lang/String;)[B
.annotation invisible Landroid/annotation/SuppressLint;
value [s = "DefaultLocale" 
.end annotation
aload 0
ifnull L0
aload 0
ldc ""
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L1
L0:
aconst_null
astore 0
L2:
aload 0
areturn
L1:
aload 0
invokevirtual java/lang/String/toUpperCase()Ljava/lang/String;
astore 0
aload 0
invokevirtual java/lang/String/length()I
iconst_2
idiv
istore 2
aload 0
invokevirtual java/lang/String/toCharArray()[C
astore 5
iload 2
newarray byte
astore 4
iconst_0
istore 1
L3:
aload 4
astore 0
iload 1
iload 2
if_icmpge L2
iload 1
iconst_2
imul
istore 3
aload 4
iload 1
aload 5
iload 3
caload
invokestatic com/common/android/utils/StringUtils/charToByte(C)B
iconst_4
ishl
aload 5
iload 3
iconst_1
iadd
caload
invokestatic com/common/android/utils/StringUtils/charToByte(C)B
ior
i2b
bastore
iload 1
iconst_1
iadd
istore 1
goto L3
.limit locals 6
.limit stack 6
.end method

.method public static isBlank(Ljava/lang/String;)Z
aload 0
ifnull L0
aload 0
invokevirtual java/lang/String/trim()Ljava/lang/String;
ldc ""
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L1
L0:
iconst_1
ireturn
L1:
iconst_0
ireturn
.limit locals 1
.limit stack 2
.end method

.method public static isDecimal(Ljava/lang/String;)Z
aload 0
ifnull L0
ldc ""
aload 0
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L1
L0:
iconst_0
ireturn
L1:
ldc "[0-9]*(\\.?)[0-9]*"
invokestatic java/util/regex/Pattern/compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
aload 0
invokevirtual java/util/regex/Pattern/matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
invokevirtual java/util/regex/Matcher/matches()Z
ireturn
.limit locals 1
.limit stack 2
.end method

.method public static isEmail(Ljava/lang/String;)Z
ldc ""
aload 0
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L0
iconst_1
ireturn
L0:
ldc "^([a-zA-Z0-9_\\.-])+@(([a-zA-Z0-9-])+\\.)+([a-zA-Z0-9]{2,4})+$"
invokestatic java/util/regex/Pattern/compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
aload 0
invokevirtual java/util/regex/Pattern/matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
invokevirtual java/util/regex/Matcher/matches()Z
ireturn
.limit locals 1
.limit stack 2
.end method

.method public static isEmpty(Ljava/lang/String;)Z
aload 0
ifnull L0
aload 0
invokevirtual java/lang/String/length()I
ifeq L0
aload 0
ldc "null"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L1
L0:
iconst_1
ireturn
L1:
iconst_0
ireturn
.limit locals 1
.limit stack 2
.end method

.method public static isIntNum(Ljava/lang/String;)Z
aload 0
ifnull L0
ldc ""
aload 0
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L1
L0:
iconst_0
ireturn
L1:
ldc "-?[0-9]*"
invokestatic java/util/regex/Pattern/compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
aload 0
invokevirtual java/util/regex/Pattern/matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
invokevirtual java/util/regex/Matcher/matches()Z
ireturn
.limit locals 1
.limit stack 2
.end method

.method public static isMobile(Ljava/lang/String;)Z
aload 0
ldc ""
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L0
iconst_1
ireturn
L0:
ldc "1[0-9]{10}"
invokestatic java/util/regex/Pattern/compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
aload 0
invokevirtual java/util/regex/Pattern/matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
invokevirtual java/util/regex/Matcher/matches()Z
ireturn
.limit locals 1
.limit stack 2
.end method

.method public static isNotNull(Ljava/lang/String;)Z
aload 0
ifnull L0
aload 0
ldc "null"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L1
L0:
iconst_1
ireturn
L1:
iconst_0
ireturn
.limit locals 1
.limit stack 2
.end method

.method public static isNull(Ljava/lang/String;)Z
aload 0
ifnonnull L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public static isNullEmpty(Ljava/lang/String;)Z
aload 0
ifnull L0
aload 0
invokevirtual java/lang/String/length()I
ifne L1
L0:
iconst_1
ireturn
L1:
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public static isNumeric(Ljava/lang/String;)Z
aload 0
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
iconst_0
ireturn
L0:
ldc "[0-9]*"
invokestatic java/util/regex/Pattern/compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
aload 0
invokevirtual java/util/regex/Pattern/matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
invokevirtual java/util/regex/Matcher/matches()Z
ireturn
.limit locals 1
.limit stack 2
.end method

.method public static isTelephone(Ljava/lang/String;)Z
ldc ""
aload 0
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L0
iconst_1
ireturn
L0:
ldc "([0-9]{3,4}-?)?[0-9]{7,8}"
invokestatic java/util/regex/Pattern/compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
aload 0
invokevirtual java/util/regex/Pattern/matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
invokevirtual java/util/regex/Matcher/matches()Z
ireturn
.limit locals 1
.limit stack 2
.end method

.method public static linkifyTags(Landroid/widget/TextView;)V
aload 0
getstatic com/common/android/utils/StringUtils/TAG_MATCHER Ljava/util/regex/Pattern;
ldc "twitta://search/"
aconst_null
getstatic com/common/android/utils/StringUtils/TAG_MATCHER_TRANSFORM_FILTER Landroid/text/util/Linkify$TransformFilter;
invokestatic android/text/util/Linkify/addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V
return
.limit locals 1
.limit stack 5
.end method

.method public static linkifyUsers(Landroid/widget/TextView;)V
aload 0
getstatic com/common/android/utils/StringUtils/NAME_MATCHER Ljava/util/regex/Pattern;
ldc "twitta://users/"
getstatic com/common/android/utils/StringUtils/NAME_MATCHER_MATCH_FILTER Landroid/text/util/Linkify$MatchFilter;
getstatic com/common/android/utils/StringUtils/NAME_MATCHER_TRANSFORM_FILTER Landroid/text/util/Linkify$TransformFilter;
invokestatic android/text/util/Linkify/addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V
return
.limit locals 1
.limit stack 5
.end method

.method public static sqliteEscape(Ljava/lang/String;)Ljava/lang/String;
aload 0
ldc "/"
ldc "//"
invokevirtual java/lang/String/replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
ldc "'"
ldc "''"
invokevirtual java/lang/String/replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
ldc "["
ldc "/["
invokevirtual java/lang/String/replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
ldc "]"
ldc "/]"
invokevirtual java/lang/String/replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
ldc "%"
ldc "/%"
invokevirtual java/lang/String/replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
ldc "&"
ldc "/&"
invokevirtual java/lang/String/replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
ldc "_"
ldc "/_"
invokevirtual java/lang/String/replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
ldc "("
ldc "/("
invokevirtual java/lang/String/replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
ldc ")"
ldc "/)"
invokevirtual java/lang/String/replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
areturn
.limit locals 1
.limit stack 3
.end method

.method public static strBreakWithBlank(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
aload 0
invokestatic com/common/android/utils/StringUtils/isBlank(Ljava/lang/String;)Z
ifne L0
aload 1
ifnonnull L1
L0:
aconst_null
areturn
L1:
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "\\"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/String/split(Ljava/lang/String;)[Ljava/lang/String;
areturn
.limit locals 2
.limit stack 3
.end method

.method public static stringifyStream(Ljava/io/InputStream;)Ljava/lang/String;
.throws java/io/IOException
new java/io/BufferedReader
dup
new java/io/InputStreamReader
dup
aload 0
invokespecial java/io/InputStreamReader/<init>(Ljava/io/InputStream;)V
invokespecial java/io/BufferedReader/<init>(Ljava/io/Reader;)V
astore 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 1
L0:
aload 0
invokevirtual java/io/BufferedReader/readLine()Ljava/lang/String;
astore 2
aload 2
ifnull L1
aload 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "\n"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
goto L0
L1:
aload 1
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 3
.limit stack 5
.end method
