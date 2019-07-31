.bytecode 50.0
.class public final synchronized com/nd/schoollife/ui/common/util/PostUtils
.super java/lang/Object
.inner class static synthetic inner com/nd/schoollife/ui/common/util/PostUtils$1

.field public static final 'AT_R_TAG_PATTERN' Ljava/util/regex/Pattern;

.field public static final 'AT_R_USER_PATTERN' Ljava/util/regex/Pattern;

.field public static final 'MAX_NUM_OF_PIC' I = 9


.field public static final 'MAX_SIZE_OF_COMMENT' I = 5000


.field public static final 'MAX_SIZE_OF_POST' I = 5000


.field public static final 'MAX_SIZE_OF_REPLY' I = 140


.field private static 'R_AT_PATTERN_STRING' Ljava/lang/String;

.field public static final 'R_TAG_BEGIN_PATTERN' Ljava/util/regex/Pattern;

.field private static 'R_TAG_STRING_BEGIN' Ljava/lang/String;

.field public static 'R_TAG_STRING_END' Ljava/lang/String;

.field private static final 'TAG' Ljava/lang/String; = "PostUtils"

.field public static final 'WARN_SIZE_OF_COMMENT' I = 4900


.field public static final 'WARN_SIZE_OF_REPLY' I = 70


.method static <clinit>()V
ldc "<ReplyTo [0-9]+>"
putstatic com/nd/schoollife/ui/common/util/PostUtils/R_TAG_STRING_BEGIN Ljava/lang/String;
ldc "</ReplyTo>"
putstatic com/nd/schoollife/ui/common/util/PostUtils/R_TAG_STRING_END Ljava/lang/String;
ldc ".+?"
putstatic com/nd/schoollife/ui/common/util/PostUtils/R_AT_PATTERN_STRING Ljava/lang/String;
getstatic com/nd/schoollife/ui/common/util/PostUtils/R_TAG_STRING_BEGIN Ljava/lang/String;
invokestatic java/util/regex/Pattern/compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
putstatic com/nd/schoollife/ui/common/util/PostUtils/R_TAG_BEGIN_PATTERN Ljava/util/regex/Pattern;
new java/lang/StringBuilder
dup
getstatic com/nd/schoollife/ui/common/util/PostUtils/R_TAG_STRING_BEGIN Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
getstatic com/nd/schoollife/ui/common/util/PostUtils/R_AT_PATTERN_STRING Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
getstatic com/nd/schoollife/ui/common/util/PostUtils/R_TAG_STRING_END Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic java/util/regex/Pattern/compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
putstatic com/nd/schoollife/ui/common/util/PostUtils/AT_R_TAG_PATTERN Ljava/util/regex/Pattern;
new java/lang/StringBuilder
dup
ldc ".+?(?="
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
getstatic com/nd/schoollife/ui/common/util/PostUtils/R_TAG_STRING_END Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ")"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic java/util/regex/Pattern/compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
putstatic com/nd/schoollife/ui/common/util/PostUtils/AT_R_USER_PATTERN Ljava/util/regex/Pattern;
return
.limit locals 0
.limit stack 3
.end method

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static comment2post(Lcom/nd/schoollife/common/bean/result/CommentInfoBean;)Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;
.catch java/lang/Exception from L0 to L1 using L2
L0:
new com/nd/android/forumsdk/business/bean/result/PostInfoBean
dup
invokespecial com/nd/android/forumsdk/business/bean/result/PostInfoBean/<init>()V
astore 1
aload 1
aload 0
invokevirtual com/nd/schoollife/common/bean/result/CommentInfoBean/getComment_id()Ljava/lang/String;
invokestatic java/lang/Long/valueOf(Ljava/lang/String;)Ljava/lang/Long;
invokevirtual java/lang/Long/longValue()J
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setTid(J)V
aload 1
aload 0
invokevirtual com/nd/schoollife/common/bean/result/CommentInfoBean/getPost_id()J
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setRoot_tid(J)V
aload 1
aload 0
invokevirtual com/nd/schoollife/common/bean/result/CommentInfoBean/getFloor()I
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setFloor(I)V
aload 1
aload 0
invokevirtual com/nd/schoollife/common/bean/result/CommentInfoBean/getUser()Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setUser_info(Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;)V
aload 1
aload 0
invokevirtual com/nd/schoollife/common/bean/result/CommentInfoBean/getContent()Ljava/lang/String;
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setArticle(Ljava/lang/String;)V
aload 1
aload 0
invokevirtual com/nd/schoollife/common/bean/result/CommentInfoBean/getContent()Ljava/lang/String;
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setContent(Ljava/lang/String;)V
aload 1
aload 0
invokevirtual com/nd/schoollife/common/bean/result/CommentInfoBean/getReplys()J
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setReplys(J)V
aload 1
aload 0
invokevirtual com/nd/schoollife/common/bean/result/CommentInfoBean/getReply_info()Ljava/util/List;
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setReply_info(Ljava/util/List;)V
aload 1
aload 0
invokevirtual com/nd/schoollife/common/bean/result/CommentInfoBean/getImages()Ljava/util/List;
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setFile_info(Ljava/util/List;)V
aload 1
aload 0
invokevirtual com/nd/schoollife/common/bean/result/CommentInfoBean/getTimestamp()J
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setPost_time(J)V
aload 1
aload 0
invokevirtual com/nd/schoollife/common/bean/result/CommentInfoBean/getResultCode()I
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setResultCode(I)V
aload 1
aload 0
invokevirtual com/nd/schoollife/common/bean/result/CommentInfoBean/getResultMsg()Ljava/lang/String;
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setResultMsg(Ljava/lang/String;)V
L1:
aload 1
areturn
L2:
astore 0
aload 0
invokevirtual java/lang/Exception/printStackTrace()V
aconst_null
areturn
.limit locals 2
.limit stack 3
.end method

.method public static dealLongPost(Landroid/content/Context;Ljava/lang/String;IFI)Landroid/text/SpannableString;
aload 0
aload 1
aload 0
invokestatic com/nd/schoollife/common/utils/ui/DisplayUtil/getScreenWidth(Landroid/content/Context;)I
aload 0
iload 2
i2f
invokestatic com/nd/schoollife/common/utils/ui/DisplayUtil/dip2px(Landroid/content/Context;F)I
isub
i2f
fload 3
fdiv
iload 4
i2f
fmul
ldc_w 3.0F
fsub
f2i
invokestatic com/nd/schoollife/ui/common/util/PostUtils/processLongPost(Ljava/lang/String;I)Ljava/lang/String;
invokestatic com/product/android/utils/ContentUtils/resolveSmileyAtUrl(Landroid/content/Context;Ljava/lang/String;)Landroid/text/SpannableString;
areturn
.limit locals 5
.limit stack 5
.end method

.method private static findAt(Ljava/lang/String;)Ljava/util/List;
.signature "(Ljava/lang/String;)Ljava/util/List<Lcom/nd/schoollife/common/bean/structure/TagPosition;>;"
getstatic com/product/android/utils/WbRegexUtils/AT_M_TAG_PATTERN Ljava/util/regex/Pattern;
aload 0
invokevirtual java/util/regex/Pattern/matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
astore 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 1
L0:
aload 0
invokevirtual java/util/regex/Matcher/find()Z
ifeq L1
aload 0
invokevirtual java/util/regex/Matcher/group()Ljava/lang/String;
astore 2
getstatic com/product/android/utils/WbRegexUtils/AT_USER_PATTERN Ljava/util/regex/Pattern;
aload 2
invokevirtual java/util/regex/Pattern/matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
astore 2
aload 2
invokevirtual java/util/regex/Matcher/find()Z
ifeq L0
new com/nd/schoollife/common/bean/structure/TagPosition
dup
invokespecial com/nd/schoollife/common/bean/structure/TagPosition/<init>()V
astore 3
aload 3
aload 2
invokevirtual java/util/regex/Matcher/group()Ljava/lang/String;
invokevirtual com/nd/schoollife/common/bean/structure/TagPosition/setAtContent(Ljava/lang/String;)V
aload 3
aload 0
invokevirtual java/util/regex/Matcher/start()I
invokevirtual com/nd/schoollife/common/bean/structure/TagPosition/setStart(I)V
aload 3
aload 0
invokevirtual java/util/regex/Matcher/end()I
invokevirtual com/nd/schoollife/common/bean/structure/TagPosition/setEnd(I)V
aload 3
getstatic com/nd/schoollife/common/bean/structure/TagPosition$TAG_TYPE/AT Lcom/nd/schoollife/common/bean/structure/TagPosition$TAG_TYPE;
invokevirtual com/nd/schoollife/common/bean/structure/TagPosition/setType(Lcom/nd/schoollife/common/bean/structure/TagPosition$TAG_TYPE;)V
aload 1
aload 3
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
goto L0
L1:
aload 1
areturn
.limit locals 4
.limit stack 2
.end method

.method private static findInMTag(IILjava/util/ArrayList;I)I
.signature "(IILjava/util/ArrayList<Landroid/graphics/Point;>;I)I"
aload 2
ifnonnull L0
iconst_0
istore 4
L1:
iload 4
ifne L2
L3:
iconst_m1
ireturn
L0:
aload 2
invokevirtual java/util/ArrayList/size()I
istore 4
goto L1
L4:
iload 3
iconst_1
iadd
istore 3
L2:
iload 3
iload 4
if_icmpge L3
aload 2
iload 3
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast android/graphics/Point
astore 5
iload 0
aload 5
getfield android/graphics/Point/x I
if_icmple L4
iload 1
aload 5
getfield android/graphics/Point/y I
if_icmpge L4
iload 3
iconst_1
iadd
ireturn
.limit locals 6
.limit stack 2
.end method

.method private static findSmiley(Ljava/lang/String;)Ljava/util/List;
.signature "(Ljava/lang/String;)Ljava/util/List<Lcom/nd/schoollife/common/bean/structure/TagPosition;>;"
ldc "\\[[\u4e00-\u9fa5\\d]*\\]"
invokestatic java/util/regex/Pattern/compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
aload 0
invokevirtual java/util/regex/Pattern/matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
astore 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 1
L0:
aload 0
invokevirtual java/util/regex/Matcher/find()Z
ifeq L1
new com/nd/schoollife/common/bean/structure/TagPosition
dup
invokespecial com/nd/schoollife/common/bean/structure/TagPosition/<init>()V
astore 2
aload 2
aload 0
invokevirtual java/util/regex/Matcher/start()I
invokevirtual com/nd/schoollife/common/bean/structure/TagPosition/setStart(I)V
aload 2
aload 0
invokevirtual java/util/regex/Matcher/end()I
invokevirtual com/nd/schoollife/common/bean/structure/TagPosition/setEnd(I)V
aload 2
getstatic com/nd/schoollife/common/bean/structure/TagPosition$TAG_TYPE/SMILEY Lcom/nd/schoollife/common/bean/structure/TagPosition$TAG_TYPE;
invokevirtual com/nd/schoollife/common/bean/structure/TagPosition/setType(Lcom/nd/schoollife/common/bean/structure/TagPosition$TAG_TYPE;)V
aload 1
aload 2
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
goto L0
L1:
aload 1
areturn
.limit locals 3
.limit stack 2
.end method

.method private static findUrl(Ljava/lang/String;)Ljava/util/List;
.signature "(Ljava/lang/String;)Ljava/util/List<Lcom/nd/schoollife/common/bean/structure/TagPosition;>;"
getstatic com/common/android/utils/UrlUtils/WEB_URL Ljava/util/regex/Pattern;
aload 0
invokevirtual java/util/regex/Pattern/matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
astore 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 1
L0:
aload 0
invokevirtual java/util/regex/Matcher/find()Z
ifeq L1
new com/nd/schoollife/common/bean/structure/TagPosition
dup
invokespecial com/nd/schoollife/common/bean/structure/TagPosition/<init>()V
astore 2
aload 2
aload 0
invokevirtual java/util/regex/Matcher/start()I
invokevirtual com/nd/schoollife/common/bean/structure/TagPosition/setStart(I)V
aload 2
aload 0
invokevirtual java/util/regex/Matcher/end()I
invokevirtual com/nd/schoollife/common/bean/structure/TagPosition/setEnd(I)V
aload 2
getstatic com/nd/schoollife/common/bean/structure/TagPosition$TAG_TYPE/URL Lcom/nd/schoollife/common/bean/structure/TagPosition$TAG_TYPE;
invokevirtual com/nd/schoollife/common/bean/structure/TagPosition/setType(Lcom/nd/schoollife/common/bean/structure/TagPosition$TAG_TYPE;)V
aload 1
aload 2
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
goto L0
L1:
aload 1
areturn
.limit locals 3
.limit stack 2
.end method

.method public static getAtUserList(Ljava/lang/String;)Ljava/lang/String;
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L1 to L3 using L2
.catch java/lang/Exception from L3 to L4 using L2
.catch java/lang/Exception from L5 to L6 using L2
.catch java/lang/Exception from L6 to L7 using L2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 1
new java/util/HashSet
dup
invokespecial java/util/HashSet/<init>()V
astore 2
L0:
aload 0
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L1
aload 1
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
L1:
getstatic com/product/android/utils/WbRegexUtils/AT_M_TAG_PATTERN Ljava/util/regex/Pattern;
aload 0
invokevirtual java/util/regex/Pattern/matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
astore 0
L3:
aload 0
invokevirtual java/util/regex/Matcher/find()Z
ifeq L5
aload 0
invokevirtual java/util/regex/Matcher/group()Ljava/lang/String;
astore 3
getstatic com/product/android/utils/WbRegexUtils/M_TAG_BEGIN_PATTERN Ljava/util/regex/Pattern;
aload 3
invokevirtual java/util/regex/Pattern/matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
astore 3
aload 3
invokevirtual java/util/regex/Matcher/find()Z
ifeq L3
aload 3
invokevirtual java/util/regex/Matcher/group()Ljava/lang/String;
astore 3
getstatic com/product/android/utils/WbRegexUtils/AT_UID_PATTERN Ljava/util/regex/Pattern;
aload 3
invokevirtual java/util/regex/Pattern/matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
astore 3
aload 3
invokevirtual java/util/regex/Matcher/find()Z
ifeq L3
aload 2
aload 3
invokevirtual java/util/regex/Matcher/group()Ljava/lang/String;
invokevirtual java/util/HashSet/add(Ljava/lang/Object;)Z
pop
L4:
goto L3
L2:
astore 0
aload 0
invokevirtual java/lang/Exception/printStackTrace()V
L8:
aload 1
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
L5:
aload 2
invokevirtual java/util/HashSet/iterator()Ljava/util/Iterator;
astore 0
L6:
aload 0
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L8
aload 1
aload 0
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/lang/String
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 1
ldc ","
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L7:
goto L6
.limit locals 4
.limit stack 2
.end method

.method public static getFormatStrForCount(J)Ljava/lang/String;
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
.catch java/lang/Exception from L5 to L6 using L2
L0:
lload 0
invokestatic java/lang/String/valueOf(J)Ljava/lang/String;
invokestatic java/lang/Float/parseFloat(Ljava/lang/String;)F
fstore 2
L1:
fload 2
ldc_w 1.0E8F
fcmpl
iflt L4
L3:
new java/text/DecimalFormat
dup
ldc "####.#\u4ebf"
invokespecial java/text/DecimalFormat/<init>(Ljava/lang/String;)V
fload 2
ldc_w 1.0E8F
fdiv
f2d
invokevirtual java/text/DecimalFormat/format(D)Ljava/lang/String;
areturn
L4:
fload 2
ldc_w 10000.0F
fcmpl
iflt L6
L5:
new java/text/DecimalFormat
dup
ldc "####.#\u4e07"
invokespecial java/text/DecimalFormat/<init>(Ljava/lang/String;)V
fload 2
ldc_w 10000.0F
fdiv
f2d
invokevirtual java/text/DecimalFormat/format(D)Ljava/lang/String;
areturn
L6:
fload 2
f2i
istore 3
iload 3
invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
areturn
L2:
astore 4
aload 4
invokevirtual java/lang/Exception/printStackTrace()V
lload 0
invokestatic java/lang/String/valueOf(J)Ljava/lang/String;
areturn
.limit locals 5
.limit stack 3
.end method

.method public static final getFormatStringByDefine(Ljava/lang/String;I)Ljava/lang/String;
aload 0
invokestatic com/common/android/utils/StringUtils/isEmpty(Ljava/lang/String;)Z
ifne L0
iload 1
ifgt L1
L0:
ldc ""
astore 2
L2:
aload 2
areturn
L1:
aload 0
astore 2
aload 0
invokevirtual java/lang/String/length()I
iload 1
if_icmple L2
aload 0
iconst_0
iload 1
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
astore 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "..."
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 3
.limit stack 3
.end method

.method public static getPostImageUrl(J)Ljava/lang/String;
invokestatic com/nd/android/u/filestoragesystem/externalInterface/FileUtilFactory/getInstance()Lcom/nd/android/u/filestoragesystem/externalInterface/FileUtilFactory;
lload 0
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getLocalSid()Ljava/lang/String;
iconst_0
invokevirtual com/nd/android/u/filestoragesystem/externalInterface/FileUtilFactory/getDownUrlByFid(JLjava/lang/String;I)Ljava/lang/String;
areturn
.limit locals 2
.limit stack 5
.end method

.method public static getUserAvatarUrl(J)Ljava/lang/String;
invokestatic com/nd/android/u/filestoragesystem/externalInterface/FileUtilFactory/getInstance()Lcom/nd/android/u/filestoragesystem/externalInterface/FileUtilFactory;
lload 0
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getLocalSid()Ljava/lang/String;
bipush 80
invokevirtual com/nd/android/u/filestoragesystem/externalInterface/FileUtilFactory/getDownUrlByFid(JLjava/lang/String;I)Ljava/lang/String;
areturn
.limit locals 2
.limit stack 5
.end method

.method public static getWordLength(Ljava/lang/String;ZI)[F
aload 0
astore 6
iload 1
ifeq L0
aload 0
invokestatic com/product/android/utils/wbAtUtils/WbAtView/getOnlyAtContent(Ljava/lang/String;)Ljava/lang/String;
astore 6
L0:
iconst_2
newarray float
astore 0
iconst_0
istore 4
iconst_0
istore 3
L1:
iload 3
aload 6
invokevirtual java/lang/String/length()I
if_icmpge L2
aload 6
iload 3
invokestatic java/lang/Character/codePointAt(Ljava/lang/CharSequence;I)I
istore 5
iload 5
iflt L3
iload 5
sipush 255
if_icmpgt L3
aload 0
iconst_0
aload 0
iconst_0
faload
ldc_w 0.5F
fadd
fastore
L4:
iload 4
istore 5
aload 0
iconst_0
faload
iload 2
i2f
fcmpg
ifgt L5
iload 4
iconst_1
iadd
istore 5
L5:
iload 3
iconst_1
iadd
istore 3
iload 5
istore 4
goto L1
L3:
aload 0
iconst_0
aload 0
iconst_0
faload
fconst_1
fadd
fastore
goto L4
L2:
aload 0
iconst_1
iload 4
i2f
fastore
aload 0
areturn
.limit locals 7
.limit stack 4
.end method

.method public static isGifPicture(Ljava/lang/String;)Z
aload 0
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L0
aload 0
invokestatic java/util/Locale/getDefault()Ljava/util/Locale;
invokevirtual java/lang/String/toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
astore 0
aload 0
ldc ".gif"
invokevirtual java/lang/String/endsWith(Ljava/lang/String;)Z
ifne L1
aload 0
ldc ".gif&"
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifeq L0
L1:
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 2
.end method

.method public static post2Comment(Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;)Lcom/nd/schoollife/common/bean/result/CommentInfoBean;
new com/nd/schoollife/common/bean/result/CommentInfoBean
dup
invokespecial com/nd/schoollife/common/bean/result/CommentInfoBean/<init>()V
astore 1
aload 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getTid()J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/nd/schoollife/common/bean/result/CommentInfoBean/setComment_id(Ljava/lang/String;)V
aload 1
aload 0
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getRoot_tid()J
invokevirtual com/nd/schoollife/common/bean/result/CommentInfoBean/setPost_id(J)V
aload 1
aload 0
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getFloor()I
invokevirtual com/nd/schoollife/common/bean/result/CommentInfoBean/setFloor(I)V
aload 1
aload 0
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getUser_info()Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;
invokevirtual com/nd/schoollife/common/bean/result/CommentInfoBean/setUser(Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;)V
aload 0
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getArticle()Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L0
aload 1
aload 0
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getArticle()Ljava/lang/String;
invokevirtual com/nd/schoollife/common/bean/result/CommentInfoBean/setContent(Ljava/lang/String;)V
L1:
aload 1
aload 0
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getReplys()J
invokevirtual com/nd/schoollife/common/bean/result/CommentInfoBean/setReplys(J)V
aload 1
aload 0
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getReply_info()Ljava/util/List;
invokevirtual com/nd/schoollife/common/bean/result/CommentInfoBean/setReply_info(Ljava/util/List;)V
aload 1
aload 0
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getFile_info()Ljava/util/List;
invokevirtual com/nd/schoollife/common/bean/result/CommentInfoBean/setImages(Ljava/util/List;)V
aload 1
aload 0
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getPost_time()J
invokevirtual com/nd/schoollife/common/bean/result/CommentInfoBean/setTimestamp(J)V
aload 1
aload 0
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getResultCode()I
invokevirtual com/nd/schoollife/common/bean/result/CommentInfoBean/setResultCode(I)V
aload 1
aload 0
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getResultMsg()Ljava/lang/String;
invokevirtual com/nd/schoollife/common/bean/result/CommentInfoBean/setResultMsg(Ljava/lang/String;)V
aload 1
areturn
L0:
aload 1
aload 0
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getContent()Ljava/lang/String;
invokevirtual com/nd/schoollife/common/bean/result/CommentInfoBean/setContent(Ljava/lang/String;)V
goto L1
.limit locals 2
.limit stack 4
.end method

.method public static postList2commentList(Ljava/util/List;)Ljava/util/ArrayList;
.signature "(Ljava/util/List<Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;>;)Ljava/util/ArrayList<Lcom/nd/schoollife/common/bean/result/CommentInfoBean;>;"
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 1
aload 0
ifnull L0
aload 0
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 0
L1:
aload 0
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L0
aload 1
aload 0
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/forumsdk/business/bean/result/PostInfoBean
invokestatic com/nd/schoollife/ui/common/util/PostUtils/post2Comment(Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;)Lcom/nd/schoollife/common/bean/result/CommentInfoBean;
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
goto L1
L0:
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method private static processLongPost(Ljava/lang/String;I)Ljava/lang/String;
aload 0
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L0
aload 0
invokevirtual java/lang/String/length()I
iload 1
if_icmpge L1
L0:
aload 0
areturn
L1:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 10
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 11
aload 0
invokestatic com/nd/schoollife/ui/common/util/PostUtils/findUrl(Ljava/lang/String;)Ljava/util/List;
astore 12
aload 12
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 13
L2:
iload 1
istore 6
aload 13
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L3
aload 13
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/schoollife/common/bean/structure/TagPosition
astore 14
aload 14
invokevirtual com/nd/schoollife/common/bean/structure/TagPosition/getEnd()I
iload 1
if_icmplt L2
aload 14
invokevirtual com/nd/schoollife/common/bean/structure/TagPosition/getStart()Ljava/lang/Integer;
invokevirtual java/lang/Integer/intValue()I
iload 1
if_icmpgt L2
aload 14
invokevirtual com/nd/schoollife/common/bean/structure/TagPosition/getEnd()I
istore 6
L3:
aload 11
aload 12
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
aload 11
aload 0
invokestatic com/nd/schoollife/ui/common/util/PostUtils/findAt(Ljava/lang/String;)Ljava/util/List;
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
aload 11
aload 0
invokestatic com/nd/schoollife/ui/common/util/PostUtils/findSmiley(Ljava/lang/String;)Ljava/util/List;
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
aload 11
invokestatic java/util/Collections/sort(Ljava/util/List;)V
fconst_0
fstore 3
fconst_0
fstore 5
aload 11
invokeinterface java/util/List/isEmpty()Z 0
ifeq L4
aload 0
iconst_1
iload 6
invokestatic com/nd/schoollife/ui/common/util/PostUtils/getWordLength(Ljava/lang/String;ZI)[F
astore 11
aload 11
iconst_0
faload
fstore 2
aload 10
aload 0
iconst_0
aload 11
iconst_1
faload
f2i
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
fload 2
iload 6
i2f
fcmpl
ifle L5
aload 10
ldc "..."
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L5:
aload 10
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
L4:
iconst_0
istore 1
L6:
fload 5
fstore 4
fload 3
fstore 2
iload 1
aload 11
invokeinterface java/util/List/size()I 0
if_icmpge L7
aload 11
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/schoollife/common/bean/structure/TagPosition
astore 12
aload 12
invokevirtual com/nd/schoollife/common/bean/structure/TagPosition/getStart()Ljava/lang/Integer;
invokevirtual java/lang/Integer/intValue()I
istore 7
aload 12
invokevirtual com/nd/schoollife/common/bean/structure/TagPosition/getEnd()I
istore 8
iload 1
ifne L8
fload 5
fstore 2
fload 3
fstore 4
iload 7
ifle L9
aload 0
iconst_0
iload 7
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
iconst_1
iload 6
invokestatic com/nd/schoollife/ui/common/util/PostUtils/getWordLength(Ljava/lang/String;ZI)[F
astore 13
aload 13
iconst_0
faload
fstore 3
aload 13
iconst_1
faload
fstore 5
fload 3
fstore 2
fload 5
fstore 4
fload 3
iload 6
i2f
fcmpl
ifle L9
aload 10
aload 0
iconst_0
fload 5
f2i
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "..."
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 10
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
L8:
iload 7
aload 11
iload 1
iconst_1
isub
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/schoollife/common/bean/structure/TagPosition
invokevirtual com/nd/schoollife/common/bean/structure/TagPosition/getEnd()I
isub
istore 9
fload 5
fstore 2
fload 3
fstore 4
iload 9
ifle L9
aload 0
iload 7
iload 9
isub
iload 7
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
iconst_1
iload 6
i2f
fload 5
fsub
f2i
invokestatic com/nd/schoollife/ui/common/util/PostUtils/getWordLength(Ljava/lang/String;ZI)[F
astore 13
fload 5
aload 13
iconst_0
faload
fadd
fstore 5
fload 5
iload 6
i2f
fcmpl
ifle L10
fload 3
iload 6
i2f
aload 13
iconst_0
faload
fadd
fload 5
fsub
fadd
fstore 2
fload 5
fstore 4
L7:
fload 4
fstore 5
fload 2
fstore 3
fload 4
iload 6
i2f
fcmpg
ifge L11
aload 0
fload 2
f2i
invokevirtual java/lang/String/substring(I)Ljava/lang/String;
iconst_1
iload 6
i2f
fload 4
fsub
f2i
invokestatic com/nd/schoollife/ui/common/util/PostUtils/getWordLength(Ljava/lang/String;ZI)[F
astore 11
fload 4
aload 11
iconst_0
faload
fadd
fstore 5
fload 2
aload 11
iconst_1
faload
fadd
fstore 3
L11:
aload 10
aload 0
iconst_0
fload 3
f2i
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
fload 5
iload 6
i2f
fcmpl
ifle L12
aload 10
ldc "..."
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L12:
aload 10
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
L10:
new java/lang/Float
dup
fload 5
invokespecial java/lang/Float/<init>(F)V
invokevirtual java/lang/Float/intValue()I
iload 6
if_icmpne L13
fload 3
aload 13
iconst_1
faload
fadd
fstore 2
fload 5
fstore 4
goto L7
L13:
fload 3
aload 13
iconst_1
faload
fadd
fstore 4
fload 5
fstore 2
L9:
getstatic com/nd/schoollife/ui/common/util/PostUtils$1/$SwitchMap$com$nd$schoollife$common$bean$structure$TagPosition$TAG_TYPE [I
aload 12
invokevirtual com/nd/schoollife/common/bean/structure/TagPosition/getType()Lcom/nd/schoollife/common/bean/structure/TagPosition$TAG_TYPE;
invokevirtual com/nd/schoollife/common/bean/structure/TagPosition$TAG_TYPE/ordinal()I
iaload
tableswitch 1
L14
L15
L16
default : L17
L17:
fload 4
fstore 3
L18:
fload 2
iload 6
i2f
fcmpl
iflt L19
fload 3
iload 8
iload 7
isub
i2f
fsub
fstore 3
fload 2
fstore 4
fload 3
fstore 2
goto L7
L14:
fload 4
iload 8
iload 7
isub
i2f
fadd
fstore 3
fload 2
aload 12
invokevirtual com/nd/schoollife/common/bean/structure/TagPosition/getAtContent()Ljava/lang/String;
invokevirtual java/lang/String/length()I
i2f
fadd
fstore 2
goto L18
L15:
fload 4
iload 8
iload 7
isub
i2f
fadd
fstore 3
fload 2
f2d
ldc2_w 1.2D
dadd
d2f
fstore 2
goto L18
L16:
fload 4
iload 8
iload 7
isub
i2f
fadd
fstore 3
fload 2
f2d
ldc2_w 5.5D
dadd
d2f
fstore 2
goto L18
L19:
iload 1
iconst_1
iadd
istore 1
fload 2
fstore 5
goto L6
.limit locals 15
.limit stack 5
.end method

.method public static replaceAllInputAt(Ljava/lang/String;)Ljava/lang/String;
getstatic com/product/android/utils/WbRegexUtils/AT_M_TAG_PATTERN Ljava/util/regex/Pattern;
aload 0
invokevirtual java/util/regex/Pattern/matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
astore 9
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 8
L0:
aload 9
invokevirtual java/util/regex/Matcher/find()Z
ifeq L1
aload 8
new android/graphics/Point
dup
aload 9
invokevirtual java/util/regex/Matcher/start()I
aload 9
invokevirtual java/util/regex/Matcher/end()I
invokespecial android/graphics/Point/<init>(II)V
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
goto L0
L1:
getstatic com/product/android/utils/WbRegexUtils/M_TAG_BEGIN_PATTERN Ljava/util/regex/Pattern;
aload 0
invokevirtual java/util/regex/Pattern/matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
astore 9
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 10
iconst_0
istore 1
iconst_0
istore 2
L2:
aload 9
invokevirtual java/util/regex/Matcher/find()Z
ifeq L3
aload 9
invokevirtual java/util/regex/Matcher/start()I
istore 5
aload 9
invokevirtual java/util/regex/Matcher/end()I
istore 3
iload 5
iload 3
aload 8
iload 2
invokestatic com/nd/schoollife/ui/common/util/PostUtils/findInMTag(IILjava/util/ArrayList;I)I
istore 4
iload 4
iconst_m1
if_icmpeq L4
iload 4
istore 2
goto L2
L4:
aload 9
invokevirtual java/util/regex/Matcher/group()Ljava/lang/String;
iconst_1
iload 3
iload 5
isub
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
invokevirtual java/lang/String/trim()Ljava/lang/String;
astore 11
aload 11
invokestatic com/nd/schoollife/schoollifeinterfaceImpl/CallOtherModel/getUidByName(Ljava/lang/String;)J
lstore 6
iload 5
iload 1
if_icmpeq L5
aload 10
aload 0
iload 1
iload 5
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L5:
lload 6
lconst_0
lcmp
ifeq L6
aload 10
aload 11
lload 6
invokestatic com/product/android/utils/wbAtUtils/WbAtView/getMTagString(Ljava/lang/String;J)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L7:
iload 3
istore 1
goto L2
L6:
aload 10
aload 9
invokevirtual java/util/regex/Matcher/group()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
goto L7
L3:
iload 1
ifne L8
aload 10
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L9:
aload 10
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
L8:
iload 1
aload 0
invokevirtual java/lang/String/length()I
if_icmpeq L9
aload 10
aload 0
iload 1
aload 0
invokevirtual java/lang/String/length()I
invokevirtual java/lang/String/subSequence(II)Ljava/lang/CharSequence;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
pop
goto L9
.limit locals 12
.limit stack 5
.end method

.method public static updateCommentsInPost(Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;Lcom/nd/schoollife/common/bean/result/CommentInfoBean;)Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L1 to L3 using L2
.catch java/lang/Exception from L4 to L5 using L2
.catch java/lang/Exception from L5 to L6 using L2
aload 0
ifnonnull L0
aload 0
areturn
L0:
aload 0
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getPost_info()Ljava/util/List;
ifnonnull L1
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setPost_info(Ljava/util/List;)V
L1:
aload 0
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getPost_info()Ljava/util/List;
invokeinterface java/util/List/size()I 0
iconst_2
if_icmpge L5
L3:
aload 1
ifnull L5
L4:
aload 1
invokestatic com/nd/schoollife/ui/common/util/PostUtils/comment2post(Lcom/nd/schoollife/common/bean/result/CommentInfoBean;)Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;
astore 1
aload 0
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getPost_info()Ljava/util/List;
iconst_0
aload 1
invokeinterface java/util/List/add(ILjava/lang/Object;)V 2
L5:
aload 0
aload 0
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getReplys()J
lconst_1
ladd
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setReplys(J)V
L6:
aload 0
areturn
L2:
astore 1
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
aload 0
areturn
.limit locals 2
.limit stack 5
.end method

.method public static uploadPostImage(Landroid/content/Context;Ljava/lang/String;)J
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
.catch java/lang/Exception from L0 to L1 using L3
new com/nd/android/u/filestoragesystem/business/bean/UploadImageParams
dup
invokespecial com/nd/android/u/filestoragesystem/business/bean/UploadImageParams/<init>()V
astore 4
aload 4
aload 1
putfield com/nd/android/u/filestoragesystem/business/bean/UploadImageParams/local_path Ljava/lang/String;
aload 4
iconst_3
putfield com/nd/android/u/filestoragesystem/business/bean/UploadImageParams/type I
aload 4
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getLocalSid()Ljava/lang/String;
putfield com/nd/android/u/filestoragesystem/business/bean/UploadImageParams/sid Ljava/lang/String;
aload 4
ldc2_w 77L
putfield com/nd/android/u/filestoragesystem/business/bean/UploadImageParams/id J
aload 4
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putfield com/nd/android/u/filestoragesystem/business/bean/UploadImageParams/path Ljava/lang/String;
L0:
invokestatic com/nd/android/u/filestoragesystem/externalInterface/FileUtilFactory/getInstance()Lcom/nd/android/u/filestoragesystem/externalInterface/FileUtilFactory;
invokevirtual com/nd/android/u/filestoragesystem/externalInterface/FileUtilFactory/getExternalInterface()Lcom/nd/android/u/filestoragesystem/externalInterface/IExternalInterface;
aload 0
aload 4
invokeinterface com/nd/android/u/filestoragesystem/externalInterface/IExternalInterface/upload(Landroid/content/Context;Lcom/nd/android/u/filestoragesystem/business/bean/UploadImageParams;)J 2
lstore 2
L1:
lload 2
lreturn
L2:
astore 0
ldc "PostUtils"
aload 0
invokevirtual com/common/android/utils/http/HttpException/getMessage()Ljava/lang/String;
invokestatic com/nd/schoollife/common/utils/ui/LogUtil/e(Ljava/lang/String;Ljava/lang/String;)V
lconst_0
lreturn
L3:
astore 0
aload 0
invokevirtual java/lang/Exception/printStackTrace()V
ldc "PostUtils"
aload 0
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokestatic com/nd/schoollife/common/utils/ui/LogUtil/e(Ljava/lang/String;Ljava/lang/String;)V
lconst_0
lreturn
.limit locals 5
.limit stack 4
.end method
