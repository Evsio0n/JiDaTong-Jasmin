.bytecode 50.0
.class public synchronized com/nd/schoollife/ui/common/view/CustomCommentFilter
.super java/lang/Object
.implements android/text/InputFilter

.field private 'mContext' Landroid/content/Context;

.field private 'mHasDone' Z

.field private 'mMaxLength' I

.field private 'mSelection' I

.field private 'mTextSize' F

.method public <init>(Landroid/content/Context;F)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_0
putfield com/nd/schoollife/ui/common/view/CustomCommentFilter/mMaxLength I
aload 0
iconst_0
putfield com/nd/schoollife/ui/common/view/CustomCommentFilter/mHasDone Z
aload 0
ldc_w 30.0F
putfield com/nd/schoollife/ui/common/view/CustomCommentFilter/mTextSize F
aload 0
aload 1
putfield com/nd/schoollife/ui/common/view/CustomCommentFilter/mContext Landroid/content/Context;
aload 0
fload 2
putfield com/nd/schoollife/ui/common/view/CustomCommentFilter/mTextSize F
return
.limit locals 3
.limit stack 2
.end method

.method public delAtFromString(Ljava/lang/String;I)I
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
iconst_m1
istore 3
L1:
iload 3
ireturn
L0:
aload 1
iconst_0
iload 2
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
astore 1
getstatic com/product/android/utils/WbRegexUtils/AT_M_TAG_PATTERN Ljava/util/regex/Pattern;
aload 1
invokevirtual java/util/regex/Pattern/matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
astore 1
iconst_0
istore 3
iconst_0
istore 4
L2:
aload 1
invokevirtual java/util/regex/Matcher/find()Z
ifeq L3
aload 1
invokevirtual java/util/regex/Matcher/start()I
istore 3
aload 1
invokevirtual java/util/regex/Matcher/end()I
istore 4
goto L2
L3:
iload 4
ifeq L4
iload 4
iload 2
if_icmpeq L1
L4:
iconst_m1
ireturn
.limit locals 5
.limit stack 3
.end method

.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
.catch java/lang/Exception from L5 to L6 using L2
.catch java/lang/Exception from L7 to L8 using L2
.catch java/lang/Exception from L9 to L10 using L2
.catch java/lang/Exception from L11 to L12 using L2
.catch java/lang/Exception from L13 to L14 using L2
.catch java/lang/Exception from L15 to L16 using L2
.catch java/lang/Exception from L17 to L18 using L2
.catch java/lang/Exception from L19 to L20 using L2
.catch java/lang/Exception from L21 to L22 using L2
.catch java/lang/Exception from L23 to L24 using L2
.catch java/lang/Exception from L25 to L26 using L2
.catch java/lang/Exception from L27 to L28 using L2
.catch java/lang/Exception from L29 to L30 using L2
.catch java/lang/Exception from L31 to L32 using L2
.catch java/lang/Exception from L33 to L34 using L2
.catch java/lang/Exception from L35 to L36 using L2
.catch java/lang/Exception from L37 to L38 using L2
.catch java/lang/Exception from L39 to L40 using L2
.catch java/lang/Exception from L41 to L42 using L2
.catch java/lang/Exception from L43 to L44 using L2
.catch java/lang/Exception from L45 to L46 using L2
.catch java/lang/Exception from L47 to L48 using L2
.catch java/lang/Exception from L49 to L50 using L2
.catch java/lang/Exception from L51 to L52 using L2
.catch java/lang/Exception from L53 to L54 using L2
.catch java/lang/Exception from L55 to L56 using L2
.catch java/lang/Exception from L57 to L58 using L2
.catch java/lang/Exception from L59 to L60 using L2
.catch java/lang/Exception from L61 to L62 using L2
.catch java/lang/Exception from L63 to L64 using L2
.catch java/lang/Exception from L65 to L66 using L2
aload 1
astore 10
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L67
aload 1
astore 11
aload 1
astore 10
L0:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 4
iconst_0
iload 5
invokeinterface android/text/Spanned/subSequence(II)Ljava/lang/CharSequence; 2
invokeinterface java/lang/CharSequence/toString()Ljava/lang/String; 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
iconst_1
aload 0
getfield com/nd/schoollife/ui/common/view/CustomCommentFilter/mMaxLength I
invokestatic com/nd/schoollife/ui/common/util/PostUtils/getWordLength(Ljava/lang/String;ZI)[F
iconst_0
faload
f2i
aload 0
getfield com/nd/schoollife/ui/common/view/CustomCommentFilter/mMaxLength I
if_icmple L68
L1:
aload 1
astore 10
L3:
aload 1
invokeinterface java/lang/CharSequence/length()I 0
ifle L69
L4:
aload 1
astore 10
L5:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 4
iconst_0
iload 5
invokeinterface android/text/Spanned/subSequence(II)Ljava/lang/CharSequence; 2
invokeinterface java/lang/CharSequence/toString()Ljava/lang/String; 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
iconst_1
aload 0
getfield com/nd/schoollife/ui/common/view/CustomCommentFilter/mMaxLength I
invokestatic com/nd/schoollife/ui/common/util/PostUtils/getWordLength(Ljava/lang/String;ZI)[F
iconst_0
faload
aload 0
getfield com/nd/schoollife/ui/common/view/CustomCommentFilter/mMaxLength I
i2f
fcmpl
ifle L69
L6:
aload 1
astore 10
L7:
invokestatic com/common/android/utils/smiley/Smileyhelper/getInstance()Lcom/common/android/utils/smiley/Smileyhelper;
aload 1
invokeinterface java/lang/CharSequence/toString()Ljava/lang/String; 0
aload 1
invokeinterface java/lang/CharSequence/length()I 0
iconst_1
invokevirtual com/common/android/utils/smiley/Smileyhelper/delSmileyFromString(Ljava/lang/String;II)I
istore 6
L8:
iload 6
iconst_m1
if_icmpne L70
aload 1
astore 10
L9:
aload 0
aload 1
invokeinterface java/lang/CharSequence/toString()Ljava/lang/String; 0
aload 1
invokeinterface java/lang/CharSequence/length()I 0
invokevirtual com/nd/schoollife/ui/common/view/CustomCommentFilter/delAtFromString(Ljava/lang/String;I)I
istore 6
L10:
iload 6
iconst_m1
if_icmpne L71
aload 1
astore 10
L11:
aload 1
iconst_0
aload 1
invokeinterface java/lang/CharSequence/length()I 0
iconst_1
isub
invokeinterface java/lang/CharSequence/subSequence(II)Ljava/lang/CharSequence; 2
astore 1
L12:
goto L1
L71:
aload 1
astore 10
L13:
aload 1
iconst_0
iload 6
invokeinterface java/lang/CharSequence/subSequence(II)Ljava/lang/CharSequence; 2
astore 1
L14:
goto L1
L70:
aload 1
astore 10
L15:
aload 1
iconst_0
iload 6
invokeinterface java/lang/CharSequence/subSequence(II)Ljava/lang/CharSequence; 2
astore 1
L16:
goto L1
L69:
aload 1
astore 10
L17:
aload 0
getfield com/nd/schoollife/ui/common/view/CustomCommentFilter/mContext Landroid/content/Context;
aload 0
getfield com/nd/schoollife/ui/common/view/CustomCommentFilter/mContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/schoollife/R$string/post_conmment_auto_cut I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 0
getfield com/nd/schoollife/ui/common/view/CustomCommentFilter/mMaxLength I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
invokestatic com/nd/schoollife/common/utils/ui/ToastUtil/showShortToast(Landroid/content/Context;Ljava/lang/String;)V
L18:
aload 1
astore 11
L68:
aload 11
astore 10
L19:
aload 0
aload 11
invokeinterface java/lang/CharSequence/length()I 0
iload 5
iadd
putfield com/nd/schoollife/ui/common/view/CustomCommentFilter/mSelection I
L20:
aload 11
astore 10
L21:
new android/text/SpannableString
dup
aload 11
invokespecial android/text/SpannableString/<init>(Ljava/lang/CharSequence;)V
astore 4
L22:
aload 11
astore 10
L23:
aload 11
instanceof android/text/Spanned
ifeq L72
L24:
aload 11
astore 10
L25:
aload 11
checkcast android/text/Spanned
astore 1
L26:
aload 11
astore 10
L27:
aload 1
iload 2
iload 3
ldc java/lang/Object
invokeinterface android/text/Spanned/getSpans(IILjava/lang/Class;)[Ljava/lang/Object; 3
astore 12
L28:
iconst_0
istore 6
L73:
aload 11
astore 10
L29:
iload 6
aload 12
arraylength
if_icmpge L72
L30:
aload 11
astore 10
L31:
aload 12
iload 6
aaload
instanceof android/text/NoCopySpan
ifeq L74
L32:
goto L75
L74:
aload 11
astore 10
L33:
aload 1
aload 12
iload 6
aaload
invokeinterface android/text/Spanned/getSpanStart(Ljava/lang/Object;)I 1
iload 2
isub
istore 7
L34:
aload 11
astore 10
L35:
aload 1
aload 12
iload 6
aaload
invokeinterface android/text/Spanned/getSpanEnd(Ljava/lang/Object;)I 1
iload 2
isub
istore 8
L36:
aload 11
astore 10
L37:
aload 1
aload 12
iload 6
aaload
invokeinterface android/text/Spanned/getSpanFlags(Ljava/lang/Object;)I 1
istore 9
L38:
iload 7
istore 5
iload 7
ifge L76
iconst_0
istore 5
goto L76
L77:
aload 11
astore 10
L39:
aload 4
aload 12
iload 6
aaload
iload 7
iload 8
iload 9
invokevirtual android/text/SpannableString/setSpan(Ljava/lang/Object;III)V
L40:
goto L75
L2:
astore 1
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
L67:
aload 10
astore 1
L78:
aload 1
areturn
L72:
aload 11
astore 10
L41:
invokestatic com/common/android/utils/smiley/Smileyhelper/getInstance()Lcom/common/android/utils/smiley/Smileyhelper;
aload 11
invokeinterface java/lang/CharSequence/toString()Ljava/lang/String; 0
iconst_1
invokevirtual com/common/android/utils/smiley/Smileyhelper/getSmileySpannableString(Ljava/lang/String;I)Landroid/text/SpannableString;
astore 1
L42:
aload 11
astore 10
L43:
aload 1
iload 2
iload 3
ldc java/lang/Object
invokevirtual android/text/SpannableString/getSpans(IILjava/lang/Class;)[Ljava/lang/Object;
astore 12
L44:
iconst_0
istore 6
L79:
aload 11
astore 10
L45:
iload 6
aload 12
arraylength
if_icmpge L80
L46:
aload 11
astore 10
L47:
aload 12
iload 6
aaload
instanceof android/text/NoCopySpan
ifeq L81
L48:
goto L82
L81:
aload 11
astore 10
L49:
aload 1
aload 12
iload 6
aaload
invokevirtual android/text/SpannableString/getSpanStart(Ljava/lang/Object;)I
iload 2
isub
istore 7
L50:
aload 11
astore 10
L51:
aload 1
aload 12
iload 6
aaload
invokevirtual android/text/SpannableString/getSpanEnd(Ljava/lang/Object;)I
iload 2
isub
istore 8
L52:
aload 11
astore 10
L53:
aload 1
aload 12
iload 6
aaload
invokevirtual android/text/SpannableString/getSpanFlags(Ljava/lang/Object;)I
istore 9
L54:
iload 7
istore 5
iload 7
ifge L83
iconst_0
istore 5
goto L83
L84:
aload 11
astore 10
L55:
aload 4
aload 12
iload 6
aaload
aload 4
invokevirtual android/text/SpannableString/length()I
iload 7
invokestatic java/lang/Math/min(II)I
aload 4
invokevirtual android/text/SpannableString/length()I
iload 8
invokestatic java/lang/Math/min(II)I
iload 9
invokevirtual android/text/SpannableString/setSpan(Ljava/lang/Object;III)V
L56:
goto L82
L80:
aload 11
astore 10
L57:
getstatic com/product/android/utils/WbRegexUtils/AT_M_TAG_PATTERN Ljava/util/regex/Pattern;
aload 11
invokevirtual java/util/regex/Pattern/matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
astore 12
L58:
aload 11
astore 10
aload 4
astore 1
L59:
aload 12
invokevirtual java/util/regex/Matcher/find()Z
ifeq L78
L60:
aload 11
astore 10
L61:
aload 11
aload 12
invokevirtual java/util/regex/Matcher/start()I
aload 12
invokevirtual java/util/regex/Matcher/end()I
invokeinterface java/lang/CharSequence/subSequence(II)Ljava/lang/CharSequence; 2
invokeinterface java/lang/CharSequence/toString()Ljava/lang/String; 0
astore 1
L62:
aload 11
astore 10
L63:
aload 1
invokestatic com/product/android/utils/wbAtUtils/WbAtView/getOnlyAtContent(Ljava/lang/String;)Ljava/lang/String;
astore 13
L64:
aload 11
astore 10
L65:
aload 4
new com/product/android/utils/wbAtUtils/AtImageSpan
dup
aload 0
getfield com/nd/schoollife/ui/common/view/CustomCommentFilter/mContext Landroid/content/Context;
aload 0
getfield com/nd/schoollife/ui/common/view/CustomCommentFilter/mTextSize F
f2i
i2f
aload 13
invokestatic com/nd/schoollife/ui/common/util/TextViewUtils/drawMTagBitmapDrawable(Landroid/content/Context;FLjava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
aload 1
iconst_0
invokespecial com/product/android/utils/wbAtUtils/AtImageSpan/<init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)V
aload 12
invokevirtual java/util/regex/Matcher/start()I
aload 12
invokevirtual java/util/regex/Matcher/end()I
bipush 33
invokevirtual android/text/SpannableString/setSpan(Ljava/lang/Object;III)V
L66:
goto L58
L75:
iload 6
iconst_1
iadd
istore 6
goto L73
L76:
iload 5
istore 7
iload 5
iload 3
iload 2
isub
if_icmple L85
iload 3
iload 2
isub
istore 7
L85:
iload 8
istore 5
iload 8
ifge L86
iconst_0
istore 5
L86:
iload 5
istore 8
iload 5
iload 3
iload 2
isub
if_icmple L77
iload 3
iload 2
isub
istore 8
goto L77
L82:
iload 6
iconst_1
iadd
istore 6
goto L79
L83:
iload 5
istore 7
iload 5
iload 3
iload 2
isub
if_icmple L87
iload 3
iload 2
isub
istore 7
L87:
iload 8
istore 5
iload 8
ifge L88
iconst_0
istore 5
L88:
iload 5
istore 8
iload 5
iload 3
iload 2
isub
if_icmple L84
iload 3
iload 2
isub
istore 8
goto L84
.limit locals 14
.limit stack 6
.end method

.method public getHasDone()Z
aload 0
getfield com/nd/schoollife/ui/common/view/CustomCommentFilter/mHasDone Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getSelection()I
aload 0
getfield com/nd/schoollife/ui/common/view/CustomCommentFilter/mSelection I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public setHasDone(Z)V
aload 0
iload 1
putfield com/nd/schoollife/ui/common/view/CustomCommentFilter/mHasDone Z
return
.limit locals 2
.limit stack 2
.end method

.method public setMaxLength(I)V
aload 0
iload 1
putfield com/nd/schoollife/ui/common/view/CustomCommentFilter/mMaxLength I
return
.limit locals 2
.limit stack 2
.end method
