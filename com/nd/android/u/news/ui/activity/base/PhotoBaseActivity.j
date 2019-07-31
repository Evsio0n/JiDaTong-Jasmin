.bytecode 50.0
.class public synchronized abstract com/nd/android/u/news/ui/activity/base/PhotoBaseActivity
.super com/nd/android/u/news/ui/activity/base/NewsBaseActivity
.implements com/nd/android/u/news/ui/listen/SetContentListener
.inner class static synthetic inner com/nd/android/u/news/ui/activity/base/PhotoBaseActivity$1
.inner class private LoadImages inner com/nd/android/u/news/ui/activity/base/PhotoBaseActivity$LoadImages outer com/nd/android/u/news/ui/activity/base/PhotoBaseActivity

.field private static final 'TYPE_SIZE' F = 1.5F


.field protected 'adapter' Lcom/nd/android/u/news/ui/adapter/NewsViewPagerAdapter;

.field protected 'contentLayout' Landroid/widget/RelativeLayout;

.field private 'header' Landroid/view/View;

.field protected 'loadImageTask' Lcom/nd/android/u/news/ui/activity/base/PhotoBaseActivity$LoadImages;

.field protected 'mFootView' Lcom/nd/android/u/news/ui/view/NewsFootView;

.field protected 'mPageListener' Lcom/nd/android/u/news/ui/listen/NewsPageChangeListener;

.field private 'mViewPager' Lcom/common/android/ui/widget/CompatibleViewPager;

.field protected 'picIndex' I

.field protected 'tvContent' Landroid/widget/TextView;

.field protected 'tvDate' Landroid/widget/TextView;

.field protected 'urlList' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Ljava/lang/String;>;"

.method public <init>()V
aload 0
invokespecial com/nd/android/u/news/ui/activity/base/NewsBaseActivity/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method private getTotalBigSpan(I)I
iload 1
invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
invokevirtual java/lang/String/length()I
ireturn
.limit locals 2
.limit stack 1
.end method

.method private getTotalColor(II)I
iload 1
invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
invokevirtual java/lang/String/length()I
iload 2
invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
invokevirtual java/lang/String/length()I
iadd
iconst_1
iadd
ireturn
.limit locals 3
.limit stack 2
.end method

.method public abstract executeInUi(Ljava/lang/Object;)V
.end method

.method protected executeTask()V
aload 0
getfield com/nd/android/u/news/ui/activity/base/PhotoBaseActivity/loadImageTask Lcom/nd/android/u/news/ui/activity/base/PhotoBaseActivity$LoadImages;
ifnull L0
aload 0
getfield com/nd/android/u/news/ui/activity/base/PhotoBaseActivity/loadImageTask Lcom/nd/android/u/news/ui/activity/base/PhotoBaseActivity$LoadImages;
invokevirtual com/nd/android/u/news/ui/activity/base/PhotoBaseActivity$LoadImages/getStatus()Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status;
getstatic com/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status/RUNNING Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status;
if_acmpne L0
return
L0:
aload 0
new com/nd/android/u/news/ui/activity/base/PhotoBaseActivity$LoadImages
dup
aload 0
aconst_null
invokespecial com/nd/android/u/news/ui/activity/base/PhotoBaseActivity$LoadImages/<init>(Lcom/nd/android/u/news/ui/activity/base/PhotoBaseActivity;Lcom/nd/android/u/news/ui/activity/base/PhotoBaseActivity$1;)V
putfield com/nd/android/u/news/ui/activity/base/PhotoBaseActivity/loadImageTask Lcom/nd/android/u/news/ui/activity/base/PhotoBaseActivity$LoadImages;
aload 0
getfield com/nd/android/u/news/ui/activity/base/PhotoBaseActivity/loadImageTask Lcom/nd/android/u/news/ui/activity/base/PhotoBaseActivity$LoadImages;
iconst_0
anewarray java/lang/Integer
invokevirtual com/nd/android/u/news/ui/activity/base/PhotoBaseActivity$LoadImages/execute([Ljava/lang/Object;)Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;
pop
return
.limit locals 1
.limit stack 5
.end method

.method public getBtnBack()Landroid/widget/ImageView;
aload 0
getfield com/nd/android/u/news/ui/activity/base/PhotoBaseActivity/mIbLeft Landroid/widget/ImageButton;
areturn
.limit locals 1
.limit stack 1
.end method

.method public abstract getDataInBackGround()Ljava/lang/Object;
.end method

.method public getFootView()Lcom/nd/android/u/news/ui/view/NewsFootView;
aload 0
getfield com/nd/android/u/news/ui/activity/base/PhotoBaseActivity/mFootView Lcom/nd/android/u/news/ui/view/NewsFootView;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getTvTitle()Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/news/ui/activity/base/PhotoBaseActivity/mTvTitle Landroid/widget/TextView;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getmViewPager()Lcom/common/android/ui/widget/CompatibleViewPager;
aload 0
getfield com/nd/android/u/news/ui/activity/base/PhotoBaseActivity/mViewPager Lcom/common/android/ui/widget/CompatibleViewPager;
areturn
.limit locals 1
.limit stack 1
.end method

.method protected initComponent()V
aload 0
invokespecial com/nd/android/u/news/ui/activity/base/NewsBaseActivity/initComponent()V
aload 0
invokevirtual com/nd/android/u/news/ui/activity/base/PhotoBaseActivity/initEvent()V
aload 0
aload 0
getstatic com/nd/android/u/news/R$id/layout_xy_header I
invokevirtual com/nd/android/u/news/ui/activity/base/PhotoBaseActivity/findViewById(I)Landroid/view/View;
putfield com/nd/android/u/news/ui/activity/base/PhotoBaseActivity/header Landroid/view/View;
aload 0
getfield com/nd/android/u/news/ui/activity/base/PhotoBaseActivity/header Landroid/view/View;
aconst_null
invokevirtual android/view/View/setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
aload 0
getfield com/nd/android/u/news/ui/activity/base/PhotoBaseActivity/mTvTitle Landroid/widget/TextView;
iconst_m1
invokevirtual android/widget/TextView/setTextColor(I)V
aload 0
getfield com/nd/android/u/news/ui/activity/base/PhotoBaseActivity/mIbRight Landroid/widget/ImageButton;
bipush 8
invokevirtual android/widget/ImageButton/setVisibility(I)V
aload 0
aload 0
getstatic com/nd/android/u/news/R$id/viewpager_news I
invokevirtual com/nd/android/u/news/ui/activity/base/PhotoBaseActivity/findViewById(I)Landroid/view/View;
checkcast com/common/android/ui/widget/CompatibleViewPager
putfield com/nd/android/u/news/ui/activity/base/PhotoBaseActivity/mViewPager Lcom/common/android/ui/widget/CompatibleViewPager;
aload 0
aload 0
getstatic com/nd/android/u/news/R$id/news_foot_view I
invokevirtual com/nd/android/u/news/ui/activity/base/PhotoBaseActivity/findViewById(I)Landroid/view/View;
checkcast com/nd/android/u/news/ui/view/NewsFootView
putfield com/nd/android/u/news/ui/activity/base/PhotoBaseActivity/mFootView Lcom/nd/android/u/news/ui/view/NewsFootView;
aload 0
aload 0
getstatic com/nd/android/u/news/R$id/content_layout I
invokevirtual com/nd/android/u/news/ui/activity/base/PhotoBaseActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/nd/android/u/news/ui/activity/base/PhotoBaseActivity/contentLayout Landroid/widget/RelativeLayout;
aload 0
aload 0
getstatic com/nd/android/u/news/R$id/tv_news_date I
invokevirtual com/nd/android/u/news/ui/activity/base/PhotoBaseActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/news/ui/activity/base/PhotoBaseActivity/tvDate Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/news/R$id/tv_news_content I
invokevirtual com/nd/android/u/news/ui/activity/base/PhotoBaseActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/news/ui/activity/base/PhotoBaseActivity/tvContent Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/news/ui/activity/base/PhotoBaseActivity/tvContent Landroid/widget/TextView;
invokestatic android/text/method/ScrollingMovementMethod/getInstance()Landroid/text/method/MovementMethod;
invokevirtual android/widget/TextView/setMovementMethod(Landroid/text/method/MovementMethod;)V
return
.limit locals 1
.limit stack 3
.end method

.method protected initPagerView()V
aload 0
invokevirtual com/nd/android/u/news/ui/activity/base/PhotoBaseActivity/executeTask()V
return
.limit locals 1
.limit stack 1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/nd/android/u/news/ui/activity/base/NewsBaseActivity/onCreate(Landroid/os/Bundle;)V
aload 0
iconst_1
invokevirtual com/nd/android/u/news/ui/activity/base/PhotoBaseActivity/requestWindowFeature(I)Z
pop
aload 0
getstatic com/nd/android/u/news/R$layout/newsphoto_main I
invokevirtual com/nd/android/u/news/ui/activity/base/PhotoBaseActivity/setContentView(I)V
aload 0
invokevirtual com/nd/android/u/news/ui/activity/base/PhotoBaseActivity/initComponent()V
aload 1
ifnonnull L0
aload 0
invokevirtual com/nd/android/u/news/ui/activity/base/PhotoBaseActivity/initPagerView()V
L0:
return
.limit locals 2
.limit stack 2
.end method

.method protected onDestroy()V
aload 0
invokespecial com/nd/android/u/news/ui/activity/base/NewsBaseActivity/onDestroy()V
aload 0
getfield com/nd/android/u/news/ui/activity/base/PhotoBaseActivity/mViewPager Lcom/common/android/ui/widget/CompatibleViewPager;
invokevirtual com/common/android/ui/widget/CompatibleViewPager/removeAllViews()V
aload 0
getfield com/nd/android/u/news/ui/activity/base/PhotoBaseActivity/mFootView Lcom/nd/android/u/news/ui/view/NewsFootView;
invokevirtual com/nd/android/u/news/ui/view/NewsFootView/cancelTask()V
return
.limit locals 1
.limit stack 1
.end method

.method public setContentVisibility()V
aload 0
getfield com/nd/android/u/news/ui/activity/base/PhotoBaseActivity/contentLayout Landroid/widget/RelativeLayout;
invokevirtual android/widget/RelativeLayout/getVisibility()I
iconst_4
if_icmpne L0
aload 0
getfield com/nd/android/u/news/ui/activity/base/PhotoBaseActivity/contentLayout Landroid/widget/RelativeLayout;
iconst_0
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
L1:
aload 0
getfield com/nd/android/u/news/ui/activity/base/PhotoBaseActivity/header Landroid/view/View;
invokevirtual android/view/View/getVisibility()I
iconst_4
if_icmpne L2
aload 0
getfield com/nd/android/u/news/ui/activity/base/PhotoBaseActivity/header Landroid/view/View;
iconst_0
invokevirtual android/view/View/setVisibility(I)V
return
L0:
aload 0
getfield com/nd/android/u/news/ui/activity/base/PhotoBaseActivity/contentLayout Landroid/widget/RelativeLayout;
iconst_4
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
goto L1
L2:
aload 0
getfield com/nd/android/u/news/ui/activity/base/PhotoBaseActivity/header Landroid/view/View;
iconst_4
invokevirtual android/view/View/setVisibility(I)V
return
.limit locals 1
.limit stack 2
.end method

.method public abstract setFootViewVisibility()V
.end method

.method public setNewsContent(Ljava/lang/String;II)V
new java/lang/StringBuffer
dup
invokespecial java/lang/StringBuffer/<init>()V
astore 4
aload 4
iload 2
invokevirtual java/lang/StringBuffer/append(I)Ljava/lang/StringBuffer;
pop
aload 4
ldc "/"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 4
iload 3
invokevirtual java/lang/StringBuffer/append(I)Ljava/lang/StringBuffer;
pop
aload 4
ldc "  "
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 4
aload 1
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
new android/text/SpannableStringBuilder
dup
aload 4
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
invokespecial android/text/SpannableStringBuilder/<init>(Ljava/lang/CharSequence;)V
astore 1
aload 1
new android/text/style/RelativeSizeSpan
dup
ldc_w 1.5F
invokespecial android/text/style/RelativeSizeSpan/<init>(F)V
iconst_0
aload 0
iload 2
invokespecial com/nd/android/u/news/ui/activity/base/PhotoBaseActivity/getTotalBigSpan(I)I
iconst_0
invokevirtual android/text/SpannableStringBuilder/setSpan(Ljava/lang/Object;III)V
aload 1
new android/text/style/ForegroundColorSpan
dup
aload 0
invokevirtual com/nd/android/u/news/ui/activity/base/PhotoBaseActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/news/R$color/orange_color I
invokevirtual android/content/res/Resources/getColor(I)I
invokespecial android/text/style/ForegroundColorSpan/<init>(I)V
iconst_0
aload 0
iload 2
iload 3
invokespecial com/nd/android/u/news/ui/activity/base/PhotoBaseActivity/getTotalColor(II)I
iconst_0
invokevirtual android/text/SpannableStringBuilder/setSpan(Ljava/lang/Object;III)V
aload 0
getfield com/nd/android/u/news/ui/activity/base/PhotoBaseActivity/tvContent Landroid/widget/TextView;
aload 1
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
.limit locals 5
.limit stack 6
.end method

.method public setNewsDate(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/news/ui/activity/base/PhotoBaseActivity/tvDate Landroid/widget/TextView;
aload 1
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
.limit locals 2
.limit stack 2
.end method

.method protected setTailGone()V
aload 0
getfield com/nd/android/u/news/ui/activity/base/PhotoBaseActivity/mFootView Lcom/nd/android/u/news/ui/view/NewsFootView;
iconst_4
invokevirtual com/nd/android/u/news/ui/view/NewsFootView/setVisibility(I)V
return
.limit locals 1
.limit stack 2
.end method

.method protected setViewPager(Ljava/lang/String;)V
aload 0
new com/nd/android/u/news/ui/adapter/NewsViewPagerAdapter
dup
aload 1
aload 0
invokespecial com/nd/android/u/news/ui/adapter/NewsViewPagerAdapter/<init>(Ljava/lang/String;Landroid/content/Context;)V
putfield com/nd/android/u/news/ui/activity/base/PhotoBaseActivity/adapter Lcom/nd/android/u/news/ui/adapter/NewsViewPagerAdapter;
aload 0
getfield com/nd/android/u/news/ui/activity/base/PhotoBaseActivity/adapter Lcom/nd/android/u/news/ui/adapter/NewsViewPagerAdapter;
aload 0
getfield com/nd/android/u/news/ui/activity/base/PhotoBaseActivity/urlList Ljava/util/ArrayList;
invokevirtual com/nd/android/u/news/ui/adapter/NewsViewPagerAdapter/setUrlList(Ljava/util/List;)V
aload 0
invokevirtual com/nd/android/u/news/ui/activity/base/PhotoBaseActivity/getmViewPager()Lcom/common/android/ui/widget/CompatibleViewPager;
aload 0
getfield com/nd/android/u/news/ui/activity/base/PhotoBaseActivity/adapter Lcom/nd/android/u/news/ui/adapter/NewsViewPagerAdapter;
invokevirtual com/common/android/ui/widget/CompatibleViewPager/setAdapter(Landroid/support/v4/view/PagerAdapter;)V
aload 0
invokevirtual com/nd/android/u/news/ui/activity/base/PhotoBaseActivity/getmViewPager()Lcom/common/android/ui/widget/CompatibleViewPager;
aload 0
getfield com/nd/android/u/news/ui/activity/base/PhotoBaseActivity/picIndex I
invokevirtual com/common/android/ui/widget/CompatibleViewPager/setCurrentItem(I)V
aload 0
new com/nd/android/u/news/ui/listen/NewsPageChangeListener
dup
invokespecial com/nd/android/u/news/ui/listen/NewsPageChangeListener/<init>()V
putfield com/nd/android/u/news/ui/activity/base/PhotoBaseActivity/mPageListener Lcom/nd/android/u/news/ui/listen/NewsPageChangeListener;
aload 0
invokevirtual com/nd/android/u/news/ui/activity/base/PhotoBaseActivity/getmViewPager()Lcom/common/android/ui/widget/CompatibleViewPager;
aload 0
getfield com/nd/android/u/news/ui/activity/base/PhotoBaseActivity/mPageListener Lcom/nd/android/u/news/ui/listen/NewsPageChangeListener;
invokevirtual com/common/android/ui/widget/CompatibleViewPager/setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
aload 0
getfield com/nd/android/u/news/ui/activity/base/PhotoBaseActivity/mPageListener Lcom/nd/android/u/news/ui/listen/NewsPageChangeListener;
aload 0
invokevirtual com/nd/android/u/news/ui/listen/NewsPageChangeListener/setContentListener(Lcom/nd/android/u/news/ui/listen/SetContentListener;)V
return
.limit locals 2
.limit stack 5
.end method

.method public setmViewPager(Lcom/common/android/ui/widget/CompatibleViewPager;)V
aload 0
aload 1
putfield com/nd/android/u/news/ui/activity/base/PhotoBaseActivity/mViewPager Lcom/common/android/ui/widget/CompatibleViewPager;
return
.limit locals 2
.limit stack 2
.end method
