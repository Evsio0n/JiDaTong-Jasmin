.bytecode 50.0
.class public synchronized com/nd/android/u/news/ui/activity/CampusHomepageActivity
.super android/app/Activity
.inner class inner com/nd/android/u/news/ui/activity/CampusHomepageActivity$1
.inner class inner com/nd/android/u/news/ui/activity/CampusHomepageActivity$2
.inner class inner com/nd/android/u/news/ui/activity/CampusHomepageActivity$3
.inner class inner com/nd/android/u/news/ui/activity/CampusHomepageActivity$4
.inner class private AlbumBean inner com/nd/android/u/news/ui/activity/CampusHomepageActivity$AlbumBean outer com/nd/android/u/news/ui/activity/CampusHomepageActivity
.inner class CheckSidAsyncTask inner com/nd/android/u/news/ui/activity/CampusHomepageActivity$CheckSidAsyncTask outer com/nd/android/u/news/ui/activity/CampusHomepageActivity

.field private 'mCheckSidAsyncTask' Lcom/nd/android/u/news/ui/activity/CampusHomepageActivity$CheckSidAsyncTask;

.field private 'mIvLoadingAgain' Landroid/widget/ImageView;

.field private 'mPbLoading' Landroid/widget/ProgressBar;

.field private 'mTvLoadingAgain' Landroid/widget/TextView;

.field private 'mWebView' Landroid/webkit/WebView;

.field private 'mllLoading' Landroid/widget/LinearLayout;

.method public <init>()V
aload 0
invokespecial android/app/Activity/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$000(Lcom/nd/android/u/news/ui/activity/CampusHomepageActivity;)V
aload 0
invokespecial com/nd/android/u/news/ui/activity/CampusHomepageActivity/checkSid()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/android/u/news/ui/activity/CampusHomepageActivity;)V
aload 0
invokespecial com/nd/android/u/news/ui/activity/CampusHomepageActivity/showLoadingView()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/nd/android/u/news/ui/activity/CampusHomepageActivity;)V
aload 0
invokespecial com/nd/android/u/news/ui/activity/CampusHomepageActivity/showCheckSidSuccessView()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/nd/android/u/news/ui/activity/CampusHomepageActivity;)Landroid/webkit/WebView;
aload 0
getfield com/nd/android/u/news/ui/activity/CampusHomepageActivity/mWebView Landroid/webkit/WebView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$400(Lcom/nd/android/u/news/ui/activity/CampusHomepageActivity;Lcom/nd/android/u/news/ui/activity/CampusHomepageActivity$AlbumBean;)V
aload 0
aload 1
invokespecial com/nd/android/u/news/ui/activity/CampusHomepageActivity/startShowAlbumActivity(Lcom/nd/android/u/news/ui/activity/CampusHomepageActivity$AlbumBean;)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$500(Lcom/nd/android/u/news/ui/activity/CampusHomepageActivity;)V
aload 0
invokespecial com/nd/android/u/news/ui/activity/CampusHomepageActivity/showNetworkErrorView()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$600(Lcom/nd/android/u/news/ui/activity/CampusHomepageActivity;Ljava/lang/String;)Ljava/lang/String;
aload 0
aload 1
invokespecial com/nd/android/u/news/ui/activity/CampusHomepageActivity/getUrl(Ljava/lang/String;)Ljava/lang/String;
areturn
.limit locals 2
.limit stack 2
.end method

.method private checkSid()V
aload 0
invokestatic com/common/android/utils/NetWorkUtils/JudgeNetWorkStatus(Landroid/content/Context;)Z
ifne L0
aload 0
invokespecial com/nd/android/u/news/ui/activity/CampusHomepageActivity/showNetworkErrorView()V
L1:
return
L0:
aload 0
getfield com/nd/android/u/news/ui/activity/CampusHomepageActivity/mCheckSidAsyncTask Lcom/nd/android/u/news/ui/activity/CampusHomepageActivity$CheckSidAsyncTask;
ifnull L2
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
aload 0
getfield com/nd/android/u/news/ui/activity/CampusHomepageActivity/mCheckSidAsyncTask Lcom/nd/android/u/news/ui/activity/CampusHomepageActivity$CheckSidAsyncTask;
invokevirtual com/nd/android/u/news/ui/activity/CampusHomepageActivity$CheckSidAsyncTask/getStatus()Landroid/os/AsyncTask$Status;
if_acmpeq L1
L2:
aload 0
new com/nd/android/u/news/ui/activity/CampusHomepageActivity$CheckSidAsyncTask
dup
aload 0
invokespecial com/nd/android/u/news/ui/activity/CampusHomepageActivity$CheckSidAsyncTask/<init>(Lcom/nd/android/u/news/ui/activity/CampusHomepageActivity;)V
putfield com/nd/android/u/news/ui/activity/CampusHomepageActivity/mCheckSidAsyncTask Lcom/nd/android/u/news/ui/activity/CampusHomepageActivity$CheckSidAsyncTask;
aload 0
getfield com/nd/android/u/news/ui/activity/CampusHomepageActivity/mCheckSidAsyncTask Lcom/nd/android/u/news/ui/activity/CampusHomepageActivity$CheckSidAsyncTask;
iconst_1
anewarray java/lang/String
dup
iconst_0
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getLocalSid()Ljava/lang/String;
aastore
invokevirtual com/nd/android/u/news/ui/activity/CampusHomepageActivity$CheckSidAsyncTask/execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
pop
return
.limit locals 1
.limit stack 5
.end method

.method private getAlbumBean(Ljava/lang/String;)Lcom/nd/android/u/news/ui/activity/CampusHomepageActivity$AlbumBean;
new com/google/gson/Gson
dup
invokespecial com/google/gson/Gson/<init>()V
aload 1
ldc com/nd/android/u/news/ui/activity/CampusHomepageActivity$AlbumBean
invokevirtual com/google/gson/Gson/fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/news/ui/activity/CampusHomepageActivity$AlbumBean
areturn
.limit locals 2
.limit stack 3
.end method

.method private getUrl(Ljava/lang/String;)Ljava/lang/String;
aload 0
invokevirtual com/nd/android/u/news/ui/activity/CampusHomepageActivity/getIntent()Landroid/content/Intent;
ldc "campus_homepage_url"
invokevirtual android/content/Intent/getStringExtra(Ljava/lang/String;)Ljava/lang/String;
astore 3
aload 3
astore 2
aload 3
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
ldc "https://album.jmu.edu.cn/"
astore 2
L0:
new java/lang/StringBuilder
dup
aload 2
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
astore 2
aload 2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "?uid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "&unitid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getUnitid()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "&sid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 2
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 4
.limit stack 4
.end method

.method private showCheckSidSuccessView()V
aload 0
getfield com/nd/android/u/news/ui/activity/CampusHomepageActivity/mllLoading Landroid/widget/LinearLayout;
bipush 8
invokevirtual android/widget/LinearLayout/setVisibility(I)V
return
.limit locals 1
.limit stack 2
.end method

.method private showLoadingView()V
aload 0
getfield com/nd/android/u/news/ui/activity/CampusHomepageActivity/mllLoading Landroid/widget/LinearLayout;
iconst_0
invokevirtual android/widget/LinearLayout/setVisibility(I)V
aload 0
getfield com/nd/android/u/news/ui/activity/CampusHomepageActivity/mPbLoading Landroid/widget/ProgressBar;
iconst_0
invokevirtual android/widget/ProgressBar/setVisibility(I)V
aload 0
getfield com/nd/android/u/news/ui/activity/CampusHomepageActivity/mIvLoadingAgain Landroid/widget/ImageView;
bipush 8
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getfield com/nd/android/u/news/ui/activity/CampusHomepageActivity/mTvLoadingAgain Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/nd/android/u/news/ui/activity/CampusHomepageActivity/mTvLoadingAgain Landroid/widget/TextView;
getstatic com/nd/android/u/news/R$string/loading I
invokevirtual android/widget/TextView/setText(I)V
return
.limit locals 1
.limit stack 2
.end method

.method private showNetworkErrorView()V
aload 0
getstatic com/nd/android/u/news/R$string/network_error I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
aload 0
getfield com/nd/android/u/news/ui/activity/CampusHomepageActivity/mllLoading Landroid/widget/LinearLayout;
iconst_0
invokevirtual android/widget/LinearLayout/setVisibility(I)V
aload 0
getfield com/nd/android/u/news/ui/activity/CampusHomepageActivity/mPbLoading Landroid/widget/ProgressBar;
bipush 8
invokevirtual android/widget/ProgressBar/setVisibility(I)V
aload 0
getfield com/nd/android/u/news/ui/activity/CampusHomepageActivity/mIvLoadingAgain Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getfield com/nd/android/u/news/ui/activity/CampusHomepageActivity/mTvLoadingAgain Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/nd/android/u/news/ui/activity/CampusHomepageActivity/mTvLoadingAgain Landroid/widget/TextView;
getstatic com/nd/android/u/news/R$string/str_loading_again I
invokevirtual android/widget/TextView/setText(I)V
return
.limit locals 1
.limit stack 2
.end method

.method private startShowAlbumActivity(Lcom/nd/android/u/news/ui/activity/CampusHomepageActivity$AlbumBean;)V
new android/content/Intent
dup
aload 0
ldc com/nd/android/u/news/ui/activity/ImageListActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 2
aload 2
ldc "album_key"
aload 1
invokevirtual com/nd/android/u/news/ui/activity/CampusHomepageActivity$AlbumBean/getId()J
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;J)Landroid/content/Intent;
pop
aload 2
ldc "album_name"
aload 1
invokevirtual com/nd/android/u/news/ui/activity/CampusHomepageActivity$AlbumBean/getName()Ljava/lang/String;
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 0
aload 2
invokevirtual com/nd/android/u/news/ui/activity/CampusHomepageActivity/startActivity(Landroid/content/Intent;)V
return
.limit locals 3
.limit stack 4
.end method

.method public clickBack()V
.annotation visible Landroid/webkit/JavascriptInterface;
.end annotation
aload 0
new com/nd/android/u/news/ui/activity/CampusHomepageActivity$4
dup
aload 0
invokespecial com/nd/android/u/news/ui/activity/CampusHomepageActivity$4/<init>(Lcom/nd/android/u/news/ui/activity/CampusHomepageActivity;)V
invokevirtual com/nd/android/u/news/ui/activity/CampusHomepageActivity/runOnUiThread(Ljava/lang/Runnable;)V
return
.limit locals 1
.limit stack 4
.end method

.method public clickImage(Ljava/lang/String;I)V
.annotation visible Landroid/webkit/JavascriptInterface;
.end annotation
aload 0
aload 1
invokespecial com/nd/android/u/news/ui/activity/CampusHomepageActivity/getAlbumBean(Ljava/lang/String;)Lcom/nd/android/u/news/ui/activity/CampusHomepageActivity$AlbumBean;
astore 1
aload 1
ifnull L0
aload 0
new com/nd/android/u/news/ui/activity/CampusHomepageActivity$3
dup
aload 0
aload 1
invokespecial com/nd/android/u/news/ui/activity/CampusHomepageActivity$3/<init>(Lcom/nd/android/u/news/ui/activity/CampusHomepageActivity;Lcom/nd/android/u/news/ui/activity/CampusHomepageActivity$AlbumBean;)V
invokevirtual com/nd/android/u/news/ui/activity/CampusHomepageActivity/runOnUiThread(Ljava/lang/Runnable;)V
L0:
return
.limit locals 3
.limit stack 5
.end method

.method public finish()V
aload 0
invokespecial android/app/Activity/finish()V
aload 0
getfield com/nd/android/u/news/ui/activity/CampusHomepageActivity/mCheckSidAsyncTask Lcom/nd/android/u/news/ui/activity/CampusHomepageActivity$CheckSidAsyncTask;
ifnull L0
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
aload 0
getfield com/nd/android/u/news/ui/activity/CampusHomepageActivity/mCheckSidAsyncTask Lcom/nd/android/u/news/ui/activity/CampusHomepageActivity$CheckSidAsyncTask;
invokevirtual com/nd/android/u/news/ui/activity/CampusHomepageActivity$CheckSidAsyncTask/getStatus()Landroid/os/AsyncTask$Status;
if_acmpne L0
aload 0
getfield com/nd/android/u/news/ui/activity/CampusHomepageActivity/mCheckSidAsyncTask Lcom/nd/android/u/news/ui/activity/CampusHomepageActivity$CheckSidAsyncTask;
iconst_1
invokevirtual com/nd/android/u/news/ui/activity/CampusHomepageActivity$CheckSidAsyncTask/cancel(Z)Z
pop
L0:
return
.limit locals 1
.limit stack 2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial android/app/Activity/onCreate(Landroid/os/Bundle;)V
aload 0
getstatic com/nd/android/u/news/R$layout/activity_campus_homepage I
invokevirtual com/nd/android/u/news/ui/activity/CampusHomepageActivity/setContentView(I)V
aload 0
aload 0
getstatic com/nd/android/u/news/R$id/webView I
invokevirtual com/nd/android/u/news/ui/activity/CampusHomepageActivity/findViewById(I)Landroid/view/View;
checkcast android/webkit/WebView
putfield com/nd/android/u/news/ui/activity/CampusHomepageActivity/mWebView Landroid/webkit/WebView;
aload 0
aload 0
getstatic com/nd/android/u/news/R$id/llLoadingDetail I
invokevirtual com/nd/android/u/news/ui/activity/CampusHomepageActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/android/u/news/ui/activity/CampusHomepageActivity/mllLoading Landroid/widget/LinearLayout;
aload 0
getfield com/nd/android/u/news/ui/activity/CampusHomepageActivity/mllLoading Landroid/widget/LinearLayout;
new com/nd/android/u/news/ui/activity/CampusHomepageActivity$1
dup
aload 0
invokespecial com/nd/android/u/news/ui/activity/CampusHomepageActivity$1/<init>(Lcom/nd/android/u/news/ui/activity/CampusHomepageActivity;)V
invokevirtual android/widget/LinearLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
aload 0
getstatic com/nd/android/u/news/R$id/pbLoadingDetail I
invokevirtual com/nd/android/u/news/ui/activity/CampusHomepageActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ProgressBar
putfield com/nd/android/u/news/ui/activity/CampusHomepageActivity/mPbLoading Landroid/widget/ProgressBar;
aload 0
aload 0
getstatic com/nd/android/u/news/R$id/ivLoadingDetailAgain I
invokevirtual com/nd/android/u/news/ui/activity/CampusHomepageActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/news/ui/activity/CampusHomepageActivity/mIvLoadingAgain Landroid/widget/ImageView;
aload 0
aload 0
getstatic com/nd/android/u/news/R$id/tvLoadingDetailAgain I
invokevirtual com/nd/android/u/news/ui/activity/CampusHomepageActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/news/ui/activity/CampusHomepageActivity/mTvLoadingAgain Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/news/ui/activity/CampusHomepageActivity/mWebView Landroid/webkit/WebView;
invokevirtual android/webkit/WebView/getSettings()Landroid/webkit/WebSettings;
iconst_1
invokevirtual android/webkit/WebSettings/setJavaScriptEnabled(Z)V
aload 0
getfield com/nd/android/u/news/ui/activity/CampusHomepageActivity/mWebView Landroid/webkit/WebView;
aload 0
ldc "android"
invokevirtual android/webkit/WebView/addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/news/ui/activity/CampusHomepageActivity/mWebView Landroid/webkit/WebView;
new com/nd/android/u/news/ui/activity/CampusHomepageActivity$2
dup
aload 0
invokespecial com/nd/android/u/news/ui/activity/CampusHomepageActivity$2/<init>(Lcom/nd/android/u/news/ui/activity/CampusHomepageActivity;)V
invokevirtual android/webkit/WebView/setWebViewClient(Landroid/webkit/WebViewClient;)V
aload 0
invokespecial com/nd/android/u/news/ui/activity/CampusHomepageActivity/checkSid()V
return
.limit locals 2
.limit stack 4
.end method
