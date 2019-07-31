.bytecode 50.0
.class public synchronized com/android/u/weibo/weibo/utils/WeiboUtil
.super java/lang/Object
.inner class static final inner com/android/u/weibo/weibo/utils/WeiboUtil$1
.inner class static final inner com/android/u/weibo/weibo/utils/WeiboUtil$2
.inner class public static ShowInputTouchListener inner com/android/u/weibo/weibo/utils/WeiboUtil$ShowInputTouchListener outer com/android/u/weibo/weibo/utils/WeiboUtil

.field public static final 'MAX_SIZE_OF_TWEET' I = 140


.field public static final 'TYPE_ND_TWEET' I = 0


.field public static final 'TYPE_SINA_TWEET' I = 1


.field public static final 'TYPE_UNKNOWN_TWEET' I = -1


.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static format2HumanTime(Landroid/content/Context;J)Ljava/lang/String;
lload 1
ldc2_w 1000L
lmul
lstore 4
invokestatic java/lang/System/currentTimeMillis()J
lload 4
lsub
lstore 1
lload 1
lconst_0
lcmp
ifle L0
L1:
lload 1
ldc2_w 3600000L
lcmp
ifge L2
lload 1
ldc2_w 60000L
ldiv
lstore 4
lload 4
lstore 1
lload 4
lconst_0
lcmp
ifne L3
lconst_1
lstore 1
L3:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
aload 0
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/minutes_before I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
L0:
lconst_0
lstore 1
goto L1
L2:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 6
invokestatic java/util/Calendar/getInstance()Ljava/util/Calendar;
astore 7
invokestatic java/util/Calendar/getInstance()Ljava/util/Calendar;
astore 8
aload 8
lload 4
invokevirtual java/util/Calendar/setTimeInMillis(J)V
aload 7
iconst_1
invokevirtual java/util/Calendar/get(I)I
aload 8
iconst_1
invokevirtual java/util/Calendar/get(I)I
isub
ifle L4
ldc "yyyy-MM-dd HH:mm"
astore 0
L5:
aload 6
aload 0
aconst_null
aconst_null
invokestatic com/android/u/weibo/weibo/utils/FastDateFormat/getInstance(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Lcom/android/u/weibo/weibo/utils/FastDateFormat;
lload 4
invokevirtual com/android/u/weibo/weibo/utils/FastDateFormat/format(J)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 6
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
L4:
aload 7
bipush 6
invokevirtual java/util/Calendar/get(I)I
aload 8
bipush 6
invokevirtual java/util/Calendar/get(I)I
isub
istore 3
iload 3
ifne L6
aload 0
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/today_hm I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
astore 0
goto L5
L6:
iload 3
iconst_1
if_icmpne L7
aload 0
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/yesterday_hm I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
astore 0
goto L5
L7:
ldc "MM-dd HH:mm"
astore 0
goto L5
.limit locals 9
.limit stack 4
.end method

.method public static getGenderByInt(ILandroid/content/Context;)Ljava/lang/String;
iload 0
tableswitch 0
L0
L1
L2
default : L3
L3:
aload 1
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/secret I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
areturn
L0:
aload 1
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/secret I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
areturn
L1:
aload 1
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/male I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
areturn
L2:
aload 1
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/female I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
areturn
.limit locals 2
.limit stack 2
.end method

.method public static getLastNdTweetId(Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;Lcom/android/u/weibo/weibo/business/bean/TopicInfo;)J
lconst_0
lstore 5
aload 1
ifnull L0
aload 0
ifnonnull L1
L0:
lconst_0
lreturn
L1:
aload 1
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/isOnlySina Z
ifeq L2
aload 0
invokevirtual com/android/u/weibo/weibo/business/bean/TopicInfoList/size()I
iconst_2
isub
istore 2
L3:
lload 5
lstore 3
iload 2
iflt L4
aload 0
iload 2
invokevirtual com/android/u/weibo/weibo/business/bean/TopicInfoList/get(I)Ljava/lang/Object;
checkcast com/android/u/weibo/weibo/business/bean/TopicInfo
astore 1
aload 1
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/isOnlySina Z
ifne L5
aload 1
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/tid J
lstore 3
L4:
lload 3
lreturn
L5:
iload 2
iconst_1
isub
istore 2
goto L3
L2:
aload 1
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/tid J
lstore 3
goto L4
.limit locals 7
.limit stack 2
.end method

.method public static getMsgContentCount(Ljava/lang/String;)I
iconst_0
istore 1
iconst_0
istore 2
L0:
iload 2
aload 0
invokevirtual java/lang/String/length()I
if_icmpge L1
aload 0
iload 2
invokestatic java/lang/Character/codePointAt(Ljava/lang/CharSequence;I)I
istore 3
iload 3
iflt L2
iload 3
sipush 255
if_icmpgt L2
iload 1
iconst_1
iadd
istore 1
L3:
iload 2
iconst_1
iadd
istore 2
goto L0
L2:
iload 1
iconst_2
iadd
istore 1
goto L3
L1:
iload 1
ireturn
.limit locals 4
.limit stack 2
.end method

.method private static getNotUrlString(Ljava/lang/String;)Ljava/lang/String;
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

.method public static getWordCount(Ljava/lang/String;Z)[F
aload 0
iload 1
sipush 140
invokestatic com/product/android/utils/ContentUtils/getWordCount(Ljava/lang/String;ZI)[F
areturn
.limit locals 2
.limit stack 3
.end method

.method public static isLocalTopic(Lcom/android/u/weibo/weibo/business/bean/TopicInfo;)Z
aload 0
ifnull L0
aload 0
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/tid J
lconst_0
lcmp
ifgt L1
L0:
iconst_1
ireturn
L1:
iconst_0
ireturn
.limit locals 1
.limit stack 4
.end method

.method public static isLongWeibo(Lcom/android/u/weibo/weibo/business/bean/TopicInfo;)Z
aload 0
ifnonnull L0
L1:
iconst_0
ireturn
L0:
aload 0
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/article Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L1
iconst_1
ireturn
.limit locals 1
.limit stack 1
.end method

.method public static judgeLengthIsOutOfRang(Landroid/content/Context;Ljava/lang/String;IIIILandroid/widget/TextView;)V
aload 1
iconst_0
invokestatic com/android/u/weibo/weibo/utils/WeiboUtil/getWordCount(Ljava/lang/String;Z)[F
astore 1
iload 2
i2f
aload 1
iconst_0
faload
fsub
fstore 7
fload 7
fconst_0
fcmpl
iflt L0
aload 6
iload 3
invokevirtual android/widget/TextView/setTextColor(I)V
aload 6
iload 2
aload 1
iconst_0
faload
invokestatic java/lang/Math/round(F)I
isub
invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
L0:
aload 6
iload 4
invokevirtual android/widget/TextView/setTextColor(I)V
aload 6
aload 0
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
iload 5
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
iconst_1
anewarray java/lang/Object
dup
iconst_0
fload 7
f2d
invokestatic java/lang/Math/floor(D)D
d2i
ineg
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
.limit locals 8
.limit stack 7
.end method

.method public static processLongTweet(Ljava/lang/String;)Ljava/lang/String;
aload 0
sipush 140
invokestatic com/product/android/utils/ContentUtils/processLongTweet(Ljava/lang/String;I)Ljava/lang/String;
areturn
.limit locals 1
.limit stack 2
.end method

.method public static recvRefreshDataBroadCast(Landroid/content/Intent;Lcom/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase;)V
aload 0
ldc "id"
lconst_0
invokevirtual android/content/Intent/getLongExtra(Ljava/lang/String;J)J
lstore 2
lload 2
lconst_0
lcmp
ifne L0
aload 0
ldc "errMsg"
invokevirtual android/content/Intent/getStringExtra(Ljava/lang/String;)Ljava/lang/String;
astore 0
aload 0
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L1
aload 0
invokestatic com/common/android/utils/ToastUtils/display(Ljava/lang/String;)V
L1:
return
L0:
aload 1
lload 2
aload 0
ldc "forwards"
bipush -2
invokevirtual android/content/Intent/getIntExtra(Ljava/lang/String;I)I
aload 0
ldc "replys"
bipush -2
invokevirtual android/content/Intent/getIntExtra(Ljava/lang/String;I)I
aload 0
ldc "praises"
bipush -2
invokevirtual android/content/Intent/getIntExtra(Ljava/lang/String;I)I
aload 0
ldc "glances"
bipush -2
invokevirtual android/content/Intent/getIntExtra(Ljava/lang/String;I)I
aload 0
ldc "isChangePraised"
iconst_0
invokevirtual android/content/Intent/getBooleanExtra(Ljava/lang/String;Z)Z
invokevirtual com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase/setReplyOrRetweet(JIIIIZ)V
return
.limit locals 4
.limit stack 10
.end method

.method public static resolveAll(Landroid/content/Context;Ljava/lang/String;)Landroid/text/SpannableString;
aload 0
aload 1
invokestatic com/product/android/utils/ContentUtils/resolveAll(Landroid/content/Context;Ljava/lang/String;)Landroid/text/SpannableString;
areturn
.limit locals 2
.limit stack 2
.end method

.method public static resolveAt(Ljava/lang/String;)Landroid/text/SpannableString;
aload 0
invokestatic com/product/android/utils/ContentUtils/resolveAt(Ljava/lang/String;)Landroid/text/SpannableString;
areturn
.limit locals 1
.limit stack 1
.end method

.method public static resolveSmiley(Landroid/content/Context;Ljava/lang/String;I)Landroid/text/SpannableString;
invokestatic com/common/android/utils/smiley/Smileyhelper/getInstance()Lcom/common/android/utils/smiley/Smileyhelper;
aload 1
iconst_1
iload 2
invokevirtual com/common/android/utils/smiley/Smileyhelper/getSmileySpannableString(Ljava/lang/String;II)Landroid/text/SpannableString;
areturn
.limit locals 3
.limit stack 4
.end method

.method public static sendRefreshDataBroadCast(Landroid/content/Context;JIIIIZLjava/lang/String;)V
aload 0
ifnonnull L0
return
L0:
new android/content/Intent
dup
ldc "refresh_data"
invokespecial android/content/Intent/<init>(Ljava/lang/String;)V
astore 9
aload 9
ldc "id"
lload 1
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;J)Landroid/content/Intent;
pop
aload 9
ldc "forwards"
iload 3
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;I)Landroid/content/Intent;
pop
aload 9
ldc "replys"
iload 4
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;I)Landroid/content/Intent;
pop
aload 9
ldc "praises"
iload 5
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;I)Landroid/content/Intent;
pop
aload 9
ldc "glances"
iload 6
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;I)Landroid/content/Intent;
pop
aload 9
ldc "isChangePraised"
iload 7
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
pop
aload 9
ldc "errMsg"
aload 8
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 0
invokestatic android/support/v4/content/LocalBroadcastManager/getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;
aload 9
invokevirtual android/support/v4/content/LocalBroadcastManager/sendBroadcast(Landroid/content/Intent;)Z
pop
return
.limit locals 10
.limit stack 4
.end method

.method public static setGlanceView(Landroid/content/Context;Landroid/widget/TextView;I)V
new java/text/DecimalFormat
dup
invokespecial java/text/DecimalFormat/<init>()V
astore 3
iload 2
sipush 1000
if_icmpge L0
aload 3
aload 0
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/glances_num_less_thousand I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual java/text/DecimalFormat/applyPattern(Ljava/lang/String;)V
aload 1
aload 3
iload 2
i2l
invokevirtual java/text/DecimalFormat/format(J)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
L0:
iload 2
sipush 1000
if_icmplt L1
iload 2
sipush 10000
if_icmpge L1
aload 3
aload 0
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/glances_num_thousand I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual java/text/DecimalFormat/applyPattern(Ljava/lang/String;)V
aload 1
aload 3
iload 2
i2l
invokevirtual java/text/DecimalFormat/format(J)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
L1:
iload 2
sipush 10000
irem
ifne L2
aload 3
aload 0
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/glances_num_more_ten_thousand_2 I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual java/text/DecimalFormat/applyPattern(Ljava/lang/String;)V
L3:
aload 1
aload 3
iload 2
sipush 10000
idiv
i2l
invokevirtual java/text/DecimalFormat/format(J)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
L2:
aload 3
aload 0
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/glances_num_more_ten_thousand_1 I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual java/text/DecimalFormat/applyPattern(Ljava/lang/String;)V
goto L3
.limit locals 4
.limit stack 4
.end method

.method public static setMarqueeText(Landroid/content/Context;Ljava/lang/String;Landroid/widget/TextView;)V
aload 0
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$integer/max_name_length I
invokevirtual android/content/res/Resources/getInteger(I)I
istore 3
aload 1
invokevirtual java/lang/String/length()I
iload 3
if_icmple L0
new android/util/DisplayMetrics
dup
invokespecial android/util/DisplayMetrics/<init>()V
astore 1
aload 0
ldc "window"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/view/WindowManager
invokeinterface android/view/WindowManager/getDefaultDisplay()Landroid/view/Display; 0
aload 1
invokevirtual android/view/Display/getMetrics(Landroid/util/DisplayMetrics;)V
aload 2
invokevirtual android/widget/TextView/getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
aload 1
getfield android/util/DisplayMetrics/widthPixels I
iconst_1
ishr
putfield android/view/ViewGroup$LayoutParams/width I
aload 2
iconst_1
invokevirtual android/widget/TextView/setSingleLine(Z)V
aload 2
getstatic android/text/TextUtils$TruncateAt/MARQUEE Landroid/text/TextUtils$TruncateAt;
invokevirtual android/widget/TextView/setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
aload 2
iconst_1
invokevirtual android/widget/TextView/setHorizontallyScrolling(Z)V
L0:
return
.limit locals 4
.limit stack 3
.end method

.method public static setUrlImageSpan(Landroid/widget/TextView;Lcom/product/android/utils/ContentUtils$UrlImageSpan;Landroid/text/Spannable;ZLjava/lang/String;)Lcom/product/android/utils/ContentUtils$UrlImageSpan;
aload 0
aload 1
aload 2
iload 3
aload 4
invokestatic com/product/android/utils/ContentUtils/setUrlImageSpan(Landroid/widget/TextView;Lcom/product/android/utils/ContentUtils$UrlImageSpan;Landroid/text/Spannable;ZLjava/lang/String;)Lcom/product/android/utils/ContentUtils$UrlImageSpan;
areturn
.limit locals 5
.limit stack 5
.end method

.method public static showAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/u/weibo/weibo/utils/ImageUtil$DoDialogListener;)V
aload 0
aload 1
aload 2
aload 0
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/ok I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
aload 3
invokestatic com/android/u/weibo/weibo/utils/WeiboUtil/showAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/u/weibo/weibo/utils/ImageUtil$DoDialogListener;)V
return
.limit locals 4
.limit stack 5
.end method

.method public static showAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/u/weibo/weibo/utils/ImageUtil$DoDialogListener;)V
new android/app/AlertDialog$Builder
dup
aload 0
invokespecial android/app/AlertDialog$Builder/<init>(Landroid/content/Context;)V
astore 0
aload 0
aload 2
invokevirtual android/app/AlertDialog$Builder/setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
pop
aload 0
aload 1
invokevirtual android/app/AlertDialog$Builder/setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
pop
aload 0
getstatic com/android/u/weibo/R$string/cancel I
new com/android/u/weibo/weibo/utils/WeiboUtil$1
dup
aload 4
invokespecial com/android/u/weibo/weibo/utils/WeiboUtil$1/<init>(Lcom/android/u/weibo/weibo/utils/ImageUtil$DoDialogListener;)V
invokevirtual android/app/AlertDialog$Builder/setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
pop
aload 0
aload 3
new com/android/u/weibo/weibo/utils/WeiboUtil$2
dup
aload 4
invokespecial com/android/u/weibo/weibo/utils/WeiboUtil$2/<init>(Lcom/android/u/weibo/weibo/utils/ImageUtil$DoDialogListener;)V
invokevirtual android/app/AlertDialog$Builder/setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
pop
aload 0
invokevirtual android/app/AlertDialog$Builder/show()Landroid/app/AlertDialog;
pop
return
.limit locals 5
.limit stack 5
.end method

.method public static startPostTweetService(Landroid/content/Context;Lcom/android/u/weibo/weibo/business/bean/TopicInfo;ZZLjava/util/ArrayList;)V
.signature "(Landroid/content/Context;Lcom/android/u/weibo/weibo/business/bean/TopicInfo;ZZLjava/util/ArrayList<Ljava/lang/String;>;)V"
new android/content/Intent
dup
aload 0
ldc com/android/u/weibo/weibo/controller/PostTweetService
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 6
iconst_0
istore 5
aload 1
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/tid J
lconst_0
lcmp
ifle L0
aload 6
ldc "retweet_id"
aload 1
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/tid J
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;J)Landroid/content/Intent;
pop
iconst_1
istore 5
L0:
aload 6
ldc "weiboActionType"
iload 5
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;I)Landroid/content/Intent;
pop
aload 6
ldc "is_only_sina"
aload 1
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/isOnlySina Z
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
pop
aload 6
ldc "content"
aload 1
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/article Ljava/lang/String;
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 6
ldc "img_paths"
aload 4
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;
pop
aload 6
ldc "category"
ldc "text"
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 6
ldc "compose_more"
iload 3
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
pop
aload 6
ldc "localCreateAt"
aload 1
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/localCreateAt J
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;J)Landroid/content/Intent;
pop
aload 6
ldc "is_360_pic"
aload 1
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/isSend360Pic Z
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
pop
aload 0
aload 6
invokevirtual android/content/Context/startService(Landroid/content/Intent;)Landroid/content/ComponentName;
pop
return
.limit locals 7
.limit stack 4
.end method
