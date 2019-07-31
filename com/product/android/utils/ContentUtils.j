.bytecode 50.0
.class public final synchronized com/product/android/utils/ContentUtils
.super java/lang/Object
.inner class static synthetic inner com/product/android/utils/ContentUtils$1
.inner class public static URLImageClickSpan inner com/product/android/utils/ContentUtils$URLImageClickSpan outer com/product/android/utils/ContentUtils
.inner class public static URLSpanNoUnderline inner com/product/android/utils/ContentUtils$URLSpanNoUnderline outer com/product/android/utils/ContentUtils
.inner class public static final enum SpanType inner com/product/android/utils/ContentUtils$URLSpanNoUnderline$SpanType outer com/product/android/utils/ContentUtils
.inner class public static UrlImageSpan inner com/product/android/utils/ContentUtils$UrlImageSpan outer com/product/android/utils/ContentUtils

.field public static final 'SMILEY_SIZE' I = 18


.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method private static findAt(Ljava/lang/String;I)I
getstatic com/product/android/utils/WbRegexUtils/AT_M_TAG_PATTERN Ljava/util/regex/Pattern;
aload 0
invokevirtual java/util/regex/Pattern/matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
astore 0
L0:
aload 0
invokevirtual java/util/regex/Matcher/find()Z
ifeq L1
aload 0
invokevirtual java/util/regex/Matcher/start()I
iload 1
if_icmple L2
L1:
iconst_m1
ireturn
L2:
aload 0
invokevirtual java/util/regex/Matcher/start()I
iload 1
if_icmpge L0
aload 0
invokevirtual java/util/regex/Matcher/end()I
iload 1
if_icmplt L0
aload 0
invokevirtual java/util/regex/Matcher/start()I
ireturn
.limit locals 2
.limit stack 2
.end method

.method private static findHashtag(Ljava/lang/String;I)I
getstatic com/product/android/utils/WbRegexUtils/HASHTAGS_PATTERN Ljava/util/regex/Pattern;
aload 0
invokevirtual java/util/regex/Pattern/matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
astore 0
L0:
aload 0
invokevirtual java/util/regex/Matcher/find()Z
ifeq L1
aload 0
invokevirtual java/util/regex/Matcher/start()I
iload 1
if_icmple L2
L1:
iconst_m1
ireturn
L2:
aload 0
invokevirtual java/util/regex/Matcher/start()I
iload 1
if_icmpge L0
aload 0
invokevirtual java/util/regex/Matcher/end()I
iload 1
if_icmplt L0
aload 0
invokevirtual java/util/regex/Matcher/start()I
ireturn
.limit locals 2
.limit stack 2
.end method

.method private static findUrl(Ljava/lang/String;I)I
getstatic com/common/android/utils/UrlUtils/WEB_URL Ljava/util/regex/Pattern;
aload 0
invokevirtual java/util/regex/Pattern/matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
astore 0
L0:
aload 0
invokevirtual java/util/regex/Matcher/find()Z
ifeq L1
aload 0
invokevirtual java/util/regex/Matcher/start()I
iload 1
if_icmple L2
L1:
iconst_m1
ireturn
L2:
aload 0
invokevirtual java/util/regex/Matcher/start()I
iload 1
if_icmpge L0
aload 0
invokevirtual java/util/regex/Matcher/end()I
iload 1
if_icmplt L0
aload 0
invokevirtual java/util/regex/Matcher/start()I
ireturn
.limit locals 2
.limit stack 2
.end method

.method public static getImageSpanDrawble(Landroid/content/Context;Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;
iconst_0
iconst_0
invokestatic android/view/View$MeasureSpec/makeMeasureSpec(II)I
istore 2
aload 1
iload 2
iload 2
invokevirtual android/widget/TextView/measure(II)V
aload 1
iconst_0
iconst_0
aload 1
invokevirtual android/widget/TextView/getMeasuredWidth()I
aload 1
invokevirtual android/widget/TextView/getMeasuredHeight()I
invokevirtual android/widget/TextView/layout(IIII)V
new android/graphics/Canvas
dup
aload 1
invokevirtual android/widget/TextView/getWidth()I
aload 1
invokevirtual android/widget/TextView/getHeight()I
getstatic android/graphics/Bitmap$Config/ARGB_8888 Landroid/graphics/Bitmap$Config;
invokestatic android/graphics/Bitmap/createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
invokespecial android/graphics/Canvas/<init>(Landroid/graphics/Bitmap;)V
astore 3
aload 3
aload 1
invokevirtual android/widget/TextView/getScrollX()I
ineg
i2f
aload 1
invokevirtual android/widget/TextView/getScrollY()I
ineg
i2f
invokevirtual android/graphics/Canvas/translate(FF)V
aload 1
aload 3
invokevirtual android/widget/TextView/draw(Landroid/graphics/Canvas;)V
aload 1
iconst_1
invokevirtual android/widget/TextView/setDrawingCacheEnabled(Z)V
aload 1
invokevirtual android/widget/TextView/getDrawingCache()Landroid/graphics/Bitmap;
getstatic android/graphics/Bitmap$Config/ARGB_8888 Landroid/graphics/Bitmap$Config;
iconst_1
invokevirtual android/graphics/Bitmap/copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;
astore 3
aload 1
invokevirtual android/widget/TextView/destroyDrawingCache()V
new android/graphics/drawable/BitmapDrawable
dup
aload 0
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
aload 3
invokespecial android/graphics/drawable/BitmapDrawable/<init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
astore 0
aload 0
iconst_0
iconst_0
aload 0
invokevirtual android/graphics/drawable/BitmapDrawable/getIntrinsicWidth()I
aload 0
invokevirtual android/graphics/drawable/BitmapDrawable/getIntrinsicHeight()I
invokevirtual android/graphics/drawable/BitmapDrawable/setBounds(IIII)V
aload 0
areturn
.limit locals 4
.limit stack 5
.end method

.method public static getImageSpanDrawble(Landroid/content/Context;ZLjava/lang/String;)Landroid/graphics/drawable/Drawable;
aload 0
ldc "layout_inflater"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/view/LayoutInflater
getstatic com/nd/android/u/allcommon/R$layout/wblst_url_textview I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
checkcast android/widget/TextView
astore 3
aload 2
ifnonnull L0
aload 3
getstatic com/nd/android/u/allcommon/R$string/wblst_url_text I
invokevirtual android/widget/TextView/setText(I)V
L1:
iload 1
ifeq L2
aload 3
getstatic com/nd/android/u/allcommon/R$drawable/wblst_url_bg_press I
invokevirtual android/widget/TextView/setBackgroundResource(I)V
L3:
aload 0
aload 3
invokestatic com/product/android/utils/ContentUtils/getImageSpanDrawble(Landroid/content/Context;Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;
areturn
L0:
aload 3
aload 2
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
goto L1
L2:
aload 3
getstatic com/nd/android/u/allcommon/R$drawable/wblst_url_bg_normal I
invokevirtual android/widget/TextView/setBackgroundResource(I)V
goto L3
.limit locals 4
.limit stack 3
.end method

.method protected static getNameIdList(Ljava/lang/String;)Ljava/util/ArrayList;
.signature "(Ljava/lang/String;)Ljava/util/ArrayList<Lcom/product/android/utils/wbAtUtils/WbAtInfo;>;"
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 1
aload 0
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
L1:
aload 1
areturn
L0:
getstatic com/product/android/utils/WbRegexUtils/AT_M_TAG_PATTERN Ljava/util/regex/Pattern;
aload 0
invokevirtual java/util/regex/Pattern/matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
astore 0
L2:
aload 0
invokevirtual java/util/regex/Matcher/find()Z
ifeq L1
aload 0
invokevirtual java/util/regex/Matcher/group()Ljava/lang/String;
astore 2
getstatic com/product/android/utils/WbRegexUtils/M_TAG_BEGIN_PATTERN Ljava/util/regex/Pattern;
aload 2
invokevirtual java/util/regex/Pattern/matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
astore 3
aload 3
invokevirtual java/util/regex/Matcher/find()Z
ifeq L2
aload 3
invokevirtual java/util/regex/Matcher/group()Ljava/lang/String;
astore 3
getstatic com/product/android/utils/WbRegexUtils/AT_UID_PATTERN Ljava/util/regex/Pattern;
aload 3
invokevirtual java/util/regex/Pattern/matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
astore 3
getstatic com/product/android/utils/WbRegexUtils/AT_USER_PATTERN Ljava/util/regex/Pattern;
aload 2
invokevirtual java/util/regex/Pattern/matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
astore 2
aload 2
invokevirtual java/util/regex/Matcher/find()Z
ifeq L2
aload 3
invokevirtual java/util/regex/Matcher/find()Z
ifeq L2
new com/product/android/utils/wbAtUtils/WbAtInfo
dup
invokespecial com/product/android/utils/wbAtUtils/WbAtInfo/<init>()V
astore 4
aload 4
aload 2
invokevirtual java/util/regex/Matcher/group()Ljava/lang/String;
putfield com/product/android/utils/wbAtUtils/WbAtInfo/atName Ljava/lang/String;
aload 4
aload 3
invokevirtual java/util/regex/Matcher/group()Ljava/lang/String;
invokestatic java/lang/Long/valueOf(Ljava/lang/String;)Ljava/lang/Long;
invokevirtual java/lang/Long/longValue()J
putfield com/product/android/utils/wbAtUtils/WbAtInfo/atUid J
aload 1
aload 4
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
goto L2
.limit locals 5
.limit stack 3
.end method

.method public static getNotUrlString(Ljava/lang/String;)Ljava/lang/String;
iconst_0
istore 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 4
getstatic com/common/android/utils/UrlUtils/WEB_URL Ljava/util/regex/Pattern;
aload 0
invokevirtual java/util/regex/Pattern/matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
astore 5
aload 5
invokevirtual java/util/regex/Matcher/find()Z
ifeq L0
aload 5
invokevirtual java/util/regex/Matcher/start()I
istore 3
aload 5
invokevirtual java/util/regex/Matcher/end()I
istore 2
iload 2
istore 1
iload 3
ifle L0
aload 4
aload 0
iconst_0
iload 3
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
iload 2
istore 1
L0:
aload 5
invokevirtual java/util/regex/Matcher/find()Z
ifeq L1
aload 5
invokevirtual java/util/regex/Matcher/start()I
istore 2
iload 1
iload 2
if_icmpge L2
aload 4
aload 0
iload 1
iload 2
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L2:
aload 5
invokevirtual java/util/regex/Matcher/end()I
istore 1
goto L0
L1:
iload 1
aload 0
invokevirtual java/lang/String/length()I
if_icmpge L3
aload 4
aload 0
iload 1
invokevirtual java/lang/String/substring(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L3:
aload 4
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 6
.limit stack 4
.end method

.method public static getWordCount(Ljava/lang/String;ZI)[F
aload 0
astore 9
aload 9
astore 8
iload 1
ifeq L0
aload 9
invokestatic com/product/android/utils/ContentUtils/getNotUrlString(Ljava/lang/String;)Ljava/lang/String;
invokestatic com/product/android/utils/wbAtUtils/WbAtView/getOnlyAtContent(Ljava/lang/String;)Ljava/lang/String;
astore 8
L0:
iconst_2
newarray float
astore 9
iconst_0
istore 4
iconst_0
istore 5
L1:
iload 5
aload 8
invokevirtual java/lang/String/length()I
if_icmpge L2
aload 8
iload 5
invokestatic java/lang/Character/codePointAt(Ljava/lang/CharSequence;I)I
istore 7
iload 7
iflt L3
iload 7
sipush 255
if_icmpgt L3
aload 9
iconst_0
aload 9
iconst_0
faload
f2d
ldc2_w 0.5D
dadd
d2f
fastore
L4:
iload 4
istore 3
iload 1
ifeq L5
iload 4
istore 3
aload 9
iconst_0
faload
iload 2
i2f
fcmpg
ifgt L5
aload 0
iload 4
invokestatic java/lang/Character/codePointAt(Ljava/lang/CharSequence;I)I
istore 6
L6:
iload 7
iload 6
if_icmpeq L7
iload 4
aload 0
invokevirtual java/lang/String/length()I
if_icmpge L7
iload 4
iconst_1
iadd
istore 4
aload 0
iload 4
invokestatic java/lang/Character/codePointAt(Ljava/lang/CharSequence;I)I
istore 6
goto L6
L3:
aload 9
iconst_0
aload 9
iconst_0
faload
fconst_1
fadd
fastore
goto L4
L7:
iload 4
istore 3
iload 7
iload 6
if_icmpne L5
iload 4
istore 3
iload 4
aload 0
invokevirtual java/lang/String/length()I
if_icmpge L5
iload 4
iconst_1
iadd
istore 3
L5:
iload 5
iconst_1
iadd
istore 5
iload 3
istore 4
goto L1
L2:
aload 9
iconst_1
iload 4
i2f
fastore
aload 9
areturn
.limit locals 10
.limit stack 6
.end method

.method public static processLongTweet(Ljava/lang/String;I)Ljava/lang/String;
.catch java/lang/StringIndexOutOfBoundsException from L0 to L1 using L2
.catch java/lang/StringIndexOutOfBoundsException from L3 to L4 using L2
.catch java/lang/StringIndexOutOfBoundsException from L4 to L5 using L2
.catch java/lang/StringIndexOutOfBoundsException from L6 to L7 using L2
.catch java/lang/StringIndexOutOfBoundsException from L8 to L9 using L2
.catch java/lang/StringIndexOutOfBoundsException from L9 to L10 using L2
.catch java/lang/StringIndexOutOfBoundsException from L11 to L12 using L2
.catch java/lang/StringIndexOutOfBoundsException from L12 to L13 using L2
.catch java/lang/StringIndexOutOfBoundsException from L14 to L15 using L2
.catch java/lang/StringIndexOutOfBoundsException from L15 to L16 using L2
aload 0
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L17
L18:
aload 0
areturn
L17:
aload 0
iconst_1
iload 1
invokestatic com/product/android/utils/ContentUtils/getWordCount(Ljava/lang/String;ZI)[F
astore 3
aload 3
iconst_0
faload
iload 1
i2f
fcmpg
ifle L18
L0:
new java/lang/StringBuilder
dup
ldc "..."
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
astore 4
aload 0
aload 3
iconst_1
faload
f2i
invokestatic com/product/android/utils/ContentUtils/findAt(Ljava/lang/String;I)I
istore 1
L1:
iload 1
ifle L4
L3:
aload 4
iconst_0
aload 0
iconst_0
iload 1
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/insert(ILjava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
L4:
aload 0
iconst_0
aload 3
iconst_1
faload
f2i
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
ldc "["
invokevirtual java/lang/String/lastIndexOf(Ljava/lang/String;)I
istore 1
L5:
iload 1
ifle L9
L6:
aload 0
iload 1
iconst_1
iadd
invokevirtual java/lang/String/substring(I)Ljava/lang/String;
ldc "]"
invokevirtual java/lang/String/indexOf(Ljava/lang/String;)I
iload 1
iconst_1
iadd
iadd
iconst_1
iadd
istore 2
L7:
iload 2
i2f
aload 3
iconst_1
faload
fcmpl
ifle L9
iload 2
iload 1
isub
bipush 6
if_icmpge L9
L8:
aload 4
iconst_0
aload 0
iconst_0
iload 1
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/insert(ILjava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
L9:
aload 0
aload 3
iconst_1
faload
f2i
invokestatic com/product/android/utils/ContentUtils/findUrl(Ljava/lang/String;I)I
istore 1
L10:
iload 1
ifle L12
L11:
aload 4
iconst_0
aload 0
iconst_0
iload 1
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/insert(ILjava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
L12:
aload 0
aload 3
iconst_1
faload
f2i
invokestatic com/product/android/utils/ContentUtils/findHashtag(Ljava/lang/String;I)I
istore 1
L13:
iload 1
ifle L15
L14:
aload 4
iconst_0
aload 0
iconst_0
iload 1
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/insert(ILjava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
L15:
aload 4
iconst_0
aload 0
iconst_0
aload 3
iconst_1
faload
f2i
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/insert(ILjava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 3
L16:
aload 3
areturn
L2:
astore 3
aload 0
areturn
.limit locals 5
.limit stack 6
.end method

.method public static replaceAllInputAt(Ljava/lang/String;)Ljava/lang/String;
getstatic com/product/android/utils/WbRegexUtils/AT_M_TAG_PATTERN Ljava/util/regex/Pattern;
aload 0
invokevirtual java/util/regex/Pattern/matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
astore 4
iconst_0
istore 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 5
L0:
aload 4
invokevirtual java/util/regex/Matcher/find()Z
ifeq L1
aload 4
invokevirtual java/util/regex/Matcher/start()I
istore 3
aload 4
invokevirtual java/util/regex/Matcher/end()I
istore 2
iload 1
iload 3
if_icmpeq L2
aload 5
aload 0
iload 1
iload 3
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
invokestatic com/product/android/utils/ContentUtils/replaceInputAtUser(Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L2:
aload 5
aload 4
invokevirtual java/util/regex/Matcher/group()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
iload 2
istore 1
goto L0
L1:
iload 1
ifne L3
aload 5
aload 0
invokestatic com/product/android/utils/ContentUtils/replaceInputAtUser(Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L4:
aload 5
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
L3:
iload 1
aload 0
invokevirtual java/lang/String/length()I
if_icmpeq L4
aload 5
aload 0
iload 1
aload 0
invokevirtual java/lang/String/length()I
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
invokestatic com/product/android/utils/ContentUtils/replaceInputAtUser(Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
goto L4
.limit locals 6
.limit stack 4
.end method

.method private static replaceInputAtUser(Ljava/lang/String;)Ljava/lang/String;
aload 0
ifnonnull L0
aconst_null
areturn
L0:
getstatic com/product/android/utils/WbRegexUtils/AUTO_AT_PATTERN Ljava/util/regex/Pattern;
aload 0
invokevirtual java/util/regex/Pattern/matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
astore 6
iconst_0
istore 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 7
L1:
aload 6
invokevirtual java/util/regex/Matcher/find()Z
ifeq L2
aload 6
invokevirtual java/util/regex/Matcher/start()I
istore 3
aload 6
invokevirtual java/util/regex/Matcher/end()I
istore 2
iload 3
iload 1
if_icmpeq L3
aload 7
aload 0
iload 1
iload 3
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L3:
aload 6
invokevirtual java/util/regex/Matcher/group()Ljava/lang/String;
iconst_1
iload 2
iload 3
isub
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
invokevirtual java/lang/String/trim()Ljava/lang/String;
astore 8
aload 8
invokestatic com/product/android/commonInterface/allCommonInterfaceImpl/AllCommonCallOtherModel$ContactModel/getUidByName(Ljava/lang/String;)J
lstore 4
lload 4
lconst_0
lcmp
ifeq L4
aload 7
aload 8
lload 4
invokestatic com/product/android/utils/wbAtUtils/WbAtView/getMTagString(Ljava/lang/String;J)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L5:
iload 2
istore 1
goto L1
L4:
aload 7
aload 6
invokevirtual java/util/regex/Matcher/group()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
goto L5
L2:
iload 1
ifne L6
aload 7
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L7:
aload 7
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
L6:
iload 1
aload 0
invokevirtual java/lang/String/length()I
if_icmpeq L7
aload 7
aload 0
iload 1
aload 0
invokevirtual java/lang/String/length()I
invokevirtual java/lang/String/subSequence(II)Ljava/lang/CharSequence;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
pop
goto L7
.limit locals 9
.limit stack 4
.end method

.method public static resolveAll(Landroid/content/Context;Ljava/lang/String;)Landroid/text/SpannableString;
aload 1
invokestatic com/product/android/utils/wbAtUtils/WbAtView/getOnlyAtContent(Ljava/lang/String;)Ljava/lang/String;
astore 2
invokestatic com/common/android/utils/smiley/Smileyhelper/getInstance()Lcom/common/android/utils/smiley/Smileyhelper;
aload 2
iconst_1
bipush 18
invokevirtual com/common/android/utils/smiley/Smileyhelper/getSmileySpannableString(Ljava/lang/String;II)Landroid/text/SpannableString;
astore 2
aload 2
invokevirtual android/text/SpannableString/toString()Ljava/lang/String;
aload 1
aload 2
invokestatic com/product/android/utils/ContentUtils/resolveAt(Ljava/lang/String;Ljava/lang/String;Landroid/text/SpannableString;)Landroid/text/SpannableString;
astore 1
aload 0
aload 1
invokevirtual android/text/SpannableString/toString()Ljava/lang/String;
aload 1
invokestatic com/product/android/utils/ContentUtils/resolveUrl(Landroid/content/Context;Ljava/lang/String;Landroid/text/SpannableString;)Landroid/text/SpannableString;
astore 0
aload 0
invokevirtual android/text/SpannableString/toString()Ljava/lang/String;
aload 0
invokestatic com/product/android/utils/ContentUtils/resolveHashtags(Ljava/lang/String;Landroid/text/SpannableString;)Landroid/text/SpannableString;
areturn
.limit locals 3
.limit stack 4
.end method

.method public static resolveAt(Ljava/lang/String;)Landroid/text/SpannableString;
new android/text/SpannableString
dup
aload 0
invokespecial android/text/SpannableString/<init>(Ljava/lang/CharSequence;)V
astore 1
getstatic com/product/android/utils/WbRegexUtils/AUTO_AT_PATTERN Ljava/util/regex/Pattern;
aload 0
invokevirtual java/util/regex/Pattern/matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
astore 0
L0:
aload 0
invokevirtual java/util/regex/Matcher/find()Z
ifeq L1
aload 1
new com/product/android/utils/ContentUtils$URLSpanNoUnderline
dup
aload 0
invokevirtual java/util/regex/Matcher/group()Ljava/lang/String;
invokespecial com/product/android/utils/ContentUtils$URLSpanNoUnderline/<init>(Ljava/lang/String;)V
aload 0
invokevirtual java/util/regex/Matcher/start()I
aload 0
invokevirtual java/util/regex/Matcher/end()I
bipush 33
invokevirtual android/text/SpannableString/setSpan(Ljava/lang/Object;III)V
goto L0
L1:
aload 1
areturn
.limit locals 2
.limit stack 5
.end method

.method public static resolveAt(Ljava/lang/String;Ljava/lang/String;Landroid/text/SpannableString;)Landroid/text/SpannableString;
iconst_0
istore 3
aload 1
invokestatic com/product/android/utils/ContentUtils/getNameIdList(Ljava/lang/String;)Ljava/util/ArrayList;
astore 6
aload 2
astore 5
aload 2
ifnonnull L0
new android/text/SpannableString
dup
aload 1
invokespecial android/text/SpannableString/<init>(Ljava/lang/CharSequence;)V
astore 5
L0:
aload 0
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L1
aload 6
invokevirtual java/util/ArrayList/size()I
ifle L1
aload 6
invokevirtual java/util/ArrayList/iterator()Ljava/util/Iterator;
astore 1
L2:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/utils/wbAtUtils/WbAtInfo
astore 2
aload 0
aload 2
getfield com/product/android/utils/wbAtUtils/WbAtInfo/atName Ljava/lang/String;
iload 3
invokevirtual java/lang/String/indexOf(Ljava/lang/String;I)I
istore 4
iload 4
iconst_m1
if_icmpeq L2
iload 4
aload 2
getfield com/product/android/utils/wbAtUtils/WbAtInfo/atName Ljava/lang/String;
invokevirtual java/lang/String/length()I
iadd
istore 3
aload 5
new com/product/android/utils/ContentUtils$URLSpanNoUnderline
dup
aload 2
getfield com/product/android/utils/wbAtUtils/WbAtInfo/atName Ljava/lang/String;
getstatic com/product/android/utils/ContentUtils$URLSpanNoUnderline$SpanType/AT Lcom/product/android/utils/ContentUtils$URLSpanNoUnderline$SpanType;
aload 2
getfield com/product/android/utils/wbAtUtils/WbAtInfo/atUid J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokespecial com/product/android/utils/ContentUtils$URLSpanNoUnderline/<init>(Ljava/lang/String;Lcom/product/android/utils/ContentUtils$URLSpanNoUnderline$SpanType;Ljava/lang/Object;)V
iload 4
iload 3
bipush 33
invokevirtual android/text/SpannableString/setSpan(Ljava/lang/Object;III)V
goto L2
L1:
aload 5
areturn
.limit locals 7
.limit stack 7
.end method

.method public static resolveHashtags(Ljava/lang/String;Landroid/text/SpannableString;)Landroid/text/SpannableString;
aload 1
astore 2
aload 1
ifnonnull L0
new android/text/SpannableString
dup
aload 0
invokespecial android/text/SpannableString/<init>(Ljava/lang/CharSequence;)V
astore 2
L0:
getstatic com/product/android/utils/WbRegexUtils/HASHTAGS_PATTERN Ljava/util/regex/Pattern;
aload 0
invokevirtual java/util/regex/Pattern/matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
astore 0
L1:
aload 0
invokevirtual java/util/regex/Matcher/find()Z
ifeq L2
aload 0
invokevirtual java/util/regex/Matcher/group()Ljava/lang/String;
astore 1
aload 1
iconst_1
aload 1
invokevirtual java/lang/String/length()I
iconst_1
isub
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
invokevirtual java/lang/String/trim()Ljava/lang/String;
invokevirtual java/lang/String/length()I
ifne L3
L2:
aload 2
areturn
L3:
aload 2
new com/product/android/utils/ContentUtils$URLSpanNoUnderline
dup
aload 1
getstatic com/product/android/utils/ContentUtils$URLSpanNoUnderline$SpanType/HASHTAGS Lcom/product/android/utils/ContentUtils$URLSpanNoUnderline$SpanType;
invokespecial com/product/android/utils/ContentUtils$URLSpanNoUnderline/<init>(Ljava/lang/String;Lcom/product/android/utils/ContentUtils$URLSpanNoUnderline$SpanType;)V
aload 0
invokevirtual java/util/regex/Matcher/start()I
aload 0
invokevirtual java/util/regex/Matcher/end()I
bipush 33
invokevirtual android/text/SpannableString/setSpan(Ljava/lang/Object;III)V
goto L1
.limit locals 3
.limit stack 5
.end method

.method public static resolveSmiley(Landroid/content/Context;Ljava/lang/String;)Landroid/text/SpannableString;
invokestatic com/common/android/utils/smiley/Smileyhelper/getInstance()Lcom/common/android/utils/smiley/Smileyhelper;
aload 1
iconst_1
bipush 18
invokevirtual com/common/android/utils/smiley/Smileyhelper/getSmileySpannableString(Ljava/lang/String;II)Landroid/text/SpannableString;
areturn
.limit locals 2
.limit stack 4
.end method

.method public static resolveSmileyAtUrl(Landroid/content/Context;Ljava/lang/String;)Landroid/text/SpannableString;
aload 1
invokestatic com/product/android/utils/wbAtUtils/WbAtView/getOnlyAtContent(Ljava/lang/String;)Ljava/lang/String;
astore 2
invokestatic com/common/android/utils/smiley/Smileyhelper/getInstance()Lcom/common/android/utils/smiley/Smileyhelper;
aload 2
iconst_1
bipush 18
invokevirtual com/common/android/utils/smiley/Smileyhelper/getSmileySpannableString(Ljava/lang/String;II)Landroid/text/SpannableString;
astore 2
aload 2
invokevirtual android/text/SpannableString/toString()Ljava/lang/String;
aload 1
aload 2
invokestatic com/product/android/utils/ContentUtils/resolveAt(Ljava/lang/String;Ljava/lang/String;Landroid/text/SpannableString;)Landroid/text/SpannableString;
astore 1
aload 0
aload 1
invokevirtual android/text/SpannableString/toString()Ljava/lang/String;
aload 1
invokestatic com/product/android/utils/ContentUtils/resolveUrl(Landroid/content/Context;Ljava/lang/String;Landroid/text/SpannableString;)Landroid/text/SpannableString;
areturn
.limit locals 3
.limit stack 4
.end method

.method public static resolveSmileyUrl(Landroid/content/Context;Ljava/lang/String;)Landroid/text/SpannableString;
invokestatic com/common/android/utils/smiley/Smileyhelper/getInstance()Lcom/common/android/utils/smiley/Smileyhelper;
aload 1
iconst_1
bipush 18
invokevirtual com/common/android/utils/smiley/Smileyhelper/getSmileySpannableString(Ljava/lang/String;II)Landroid/text/SpannableString;
astore 1
aload 0
aload 1
invokevirtual android/text/SpannableString/toString()Ljava/lang/String;
aload 1
invokestatic com/product/android/utils/ContentUtils/resolveUrl(Landroid/content/Context;Ljava/lang/String;Landroid/text/SpannableString;)Landroid/text/SpannableString;
areturn
.limit locals 2
.limit stack 4
.end method

.method public static resolveUrl(Landroid/content/Context;Ljava/lang/String;Landroid/text/SpannableString;)Landroid/text/SpannableString;
aload 2
astore 3
aload 2
ifnonnull L0
new android/text/SpannableString
dup
aload 1
invokespecial android/text/SpannableString/<init>(Ljava/lang/CharSequence;)V
astore 3
L0:
getstatic com/common/android/utils/UrlUtils/WEB_URL Ljava/util/regex/Pattern;
aload 1
invokevirtual java/util/regex/Pattern/matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
astore 1
L1:
aload 1
invokevirtual java/util/regex/Matcher/find()Z
ifeq L2
aload 3
new com/product/android/utils/ContentUtils$URLImageClickSpan
dup
aload 1
invokevirtual java/util/regex/Matcher/group()Ljava/lang/String;
invokestatic com/common/android/utils/UrlUtils/makeUrl(Ljava/lang/String;)Ljava/lang/String;
getstatic com/product/android/utils/ContentUtils$URLSpanNoUnderline$SpanType/URL Lcom/product/android/utils/ContentUtils$URLSpanNoUnderline$SpanType;
invokespecial com/product/android/utils/ContentUtils$URLImageClickSpan/<init>(Ljava/lang/String;Lcom/product/android/utils/ContentUtils$URLSpanNoUnderline$SpanType;)V
aload 1
invokevirtual java/util/regex/Matcher/start()I
aload 1
invokevirtual java/util/regex/Matcher/end()I
bipush 33
invokevirtual android/text/SpannableString/setSpan(Ljava/lang/Object;III)V
new com/product/android/utils/ContentUtils$UrlImageSpan
dup
aload 0
iconst_0
aconst_null
invokestatic com/product/android/utils/ContentUtils/getImageSpanDrawble(Landroid/content/Context;ZLjava/lang/String;)Landroid/graphics/drawable/Drawable;
invokespecial com/product/android/utils/ContentUtils$UrlImageSpan/<init>(Landroid/graphics/drawable/Drawable;)V
astore 2
aload 2
aload 1
invokevirtual java/util/regex/Matcher/group()Ljava/lang/String;
invokevirtual com/product/android/utils/ContentUtils$UrlImageSpan/setUrl(Ljava/lang/String;)V
aload 1
invokevirtual java/util/regex/Matcher/group()Ljava/lang/String;
ldc "@"
invokevirtual java/lang/String/endsWith(Ljava/lang/String;)Z
ifeq L3
aload 3
aload 2
aload 1
invokevirtual java/util/regex/Matcher/start()I
aload 1
invokevirtual java/util/regex/Matcher/end()I
iconst_1
isub
bipush 33
invokevirtual android/text/SpannableString/setSpan(Ljava/lang/Object;III)V
goto L1
L3:
aload 3
aload 2
aload 1
invokevirtual java/util/regex/Matcher/start()I
aload 1
invokevirtual java/util/regex/Matcher/end()I
bipush 33
invokevirtual android/text/SpannableString/setSpan(Ljava/lang/Object;III)V
goto L1
L2:
aload 3
areturn
.limit locals 4
.limit stack 5
.end method

.method public static setUrlImageSpan(Landroid/widget/TextView;Lcom/product/android/utils/ContentUtils$UrlImageSpan;Landroid/text/Spannable;ZLjava/lang/String;)Lcom/product/android/utils/ContentUtils$UrlImageSpan;
aload 2
aload 1
invokeinterface android/text/Spannable/getSpanStart(Ljava/lang/Object;)I 1
istore 5
aload 2
aload 1
invokeinterface android/text/Spannable/getSpanEnd(Ljava/lang/Object;)I 1
istore 6
aload 2
aload 1
invokeinterface android/text/Spannable/removeSpan(Ljava/lang/Object;)V 1
iload 5
iconst_m1
if_icmpeq L0
iload 6
iconst_m1
if_icmpne L1
L0:
aconst_null
areturn
L1:
new com/product/android/utils/ContentUtils$UrlImageSpan
dup
aload 0
invokevirtual android/widget/TextView/getContext()Landroid/content/Context;
iload 3
aload 4
invokestatic com/product/android/utils/ContentUtils/getImageSpanDrawble(Landroid/content/Context;ZLjava/lang/String;)Landroid/graphics/drawable/Drawable;
invokespecial com/product/android/utils/ContentUtils$UrlImageSpan/<init>(Landroid/graphics/drawable/Drawable;)V
astore 1
aload 2
aload 1
iload 5
iload 6
bipush 33
invokeinterface android/text/Spannable/setSpan(Ljava/lang/Object;III)V 4
aload 0
aload 2
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 1
areturn
.limit locals 7
.limit stack 5
.end method
