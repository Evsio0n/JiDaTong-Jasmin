.bytecode 50.0
.class public synchronized com/nd/android/u/news/NewsUtil
.super java/lang/Object
.inner class public static IncludeLineSpacingExtraImageSpan inner com/nd/android/u/news/NewsUtil$IncludeLineSpacingExtraImageSpan outer com/nd/android/u/news/NewsUtil

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static formatHeat(FLandroid/content/Context;)Ljava/lang/String;
new java/text/DecimalFormat
dup
invokespecial java/text/DecimalFormat/<init>()V
astore 2
fload 0
ldc_w 1000.0F
fcmpg
ifge L0
aload 2
aload 1
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/news/R$string/str_news_heat_less_thousand I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual java/text/DecimalFormat/applyPattern(Ljava/lang/String;)V
aload 2
fload 0
f2d
invokevirtual java/text/DecimalFormat/format(D)Ljava/lang/String;
areturn
L0:
fload 0
ldc_w 1000.0F
fcmpl
iflt L1
fload 0
ldc_w 10000.0F
fcmpg
ifge L1
aload 2
aload 1
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/news/R$string/str_news_heat_thousand I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual java/text/DecimalFormat/applyPattern(Ljava/lang/String;)V
aload 2
fload 0
f2d
invokevirtual java/text/DecimalFormat/format(D)Ljava/lang/String;
areturn
L1:
fload 0
ldc_w 10000.0F
frem
fconst_0
fcmpl
ifne L2
aload 2
aload 1
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/news/R$string/str_news_heat_more_than_ten_thousand_2 I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual java/text/DecimalFormat/applyPattern(Ljava/lang/String;)V
L3:
aload 2
fload 0
ldc_w 10000.0F
fdiv
f2d
invokevirtual java/text/DecimalFormat/format(D)Ljava/lang/String;
areturn
L2:
aload 2
aload 1
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/news/R$string/str_news_heat_more_than_ten_thousand_1 I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual java/text/DecimalFormat/applyPattern(Ljava/lang/String;)V
goto L3
.limit locals 3
.limit stack 3
.end method

.method public static getErrorMsg(Ljava/lang/String;Lcom/nd/android/forumsdk/business/bean/ForumResultBase;)Ljava/lang/String;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
astore 2
aload 2
ifnull L0
aload 2
invokestatic com/common/android/utils/NetWorkUtils/JudgeNetWorkStatus(Landroid/content/Context;)Z
ifne L0
aload 2
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/news/R$string/network_error_to_set_network I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
astore 2
L1:
aload 2
areturn
L0:
aload 0
astore 2
aload 1
ifnull L1
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/ForumResultBase/getErrorBean()Lcom/nd/android/forumsdk/business/bean/ForumErrorBean;
astore 2
aload 2
ifnull L2
aload 2
invokevirtual com/nd/android/forumsdk/business/bean/ForumErrorBean/getMsg()Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L2
aload 2
invokevirtual com/nd/android/forumsdk/business/bean/ForumErrorBean/getMsg()Ljava/lang/String;
areturn
L2:
aload 0
astore 2
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/ForumResultBase/getResultMsg()Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L1
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/ForumResultBase/getResultMsg()Ljava/lang/String;
areturn
.limit locals 3
.limit stack 2
.end method

.method public static getImageSpanDrawble(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
aload 0
ldc "layout_inflater"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/view/LayoutInflater
getstatic com/nd/android/u/news/R$layout/topic_news_summary_textview I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
checkcast android/widget/TextView
astore 2
aload 1
ifnonnull L0
aload 2
getstatic com/nd/android/u/news/R$string/topic_news_summary I
invokevirtual android/widget/TextView/setText(I)V
L1:
aload 2
getstatic com/nd/android/u/news/R$drawable/bg_topic_news_summary I
invokevirtual android/widget/TextView/setBackgroundResource(I)V
aload 0
aload 2
invokestatic com/product/android/utils/ContentUtils/getImageSpanDrawble(Landroid/content/Context;Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;
areturn
L0:
aload 2
aload 1
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
goto L1
.limit locals 3
.limit stack 3
.end method

.method public static resolveTopicNewsSummary(Landroid/content/Context;Ljava/lang/String;Landroid/text/SpannableString;)Landroid/text/SpannableString;
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
aload 3
new com/nd/android/u/news/NewsUtil$IncludeLineSpacingExtraImageSpan
dup
aload 0
aconst_null
invokestatic com/nd/android/u/news/NewsUtil/getImageSpanDrawble(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
invokespecial com/nd/android/u/news/NewsUtil$IncludeLineSpacingExtraImageSpan/<init>(Landroid/graphics/drawable/Drawable;)V
iconst_0
iconst_2
bipush 33
invokevirtual android/text/SpannableString/setSpan(Ljava/lang/Object;III)V
aload 3
areturn
.limit locals 4
.limit stack 5
.end method
