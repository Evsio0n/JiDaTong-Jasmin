.bytecode 50.0
.class public synchronized com/nd/android/u/tast/experience/activity/TaskWebViewActivity
.super com/product/android/ui/activity/BaseActivity
.inner class inner com/nd/android/u/tast/experience/activity/TaskWebViewActivity$1
.inner class inner com/nd/android/u/tast/experience/activity/TaskWebViewActivity$2
.inner class inner com/nd/android/u/tast/experience/activity/TaskWebViewActivity$3
.inner class inner com/nd/android/u/tast/experience/activity/TaskWebViewActivity$4
.inner class inner com/nd/android/u/tast/experience/activity/TaskWebViewActivity$5
.inner class inner com/nd/android/u/tast/experience/activity/TaskWebViewActivity$6
.inner class inner com/nd/android/u/tast/experience/activity/TaskWebViewActivity$7
.inner class inner com/nd/android/u/tast/experience/activity/TaskWebViewActivity$8
.inner class inner com/nd/android/u/tast/experience/activity/TaskWebViewActivity$9
.inner class inner com/nd/android/u/tast/experience/activity/TaskWebViewActivity$9$1
.inner class private MyWebViewDownLoadListener inner com/nd/android/u/tast/experience/activity/TaskWebViewActivity$MyWebViewDownLoadListener outer com/nd/android/u/tast/experience/activity/TaskWebViewActivity

.field private static 'CURRENT' I

.field public static 'EXTARS_WEBVIEW_BOTTOMHIDE' Ljava/lang/String;

.field public static 'EXTARS_WEBVIEW_CHECK_OVERRIDEURL' Ljava/lang/String;

.field public static 'EXTARS_WEBVIEW_HASCOOKIE' Ljava/lang/String;

.field public static 'EXTARS_WEBVIEW_NEED_TITLE' Ljava/lang/String;

.field public static 'EXTARS_WEBVIEW_REFRESH' Ljava/lang/String;

.field public static 'EXTARS_WEBVIEW_RETURN' Ljava/lang/String;

.field public static 'EXTARS_WEBVIEW_URL' Ljava/lang/String;

.field public static 'EXTARS_WEBVIEW_ZOOMSUPPORT' Ljava/lang/String;

.field private final 'TAG' Ljava/lang/String;

.field private 'activitytitle' Landroid/widget/TextView;

.field private 'audioAnimListener' Lcom/common/android/utils/audio/AudioAnimManager$onPlayAudioAnimListener;

.field private 'backapppage' Landroid/widget/Button;

.field private 'backpage' Landroid/widget/ImageView;

.field private 'backpagely' Landroid/widget/LinearLayout;

.field private 'footViewGroup' Landroid/view/ViewGroup;

.field private 'forwardpage' Landroid/widget/ImageView;

.field private 'forwardpagely' Landroid/widget/LinearLayout;

.field 'handler' Landroid/os/Handler;

.field private 'hasCookie' Z

.field private 'homepage' Landroid/widget/ImageView;

.field private 'homepagely' Landroid/widget/LinearLayout;

.field private 'imgOnClick' Landroid/view/View$OnClickListener;

.field private 'listener' Lcom/common/android/utils/download/ProgressDownloadManager$onDonwloadListener;

.field private 'mAnimImageView' Lcom/product/android/ui/widget/AnimImageView;

.field private 'mAnimPop' Landroid/widget/PopupWindow;

.field private 'mAudioAnimManager' Lcom/common/android/utils/audio/AudioAnimManager;

.field private 'mDownloadManager' Lcom/common/android/utils/download/ProgressDownloadManager;

.field private 'needTitle' Ljava/lang/String;

.field private 'onAnimDismissListener' Landroid/widget/PopupWindow$OnDismissListener;

.field private 'overrideurl' Z

.field private 'progressBar' Landroid/widget/ProgressBar;

.field 'redesk' Z

.field private 'refresh_page' Landroid/widget/ImageView;

.field private 'reloadpage' Landroid/widget/ImageView;

.field private 'reloadpagely' Landroid/widget/LinearLayout;

.field private 'url' Ljava/lang/String;

.field private 'webViewBottomHide' Z

.field private 'webViewRefresh' Z

.field private 'webviewCanBack' Z

.field private 'wv' Landroid/webkit/WebView;

.field private 'zoomsupport' Z

.method static <clinit>()V
iconst_0
putstatic com/nd/android/u/tast/experience/activity/TaskWebViewActivity/CURRENT I
ldc "extars_webview_url"
putstatic com/nd/android/u/tast/experience/activity/TaskWebViewActivity/EXTARS_WEBVIEW_URL Ljava/lang/String;
ldc "extars_webview_title"
putstatic com/nd/android/u/tast/experience/activity/TaskWebViewActivity/EXTARS_WEBVIEW_NEED_TITLE Ljava/lang/String;
ldc "extars_webview_return"
putstatic com/nd/android/u/tast/experience/activity/TaskWebViewActivity/EXTARS_WEBVIEW_RETURN Ljava/lang/String;
ldc "extars_webview_bottomhide"
putstatic com/nd/android/u/tast/experience/activity/TaskWebViewActivity/EXTARS_WEBVIEW_BOTTOMHIDE Ljava/lang/String;
ldc "extars_webview_refresh"
putstatic com/nd/android/u/tast/experience/activity/TaskWebViewActivity/EXTARS_WEBVIEW_REFRESH Ljava/lang/String;
ldc "extars_webview_hascookie"
putstatic com/nd/android/u/tast/experience/activity/TaskWebViewActivity/EXTARS_WEBVIEW_HASCOOKIE Ljava/lang/String;
ldc "extars_webview_zoomsupport"
putstatic com/nd/android/u/tast/experience/activity/TaskWebViewActivity/EXTARS_WEBVIEW_ZOOMSUPPORT Ljava/lang/String;
ldc "extars_webview_check_overrideurl"
putstatic com/nd/android/u/tast/experience/activity/TaskWebViewActivity/EXTARS_WEBVIEW_CHECK_OVERRIDEURL Ljava/lang/String;
return
.limit locals 0
.limit stack 1
.end method

.method public <init>()V
aload 0
invokespecial com/product/android/ui/activity/BaseActivity/<init>()V
aload 0
ldc "WebViewActivity"
putfield com/nd/android/u/tast/experience/activity/TaskWebViewActivity/TAG Ljava/lang/String;
aload 0
iconst_1
putfield com/nd/android/u/tast/experience/activity/TaskWebViewActivity/webviewCanBack Z
aload 0
iconst_0
putfield com/nd/android/u/tast/experience/activity/TaskWebViewActivity/webViewBottomHide Z
aload 0
iconst_0
putfield com/nd/android/u/tast/experience/activity/TaskWebViewActivity/webViewRefresh Z
aload 0
ldc ""
putfield com/nd/android/u/tast/experience/activity/TaskWebViewActivity/needTitle Ljava/lang/String;
aload 0
iconst_0
putfield com/nd/android/u/tast/experience/activity/TaskWebViewActivity/hasCookie Z
aload 0
iconst_1
putfield com/nd/android/u/tast/experience/activity/TaskWebViewActivity/zoomsupport Z
aload 0
iconst_0
putfield com/nd/android/u/tast/experience/activity/TaskWebViewActivity/overrideurl Z
aload 0
new com/nd/android/u/tast/experience/activity/TaskWebViewActivity$1
dup
aload 0
invokespecial com/nd/android/u/tast/experience/activity/TaskWebViewActivity$1/<init>(Lcom/nd/android/u/tast/experience/activity/TaskWebViewActivity;)V
putfield com/nd/android/u/tast/experience/activity/TaskWebViewActivity/handler Landroid/os/Handler;
aload 0
new com/nd/android/u/tast/experience/activity/TaskWebViewActivity$4
dup
aload 0
invokespecial com/nd/android/u/tast/experience/activity/TaskWebViewActivity$4/<init>(Lcom/nd/android/u/tast/experience/activity/TaskWebViewActivity;)V
putfield com/nd/android/u/tast/experience/activity/TaskWebViewActivity/imgOnClick Landroid/view/View$OnClickListener;
aload 0
new com/nd/android/u/tast/experience/activity/TaskWebViewActivity$7
dup
aload 0
invokespecial com/nd/android/u/tast/experience/activity/TaskWebViewActivity$7/<init>(Lcom/nd/android/u/tast/experience/activity/TaskWebViewActivity;)V
putfield com/nd/android/u/tast/experience/activity/TaskWebViewActivity/listener Lcom/common/android/utils/download/ProgressDownloadManager$onDonwloadListener;
aload 0
new com/nd/android/u/tast/experience/activity/TaskWebViewActivity$8
dup
aload 0
invokespecial com/nd/android/u/tast/experience/activity/TaskWebViewActivity$8/<init>(Lcom/nd/android/u/tast/experience/activity/TaskWebViewActivity;)V
putfield com/nd/android/u/tast/experience/activity/TaskWebViewActivity/onAnimDismissListener Landroid/widget/PopupWindow$OnDismissListener;
aload 0
new com/nd/android/u/tast/experience/activity/TaskWebViewActivity$9
dup
aload 0
invokespecial com/nd/android/u/tast/experience/activity/TaskWebViewActivity$9/<init>(Lcom/nd/android/u/tast/experience/activity/TaskWebViewActivity;)V
putfield com/nd/android/u/tast/experience/activity/TaskWebViewActivity/audioAnimListener Lcom/common/android/utils/audio/AudioAnimManager$onPlayAudioAnimListener;
return
.limit locals 1
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/android/u/tast/experience/activity/TaskWebViewActivity;)Landroid/widget/ProgressBar;
aload 0
getfield com/nd/android/u/tast/experience/activity/TaskWebViewActivity/progressBar Landroid/widget/ProgressBar;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/android/u/tast/experience/activity/TaskWebViewActivity;)Landroid/widget/ImageView;
aload 0
getfield com/nd/android/u/tast/experience/activity/TaskWebViewActivity/refresh_page Landroid/widget/ImageView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1000(Lcom/nd/android/u/tast/experience/activity/TaskWebViewActivity;Ljava/lang/String;)V
aload 0
aload 1
invokespecial com/nd/android/u/tast/experience/activity/TaskWebViewActivity/startDownloadAudio(Ljava/lang/String;)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$1100(Lcom/nd/android/u/tast/experience/activity/TaskWebViewActivity;Ljava/lang/String;)V
aload 0
aload 1
invokespecial com/nd/android/u/tast/experience/activity/TaskWebViewActivity/startDownload(Ljava/lang/String;)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$1200(Lcom/nd/android/u/tast/experience/activity/TaskWebViewActivity;)V
aload 0
invokespecial com/nd/android/u/tast/experience/activity/TaskWebViewActivity/showAudioAnim()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1300(Lcom/nd/android/u/tast/experience/activity/TaskWebViewActivity;)Landroid/widget/PopupWindow;
aload 0
getfield com/nd/android/u/tast/experience/activity/TaskWebViewActivity/mAnimPop Landroid/widget/PopupWindow;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1400(Lcom/nd/android/u/tast/experience/activity/TaskWebViewActivity;)Lcom/product/android/ui/widget/AnimImageView;
aload 0
getfield com/nd/android/u/tast/experience/activity/TaskWebViewActivity/mAnimImageView Lcom/product/android/ui/widget/AnimImageView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/nd/android/u/tast/experience/activity/TaskWebViewActivity;)V
aload 0
invokespecial com/nd/android/u/tast/experience/activity/TaskWebViewActivity/initToolbarImg()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/nd/android/u/tast/experience/activity/TaskWebViewActivity;)Z
aload 0
getfield com/nd/android/u/tast/experience/activity/TaskWebViewActivity/overrideurl Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$400(Lcom/nd/android/u/tast/experience/activity/TaskWebViewActivity;)Ljava/lang/String;
aload 0
getfield com/nd/android/u/tast/experience/activity/TaskWebViewActivity/needTitle Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$500(Lcom/nd/android/u/tast/experience/activity/TaskWebViewActivity;)Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/tast/experience/activity/TaskWebViewActivity/activitytitle Landroid/widget/TextView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$700(Lcom/nd/android/u/tast/experience/activity/TaskWebViewActivity;)Landroid/webkit/WebView;
aload 0
getfield com/nd/android/u/tast/experience/activity/TaskWebViewActivity/wv Landroid/webkit/WebView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$800(Lcom/nd/android/u/tast/experience/activity/TaskWebViewActivity;)Z
aload 0
getfield com/nd/android/u/tast/experience/activity/TaskWebViewActivity/hasCookie Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$900(Lcom/nd/android/u/tast/experience/activity/TaskWebViewActivity;)Lcom/common/android/utils/audio/AudioAnimManager;
aload 0
getfield com/nd/android/u/tast/experience/activity/TaskWebViewActivity/mAudioAnimManager Lcom/common/android/utils/audio/AudioAnimManager;
areturn
.limit locals 1
.limit stack 1
.end method

.method private initToolbarImg()V
aload 0
getfield com/nd/android/u/tast/experience/activity/TaskWebViewActivity/wv Landroid/webkit/WebView;
invokevirtual android/webkit/WebView/canGoBack()Z
ifeq L0
aload 0
getfield com/nd/android/u/tast/experience/activity/TaskWebViewActivity/backpage Landroid/widget/ImageView;
getstatic com/nd/android/u/tasklib/R$drawable/toolbar_back_normal I
invokevirtual android/widget/ImageView/setImageResource(I)V
aload 0
getfield com/nd/android/u/tast/experience/activity/TaskWebViewActivity/backpagely Landroid/widget/LinearLayout;
iconst_1
invokevirtual android/widget/LinearLayout/setClickable(Z)V
L1:
aload 0
getfield com/nd/android/u/tast/experience/activity/TaskWebViewActivity/wv Landroid/webkit/WebView;
invokevirtual android/webkit/WebView/canGoForward()Z
ifeq L2
aload 0
getfield com/nd/android/u/tast/experience/activity/TaskWebViewActivity/forwardpage Landroid/widget/ImageView;
getstatic com/nd/android/u/tasklib/R$drawable/toolbar_forward_normal I
invokevirtual android/widget/ImageView/setImageResource(I)V
aload 0
getfield com/nd/android/u/tast/experience/activity/TaskWebViewActivity/forwardpagely Landroid/widget/LinearLayout;
iconst_1
invokevirtual android/widget/LinearLayout/setClickable(Z)V
return
L0:
aload 0
getfield com/nd/android/u/tast/experience/activity/TaskWebViewActivity/backpage Landroid/widget/ImageView;
getstatic com/nd/android/u/tasklib/R$drawable/toolbar_back_disable I
invokevirtual android/widget/ImageView/setImageResource(I)V
aload 0
getfield com/nd/android/u/tast/experience/activity/TaskWebViewActivity/backpagely Landroid/widget/LinearLayout;
iconst_0
invokevirtual android/widget/LinearLayout/setClickable(Z)V
goto L1
L2:
aload 0
getfield com/nd/android/u/tast/experience/activity/TaskWebViewActivity/forwardpage Landroid/widget/ImageView;
getstatic com/nd/android/u/tasklib/R$drawable/toolbar_forward_disable I
invokevirtual android/widget/ImageView/setImageResource(I)V
aload 0
getfield com/nd/android/u/tast/experience/activity/TaskWebViewActivity/forwardpagely Landroid/widget/LinearLayout;
iconst_0
invokevirtual android/widget/LinearLayout/setClickable(Z)V
return
.limit locals 1
.limit stack 2
.end method

.method private showAudioAnim()V
aload 0
getfield com/nd/android/u/tast/experience/activity/TaskWebViewActivity/mAnimPop Landroid/widget/PopupWindow;
ifnonnull L0
aload 0
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
getstatic com/nd/android/u/tasklib/R$layout/pop_audio_anim I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 2
aload 0
aload 2
getstatic com/nd/android/u/tasklib/R$id/animAudio I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast com/product/android/ui/widget/AnimImageView
putfield com/nd/android/u/tast/experience/activity/TaskWebViewActivity/mAnimImageView Lcom/product/android/ui/widget/AnimImageView;
aload 0
getfield com/nd/android/u/tast/experience/activity/TaskWebViewActivity/mAnimImageView Lcom/product/android/ui/widget/AnimImageView;
iconst_1
invokevirtual com/product/android/ui/widget/AnimImageView/setMyTalk(Z)V
aload 0
ldc_w 100.0F
invokestatic com/common/android/utils/DisplayUtil/dip2px(Landroid/content/Context;F)I
istore 1
aload 0
new android/widget/PopupWindow
dup
aload 2
iload 1
iload 1
invokespecial android/widget/PopupWindow/<init>(Landroid/view/View;II)V
putfield com/nd/android/u/tast/experience/activity/TaskWebViewActivity/mAnimPop Landroid/widget/PopupWindow;
aload 0
getfield com/nd/android/u/tast/experience/activity/TaskWebViewActivity/mAnimPop Landroid/widget/PopupWindow;
aload 0
getfield com/nd/android/u/tast/experience/activity/TaskWebViewActivity/onAnimDismissListener Landroid/widget/PopupWindow$OnDismissListener;
invokevirtual android/widget/PopupWindow/setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
aload 0
getfield com/nd/android/u/tast/experience/activity/TaskWebViewActivity/mAnimPop Landroid/widget/PopupWindow;
new android/graphics/drawable/BitmapDrawable
dup
invokespecial android/graphics/drawable/BitmapDrawable/<init>()V
invokevirtual android/widget/PopupWindow/setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
aload 0
getfield com/nd/android/u/tast/experience/activity/TaskWebViewActivity/mAnimPop Landroid/widget/PopupWindow;
iconst_1
invokevirtual android/widget/PopupWindow/setOutsideTouchable(Z)V
L0:
aload 0
getfield com/nd/android/u/tast/experience/activity/TaskWebViewActivity/mAnimImageView Lcom/product/android/ui/widget/AnimImageView;
iconst_3
invokevirtual com/product/android/ui/widget/AnimImageView/showState(I)V
aload 0
getfield com/nd/android/u/tast/experience/activity/TaskWebViewActivity/mAnimPop Landroid/widget/PopupWindow;
aload 0
getfield com/nd/android/u/tast/experience/activity/TaskWebViewActivity/wv Landroid/webkit/WebView;
bipush 17
iconst_0
iconst_0
invokevirtual android/widget/PopupWindow/showAtLocation(Landroid/view/View;III)V
return
.limit locals 3
.limit stack 6
.end method

.method private showProgressDialog()V
return
.limit locals 1
.limit stack 0
.end method

.method private startDownload(Ljava/lang/String;)V
invokestatic com/product/android/utils/FileHelper/getDownloadFilePath()Ljava/lang/String;
astore 2
new com/common/android/utils/download/DownloadModule
dup
aload 0
invokespecial com/common/android/utils/download/DownloadModule/<init>(Landroid/content/Context;)V
astore 3
aload 3
aload 0
getstatic com/nd/android/u/tasklib/R$string/app_download I
invokevirtual com/nd/android/u/tast/experience/activity/TaskWebViewActivity/getString(I)Ljava/lang/String;
invokevirtual com/common/android/utils/download/DownloadModule/setSoftName(Ljava/lang/String;)V
aload 3
aload 2
invokevirtual com/common/android/utils/download/DownloadModule/setDownloadDirPath(Ljava/lang/String;)V
aload 3
invokestatic java/util/UUID/randomUUID()Ljava/util/UUID;
invokevirtual java/util/UUID/toString()Ljava/lang/String;
invokevirtual com/common/android/utils/download/DownloadModule/setDownloadFileName(Ljava/lang/String;)V
aload 3
aconst_null
invokevirtual com/common/android/utils/download/DownloadModule/setIntentClassName(Ljava/lang/Class;)V
aload 3
aload 1
invokevirtual com/common/android/utils/download/DownloadModule/setSoftUrl(Ljava/lang/String;)V
aload 3
getstatic com/product/android/business/config/Configuration/NOTIFICATION_ICON I
invokevirtual com/common/android/utils/download/DownloadModule/setDownloadIco(I)V
aload 3
iconst_1
invokevirtual com/common/android/utils/download/DownloadModule/setNuseProxy(Z)V
aload 3
sipush 10001
invokevirtual com/common/android/utils/download/DownloadModule/setSoftUid(I)V
aload 3
invokevirtual com/common/android/utils/download/DownloadModule/Start()V
return
.limit locals 4
.limit stack 3
.end method

.method private startDownloadAudio(Ljava/lang/String;)V
.catch java/io/IOException from L0 to L1 using L2
aload 0
invokespecial com/nd/android/u/tast/experience/activity/TaskWebViewActivity/showProgressDialog()V
L0:
aload 1
invokestatic com/product/android/utils/FileHelper/getDefaultAudioFile(Ljava/lang/String;)Ljava/io/File;
astore 2
aload 0
getfield com/nd/android/u/tast/experience/activity/TaskWebViewActivity/mDownloadManager Lcom/common/android/utils/download/ProgressDownloadManager;
aload 1
aload 2
invokevirtual com/common/android/utils/download/ProgressDownloadManager/startDownload(Ljava/lang/String;Ljava/io/File;)V
aload 0
getfield com/nd/android/u/tast/experience/activity/TaskWebViewActivity/mDownloadManager Lcom/common/android/utils/download/ProgressDownloadManager;
aload 0
getfield com/nd/android/u/tast/experience/activity/TaskWebViewActivity/listener Lcom/common/android/utils/download/ProgressDownloadManager$onDonwloadListener;
invokevirtual com/common/android/utils/download/ProgressDownloadManager/setOnDownloadListener(Lcom/common/android/utils/download/ProgressDownloadManager$onDonwloadListener;)V
L1:
return
L2:
astore 1
aload 1
invokevirtual java/io/IOException/printStackTrace()V
return
.limit locals 3
.limit stack 3
.end method

.method protected _onCreate(Landroid/os/Bundle;)Z
aload 0
aload 1
invokespecial com/product/android/ui/activity/BaseActivity/_onCreate(Landroid/os/Bundle;)Z
ifeq L0
aload 0
iconst_1
invokevirtual com/nd/android/u/tast/experience/activity/TaskWebViewActivity/requestWindowFeature(I)Z
pop
aload 0
getstatic com/nd/android/u/tasklib/R$layout/webview I
invokevirtual com/nd/android/u/tast/experience/activity/TaskWebViewActivity/setContentView(I)V
aload 0
aload 0
invokevirtual com/nd/android/u/tast/experience/activity/TaskWebViewActivity/getIntent()Landroid/content/Intent;
invokevirtual android/content/Intent/getExtras()Landroid/os/Bundle;
getstatic com/nd/android/u/tast/experience/activity/TaskWebViewActivity/EXTARS_WEBVIEW_URL Ljava/lang/String;
invokevirtual android/os/Bundle/getString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/tast/experience/activity/TaskWebViewActivity/url Ljava/lang/String;
aload 0
invokevirtual com/nd/android/u/tast/experience/activity/TaskWebViewActivity/getIntent()Landroid/content/Intent;
invokevirtual android/content/Intent/getExtras()Landroid/os/Bundle;
getstatic com/nd/android/u/tast/experience/activity/TaskWebViewActivity/EXTARS_WEBVIEW_NEED_TITLE Ljava/lang/String;
invokevirtual android/os/Bundle/containsKey(Ljava/lang/String;)Z
ifeq L1
aload 0
aload 0
invokevirtual com/nd/android/u/tast/experience/activity/TaskWebViewActivity/getIntent()Landroid/content/Intent;
invokevirtual android/content/Intent/getExtras()Landroid/os/Bundle;
getstatic com/nd/android/u/tast/experience/activity/TaskWebViewActivity/EXTARS_WEBVIEW_NEED_TITLE Ljava/lang/String;
invokevirtual android/os/Bundle/getString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/tast/experience/activity/TaskWebViewActivity/needTitle Ljava/lang/String;
L1:
aload 0
aload 0
invokevirtual com/nd/android/u/tast/experience/activity/TaskWebViewActivity/getIntent()Landroid/content/Intent;
invokevirtual android/content/Intent/getExtras()Landroid/os/Bundle;
getstatic com/nd/android/u/tast/experience/activity/TaskWebViewActivity/EXTARS_WEBVIEW_RETURN Ljava/lang/String;
invokevirtual android/os/Bundle/getBoolean(Ljava/lang/String;)Z
putfield com/nd/android/u/tast/experience/activity/TaskWebViewActivity/redesk Z
aload 0
invokevirtual com/nd/android/u/tast/experience/activity/TaskWebViewActivity/getIntent()Landroid/content/Intent;
invokevirtual android/content/Intent/getExtras()Landroid/os/Bundle;
getstatic com/nd/android/u/tast/experience/activity/TaskWebViewActivity/EXTARS_WEBVIEW_BOTTOMHIDE Ljava/lang/String;
invokevirtual android/os/Bundle/containsKey(Ljava/lang/String;)Z
ifeq L2
aload 0
aload 0
invokevirtual com/nd/android/u/tast/experience/activity/TaskWebViewActivity/getIntent()Landroid/content/Intent;
invokevirtual android/content/Intent/getExtras()Landroid/os/Bundle;
getstatic com/nd/android/u/tast/experience/activity/TaskWebViewActivity/EXTARS_WEBVIEW_BOTTOMHIDE Ljava/lang/String;
invokevirtual android/os/Bundle/getBoolean(Ljava/lang/String;)Z
putfield com/nd/android/u/tast/experience/activity/TaskWebViewActivity/webViewBottomHide Z
L2:
aload 0
invokevirtual com/nd/android/u/tast/experience/activity/TaskWebViewActivity/getIntent()Landroid/content/Intent;
invokevirtual android/content/Intent/getExtras()Landroid/os/Bundle;
getstatic com/nd/android/u/tast/experience/activity/TaskWebViewActivity/EXTARS_WEBVIEW_REFRESH Ljava/lang/String;
invokevirtual android/os/Bundle/containsKey(Ljava/lang/String;)Z
ifeq L3
aload 0
aload 0
invokevirtual com/nd/android/u/tast/experience/activity/TaskWebViewActivity/getIntent()Landroid/content/Intent;
invokevirtual android/content/Intent/getExtras()Landroid/os/Bundle;
getstatic com/nd/android/u/tast/experience/activity/TaskWebViewActivity/EXTARS_WEBVIEW_REFRESH Ljava/lang/String;
invokevirtual android/os/Bundle/getBoolean(Ljava/lang/String;)Z
putfield com/nd/android/u/tast/experience/activity/TaskWebViewActivity/webViewRefresh Z
L3:
aload 0
invokevirtual com/nd/android/u/tast/experience/activity/TaskWebViewActivity/getIntent()Landroid/content/Intent;
invokevirtual android/content/Intent/getExtras()Landroid/os/Bundle;
getstatic com/nd/android/u/tast/experience/activity/TaskWebViewActivity/EXTARS_WEBVIEW_HASCOOKIE Ljava/lang/String;
invokevirtual android/os/Bundle/containsKey(Ljava/lang/String;)Z
ifeq L4
aload 0
aload 0
invokevirtual com/nd/android/u/tast/experience/activity/TaskWebViewActivity/getIntent()Landroid/content/Intent;
invokevirtual android/content/Intent/getExtras()Landroid/os/Bundle;
getstatic com/nd/android/u/tast/experience/activity/TaskWebViewActivity/EXTARS_WEBVIEW_HASCOOKIE Ljava/lang/String;
invokevirtual android/os/Bundle/getBoolean(Ljava/lang/String;)Z
putfield com/nd/android/u/tast/experience/activity/TaskWebViewActivity/hasCookie Z
L4:
aload 0
invokevirtual com/nd/android/u/tast/experience/activity/TaskWebViewActivity/getIntent()Landroid/content/Intent;
invokevirtual android/content/Intent/getExtras()Landroid/os/Bundle;
getstatic com/nd/android/u/tast/experience/activity/TaskWebViewActivity/EXTARS_WEBVIEW_ZOOMSUPPORT Ljava/lang/String;
invokevirtual android/os/Bundle/containsKey(Ljava/lang/String;)Z
ifeq L5
aload 0
aload 0
invokevirtual com/nd/android/u/tast/experience/activity/TaskWebViewActivity/getIntent()Landroid/content/Intent;
invokevirtual android/content/Intent/getExtras()Landroid/os/Bundle;
getstatic com/nd/android/u/tast/experience/activity/TaskWebViewActivity/EXTARS_WEBVIEW_ZOOMSUPPORT Ljava/lang/String;
invokevirtual android/os/Bundle/getBoolean(Ljava/lang/String;)Z
putfield com/nd/android/u/tast/experience/activity/TaskWebViewActivity/zoomsupport Z
L5:
aload 0
invokevirtual com/nd/android/u/tast/experience/activity/TaskWebViewActivity/getIntent()Landroid/content/Intent;
invokevirtual android/content/Intent/getExtras()Landroid/os/Bundle;
getstatic com/nd/android/u/tast/experience/activity/TaskWebViewActivity/EXTARS_WEBVIEW_CHECK_OVERRIDEURL Ljava/lang/String;
invokevirtual android/os/Bundle/containsKey(Ljava/lang/String;)Z
ifeq L6
aload 0
aload 0
invokevirtual com/nd/android/u/tast/experience/activity/TaskWebViewActivity/getIntent()Landroid/content/Intent;
invokevirtual android/content/Intent/getExtras()Landroid/os/Bundle;
getstatic com/nd/android/u/tast/experience/activity/TaskWebViewActivity/EXTARS_WEBVIEW_CHECK_OVERRIDEURL Ljava/lang/String;
invokevirtual android/os/Bundle/getBoolean(Ljava/lang/String;)Z
putfield com/nd/android/u/tast/experience/activity/TaskWebViewActivity/overrideurl Z
L6:
aload 0
invokevirtual com/nd/android/u/tast/experience/activity/TaskWebViewActivity/initComponent()V
aload 0
getfield com/nd/android/u/tast/experience/activity/TaskWebViewActivity/activitytitle Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/tast/experience/activity/TaskWebViewActivity/needTitle Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
aload 0
getfield com/nd/android/u/tast/experience/activity/TaskWebViewActivity/wv Landroid/webkit/WebView;
aload 0
getfield com/nd/android/u/tast/experience/activity/TaskWebViewActivity/url Ljava/lang/String;
invokevirtual com/nd/android/u/tast/experience/activity/TaskWebViewActivity/loadurl(Landroid/webkit/WebView;Ljava/lang/String;)V
aload 0
new com/common/android/utils/download/ProgressDownloadManager
dup
invokespecial com/common/android/utils/download/ProgressDownloadManager/<init>()V
putfield com/nd/android/u/tast/experience/activity/TaskWebViewActivity/mDownloadManager Lcom/common/android/utils/download/ProgressDownloadManager;
aload 0
invokespecial com/product/android/ui/activity/BaseActivity/initEvent()V
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 2
.limit stack 3
.end method

.method public initComponent()V
aload 0
invokespecial com/product/android/ui/activity/BaseActivity/initComponent()V
aload 0
aload 0
getstatic com/nd/android/u/tasklib/R$id/app_header_btn_left I
invokevirtual com/nd/android/u/tast/experience/activity/TaskWebViewActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/android/u/tast/experience/activity/TaskWebViewActivity/backapppage Landroid/widget/Button;
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_91XY Lcom/product/android/business/ProductTypeDef$Product;
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
if_acmpne L0
aload 0
getfield com/nd/android/u/tast/experience/activity/TaskWebViewActivity/backapppage Landroid/widget/Button;
getstatic com/nd/android/u/tasklib/R$drawable/xy_btn_header_back_bg I
invokevirtual android/widget/Button/setBackgroundResource(I)V
L1:
aload 0
aload 0
getstatic com/nd/android/u/tasklib/R$id/app_text_title I
invokevirtual com/nd/android/u/tast/experience/activity/TaskWebViewActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/tast/experience/activity/TaskWebViewActivity/activitytitle Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/tasklib/R$id/head_progressBar I
invokevirtual com/nd/android/u/tast/experience/activity/TaskWebViewActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ProgressBar
putfield com/nd/android/u/tast/experience/activity/TaskWebViewActivity/progressBar Landroid/widget/ProgressBar;
aload 0
aload 0
getstatic com/nd/android/u/tasklib/R$id/refresh_page I
invokevirtual com/nd/android/u/tast/experience/activity/TaskWebViewActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/tast/experience/activity/TaskWebViewActivity/refresh_page Landroid/widget/ImageView;
aload 0
aload 0
getstatic com/nd/android/u/tasklib/R$id/home_page I
invokevirtual com/nd/android/u/tast/experience/activity/TaskWebViewActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/tast/experience/activity/TaskWebViewActivity/homepage Landroid/widget/ImageView;
aload 0
aload 0
getstatic com/nd/android/u/tasklib/R$id/back_page I
invokevirtual com/nd/android/u/tast/experience/activity/TaskWebViewActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/tast/experience/activity/TaskWebViewActivity/backpage Landroid/widget/ImageView;
aload 0
aload 0
getstatic com/nd/android/u/tasklib/R$id/forward_page I
invokevirtual com/nd/android/u/tast/experience/activity/TaskWebViewActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/tast/experience/activity/TaskWebViewActivity/forwardpage Landroid/widget/ImageView;
aload 0
aload 0
getstatic com/nd/android/u/tasklib/R$id/reload_page I
invokevirtual com/nd/android/u/tast/experience/activity/TaskWebViewActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/tast/experience/activity/TaskWebViewActivity/reloadpage Landroid/widget/ImageView;
aload 0
aload 0
getstatic com/nd/android/u/tasklib/R$id/webview_foot I
invokevirtual com/nd/android/u/tast/experience/activity/TaskWebViewActivity/findViewById(I)Landroid/view/View;
checkcast android/view/ViewGroup
putfield com/nd/android/u/tast/experience/activity/TaskWebViewActivity/footViewGroup Landroid/view/ViewGroup;
aload 0
aload 0
getstatic com/nd/android/u/tasklib/R$id/home_page_layout I
invokevirtual com/nd/android/u/tast/experience/activity/TaskWebViewActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/android/u/tast/experience/activity/TaskWebViewActivity/homepagely Landroid/widget/LinearLayout;
aload 0
aload 0
getstatic com/nd/android/u/tasklib/R$id/back_page_layout I
invokevirtual com/nd/android/u/tast/experience/activity/TaskWebViewActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/android/u/tast/experience/activity/TaskWebViewActivity/backpagely Landroid/widget/LinearLayout;
aload 0
aload 0
getstatic com/nd/android/u/tasklib/R$id/forward_page_layout I
invokevirtual com/nd/android/u/tast/experience/activity/TaskWebViewActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/android/u/tast/experience/activity/TaskWebViewActivity/forwardpagely Landroid/widget/LinearLayout;
aload 0
aload 0
getstatic com/nd/android/u/tasklib/R$id/reload_page_layout I
invokevirtual com/nd/android/u/tast/experience/activity/TaskWebViewActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/android/u/tast/experience/activity/TaskWebViewActivity/reloadpagely Landroid/widget/LinearLayout;
aload 0
getfield com/nd/android/u/tast/experience/activity/TaskWebViewActivity/refresh_page Landroid/widget/ImageView;
aload 0
getfield com/nd/android/u/tast/experience/activity/TaskWebViewActivity/imgOnClick Landroid/view/View$OnClickListener;
invokevirtual android/widget/ImageView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/tast/experience/activity/TaskWebViewActivity/homepagely Landroid/widget/LinearLayout;
aload 0
getfield com/nd/android/u/tast/experience/activity/TaskWebViewActivity/imgOnClick Landroid/view/View$OnClickListener;
invokevirtual android/widget/LinearLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/tast/experience/activity/TaskWebViewActivity/backpagely Landroid/widget/LinearLayout;
aload 0
getfield com/nd/android/u/tast/experience/activity/TaskWebViewActivity/imgOnClick Landroid/view/View$OnClickListener;
invokevirtual android/widget/LinearLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/tast/experience/activity/TaskWebViewActivity/forwardpagely Landroid/widget/LinearLayout;
aload 0
getfield com/nd/android/u/tast/experience/activity/TaskWebViewActivity/imgOnClick Landroid/view/View$OnClickListener;
invokevirtual android/widget/LinearLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/tast/experience/activity/TaskWebViewActivity/reloadpagely Landroid/widget/LinearLayout;
aload 0
getfield com/nd/android/u/tast/experience/activity/TaskWebViewActivity/imgOnClick Landroid/view/View$OnClickListener;
invokevirtual android/widget/LinearLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/tast/experience/activity/TaskWebViewActivity/backapppage Landroid/widget/Button;
aload 0
getfield com/nd/android/u/tast/experience/activity/TaskWebViewActivity/imgOnClick Landroid/view/View$OnClickListener;
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
aload 0
getstatic com/nd/android/u/tasklib/R$id/webview I
invokevirtual com/nd/android/u/tast/experience/activity/TaskWebViewActivity/findViewById(I)Landroid/view/View;
checkcast android/webkit/WebView
putfield com/nd/android/u/tast/experience/activity/TaskWebViewActivity/wv Landroid/webkit/WebView;
aload 0
getfield com/nd/android/u/tast/experience/activity/TaskWebViewActivity/webViewBottomHide Z
ifeq L2
aload 0
getfield com/nd/android/u/tast/experience/activity/TaskWebViewActivity/footViewGroup Landroid/view/ViewGroup;
bipush 8
invokevirtual android/view/ViewGroup/setVisibility(I)V
L3:
aload 0
new com/common/android/utils/audio/AudioAnimManager
dup
aload 0
invokespecial com/common/android/utils/audio/AudioAnimManager/<init>(Landroid/content/Context;)V
putfield com/nd/android/u/tast/experience/activity/TaskWebViewActivity/mAudioAnimManager Lcom/common/android/utils/audio/AudioAnimManager;
aload 0
getfield com/nd/android/u/tast/experience/activity/TaskWebViewActivity/mAudioAnimManager Lcom/common/android/utils/audio/AudioAnimManager;
aload 0
getfield com/nd/android/u/tast/experience/activity/TaskWebViewActivity/audioAnimListener Lcom/common/android/utils/audio/AudioAnimManager$onPlayAudioAnimListener;
invokevirtual com/common/android/utils/audio/AudioAnimManager/setOnPlayAudioAnimListener(Lcom/common/android/utils/audio/AudioAnimManager$onPlayAudioAnimListener;)V
aload 0
invokevirtual com/nd/android/u/tast/experience/activity/TaskWebViewActivity/initWebViewComponent()V
return
L0:
aload 0
getfield com/nd/android/u/tast/experience/activity/TaskWebViewActivity/backapppage Landroid/widget/Button;
getstatic com/nd/android/u/tasklib/R$drawable/bt_header_return_bg I
invokevirtual android/widget/Button/setBackgroundResource(I)V
goto L1
L2:
aload 0
getfield com/nd/android/u/tast/experience/activity/TaskWebViewActivity/footViewGroup Landroid/view/ViewGroup;
iconst_0
invokevirtual android/view/ViewGroup/setVisibility(I)V
goto L3
.limit locals 1
.limit stack 4
.end method

.method public initWebViewComponent()V
aload 0
getfield com/nd/android/u/tast/experience/activity/TaskWebViewActivity/wv Landroid/webkit/WebView;
invokevirtual android/webkit/WebView/getSettings()Landroid/webkit/WebSettings;
iconst_1
invokevirtual android/webkit/WebSettings/setJavaScriptEnabled(Z)V
aload 0
getfield com/nd/android/u/tast/experience/activity/TaskWebViewActivity/wv Landroid/webkit/WebView;
iconst_0
invokevirtual android/webkit/WebView/setScrollBarStyle(I)V
aload 0
getfield com/nd/android/u/tast/experience/activity/TaskWebViewActivity/wv Landroid/webkit/WebView;
invokevirtual android/webkit/WebView/getSettings()Landroid/webkit/WebSettings;
aload 0
getfield com/nd/android/u/tast/experience/activity/TaskWebViewActivity/zoomsupport Z
invokevirtual android/webkit/WebSettings/setSupportZoom(Z)V
aload 0
getfield com/nd/android/u/tast/experience/activity/TaskWebViewActivity/wv Landroid/webkit/WebView;
invokevirtual android/webkit/WebView/getSettings()Landroid/webkit/WebSettings;
aload 0
getfield com/nd/android/u/tast/experience/activity/TaskWebViewActivity/zoomsupport Z
invokevirtual android/webkit/WebSettings/setBuiltInZoomControls(Z)V
aload 0
getfield com/nd/android/u/tast/experience/activity/TaskWebViewActivity/wv Landroid/webkit/WebView;
invokevirtual android/webkit/WebView/getSettings()Landroid/webkit/WebSettings;
iconst_2
invokevirtual android/webkit/WebSettings/setCacheMode(I)V
aload 0
getfield com/nd/android/u/tast/experience/activity/TaskWebViewActivity/wv Landroid/webkit/WebView;
new com/nd/android/u/tast/experience/activity/TaskWebViewActivity$2
dup
aload 0
invokespecial com/nd/android/u/tast/experience/activity/TaskWebViewActivity$2/<init>(Lcom/nd/android/u/tast/experience/activity/TaskWebViewActivity;)V
invokevirtual android/webkit/WebView/setWebViewClient(Landroid/webkit/WebViewClient;)V
aload 0
getfield com/nd/android/u/tast/experience/activity/TaskWebViewActivity/wv Landroid/webkit/WebView;
new com/nd/android/u/tast/experience/activity/TaskWebViewActivity$3
dup
aload 0
invokespecial com/nd/android/u/tast/experience/activity/TaskWebViewActivity$3/<init>(Lcom/nd/android/u/tast/experience/activity/TaskWebViewActivity;)V
invokevirtual android/webkit/WebView/setWebChromeClient(Landroid/webkit/WebChromeClient;)V
aload 0
getfield com/nd/android/u/tast/experience/activity/TaskWebViewActivity/wv Landroid/webkit/WebView;
new com/nd/android/u/tast/experience/activity/TaskWebViewActivity$MyWebViewDownLoadListener
dup
aload 0
aconst_null
invokespecial com/nd/android/u/tast/experience/activity/TaskWebViewActivity$MyWebViewDownLoadListener/<init>(Lcom/nd/android/u/tast/experience/activity/TaskWebViewActivity;Lcom/nd/android/u/tast/experience/activity/TaskWebViewActivity$1;)V
invokevirtual android/webkit/WebView/setDownloadListener(Landroid/webkit/DownloadListener;)V
return
.limit locals 1
.limit stack 5
.end method

.method public loadurl(Landroid/webkit/WebView;Ljava/lang/String;)V
new com/nd/android/u/tast/experience/activity/TaskWebViewActivity$5
dup
aload 0
aload 1
aload 2
invokespecial com/nd/android/u/tast/experience/activity/TaskWebViewActivity$5/<init>(Lcom/nd/android/u/tast/experience/activity/TaskWebViewActivity;Landroid/webkit/WebView;Ljava/lang/String;)V
invokevirtual com/nd/android/u/tast/experience/activity/TaskWebViewActivity$5/start()V
return
.limit locals 3
.limit stack 5
.end method

.method public onBackPressed()V
aload 0
getfield com/nd/android/u/tast/experience/activity/TaskWebViewActivity/mAnimPop Landroid/widget/PopupWindow;
ifnull L0
aload 0
getfield com/nd/android/u/tast/experience/activity/TaskWebViewActivity/mAnimPop Landroid/widget/PopupWindow;
invokevirtual android/widget/PopupWindow/isShowing()Z
ifeq L0
aload 0
getfield com/nd/android/u/tast/experience/activity/TaskWebViewActivity/mAudioAnimManager Lcom/common/android/utils/audio/AudioAnimManager;
invokevirtual com/common/android/utils/audio/AudioAnimManager/stopPlay()V
return
L0:
aload 0
invokespecial com/product/android/ui/activity/BaseActivity/onBackPressed()V
return
.limit locals 1
.limit stack 1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
aload 0
getfield com/nd/android/u/tast/experience/activity/TaskWebViewActivity/webviewCanBack Z
ifeq L0
iload 1
iconst_4
if_icmpne L0
aload 0
getfield com/nd/android/u/tast/experience/activity/TaskWebViewActivity/wv Landroid/webkit/WebView;
invokevirtual android/webkit/WebView/canGoBack()Z
ifeq L0
aload 0
getfield com/nd/android/u/tast/experience/activity/TaskWebViewActivity/wv Landroid/webkit/WebView;
invokevirtual android/webkit/WebView/goBack()V
iconst_1
ireturn
L0:
aload 0
iload 1
aload 2
invokespecial com/product/android/ui/activity/BaseActivity/onKeyDown(ILandroid/view/KeyEvent;)Z
ireturn
.limit locals 3
.limit stack 3
.end method

.method public reloadurl(Landroid/webkit/WebView;)V
new com/nd/android/u/tast/experience/activity/TaskWebViewActivity$6
dup
aload 0
aload 1
invokespecial com/nd/android/u/tast/experience/activity/TaskWebViewActivity$6/<init>(Lcom/nd/android/u/tast/experience/activity/TaskWebViewActivity;Landroid/webkit/WebView;)V
invokevirtual com/nd/android/u/tast/experience/activity/TaskWebViewActivity$6/start()V
return
.limit locals 2
.limit stack 4
.end method

.method public setCookie()V
aload 0
getfield com/nd/android/u/tast/experience/activity/TaskWebViewActivity/wv Landroid/webkit/WebView;
invokevirtual android/webkit/WebView/getContext()Landroid/content/Context;
invokestatic android/webkit/CookieSyncManager/createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;
astore 1
invokestatic android/webkit/CookieManager/getInstance()Landroid/webkit/CookieManager;
astore 2
aload 2
iconst_1
invokevirtual android/webkit/CookieManager/setAcceptCookie(Z)V
aload 2
aload 0
getfield com/nd/android/u/tast/experience/activity/TaskWebViewActivity/url Ljava/lang/String;
ldc "Client-Type=mobile"
invokevirtual android/webkit/CookieManager/setCookie(Ljava/lang/String;Ljava/lang/String;)V
aload 1
invokevirtual android/webkit/CookieSyncManager/sync()V
return
.limit locals 3
.limit stack 3
.end method
