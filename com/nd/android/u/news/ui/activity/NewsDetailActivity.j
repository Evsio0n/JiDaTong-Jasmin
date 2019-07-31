.bytecode 50.0
.class public synchronized com/nd/android/u/news/ui/activity/NewsDetailActivity
.super com/nd/android/u/news/ui/activity/base/NewsBaseActivity
.implements android/view/View$OnClickListener
.implements com/nd/android/u/news/ui/view/NewsFootView$OnZanActionListener
.implements com/nd/android/u/news/ui/view/PraiseCommentsView$OnCommentListener
.inner class inner com/nd/android/u/news/ui/activity/NewsDetailActivity$1
.inner class inner com/nd/android/u/news/ui/activity/NewsDetailActivity$2
.inner class inner com/nd/android/u/news/ui/activity/NewsDetailActivity$3
.inner class inner com/nd/android/u/news/ui/activity/NewsDetailActivity$4
.inner class inner com/nd/android/u/news/ui/activity/NewsDetailActivity$5
.inner class private GetNewsDetailTask inner com/nd/android/u/news/ui/activity/NewsDetailActivity$GetNewsDetailTask outer com/nd/android/u/news/ui/activity/NewsDetailActivity
.inner class inner com/nd/android/u/news/ui/activity/NewsDetailActivity$GetNewsDetailTask$1

.field private static final 'IMAGEURL_PATTERN' Ljava/util/regex/Pattern;

.field private final 'KEY_SAVE_MORE_DATA' Ljava/lang/String;

.field private 'NEWS_TIME_FORMATTER' Ljava/text/DateFormat;
.annotation invisible Landroid/annotation/SuppressLint;
value [s = "SimpleDateFormat" 
.end annotation
.end field

.field private 'currentIndex' I

.field private 'hasMoreData' Z

.field private 'llDetail' Landroid/widget/LinearLayout;

.field private 'mGetNewsDetailTask' Lcom/nd/android/u/news/ui/activity/NewsDetailActivity$GetNewsDetailTask;

.field private 'mImageUrlList' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Ljava/lang/String;>;"

.field private 'mIvLoadingAgain' Landroid/widget/ImageView;

.field private 'mPbLoading' Landroid/widget/ProgressBar;

.field private 'mTvLoadingAgain' Landroid/widget/TextView;

.field private 'mViewBottonLine' Landroid/view/View;

.field protected 'maxTime' J

.field private 'mllLoading' Landroid/widget/LinearLayout;

.field protected 'newsList' Ljava/util/List; signature "Ljava/util/List<Lcom/nd/android/forumsdk/business/bean/result/NewsInfoBean;>;"

.field private 'newsMoreView' Lcom/nd/android/u/news/ui/view/NewsFootView;

.field private 'praiseCmtView' Lcom/nd/android/u/news/ui/view/PraiseCommentsView;

.field private 'tvNextNewsTitle' Lcom/common/android/ui/widget/NewsSummaryTextView;

.field private 'tvPreNewsTitle' Lcom/common/android/ui/widget/NewsSummaryTextView;

.field private 'vNextNews' Landroid/view/View;

.field private 'vPreNews' Landroid/view/View;

.field private 'vYulan' Landroid/view/View;

.field private 'wvNewsDetail' Landroid/webkit/WebView;

.method static <clinit>()V
ldc "<img\\s*src\\s*=\\s*['\"]([^'\"]+)['\"][^>]*>"
bipush 10
invokestatic java/util/regex/Pattern/compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;
putstatic com/nd/android/u/news/ui/activity/NewsDetailActivity/IMAGEURL_PATTERN Ljava/util/regex/Pattern;
return
.limit locals 0
.limit stack 2
.end method

.method public <init>()V
aload 0
invokespecial com/nd/android/u/news/ui/activity/base/NewsBaseActivity/<init>()V
aload 0
new java/text/SimpleDateFormat
dup
ldc "yyyy.MM.dd"
invokespecial java/text/SimpleDateFormat/<init>(Ljava/lang/String;)V
putfield com/nd/android/u/news/ui/activity/NewsDetailActivity/NEWS_TIME_FORMATTER Ljava/text/DateFormat;
aload 0
iconst_0
putfield com/nd/android/u/news/ui/activity/NewsDetailActivity/currentIndex I
aload 0
lconst_0
putfield com/nd/android/u/news/ui/activity/NewsDetailActivity/maxTime J
aload 0
iconst_1
putfield com/nd/android/u/news/ui/activity/NewsDetailActivity/hasMoreData Z
aload 0
ldc "hasMoreData"
putfield com/nd/android/u/news/ui/activity/NewsDetailActivity/KEY_SAVE_MORE_DATA Ljava/lang/String;
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/news/ui/activity/NewsDetailActivity/mImageUrlList Ljava/util/ArrayList;
return
.limit locals 1
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/android/u/news/ui/activity/NewsDetailActivity;)Landroid/webkit/WebView;
aload 0
getfield com/nd/android/u/news/ui/activity/NewsDetailActivity/wvNewsDetail Landroid/webkit/WebView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/android/u/news/ui/activity/NewsDetailActivity;)V
aload 0
invokespecial com/nd/android/u/news/ui/activity/NewsDetailActivity/loadImages()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/nd/android/u/news/ui/activity/NewsDetailActivity;)Ljava/util/ArrayList;
aload 0
getfield com/nd/android/u/news/ui/activity/NewsDetailActivity/mImageUrlList Ljava/util/ArrayList;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$400(Lcom/nd/android/u/news/ui/activity/NewsDetailActivity;)J
aload 0
invokespecial com/nd/android/u/news/ui/activity/NewsDetailActivity/getCurNewsId()J
lreturn
.limit locals 1
.limit stack 2
.end method

.method static synthetic access$500(Lcom/nd/android/u/news/ui/activity/NewsDetailActivity;)I
aload 0
getfield com/nd/android/u/news/ui/activity/NewsDetailActivity/currentIndex I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$600(Lcom/nd/android/u/news/ui/activity/NewsDetailActivity;)Lcom/nd/android/u/news/ui/view/NewsFootView;
aload 0
getfield com/nd/android/u/news/ui/activity/NewsDetailActivity/newsMoreView Lcom/nd/android/u/news/ui/view/NewsFootView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$702(Lcom/nd/android/u/news/ui/activity/NewsDetailActivity;Z)Z
aload 0
iload 1
putfield com/nd/android/u/news/ui/activity/NewsDetailActivity/hasMoreData Z
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$800(Lcom/nd/android/u/news/ui/activity/NewsDetailActivity;Lcom/nd/android/forumsdk/business/bean/result/NewsInfoBean;)V
aload 0
aload 1
invokespecial com/nd/android/u/news/ui/activity/NewsDetailActivity/afterGetNewsDetail(Lcom/nd/android/forumsdk/business/bean/result/NewsInfoBean;)V
return
.limit locals 2
.limit stack 2
.end method

.method private afterGetNewsDetail(Lcom/nd/android/forumsdk/business/bean/result/NewsInfoBean;)V
aload 1
ifnull L0
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/NewsInfoBean/isSuccess()Z
ifeq L0
aload 1
aload 0
getfield com/nd/android/u/news/ui/activity/NewsDetailActivity/newsList Ljava/util/List;
aload 0
getfield com/nd/android/u/news/ui/activity/NewsDetailActivity/currentIndex I
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/forumsdk/business/bean/result/NewsInfoBean
invokevirtual com/nd/android/forumsdk/business/bean/result/NewsInfoBean/getObj()Ljava/lang/Object;
checkcast java/lang/Boolean
invokevirtual com/nd/android/forumsdk/business/bean/result/NewsInfoBean/setObj(Ljava/lang/Object;)V
aload 0
getfield com/nd/android/u/news/ui/activity/NewsDetailActivity/newsList Ljava/util/List;
aload 0
getfield com/nd/android/u/news/ui/activity/NewsDetailActivity/currentIndex I
aload 1
invokeinterface java/util/List/set(ILjava/lang/Object;)Ljava/lang/Object; 2
pop
aload 0
invokespecial com/nd/android/u/news/ui/activity/NewsDetailActivity/setComponentValue()V
aload 0
getfield com/nd/android/u/news/ui/activity/NewsDetailActivity/mllLoading Landroid/widget/LinearLayout;
bipush 8
invokevirtual android/widget/LinearLayout/setVisibility(I)V
aload 0
getfield com/nd/android/u/news/ui/activity/NewsDetailActivity/praiseCmtView Lcom/nd/android/u/news/ui/view/PraiseCommentsView;
iconst_0
invokevirtual com/nd/android/u/news/ui/view/PraiseCommentsView/setVisibility(I)V
return
L0:
aload 0
getfield com/nd/android/u/news/ui/activity/NewsDetailActivity/mPbLoading Landroid/widget/ProgressBar;
bipush 8
invokevirtual android/widget/ProgressBar/setVisibility(I)V
aload 0
getfield com/nd/android/u/news/ui/activity/NewsDetailActivity/mIvLoadingAgain Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getfield com/nd/android/u/news/ui/activity/NewsDetailActivity/praiseCmtView Lcom/nd/android/u/news/ui/view/PraiseCommentsView;
bipush 8
invokevirtual com/nd/android/u/news/ui/view/PraiseCommentsView/setVisibility(I)V
aload 0
invokestatic com/common/android/utils/NetWorkUtils/JudgeNetWorkStatus(Landroid/content/Context;)Z
ifne L1
aload 0
getfield com/nd/android/u/news/ui/activity/NewsDetailActivity/mTvLoadingAgain Landroid/widget/TextView;
getstatic com/nd/android/u/news/R$string/network_error_to_set_network I
invokevirtual android/widget/TextView/setText(I)V
return
L1:
aload 0
getfield com/nd/android/u/news/ui/activity/NewsDetailActivity/mTvLoadingAgain Landroid/widget/TextView;
getstatic com/nd/android/u/news/R$string/str_loading_again I
invokevirtual android/widget/TextView/setText(I)V
return
.limit locals 2
.limit stack 3
.end method

.method private checkDataIsValid(I)Z
aload 0
getfield com/nd/android/u/news/ui/activity/NewsDetailActivity/newsList Ljava/util/List;
ifnull L0
aload 0
getfield com/nd/android/u/news/ui/activity/NewsDetailActivity/newsList Ljava/util/List;
invokeinterface java/util/List/size()I 0
iload 1
if_icmple L0
iload 1
iflt L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 2
.limit stack 2
.end method

.method private createWebView()Landroid/webkit/WebView;
.annotation invisible Landroid/annotation/SuppressLint;
value [s = "SetJavaScriptEnabled" 
.end annotation
aload 0
new android/webkit/WebView
dup
aload 0
invokespecial android/webkit/WebView/<init>(Landroid/content/Context;)V
putfield com/nd/android/u/news/ui/activity/NewsDetailActivity/wvNewsDetail Landroid/webkit/WebView;
aload 0
getfield com/nd/android/u/news/ui/activity/NewsDetailActivity/wvNewsDetail Landroid/webkit/WebView;
new android/widget/LinearLayout$LayoutParams
dup
iconst_m1
iconst_m1
invokespecial android/widget/LinearLayout$LayoutParams/<init>(II)V
invokevirtual android/webkit/WebView/setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
aload 0
getfield com/nd/android/u/news/ui/activity/NewsDetailActivity/wvNewsDetail Landroid/webkit/WebView;
invokevirtual android/webkit/WebView/getSettings()Landroid/webkit/WebSettings;
iconst_1
invokevirtual android/webkit/WebSettings/setJavaScriptEnabled(Z)V
aload 0
getfield com/nd/android/u/news/ui/activity/NewsDetailActivity/wvNewsDetail Landroid/webkit/WebView;
aload 0
ldc "news"
invokevirtual android/webkit/WebView/addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/news/ui/activity/NewsDetailActivity/wvNewsDetail Landroid/webkit/WebView;
new com/nd/android/u/news/ui/activity/NewsDetailActivity$3
dup
aload 0
invokespecial com/nd/android/u/news/ui/activity/NewsDetailActivity$3/<init>(Lcom/nd/android/u/news/ui/activity/NewsDetailActivity;)V
invokevirtual android/webkit/WebView/setWebViewClient(Landroid/webkit/WebViewClient;)V
aload 0
getfield com/nd/android/u/news/ui/activity/NewsDetailActivity/wvNewsDetail Landroid/webkit/WebView;
ldc "file:///android_asset/news_template.html"
invokevirtual android/webkit/WebView/loadUrl(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/news/ui/activity/NewsDetailActivity/wvNewsDetail Landroid/webkit/WebView;
areturn
.limit locals 1
.limit stack 5
.end method

.method private getCurNewsId()J
aload 0
aload 0
getfield com/nd/android/u/news/ui/activity/NewsDetailActivity/currentIndex I
invokespecial com/nd/android/u/news/ui/activity/NewsDetailActivity/checkDataIsValid(I)Z
ifeq L0
aload 0
getfield com/nd/android/u/news/ui/activity/NewsDetailActivity/newsList Ljava/util/List;
aload 0
getfield com/nd/android/u/news/ui/activity/NewsDetailActivity/currentIndex I
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/forumsdk/business/bean/result/NewsInfoBean
invokevirtual com/nd/android/forumsdk/business/bean/result/NewsInfoBean/getPostId()J
lreturn
L0:
lconst_0
lreturn
.limit locals 1
.limit stack 2
.end method

.method private getNextNewsTitle(I)Ljava/lang/String;
iload 1
iconst_1
iadd
istore 1
aload 0
iload 1
invokespecial com/nd/android/u/news/ui/activity/NewsDetailActivity/checkDataIsValid(I)Z
ifeq L0
aload 0
getfield com/nd/android/u/news/ui/activity/NewsDetailActivity/newsList Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/forumsdk/business/bean/result/NewsInfoBean
invokevirtual com/nd/android/forumsdk/business/bean/result/NewsInfoBean/getTitle()Ljava/lang/String;
areturn
L0:
ldc ""
areturn
.limit locals 2
.limit stack 2
.end method

.method private getPreNewsTitle(I)Ljava/lang/String;
iload 1
iconst_1
isub
istore 1
aload 0
iload 1
invokespecial com/nd/android/u/news/ui/activity/NewsDetailActivity/checkDataIsValid(I)Z
ifeq L0
aload 0
getfield com/nd/android/u/news/ui/activity/NewsDetailActivity/newsList Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/forumsdk/business/bean/result/NewsInfoBean
invokevirtual com/nd/android/forumsdk/business/bean/result/NewsInfoBean/getTitle()Ljava/lang/String;
areturn
L0:
ldc ""
areturn
.limit locals 2
.limit stack 2
.end method

.method private isLoadingDetail()Z
aload 0
getfield com/nd/android/u/news/ui/activity/NewsDetailActivity/mGetNewsDetailTask Lcom/nd/android/u/news/ui/activity/NewsDetailActivity$GetNewsDetailTask;
ifnull L0
aload 0
getfield com/nd/android/u/news/ui/activity/NewsDetailActivity/mGetNewsDetailTask Lcom/nd/android/u/news/ui/activity/NewsDetailActivity$GetNewsDetailTask;
invokevirtual com/nd/android/u/news/ui/activity/NewsDetailActivity$GetNewsDetailTask/getStatus()Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status;
getstatic com/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status/RUNNING Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status;
if_acmpne L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 2
.end method

.method private loadImages()V
aload 0
getfield com/nd/android/u/news/ui/activity/NewsDetailActivity/mImageUrlList Ljava/util/ArrayList;
ifnull L0
aload 0
getfield com/nd/android/u/news/ui/activity/NewsDetailActivity/mImageUrlList Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
ifle L0
iconst_0
istore 1
L1:
iload 1
aload 0
getfield com/nd/android/u/news/ui/activity/NewsDetailActivity/mImageUrlList Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
if_icmpge L0
aload 0
getfield com/nd/android/u/news/ui/activity/NewsDetailActivity/mImageUrlList Ljava/util/ArrayList;
iload 1
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast java/lang/String
astore 2
invokestatic com/nostra13/universalimageloader/core/ImageLoader/getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;
aload 2
aload 0
invokestatic com/nd/android/u/news/NewsGlobalSetting/getNewsNoCacheOpt(Landroid/content/Context;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
new com/nd/android/u/news/ui/activity/NewsDetailActivity$4
dup
aload 0
aload 2
iload 1
invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
invokespecial com/nd/android/u/news/ui/activity/NewsDetailActivity$4/<init>(Lcom/nd/android/u/news/ui/activity/NewsDetailActivity;Ljava/lang/String;Ljava/lang/String;)V
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/loadImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V
iload 1
iconst_1
iadd
istore 1
goto L1
L0:
return
.limit locals 3
.limit stack 8
.end method

.method private setComponentValue()V
aload 0
getfield com/nd/android/u/news/ui/activity/NewsDetailActivity/newsMoreView Lcom/nd/android/u/news/ui/view/NewsFootView;
ldc "news"
aload 0
invokespecial com/nd/android/u/news/ui/activity/NewsDetailActivity/getCurNewsId()J
aload 0
getfield com/nd/android/u/news/ui/activity/NewsDetailActivity/newsList Ljava/util/List;
aload 0
getfield com/nd/android/u/news/ui/activity/NewsDetailActivity/currentIndex I
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/forumsdk/business/bean/result/NewsInfoBean
invokevirtual com/nd/android/u/news/ui/view/NewsFootView/setNewsId(Ljava/lang/String;JLcom/nd/android/forumsdk/business/bean/result/NewsInfoBean;)V
aload 0
getfield com/nd/android/u/news/ui/activity/NewsDetailActivity/praiseCmtView Lcom/nd/android/u/news/ui/view/PraiseCommentsView;
aload 0
invokespecial com/nd/android/u/news/ui/activity/NewsDetailActivity/getCurNewsId()J
invokevirtual com/nd/android/u/news/ui/view/PraiseCommentsView/initData(J)V
aload 0
getfield com/nd/android/u/news/ui/activity/NewsDetailActivity/tvPreNewsTitle Lcom/common/android/ui/widget/NewsSummaryTextView;
aload 0
aload 0
getfield com/nd/android/u/news/ui/activity/NewsDetailActivity/currentIndex I
invokespecial com/nd/android/u/news/ui/activity/NewsDetailActivity/getPreNewsTitle(I)Ljava/lang/String;
invokevirtual com/common/android/ui/widget/NewsSummaryTextView/setText(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/news/ui/activity/NewsDetailActivity/tvNextNewsTitle Lcom/common/android/ui/widget/NewsSummaryTextView;
aload 0
aload 0
getfield com/nd/android/u/news/ui/activity/NewsDetailActivity/currentIndex I
invokespecial com/nd/android/u/news/ui/activity/NewsDetailActivity/getNextNewsTitle(I)Ljava/lang/String;
invokevirtual com/common/android/ui/widget/NewsSummaryTextView/setText(Ljava/lang/String;)V
iconst_0
istore 1
aload 0
getfield com/nd/android/u/news/ui/activity/NewsDetailActivity/currentIndex I
ifne L0
aload 0
getfield com/nd/android/u/news/ui/activity/NewsDetailActivity/vPreNews Landroid/view/View;
iconst_4
invokevirtual android/view/View/setVisibility(I)V
iconst_0
iconst_1
iadd
istore 1
L1:
aload 0
getfield com/nd/android/u/news/ui/activity/NewsDetailActivity/currentIndex I
aload 0
getfield com/nd/android/u/news/ui/activity/NewsDetailActivity/newsList Ljava/util/List;
invokeinterface java/util/List/size()I 0
iconst_1
isub
if_icmpne L2
aload 0
getfield com/nd/android/u/news/ui/activity/NewsDetailActivity/vNextNews Landroid/view/View;
iconst_4
invokevirtual android/view/View/setVisibility(I)V
iload 1
iconst_1
iadd
istore 1
L3:
iload 1
iconst_2
if_icmpne L4
aload 0
getfield com/nd/android/u/news/ui/activity/NewsDetailActivity/vYulan Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
aload 0
getfield com/nd/android/u/news/ui/activity/NewsDetailActivity/mViewBottonLine Landroid/view/View;
invokevirtual android/view/View/getVisibility()I
bipush 8
if_icmpeq L5
aload 0
getfield com/nd/android/u/news/ui/activity/NewsDetailActivity/mViewBottonLine Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
L5:
aload 0
getfield com/nd/android/u/news/ui/activity/NewsDetailActivity/llDetail Landroid/widget/LinearLayout;
iconst_0
invokevirtual android/widget/LinearLayout/getChildAt(I)Landroid/view/View;
instanceof android/webkit/WebView
ifeq L6
aload 0
getfield com/nd/android/u/news/ui/activity/NewsDetailActivity/llDetail Landroid/widget/LinearLayout;
iconst_0
invokevirtual android/widget/LinearLayout/removeViewAt(I)V
L6:
aload 0
getfield com/nd/android/u/news/ui/activity/NewsDetailActivity/llDetail Landroid/widget/LinearLayout;
aload 0
invokespecial com/nd/android/u/news/ui/activity/NewsDetailActivity/createWebView()Landroid/webkit/WebView;
iconst_0
new android/widget/LinearLayout$LayoutParams
dup
iconst_m1
iconst_m1
invokespecial android/widget/LinearLayout$LayoutParams/<init>(II)V
invokevirtual android/widget/LinearLayout/addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
return
L0:
aload 0
getfield com/nd/android/u/news/ui/activity/NewsDetailActivity/vPreNews Landroid/view/View;
iconst_0
invokevirtual android/view/View/setVisibility(I)V
goto L1
L2:
aload 0
getfield com/nd/android/u/news/ui/activity/NewsDetailActivity/vNextNews Landroid/view/View;
iconst_0
invokevirtual android/view/View/setVisibility(I)V
goto L3
L4:
aload 0
getfield com/nd/android/u/news/ui/activity/NewsDetailActivity/vYulan Landroid/view/View;
iconst_0
invokevirtual android/view/View/setVisibility(I)V
aload 0
getfield com/nd/android/u/news/ui/activity/NewsDetailActivity/mViewBottonLine Landroid/view/View;
invokevirtual android/view/View/getVisibility()I
ifeq L5
aload 0
getfield com/nd/android/u/news/ui/activity/NewsDetailActivity/mViewBottonLine Landroid/view/View;
iconst_0
invokevirtual android/view/View/setVisibility(I)V
goto L5
.limit locals 2
.limit stack 7
.end method

.method private setReadFlag(Lcom/nd/android/forumsdk/business/bean/result/NewsInfoBean;)V
iconst_0
istore 2
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/NewsInfoBean/getObj()Ljava/lang/Object;
ifnull L0
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/NewsInfoBean/getObj()Ljava/lang/Object;
checkcast java/lang/Boolean
invokevirtual java/lang/Boolean/booleanValue()Z
istore 2
L0:
iload 2
ifne L1
getstatic com/nd/android/u/news/controller/NewsManager/INSTANCE Lcom/nd/android/u/news/controller/NewsManager;
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/NewsInfoBean/getPostId()J
invokevirtual com/nd/android/u/news/controller/NewsManager/setReadFlagToDb(J)V
aload 1
iconst_1
invokestatic java/lang/Boolean/valueOf(Z)Ljava/lang/Boolean;
invokevirtual com/nd/android/forumsdk/business/bean/result/NewsInfoBean/setObj(Ljava/lang/Object;)V
L1:
return
.limit locals 3
.limit stack 3
.end method

.method private startLoadingDetail(Z)V
aload 0
getfield com/nd/android/u/news/ui/activity/NewsDetailActivity/mllLoading Landroid/widget/LinearLayout;
iconst_0
invokevirtual android/widget/LinearLayout/setVisibility(I)V
aload 0
getfield com/nd/android/u/news/ui/activity/NewsDetailActivity/mIvLoadingAgain Landroid/widget/ImageView;
bipush 8
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getfield com/nd/android/u/news/ui/activity/NewsDetailActivity/mPbLoading Landroid/widget/ProgressBar;
iconst_0
invokevirtual android/widget/ProgressBar/setVisibility(I)V
aload 0
getfield com/nd/android/u/news/ui/activity/NewsDetailActivity/mTvLoadingAgain Landroid/widget/TextView;
getstatic com/nd/android/u/news/R$string/loading I
invokevirtual android/widget/TextView/setText(I)V
aload 0
getfield com/nd/android/u/news/ui/activity/NewsDetailActivity/praiseCmtView Lcom/nd/android/u/news/ui/view/PraiseCommentsView;
bipush 8
invokevirtual com/nd/android/u/news/ui/view/PraiseCommentsView/setVisibility(I)V
aload 0
new com/nd/android/u/news/ui/activity/NewsDetailActivity$GetNewsDetailTask
dup
aload 0
aconst_null
invokespecial com/nd/android/u/news/ui/activity/NewsDetailActivity$GetNewsDetailTask/<init>(Lcom/nd/android/u/news/ui/activity/NewsDetailActivity;Lcom/nd/android/u/news/ui/activity/NewsDetailActivity$1;)V
putfield com/nd/android/u/news/ui/activity/NewsDetailActivity/mGetNewsDetailTask Lcom/nd/android/u/news/ui/activity/NewsDetailActivity$GetNewsDetailTask;
aload 0
getfield com/nd/android/u/news/ui/activity/NewsDetailActivity/mGetNewsDetailTask Lcom/nd/android/u/news/ui/activity/NewsDetailActivity$GetNewsDetailTask;
iload 1
putfield com/nd/android/u/news/ui/activity/NewsDetailActivity$GetNewsDetailTask/bNeedGetMore Z
aload 0
getfield com/nd/android/u/news/ui/activity/NewsDetailActivity/mGetNewsDetailTask Lcom/nd/android/u/news/ui/activity/NewsDetailActivity$GetNewsDetailTask;
iconst_0
anewarray java/lang/Void
invokevirtual com/nd/android/u/news/ui/activity/NewsDetailActivity$GetNewsDetailTask/execute([Ljava/lang/Object;)Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;
pop
return
.limit locals 2
.limit stack 5
.end method

.method private toClickNews(Z)V
aload 0
aload 0
getfield com/nd/android/u/news/ui/activity/NewsDetailActivity/currentIndex I
invokespecial com/nd/android/u/news/ui/activity/NewsDetailActivity/checkDataIsValid(I)Z
ifne L0
return
L0:
aload 0
getfield com/nd/android/u/news/ui/activity/NewsDetailActivity/newsList Ljava/util/List;
aload 0
getfield com/nd/android/u/news/ui/activity/NewsDetailActivity/currentIndex I
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/forumsdk/business/bean/result/NewsInfoBean
astore 2
aload 0
aload 2
invokespecial com/nd/android/u/news/ui/activity/NewsDetailActivity/setReadFlag(Lcom/nd/android/forumsdk/business/bean/result/NewsInfoBean;)V
ldc "gallery"
aload 2
invokevirtual com/nd/android/forumsdk/business/bean/result/NewsInfoBean/getPostType()Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L1
new android/content/Intent
dup
aload 0
ldc com/nd/android/u/news/ui/activity/NewsWithPhotoActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 2
aload 2
ldc "news_id"
aload 0
invokespecial com/nd/android/u/news/ui/activity/NewsDetailActivity/getCurNewsId()J
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;J)Landroid/content/Intent;
pop
aload 0
aload 2
invokevirtual com/nd/android/u/news/ui/activity/NewsDetailActivity/startActivity(Landroid/content/Intent;)V
aload 0
invokevirtual com/nd/android/u/news/ui/activity/NewsDetailActivity/finish()V
return
L1:
aload 2
invokevirtual com/nd/android/forumsdk/business/bean/result/NewsInfoBean/getContent()Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L2
aload 0
iload 1
invokespecial com/nd/android/u/news/ui/activity/NewsDetailActivity/startLoadingDetail(Z)V
return
L2:
aload 0
invokespecial com/nd/android/u/news/ui/activity/NewsDetailActivity/setComponentValue()V
return
.limit locals 3
.limit stack 4
.end method

.method public cancelZan()V
aload 0
getfield com/nd/android/u/news/ui/activity/NewsDetailActivity/praiseCmtView Lcom/nd/android/u/news/ui/view/PraiseCommentsView;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokevirtual com/nd/android/u/news/ui/view/PraiseCommentsView/cancelPraise(J)V
return
.limit locals 1
.limit stack 3
.end method

.method public clickImage(Ljava/lang/String;)V
.annotation visible Landroid/webkit/JavascriptInterface;
.end annotation
.catch java/lang/Exception from L0 to L1 using L2
aload 0
aload 0
getfield com/nd/android/u/news/ui/activity/NewsDetailActivity/currentIndex I
invokespecial com/nd/android/u/news/ui/activity/NewsDetailActivity/checkDataIsValid(I)Z
ifne L0
return
L0:
aload 0
new com/nd/android/u/news/ui/activity/NewsDetailActivity$5
dup
aload 0
aload 1
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
invokespecial com/nd/android/u/news/ui/activity/NewsDetailActivity$5/<init>(Lcom/nd/android/u/news/ui/activity/NewsDetailActivity;I)V
invokevirtual com/nd/android/u/news/ui/activity/NewsDetailActivity/runOnUiThread(Ljava/lang/Runnable;)V
L1:
return
L2:
astore 1
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
return
.limit locals 2
.limit stack 5
.end method

.method public getBody()Ljava/lang/String;
.annotation visible Landroid/webkit/JavascriptInterface;
.end annotation
aload 0
aload 0
getfield com/nd/android/u/news/ui/activity/NewsDetailActivity/currentIndex I
invokespecial com/nd/android/u/news/ui/activity/NewsDetailActivity/checkDataIsValid(I)Z
ifeq L0
aload 0
aload 0
getfield com/nd/android/u/news/ui/activity/NewsDetailActivity/newsList Ljava/util/List;
aload 0
getfield com/nd/android/u/news/ui/activity/NewsDetailActivity/currentIndex I
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/forumsdk/business/bean/result/NewsInfoBean
invokevirtual com/nd/android/forumsdk/business/bean/result/NewsInfoBean/getContent()Ljava/lang/String;
invokevirtual com/nd/android/u/news/ui/activity/NewsDetailActivity/replaceImageUrl(Ljava/lang/String;)Ljava/lang/String;
areturn
L0:
ldc ""
areturn
.limit locals 1
.limit stack 3
.end method

.method public getInitCount()I
bipush 10
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getMoreCount()I
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method protected getMoreNews()Lcom/nd/android/forumsdk/business/bean/result/ResultNewsList;
getstatic com/nd/android/u/news/controller/NewsManager/INSTANCE Lcom/nd/android/u/news/controller/NewsManager;
aload 0
getfield com/nd/android/u/news/ui/activity/NewsDetailActivity/maxTime J
bipush 10
invokevirtual com/nd/android/u/news/controller/NewsManager/getMoreNewsHomePage(JI)Lcom/nd/android/forumsdk/business/bean/result/ResultNewsList;
areturn
.limit locals 1
.limit stack 4
.end method

.method public getNewsTitle()Ljava/lang/String;
.annotation visible Landroid/webkit/JavascriptInterface;
.end annotation
aload 0
aload 0
getfield com/nd/android/u/news/ui/activity/NewsDetailActivity/currentIndex I
invokespecial com/nd/android/u/news/ui/activity/NewsDetailActivity/checkDataIsValid(I)Z
ifeq L0
aload 0
getfield com/nd/android/u/news/ui/activity/NewsDetailActivity/newsList Ljava/util/List;
aload 0
getfield com/nd/android/u/news/ui/activity/NewsDetailActivity/currentIndex I
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/forumsdk/business/bean/result/NewsInfoBean
invokevirtual com/nd/android/forumsdk/business/bean/result/NewsInfoBean/getTitle()Ljava/lang/String;
areturn
L0:
ldc ""
areturn
.limit locals 1
.limit stack 2
.end method

.method public getSource()Ljava/lang/String;
.annotation visible Landroid/webkit/JavascriptInterface;
.end annotation
aload 0
aload 0
getfield com/nd/android/u/news/ui/activity/NewsDetailActivity/currentIndex I
invokespecial com/nd/android/u/news/ui/activity/NewsDetailActivity/checkDataIsValid(I)Z
ifeq L0
aload 0
getfield com/nd/android/u/news/ui/activity/NewsDetailActivity/newsList Ljava/util/List;
aload 0
getfield com/nd/android/u/news/ui/activity/NewsDetailActivity/currentIndex I
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/forumsdk/business/bean/result/NewsInfoBean
invokevirtual com/nd/android/forumsdk/business/bean/result/NewsInfoBean/getSource()Ljava/lang/String;
areturn
L0:
ldc ""
areturn
.limit locals 1
.limit stack 2
.end method

.method public getTime()Ljava/lang/String;
.annotation visible Landroid/webkit/JavascriptInterface;
.end annotation
aload 0
aload 0
getfield com/nd/android/u/news/ui/activity/NewsDetailActivity/currentIndex I
invokespecial com/nd/android/u/news/ui/activity/NewsDetailActivity/checkDataIsValid(I)Z
ifeq L0
aload 0
getfield com/nd/android/u/news/ui/activity/NewsDetailActivity/NEWS_TIME_FORMATTER Ljava/text/DateFormat;
new java/util/Date
dup
aload 0
getfield com/nd/android/u/news/ui/activity/NewsDetailActivity/newsList Ljava/util/List;
aload 0
getfield com/nd/android/u/news/ui/activity/NewsDetailActivity/currentIndex I
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/forumsdk/business/bean/result/NewsInfoBean
invokevirtual com/nd/android/forumsdk/business/bean/result/NewsInfoBean/getPostTime()J
invokespecial java/util/Date/<init>(J)V
invokevirtual java/text/DateFormat/format(Ljava/util/Date;)Ljava/lang/String;
areturn
L0:
ldc ""
areturn
.limit locals 1
.limit stack 5
.end method

.method protected initComponent()V
aload 0
invokespecial com/nd/android/u/news/ui/activity/base/NewsBaseActivity/initComponent()V
aload 0
aload 0
getstatic com/nd/android/u/news/R$id/llLoadingDetail I
invokevirtual com/nd/android/u/news/ui/activity/NewsDetailActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/android/u/news/ui/activity/NewsDetailActivity/mllLoading Landroid/widget/LinearLayout;
aload 0
aload 0
getstatic com/nd/android/u/news/R$id/pbLoadingDetail I
invokevirtual com/nd/android/u/news/ui/activity/NewsDetailActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ProgressBar
putfield com/nd/android/u/news/ui/activity/NewsDetailActivity/mPbLoading Landroid/widget/ProgressBar;
aload 0
aload 0
getstatic com/nd/android/u/news/R$id/ivLoadingDetailAgain I
invokevirtual com/nd/android/u/news/ui/activity/NewsDetailActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/news/ui/activity/NewsDetailActivity/mIvLoadingAgain Landroid/widget/ImageView;
aload 0
aload 0
getstatic com/nd/android/u/news/R$id/tvLoadingDetailAgain I
invokevirtual com/nd/android/u/news/ui/activity/NewsDetailActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/news/ui/activity/NewsDetailActivity/mTvLoadingAgain Landroid/widget/TextView;
aload 0
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
getstatic com/nd/android/u/news/R$layout/news_detail_webview I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 1
aload 0
aload 1
getstatic com/nd/android/u/news/R$id/ll_detal I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/android/u/news/ui/activity/NewsDetailActivity/llDetail Landroid/widget/LinearLayout;
aload 0
aload 1
getstatic com/nd/android/u/news/R$id/rlPre I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
putfield com/nd/android/u/news/ui/activity/NewsDetailActivity/vPreNews Landroid/view/View;
aload 0
aload 1
getstatic com/nd/android/u/news/R$id/rlNext I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
putfield com/nd/android/u/news/ui/activity/NewsDetailActivity/vNextNews Landroid/view/View;
aload 0
aload 1
getstatic com/nd/android/u/news/R$id/tvPreTitle I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast com/common/android/ui/widget/NewsSummaryTextView
putfield com/nd/android/u/news/ui/activity/NewsDetailActivity/tvPreNewsTitle Lcom/common/android/ui/widget/NewsSummaryTextView;
aload 0
aload 1
getstatic com/nd/android/u/news/R$id/tvNextTitle I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast com/common/android/ui/widget/NewsSummaryTextView
putfield com/nd/android/u/news/ui/activity/NewsDetailActivity/tvNextNewsTitle Lcom/common/android/ui/widget/NewsSummaryTextView;
aload 0
aload 1
getstatic com/nd/android/u/news/R$id/llYulan I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/android/u/news/ui/activity/NewsDetailActivity/vYulan Landroid/view/View;
aload 0
aload 1
getstatic com/nd/android/u/news/R$id/viewBottonLine I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
putfield com/nd/android/u/news/ui/activity/NewsDetailActivity/mViewBottonLine Landroid/view/View;
aload 0
aload 0
getstatic com/nd/android/u/news/R$id/view_foot I
invokevirtual com/nd/android/u/news/ui/activity/NewsDetailActivity/findViewById(I)Landroid/view/View;
checkcast com/nd/android/u/news/ui/view/NewsFootView
putfield com/nd/android/u/news/ui/activity/NewsDetailActivity/newsMoreView Lcom/nd/android/u/news/ui/view/NewsFootView;
aload 0
aload 0
getstatic com/nd/android/u/news/R$id/view_praisecmt I
invokevirtual com/nd/android/u/news/ui/activity/NewsDetailActivity/findViewById(I)Landroid/view/View;
checkcast com/nd/android/u/news/ui/view/PraiseCommentsView
putfield com/nd/android/u/news/ui/activity/NewsDetailActivity/praiseCmtView Lcom/nd/android/u/news/ui/view/PraiseCommentsView;
aload 0
getfield com/nd/android/u/news/ui/activity/NewsDetailActivity/praiseCmtView Lcom/nd/android/u/news/ui/view/PraiseCommentsView;
aload 0
invokevirtual com/nd/android/u/news/ui/view/PraiseCommentsView/setOnCommentItemClickListener(Lcom/nd/android/u/news/ui/view/PraiseCommentsView$OnCommentListener;)V
aload 0
getfield com/nd/android/u/news/ui/activity/NewsDetailActivity/praiseCmtView Lcom/nd/android/u/news/ui/view/PraiseCommentsView;
aload 0
getfield com/nd/android/u/news/ui/activity/NewsDetailActivity/newsMoreView Lcom/nd/android/u/news/ui/view/NewsFootView;
invokevirtual com/nd/android/u/news/ui/view/PraiseCommentsView/setGetCmtAndPraisesCountListener(Lcom/nd/android/u/news/ui/view/PraiseCommentsView$GetCmtAndPraisesCountListener;)V
aload 0
getfield com/nd/android/u/news/ui/activity/NewsDetailActivity/praiseCmtView Lcom/nd/android/u/news/ui/view/PraiseCommentsView;
aload 1
invokevirtual com/nd/android/u/news/ui/view/PraiseCommentsView/addHeaderView(Landroid/view/View;)V
return
.limit locals 2
.limit stack 3
.end method

.method protected initEvent()V
aload 0
invokespecial com/nd/android/u/news/ui/activity/base/NewsBaseActivity/initEvent()V
aload 0
getfield com/nd/android/u/news/ui/activity/NewsDetailActivity/vPreNews Landroid/view/View;
aload 0
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/news/ui/activity/NewsDetailActivity/vNextNews Landroid/view/View;
aload 0
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/news/ui/activity/NewsDetailActivity/mllLoading Landroid/widget/LinearLayout;
aload 0
invokevirtual android/widget/LinearLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/news/ui/activity/NewsDetailActivity/newsMoreView Lcom/nd/android/u/news/ui/view/NewsFootView;
aload 0
invokevirtual com/nd/android/u/news/ui/view/NewsFootView/setOnZanActionListener(Lcom/nd/android/u/news/ui/view/NewsFootView$OnZanActionListener;)V
return
.limit locals 1
.limit stack 2
.end method

.method protected initValue(Landroid/os/Bundle;)V
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L5
aload 1
ifnull L6
aload 0
aload 1
ldc "news_index_in_list"
invokevirtual android/os/Bundle/getInt(Ljava/lang/String;)I
putfield com/nd/android/u/news/ui/activity/NewsDetailActivity/currentIndex I
aload 0
aload 1
ldc "hasMoreData"
invokevirtual android/os/Bundle/getBoolean(Ljava/lang/String;)Z
putfield com/nd/android/u/news/ui/activity/NewsDetailActivity/hasMoreData Z
aload 0
aload 1
ldc "news_list_maxtime"
invokevirtual android/os/Bundle/getLong(Ljava/lang/String;)J
putfield com/nd/android/u/news/ui/activity/NewsDetailActivity/maxTime J
L0:
aload 1
ldc "news_list"
invokevirtual android/os/Bundle/getString(Ljava/lang/String;)Ljava/lang/String;
astore 1
aload 0
new com/google/gson/Gson
dup
invokespecial com/google/gson/Gson/<init>()V
aload 1
new com/nd/android/u/news/ui/activity/NewsDetailActivity$1
dup
aload 0
invokespecial com/nd/android/u/news/ui/activity/NewsDetailActivity$1/<init>(Lcom/nd/android/u/news/ui/activity/NewsDetailActivity;)V
invokevirtual com/nd/android/u/news/ui/activity/NewsDetailActivity$1/getType()Ljava/lang/reflect/Type;
invokevirtual com/google/gson/Gson/fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
checkcast java/util/List
putfield com/nd/android/u/news/ui/activity/NewsDetailActivity/newsList Ljava/util/List;
L1:
aload 0
getfield com/nd/android/u/news/ui/activity/NewsDetailActivity/newsList Ljava/util/List;
ifnonnull L7
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/news/ui/activity/NewsDetailActivity/newsList Ljava/util/List;
L7:
aload 0
getfield com/nd/android/u/news/ui/activity/NewsDetailActivity/newsList Ljava/util/List;
invokeinterface java/util/List/size()I 0
ifne L8
aload 0
iconst_0
putfield com/nd/android/u/news/ui/activity/NewsDetailActivity/currentIndex I
new com/nd/android/forumsdk/business/bean/result/NewsInfoBean
dup
invokespecial com/nd/android/forumsdk/business/bean/result/NewsInfoBean/<init>()V
astore 1
aload 0
getfield com/nd/android/u/news/ui/activity/NewsDetailActivity/newsList Ljava/util/List;
aload 1
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L8:
aload 0
getfield com/nd/android/u/news/ui/activity/NewsDetailActivity/currentIndex I
aload 0
getfield com/nd/android/u/news/ui/activity/NewsDetailActivity/newsList Ljava/util/List;
invokeinterface java/util/List/size()I 0
if_icmplt L9
aload 0
aload 0
getfield com/nd/android/u/news/ui/activity/NewsDetailActivity/newsList Ljava/util/List;
invokeinterface java/util/List/size()I 0
iconst_1
isub
putfield com/nd/android/u/news/ui/activity/NewsDetailActivity/currentIndex I
L9:
return
L2:
astore 1
ldc "NewsDetailActivity"
ldc "initValue gson parse exception"
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
goto L1
L6:
aload 0
aload 0
invokevirtual com/nd/android/u/news/ui/activity/NewsDetailActivity/getIntent()Landroid/content/Intent;
ldc "news_index_in_list"
iconst_0
invokevirtual android/content/Intent/getIntExtra(Ljava/lang/String;I)I
putfield com/nd/android/u/news/ui/activity/NewsDetailActivity/currentIndex I
L3:
aload 0
invokevirtual com/nd/android/u/news/ui/activity/NewsDetailActivity/getIntent()Landroid/content/Intent;
ldc "news_list"
invokevirtual android/content/Intent/getStringExtra(Ljava/lang/String;)Ljava/lang/String;
astore 1
aload 0
new com/google/gson/Gson
dup
invokespecial com/google/gson/Gson/<init>()V
aload 1
new com/nd/android/u/news/ui/activity/NewsDetailActivity$2
dup
aload 0
invokespecial com/nd/android/u/news/ui/activity/NewsDetailActivity$2/<init>(Lcom/nd/android/u/news/ui/activity/NewsDetailActivity;)V
invokevirtual com/nd/android/u/news/ui/activity/NewsDetailActivity$2/getType()Ljava/lang/reflect/Type;
invokevirtual com/google/gson/Gson/fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
checkcast java/util/List
putfield com/nd/android/u/news/ui/activity/NewsDetailActivity/newsList Ljava/util/List;
L4:
aload 0
aload 0
invokevirtual com/nd/android/u/news/ui/activity/NewsDetailActivity/getIntent()Landroid/content/Intent;
ldc "news_list_maxtime"
lconst_0
invokevirtual android/content/Intent/getLongExtra(Ljava/lang/String;J)J
putfield com/nd/android/u/news/ui/activity/NewsDetailActivity/maxTime J
goto L1
L5:
astore 1
ldc "NewsDetailActivity"
ldc "initValue gson parse exception"
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
goto L4
.limit locals 2
.limit stack 6
.end method

.method public isNeedGetMore()Z
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public onClick(Landroid/view/View;)V
iconst_0
istore 3
aload 1
invokevirtual android/view/View/getId()I
istore 2
aload 0
invokespecial com/nd/android/u/news/ui/activity/NewsDetailActivity/isLoadingDetail()Z
ifeq L0
L1:
return
L0:
iload 2
getstatic com/nd/android/u/news/R$id/rlPre I
if_icmpne L2
aload 0
getfield com/nd/android/u/news/ui/activity/NewsDetailActivity/currentIndex I
ifeq L1
aload 0
aload 0
getfield com/nd/android/u/news/ui/activity/NewsDetailActivity/currentIndex I
iconst_1
isub
putfield com/nd/android/u/news/ui/activity/NewsDetailActivity/currentIndex I
aload 0
iconst_0
invokespecial com/nd/android/u/news/ui/activity/NewsDetailActivity/toClickNews(Z)V
return
L2:
iload 2
getstatic com/nd/android/u/news/R$id/rlNext I
if_icmpne L3
aload 0
aload 0
getfield com/nd/android/u/news/ui/activity/NewsDetailActivity/currentIndex I
iconst_1
iadd
putfield com/nd/android/u/news/ui/activity/NewsDetailActivity/currentIndex I
aload 0
getfield com/nd/android/u/news/ui/activity/NewsDetailActivity/hasMoreData Z
ifeq L4
aload 0
getfield com/nd/android/u/news/ui/activity/NewsDetailActivity/currentIndex I
iconst_2
iadd
aload 0
getfield com/nd/android/u/news/ui/activity/NewsDetailActivity/newsList Ljava/util/List;
invokeinterface java/util/List/size()I 0
if_icmpne L4
aload 0
iconst_1
invokespecial com/nd/android/u/news/ui/activity/NewsDetailActivity/toClickNews(Z)V
return
L4:
aload 0
iconst_0
invokespecial com/nd/android/u/news/ui/activity/NewsDetailActivity/toClickNews(Z)V
return
L3:
iload 2
getstatic com/nd/android/u/news/R$id/llLoadingDetail I
if_icmpne L1
aload 0
getfield com/nd/android/u/news/ui/activity/NewsDetailActivity/mGetNewsDetailTask Lcom/nd/android/u/news/ui/activity/NewsDetailActivity$GetNewsDetailTask;
ifnonnull L5
L6:
aload 0
iload 3
invokespecial com/nd/android/u/news/ui/activity/NewsDetailActivity/startLoadingDetail(Z)V
return
L5:
aload 0
getfield com/nd/android/u/news/ui/activity/NewsDetailActivity/mGetNewsDetailTask Lcom/nd/android/u/news/ui/activity/NewsDetailActivity$GetNewsDetailTask;
getfield com/nd/android/u/news/ui/activity/NewsDetailActivity$GetNewsDetailTask/bNeedGetMore Z
istore 3
goto L6
.limit locals 4
.limit stack 3
.end method

.method protected onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/nd/android/u/news/ui/activity/base/NewsBaseActivity/onCreate(Landroid/os/Bundle;)V
aload 0
getstatic com/nd/android/u/news/R$layout/activity_news_detail I
invokevirtual com/nd/android/u/news/ui/activity/NewsDetailActivity/setContentView(I)V
aload 0
aload 1
invokevirtual com/nd/android/u/news/ui/activity/NewsDetailActivity/initValue(Landroid/os/Bundle;)V
aload 0
invokevirtual com/nd/android/u/news/ui/activity/NewsDetailActivity/initComponent()V
aload 0
invokevirtual com/nd/android/u/news/ui/activity/NewsDetailActivity/initEvent()V
aload 0
iconst_0
invokespecial com/nd/android/u/news/ui/activity/NewsDetailActivity/startLoadingDetail(Z)V
return
.limit locals 2
.limit stack 2
.end method

.method protected onDestroy()V
aload 0
invokespecial com/nd/android/u/news/ui/activity/NewsDetailActivity/isLoadingDetail()Z
ifeq L0
aload 0
getfield com/nd/android/u/news/ui/activity/NewsDetailActivity/mGetNewsDetailTask Lcom/nd/android/u/news/ui/activity/NewsDetailActivity$GetNewsDetailTask;
iconst_1
invokevirtual com/nd/android/u/news/ui/activity/NewsDetailActivity$GetNewsDetailTask/cancel(Z)Z
pop
L0:
aload 0
invokespecial com/nd/android/u/news/ui/activity/base/NewsBaseActivity/onDestroy()V
return
.limit locals 1
.limit stack 2
.end method

.method public onItemClick(Lcom/nd/android/forumsdk/business/bean/result/ReplyInfoBean;)V
new android/content/Intent
dup
aload 0
ldc com/nd/android/u/news/ui/activity/PraiseCommentsListActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 1
aload 1
ldc "news_id"
aload 0
invokespecial com/nd/android/u/news/ui/activity/NewsDetailActivity/getCurNewsId()J
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;J)Landroid/content/Intent;
pop
aload 0
aload 1
invokevirtual com/nd/android/u/news/ui/activity/NewsDetailActivity/startActivity(Landroid/content/Intent;)V
return
.limit locals 2
.limit stack 4
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
.catch java/lang/Exception from L0 to L1 using L2
L0:
aload 1
ldc "news_list"
new com/google/gson/Gson
dup
invokespecial com/google/gson/Gson/<init>()V
aload 0
getfield com/nd/android/u/news/ui/activity/NewsDetailActivity/newsList Ljava/util/List;
invokevirtual com/google/gson/Gson/toJson(Ljava/lang/Object;)Ljava/lang/String;
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
aload 1
ldc "news_index_in_list"
aload 0
getfield com/nd/android/u/news/ui/activity/NewsDetailActivity/currentIndex I
invokevirtual android/os/Bundle/putInt(Ljava/lang/String;I)V
aload 1
ldc "hasMoreData"
aload 0
getfield com/nd/android/u/news/ui/activity/NewsDetailActivity/hasMoreData Z
invokevirtual android/os/Bundle/putBoolean(Ljava/lang/String;Z)V
aload 1
ldc "news_list_maxtime"
aload 0
getfield com/nd/android/u/news/ui/activity/NewsDetailActivity/maxTime J
invokevirtual android/os/Bundle/putLong(Ljava/lang/String;J)V
L1:
aload 0
aload 1
invokespecial com/nd/android/u/news/ui/activity/base/NewsBaseActivity/onSaveInstanceState(Landroid/os/Bundle;)V
return
L2:
astore 2
aload 2
invokevirtual java/lang/Exception/printStackTrace()V
goto L1
.limit locals 3
.limit stack 4
.end method

.method public replaceImageUrl(Ljava/lang/String;)Ljava/lang/String;
getstatic com/nd/android/u/news/ui/activity/NewsDetailActivity/IMAGEURL_PATTERN Ljava/util/regex/Pattern;
aload 1
invokevirtual java/util/regex/Pattern/matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
astore 3
aload 0
getfield com/nd/android/u/news/ui/activity/NewsDetailActivity/mImageUrlList Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/clear()V
iconst_0
istore 2
L0:
aload 3
invokevirtual java/util/regex/Matcher/find()Z
ifeq L1
aload 3
iconst_1
invokevirtual java/util/regex/Matcher/group(I)Ljava/lang/String;
astore 4
aload 4
ifnull L0
aload 4
ldc "\\s"
invokevirtual java/lang/String/split(Ljava/lang/String;)[Ljava/lang/String;
iconst_0
aaload
astore 4
aload 3
iconst_0
invokevirtual java/util/regex/Matcher/group(I)Ljava/lang/String;
astore 5
new java/lang/StringBuffer
dup
invokespecial java/lang/StringBuffer/<init>()V
astore 6
aload 6
aload 5
iconst_0
iconst_4
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
ldc " id=\""
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
iload 2
invokevirtual java/lang/StringBuffer/append(I)Ljava/lang/StringBuffer;
ldc "\" "
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
aload 5
iconst_5
invokevirtual java/lang/String/substring(I)Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
iload 2
iconst_1
iadd
istore 2
aload 1
aload 5
aload 6
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
invokevirtual java/lang/String/replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
aload 4
ldc "file:///android_res/drawable/news_detail_default_img.png"
invokevirtual java/lang/String/replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 1
aload 0
getfield com/nd/android/u/news/ui/activity/NewsDetailActivity/mImageUrlList Ljava/util/ArrayList;
aload 4
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
goto L0
L1:
aload 1
areturn
.limit locals 7
.limit stack 4
.end method

.method public zan()V
aload 0
getfield com/nd/android/u/news/ui/activity/NewsDetailActivity/praiseCmtView Lcom/nd/android/u/news/ui/view/PraiseCommentsView;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokevirtual com/nd/android/u/news/ui/view/PraiseCommentsView/addPraise(J)V
return
.limit locals 1
.limit stack 3
.end method
