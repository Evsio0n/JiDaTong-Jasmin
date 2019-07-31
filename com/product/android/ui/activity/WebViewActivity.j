.bytecode 50.0
.class public synchronized com/product/android/ui/activity/WebViewActivity
.super com/product/android/ui/activity/BaseActivity
.annotation invisible Landroid/annotation/SuppressLint;
value [s = "SetJavaScriptEnabled" 
.end annotation
.inner class inner com/product/android/ui/activity/WebViewActivity$1
.inner class inner com/product/android/ui/activity/WebViewActivity$10
.inner class inner com/product/android/ui/activity/WebViewActivity$2
.inner class inner com/product/android/ui/activity/WebViewActivity$2$1
.inner class inner com/product/android/ui/activity/WebViewActivity$3
.inner class inner com/product/android/ui/activity/WebViewActivity$4
.inner class inner com/product/android/ui/activity/WebViewActivity$5
.inner class inner com/product/android/ui/activity/WebViewActivity$6
.inner class inner com/product/android/ui/activity/WebViewActivity$7
.inner class inner com/product/android/ui/activity/WebViewActivity$8
.inner class inner com/product/android/ui/activity/WebViewActivity$9
.inner class private DownloadTask inner com/product/android/ui/activity/WebViewActivity$DownloadTask outer com/product/android/ui/activity/WebViewActivity
.inner class final JavaScriptInterface inner com/product/android/ui/activity/WebViewActivity$JavaScriptInterface outer com/product/android/ui/activity/WebViewActivity
.inner class private MyWebViewDownLoadListener inner com/product/android/ui/activity/WebViewActivity$MyWebViewDownLoadListener outer com/product/android/ui/activity/WebViewActivity

.field private static 'CURRENT' I = 0


.field public static final 'DIALOG_ID' I = 1


.field public static final 'DOWNLOAD_FAILD' I = 101


.field public static final 'DOWNLOAD_SUCS' I = 102


.field public static 'EXTARS_WEBVIEW_BOTTOMHIDE' Ljava/lang/String;

.field public static 'EXTARS_WEBVIEW_HASCOOKIE' Ljava/lang/String;

.field public static 'EXTARS_WEBVIEW_NEED_TITLE' Ljava/lang/String;

.field public static 'EXTARS_WEBVIEW_PSPID' Ljava/lang/String;

.field public static 'EXTARS_WEBVIEW_REFRESH' Ljava/lang/String;

.field public static 'EXTARS_WEBVIEW_RETURN' Ljava/lang/String;

.field public static 'EXTARS_WEBVIEW_URL' Ljava/lang/String;

.field public static 'EXTARS_WEBVIEW_WEBONLY' Ljava/lang/String;

.field public static 'EXTARS_WEBVIEW_ZOOMSUPPORT' Ljava/lang/String;

.field public static final 'FILECHOOSER_RESULTCODE' I = 5173


.field public static final 'FILECHOOSER_RESULTCODE_FOR_ANDROID_5' I = 5174


.field public static final 'SET_DATE' I = 3


.field public static 'UNSUB_PSP' Ljava/lang/String;

.field private final 'TAG' Ljava/lang/String;

.field private 'activitytitle' Landroid/widget/TextView;

.field private 'audioAnimListener' Lcom/common/android/utils/audio/AudioAnimManager$onPlayAudioAnimListener;

.field private 'backapppage' Landroid/widget/Button;

.field private 'backpage' Landroid/widget/ImageView;

.field private 'backpagely' Landroid/widget/LinearLayout;

.field private 'dateSetListener' Lcom/common/android/ui/widget/DatePopupWindow$onDateSetListener;

.field private 'footViewGroup' Landroid/view/ViewGroup;

.field private 'forwardpage' Landroid/widget/ImageView;

.field private 'forwardpagely' Landroid/widget/LinearLayout;

.field 'handler' Landroid/os/Handler;

.field private 'hasCookie' Z

.field private 'homepage' Landroid/widget/ImageView;

.field private 'homepagely' Landroid/widget/LinearLayout;

.field private 'imgOnClick' Landroid/view/View$OnClickListener;

.field private 'isOnPause' Z

.field private 'jsMethods' Ljava/util/List; signature "Ljava/util/List<Lnet/newcapec/pay/webview/JsMethodInterface;>;"

.field private 'listener' Lcom/common/android/utils/download/ProgressDownloadManager$onDonwloadListener;

.field private 'mAnimImageView' Lcom/product/android/ui/widget/AnimImageView;

.field private 'mAnimPop' Landroid/widget/PopupWindow;

.field private 'mArrayDate' [Ljava/lang/String;

.field private 'mAudioAnimManager' Lcom/common/android/utils/audio/AudioAnimManager;

.field private 'mDatePicker' Lcom/common/android/ui/widget/DatePopupWindow;

.field private 'mDateString' Ljava/lang/String;

.field private 'mDownloadManager' Lcom/common/android/utils/download/ProgressDownloadManager;

.field private 'mDownloadTask' Lcom/product/android/ui/activity/WebViewActivity$DownloadTask;

.field private 'mIsWebOnly' Z

.field private 'mPspId' Ljava/lang/String;

.field private 'mUploadMessage' Landroid/webkit/ValueCallback; signature "Landroid/webkit/ValueCallback<Landroid/net/Uri;>;"

.field private 'mUploadMessage5' Landroid/webkit/ValueCallback; signature "Landroid/webkit/ValueCallback<[Landroid/net/Uri;>;"

.field private 'mWebView' Landroid/webkit/WebView;

.field private 'needTitle' Ljava/lang/String;

.field private 'onAnimDismissListener' Landroid/widget/PopupWindow$OnDismissListener;

.field private 'progressBar' Landroid/widget/ProgressBar;

.field 'redesk' Z

.field private 'refresh_page' Landroid/widget/ImageView;

.field private 'reloadpage' Landroid/widget/ImageView;

.field private 'reloadpagely' Landroid/widget/LinearLayout;

.field private 'url' Ljava/lang/String;

.field private 'webViewBottomHide' Z

.field private 'webViewRefresh' Z

.field private 'webviewCanBack' Z

.field private 'zoomsupport' Z

.method static <clinit>()V
iconst_0
putstatic com/product/android/ui/activity/WebViewActivity/CURRENT I
ldc "extars_webview_url"
putstatic com/product/android/ui/activity/WebViewActivity/EXTARS_WEBVIEW_URL Ljava/lang/String;
ldc "extars_webview_title"
putstatic com/product/android/ui/activity/WebViewActivity/EXTARS_WEBVIEW_NEED_TITLE Ljava/lang/String;
ldc "extars_webview_return"
putstatic com/product/android/ui/activity/WebViewActivity/EXTARS_WEBVIEW_RETURN Ljava/lang/String;
ldc "extars_webview_bottomhide"
putstatic com/product/android/ui/activity/WebViewActivity/EXTARS_WEBVIEW_BOTTOMHIDE Ljava/lang/String;
ldc "extars_webview_refresh"
putstatic com/product/android/ui/activity/WebViewActivity/EXTARS_WEBVIEW_REFRESH Ljava/lang/String;
ldc "extars_webview_hascookie"
putstatic com/product/android/ui/activity/WebViewActivity/EXTARS_WEBVIEW_HASCOOKIE Ljava/lang/String;
ldc "extars_webview_zoomsupport"
putstatic com/product/android/ui/activity/WebViewActivity/EXTARS_WEBVIEW_ZOOMSUPPORT Ljava/lang/String;
ldc "extars_webview_webonly"
putstatic com/product/android/ui/activity/WebViewActivity/EXTARS_WEBVIEW_WEBONLY Ljava/lang/String;
ldc "extars_webview_pspid"
putstatic com/product/android/ui/activity/WebViewActivity/EXTARS_WEBVIEW_PSPID Ljava/lang/String;
ldc "unsub_psp_"
putstatic com/product/android/ui/activity/WebViewActivity/UNSUB_PSP Ljava/lang/String;
return
.limit locals 0
.limit stack 1
.end method

.method public <init>()V
aload 0
invokespecial com/product/android/ui/activity/BaseActivity/<init>()V
aload 0
ldc "NewWebViewActivity"
putfield com/product/android/ui/activity/WebViewActivity/TAG Ljava/lang/String;
aload 0
iconst_1
putfield com/product/android/ui/activity/WebViewActivity/webviewCanBack Z
aload 0
iconst_0
putfield com/product/android/ui/activity/WebViewActivity/webViewBottomHide Z
aload 0
iconst_0
putfield com/product/android/ui/activity/WebViewActivity/webViewRefresh Z
aload 0
ldc ""
putfield com/product/android/ui/activity/WebViewActivity/needTitle Ljava/lang/String;
aload 0
iconst_0
putfield com/product/android/ui/activity/WebViewActivity/hasCookie Z
aload 0
iconst_1
putfield com/product/android/ui/activity/WebViewActivity/zoomsupport Z
aload 0
iconst_0
putfield com/product/android/ui/activity/WebViewActivity/isOnPause Z
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/product/android/ui/activity/WebViewActivity/jsMethods Ljava/util/List;
aload 0
new com/product/android/ui/activity/WebViewActivity$1
dup
aload 0
invokespecial com/product/android/ui/activity/WebViewActivity$1/<init>(Lcom/product/android/ui/activity/WebViewActivity;)V
putfield com/product/android/ui/activity/WebViewActivity/handler Landroid/os/Handler;
aload 0
iconst_0
putfield com/product/android/ui/activity/WebViewActivity/mIsWebOnly Z
aload 0
new com/product/android/ui/activity/WebViewActivity$2
dup
aload 0
invokespecial com/product/android/ui/activity/WebViewActivity$2/<init>(Lcom/product/android/ui/activity/WebViewActivity;)V
putfield com/product/android/ui/activity/WebViewActivity/audioAnimListener Lcom/common/android/utils/audio/AudioAnimManager$onPlayAudioAnimListener;
aload 0
new com/product/android/ui/activity/WebViewActivity$3
dup
aload 0
invokespecial com/product/android/ui/activity/WebViewActivity$3/<init>(Lcom/product/android/ui/activity/WebViewActivity;)V
putfield com/product/android/ui/activity/WebViewActivity/onAnimDismissListener Landroid/widget/PopupWindow$OnDismissListener;
aload 0
new com/product/android/ui/activity/WebViewActivity$7
dup
aload 0
invokespecial com/product/android/ui/activity/WebViewActivity$7/<init>(Lcom/product/android/ui/activity/WebViewActivity;)V
putfield com/product/android/ui/activity/WebViewActivity/imgOnClick Landroid/view/View$OnClickListener;
aload 0
new com/product/android/ui/activity/WebViewActivity$9
dup
aload 0
invokespecial com/product/android/ui/activity/WebViewActivity$9/<init>(Lcom/product/android/ui/activity/WebViewActivity;)V
putfield com/product/android/ui/activity/WebViewActivity/listener Lcom/common/android/utils/download/ProgressDownloadManager$onDonwloadListener;
aload 0
new com/product/android/ui/activity/WebViewActivity$10
dup
aload 0
invokespecial com/product/android/ui/activity/WebViewActivity$10/<init>(Lcom/product/android/ui/activity/WebViewActivity;)V
putfield com/product/android/ui/activity/WebViewActivity/dateSetListener Lcom/common/android/ui/widget/DatePopupWindow$onDateSetListener;
return
.limit locals 1
.limit stack 4
.end method

.method static synthetic access$000(Lcom/product/android/ui/activity/WebViewActivity;)Landroid/widget/ProgressBar;
aload 0
getfield com/product/android/ui/activity/WebViewActivity/progressBar Landroid/widget/ProgressBar;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/product/android/ui/activity/WebViewActivity;)Landroid/widget/ImageView;
aload 0
getfield com/product/android/ui/activity/WebViewActivity/refresh_page Landroid/widget/ImageView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1000(Lcom/product/android/ui/activity/WebViewActivity;)Landroid/widget/TextView;
aload 0
getfield com/product/android/ui/activity/WebViewActivity/activitytitle Landroid/widget/TextView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1102(Lcom/product/android/ui/activity/WebViewActivity;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;
aload 0
aload 1
putfield com/product/android/ui/activity/WebViewActivity/mUploadMessage Landroid/webkit/ValueCallback;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$1200(Lcom/product/android/ui/activity/WebViewActivity;)Landroid/webkit/ValueCallback;
aload 0
getfield com/product/android/ui/activity/WebViewActivity/mUploadMessage5 Landroid/webkit/ValueCallback;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1202(Lcom/product/android/ui/activity/WebViewActivity;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;
aload 0
aload 1
putfield com/product/android/ui/activity/WebViewActivity/mUploadMessage5 Landroid/webkit/ValueCallback;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$1400(Lcom/product/android/ui/activity/WebViewActivity;)Z
aload 0
getfield com/product/android/ui/activity/WebViewActivity/hasCookie Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1500(Lcom/product/android/ui/activity/WebViewActivity;Ljava/lang/String;)V
aload 0
aload 1
invokespecial com/product/android/ui/activity/WebViewActivity/startDownloadAudio(Ljava/lang/String;)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$1600(Lcom/product/android/ui/activity/WebViewActivity;Ljava/lang/String;)V
aload 0
aload 1
invokespecial com/product/android/ui/activity/WebViewActivity/startDownload(Ljava/lang/String;)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$1800(Lcom/product/android/ui/activity/WebViewActivity;)[Ljava/lang/String;
aload 0
getfield com/product/android/ui/activity/WebViewActivity/mArrayDate [Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1802(Lcom/product/android/ui/activity/WebViewActivity;[Ljava/lang/String;)[Ljava/lang/String;
aload 0
aload 1
putfield com/product/android/ui/activity/WebViewActivity/mArrayDate [Ljava/lang/String;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$1900(Lcom/product/android/ui/activity/WebViewActivity;)Lcom/common/android/ui/widget/DatePopupWindow;
aload 0
getfield com/product/android/ui/activity/WebViewActivity/mDatePicker Lcom/common/android/ui/widget/DatePopupWindow;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1902(Lcom/product/android/ui/activity/WebViewActivity;Lcom/common/android/ui/widget/DatePopupWindow;)Lcom/common/android/ui/widget/DatePopupWindow;
aload 0
aload 1
putfield com/product/android/ui/activity/WebViewActivity/mDatePicker Lcom/common/android/ui/widget/DatePopupWindow;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$200(Lcom/product/android/ui/activity/WebViewActivity;)V
aload 0
invokespecial com/product/android/ui/activity/WebViewActivity/initToolbarImg()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$2000(Lcom/product/android/ui/activity/WebViewActivity;)Lcom/common/android/ui/widget/DatePopupWindow$onDateSetListener;
aload 0
getfield com/product/android/ui/activity/WebViewActivity/dateSetListener Lcom/common/android/ui/widget/DatePopupWindow$onDateSetListener;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$2100(Lcom/product/android/ui/activity/WebViewActivity;)Lcom/common/android/utils/download/ProgressDownloadManager$onDonwloadListener;
aload 0
getfield com/product/android/ui/activity/WebViewActivity/listener Lcom/common/android/utils/download/ProgressDownloadManager$onDonwloadListener;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$2200(Lcom/product/android/ui/activity/WebViewActivity;)Lcom/common/android/utils/download/ProgressDownloadManager;
aload 0
getfield com/product/android/ui/activity/WebViewActivity/mDownloadManager Lcom/common/android/utils/download/ProgressDownloadManager;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/product/android/ui/activity/WebViewActivity;)Ljava/lang/String;
aload 0
getfield com/product/android/ui/activity/WebViewActivity/mDateString Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$302(Lcom/product/android/ui/activity/WebViewActivity;Ljava/lang/String;)Ljava/lang/String;
aload 0
aload 1
putfield com/product/android/ui/activity/WebViewActivity/mDateString Ljava/lang/String;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$400(Lcom/product/android/ui/activity/WebViewActivity;)Landroid/webkit/WebView;
aload 0
getfield com/product/android/ui/activity/WebViewActivity/mWebView Landroid/webkit/WebView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$500(Lcom/product/android/ui/activity/WebViewActivity;)Lcom/common/android/utils/audio/AudioAnimManager;
aload 0
getfield com/product/android/ui/activity/WebViewActivity/mAudioAnimManager Lcom/common/android/utils/audio/AudioAnimManager;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$600(Lcom/product/android/ui/activity/WebViewActivity;)V
aload 0
invokespecial com/product/android/ui/activity/WebViewActivity/showAudioAnim()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$700(Lcom/product/android/ui/activity/WebViewActivity;)Landroid/widget/PopupWindow;
aload 0
getfield com/product/android/ui/activity/WebViewActivity/mAnimPop Landroid/widget/PopupWindow;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$800(Lcom/product/android/ui/activity/WebViewActivity;)Lcom/product/android/ui/widget/AnimImageView;
aload 0
getfield com/product/android/ui/activity/WebViewActivity/mAnimImageView Lcom/product/android/ui/widget/AnimImageView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$900(Lcom/product/android/ui/activity/WebViewActivity;)Ljava/lang/String;
aload 0
getfield com/product/android/ui/activity/WebViewActivity/needTitle Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method private initNewCapecPay()V
.annotation invisible Landroid/annotation/SuppressLint;
value [s = "JavascriptInterface" 
.end annotation
aload 0
getfield com/product/android/ui/activity/WebViewActivity/jsMethods Ljava/util/List;
new net/newcapec/pay/webview/EcardPayJsMethod
dup
aload 0
aload 0
getfield com/product/android/ui/activity/WebViewActivity/mWebView Landroid/webkit/WebView;
invokespecial net/newcapec/pay/webview/EcardPayJsMethod/<init>(Landroid/app/Activity;Landroid/webkit/WebView;)V
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 0
getfield com/product/android/ui/activity/WebViewActivity/jsMethods Ljava/util/List;
new net/newcapec/pay/webview/PayJsMethod
dup
aload 0
aload 0
getfield com/product/android/ui/activity/WebViewActivity/mWebView Landroid/webkit/WebView;
invokespecial net/newcapec/pay/webview/PayJsMethod/<init>(Landroid/app/Activity;Landroid/webkit/WebView;)V
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 0
getfield com/product/android/ui/activity/WebViewActivity/jsMethods Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 1
L0:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast net/newcapec/pay/webview/JsMethodInterface
astore 2
aload 0
getfield com/product/android/ui/activity/WebViewActivity/mWebView Landroid/webkit/WebView;
aload 2
aload 2
invokeinterface net/newcapec/pay/webview/JsMethodInterface/getBindName()Ljava/lang/String; 0
invokevirtual android/webkit/WebView/addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
goto L0
L1:
return
.limit locals 3
.limit stack 5
.end method

.method private initToolbarImg()V
aload 0
getfield com/product/android/ui/activity/WebViewActivity/mWebView Landroid/webkit/WebView;
invokevirtual android/webkit/WebView/canGoBack()Z
ifeq L0
aload 0
getfield com/product/android/ui/activity/WebViewActivity/backpage Landroid/widget/ImageView;
getstatic com/nd/android/u/allcommon/R$drawable/toolbar_back_normal I
invokevirtual android/widget/ImageView/setImageResource(I)V
aload 0
getfield com/product/android/ui/activity/WebViewActivity/backpagely Landroid/widget/LinearLayout;
iconst_1
invokevirtual android/widget/LinearLayout/setClickable(Z)V
L1:
aload 0
getfield com/product/android/ui/activity/WebViewActivity/mWebView Landroid/webkit/WebView;
invokevirtual android/webkit/WebView/canGoForward()Z
ifeq L2
aload 0
getfield com/product/android/ui/activity/WebViewActivity/forwardpage Landroid/widget/ImageView;
getstatic com/nd/android/u/allcommon/R$drawable/toolbar_forward_normal I
invokevirtual android/widget/ImageView/setImageResource(I)V
aload 0
getfield com/product/android/ui/activity/WebViewActivity/forwardpagely Landroid/widget/LinearLayout;
iconst_1
invokevirtual android/widget/LinearLayout/setClickable(Z)V
return
L0:
aload 0
getfield com/product/android/ui/activity/WebViewActivity/backpage Landroid/widget/ImageView;
getstatic com/nd/android/u/allcommon/R$drawable/toolbar_back_disable I
invokevirtual android/widget/ImageView/setImageResource(I)V
aload 0
getfield com/product/android/ui/activity/WebViewActivity/backpagely Landroid/widget/LinearLayout;
iconst_0
invokevirtual android/widget/LinearLayout/setClickable(Z)V
goto L1
L2:
aload 0
getfield com/product/android/ui/activity/WebViewActivity/forwardpage Landroid/widget/ImageView;
getstatic com/nd/android/u/allcommon/R$drawable/toolbar_forward_disable I
invokevirtual android/widget/ImageView/setImageResource(I)V
aload 0
getfield com/product/android/ui/activity/WebViewActivity/forwardpagely Landroid/widget/LinearLayout;
iconst_0
invokevirtual android/widget/LinearLayout/setClickable(Z)V
return
.limit locals 1
.limit stack 2
.end method

.method private showAudioAnim()V
aload 0
getfield com/product/android/ui/activity/WebViewActivity/mAnimPop Landroid/widget/PopupWindow;
ifnonnull L0
aload 0
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
getstatic com/nd/android/u/allcommon/R$layout/pop_audio_anim I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 2
aload 0
aload 2
getstatic com/nd/android/u/allcommon/R$id/animAudio I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast com/product/android/ui/widget/AnimImageView
putfield com/product/android/ui/activity/WebViewActivity/mAnimImageView Lcom/product/android/ui/widget/AnimImageView;
aload 0
getfield com/product/android/ui/activity/WebViewActivity/mAnimImageView Lcom/product/android/ui/widget/AnimImageView;
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
putfield com/product/android/ui/activity/WebViewActivity/mAnimPop Landroid/widget/PopupWindow;
aload 0
getfield com/product/android/ui/activity/WebViewActivity/mAnimPop Landroid/widget/PopupWindow;
aload 0
getfield com/product/android/ui/activity/WebViewActivity/onAnimDismissListener Landroid/widget/PopupWindow$OnDismissListener;
invokevirtual android/widget/PopupWindow/setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
aload 0
getfield com/product/android/ui/activity/WebViewActivity/mAnimPop Landroid/widget/PopupWindow;
new android/graphics/drawable/BitmapDrawable
dup
invokespecial android/graphics/drawable/BitmapDrawable/<init>()V
invokevirtual android/widget/PopupWindow/setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
aload 0
getfield com/product/android/ui/activity/WebViewActivity/mAnimPop Landroid/widget/PopupWindow;
iconst_1
invokevirtual android/widget/PopupWindow/setOutsideTouchable(Z)V
L0:
aload 0
getfield com/product/android/ui/activity/WebViewActivity/mAnimImageView Lcom/product/android/ui/widget/AnimImageView;
iconst_3
invokevirtual com/product/android/ui/widget/AnimImageView/showState(I)V
aload 0
getfield com/product/android/ui/activity/WebViewActivity/mAnimPop Landroid/widget/PopupWindow;
aload 0
getfield com/product/android/ui/activity/WebViewActivity/mWebView Landroid/webkit/WebView;
bipush 17
iconst_0
iconst_0
invokevirtual android/widget/PopupWindow/showAtLocation(Landroid/view/View;III)V
return
.limit locals 3
.limit stack 6
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
getstatic com/nd/android/u/allcommon/R$string/app_download I
invokevirtual com/product/android/ui/activity/WebViewActivity/getString(I)Ljava/lang/String;
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
aload 0
getfield com/product/android/ui/activity/WebViewActivity/mDownloadTask Lcom/product/android/ui/activity/WebViewActivity$DownloadTask;
ifnull L0
aload 0
getfield com/product/android/ui/activity/WebViewActivity/mDownloadTask Lcom/product/android/ui/activity/WebViewActivity$DownloadTask;
getfield com/product/android/ui/activity/WebViewActivity$DownloadTask/running Z
ifeq L0
return
L0:
aload 0
new com/product/android/ui/activity/WebViewActivity$DownloadTask
dup
aload 0
aconst_null
invokespecial com/product/android/ui/activity/WebViewActivity$DownloadTask/<init>(Lcom/product/android/ui/activity/WebViewActivity;Lcom/product/android/ui/activity/WebViewActivity$1;)V
putfield com/product/android/ui/activity/WebViewActivity/mDownloadTask Lcom/product/android/ui/activity/WebViewActivity$DownloadTask;
aload 0
getfield com/product/android/ui/activity/WebViewActivity/mDownloadTask Lcom/product/android/ui/activity/WebViewActivity$DownloadTask;
iconst_1
anewarray java/lang/String
dup
iconst_0
aload 1
aastore
invokevirtual com/product/android/ui/activity/WebViewActivity$DownloadTask/execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
pop
return
.limit locals 2
.limit stack 5
.end method

.method public initComponent()V
aload 0
aload 0
getstatic com/nd/android/u/allcommon/R$id/app_header_btn_left I
invokevirtual com/product/android/ui/activity/WebViewActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/product/android/ui/activity/WebViewActivity/backapppage Landroid/widget/Button;
aload 0
aload 0
getstatic com/nd/android/u/allcommon/R$id/app_text_title I
invokevirtual com/product/android/ui/activity/WebViewActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/product/android/ui/activity/WebViewActivity/activitytitle Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/allcommon/R$id/head_progressBar I
invokevirtual com/product/android/ui/activity/WebViewActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ProgressBar
putfield com/product/android/ui/activity/WebViewActivity/progressBar Landroid/widget/ProgressBar;
aload 0
aload 0
getstatic com/nd/android/u/allcommon/R$id/refresh_page I
invokevirtual com/product/android/ui/activity/WebViewActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/product/android/ui/activity/WebViewActivity/refresh_page Landroid/widget/ImageView;
aload 0
aload 0
getstatic com/nd/android/u/allcommon/R$id/home_page I
invokevirtual com/product/android/ui/activity/WebViewActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/product/android/ui/activity/WebViewActivity/homepage Landroid/widget/ImageView;
aload 0
aload 0
getstatic com/nd/android/u/allcommon/R$id/back_page I
invokevirtual com/product/android/ui/activity/WebViewActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/product/android/ui/activity/WebViewActivity/backpage Landroid/widget/ImageView;
aload 0
aload 0
getstatic com/nd/android/u/allcommon/R$id/forward_page I
invokevirtual com/product/android/ui/activity/WebViewActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/product/android/ui/activity/WebViewActivity/forwardpage Landroid/widget/ImageView;
aload 0
aload 0
getstatic com/nd/android/u/allcommon/R$id/reload_page I
invokevirtual com/product/android/ui/activity/WebViewActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/product/android/ui/activity/WebViewActivity/reloadpage Landroid/widget/ImageView;
aload 0
aload 0
getstatic com/nd/android/u/allcommon/R$id/webview_foot I
invokevirtual com/product/android/ui/activity/WebViewActivity/findViewById(I)Landroid/view/View;
checkcast android/view/ViewGroup
putfield com/product/android/ui/activity/WebViewActivity/footViewGroup Landroid/view/ViewGroup;
aload 0
aload 0
getstatic com/nd/android/u/allcommon/R$id/home_page_layout I
invokevirtual com/product/android/ui/activity/WebViewActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/product/android/ui/activity/WebViewActivity/homepagely Landroid/widget/LinearLayout;
aload 0
aload 0
getstatic com/nd/android/u/allcommon/R$id/back_page_layout I
invokevirtual com/product/android/ui/activity/WebViewActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/product/android/ui/activity/WebViewActivity/backpagely Landroid/widget/LinearLayout;
aload 0
aload 0
getstatic com/nd/android/u/allcommon/R$id/forward_page_layout I
invokevirtual com/product/android/ui/activity/WebViewActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/product/android/ui/activity/WebViewActivity/forwardpagely Landroid/widget/LinearLayout;
aload 0
aload 0
getstatic com/nd/android/u/allcommon/R$id/reload_page_layout I
invokevirtual com/product/android/ui/activity/WebViewActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/product/android/ui/activity/WebViewActivity/reloadpagely Landroid/widget/LinearLayout;
aload 0
getfield com/product/android/ui/activity/WebViewActivity/refresh_page Landroid/widget/ImageView;
aload 0
getfield com/product/android/ui/activity/WebViewActivity/imgOnClick Landroid/view/View$OnClickListener;
invokevirtual android/widget/ImageView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/product/android/ui/activity/WebViewActivity/homepagely Landroid/widget/LinearLayout;
aload 0
getfield com/product/android/ui/activity/WebViewActivity/imgOnClick Landroid/view/View$OnClickListener;
invokevirtual android/widget/LinearLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/product/android/ui/activity/WebViewActivity/backpagely Landroid/widget/LinearLayout;
aload 0
getfield com/product/android/ui/activity/WebViewActivity/imgOnClick Landroid/view/View$OnClickListener;
invokevirtual android/widget/LinearLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/product/android/ui/activity/WebViewActivity/forwardpagely Landroid/widget/LinearLayout;
aload 0
getfield com/product/android/ui/activity/WebViewActivity/imgOnClick Landroid/view/View$OnClickListener;
invokevirtual android/widget/LinearLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/product/android/ui/activity/WebViewActivity/reloadpagely Landroid/widget/LinearLayout;
aload 0
getfield com/product/android/ui/activity/WebViewActivity/imgOnClick Landroid/view/View$OnClickListener;
invokevirtual android/widget/LinearLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/product/android/ui/activity/WebViewActivity/backapppage Landroid/widget/Button;
aload 0
getfield com/product/android/ui/activity/WebViewActivity/imgOnClick Landroid/view/View$OnClickListener;
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
aload 0
getstatic com/nd/android/u/allcommon/R$id/webview I
invokevirtual com/product/android/ui/activity/WebViewActivity/findViewById(I)Landroid/view/View;
checkcast android/webkit/WebView
putfield com/product/android/ui/activity/WebViewActivity/mWebView Landroid/webkit/WebView;
aload 0
getfield com/product/android/ui/activity/WebViewActivity/webViewBottomHide Z
ifeq L0
aload 0
getfield com/product/android/ui/activity/WebViewActivity/footViewGroup Landroid/view/ViewGroup;
bipush 8
invokevirtual android/view/ViewGroup/setVisibility(I)V
L1:
aload 0
new com/common/android/utils/audio/AudioAnimManager
dup
aload 0
invokespecial com/common/android/utils/audio/AudioAnimManager/<init>(Landroid/content/Context;)V
putfield com/product/android/ui/activity/WebViewActivity/mAudioAnimManager Lcom/common/android/utils/audio/AudioAnimManager;
aload 0
getfield com/product/android/ui/activity/WebViewActivity/mAudioAnimManager Lcom/common/android/utils/audio/AudioAnimManager;
aload 0
getfield com/product/android/ui/activity/WebViewActivity/audioAnimListener Lcom/common/android/utils/audio/AudioAnimManager$onPlayAudioAnimListener;
invokevirtual com/common/android/utils/audio/AudioAnimManager/setOnPlayAudioAnimListener(Lcom/common/android/utils/audio/AudioAnimManager$onPlayAudioAnimListener;)V
aload 0
invokevirtual com/product/android/ui/activity/WebViewActivity/initWebViewComponent()V
aload 0
getfield com/product/android/ui/activity/WebViewActivity/mWebView Landroid/webkit/WebView;
new com/product/android/ui/activity/WebViewActivity$JavaScriptInterface
dup
aload 0
invokespecial com/product/android/ui/activity/WebViewActivity$JavaScriptInterface/<init>(Lcom/product/android/ui/activity/WebViewActivity;)V
ldc "android"
invokevirtual android/webkit/WebView/addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
aload 0
getfield com/product/android/ui/activity/WebViewActivity/mIsWebOnly Z
ifeq L2
aload 0
getfield com/product/android/ui/activity/WebViewActivity/footViewGroup Landroid/view/ViewGroup;
bipush 8
invokevirtual android/view/ViewGroup/setVisibility(I)V
aload 0
getstatic com/nd/android/u/allcommon/R$id/recent_header I
invokevirtual com/product/android/ui/activity/WebViewActivity/findViewById(I)Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
L2:
aload 0
getstatic com/nd/android/u/allcommon/R$id/recent_header I
invokevirtual com/product/android/ui/activity/WebViewActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
astore 1
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_91XY Lcom/product/android/business/ProductTypeDef$Product;
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
if_acmpne L3
aload 1
ifnull L4
aload 1
getstatic com/nd/android/u/allcommon/R$drawable/xy_bg_header I
invokevirtual android/widget/LinearLayout/setBackgroundResource(I)V
L4:
aload 0
getfield com/product/android/ui/activity/WebViewActivity/backapppage Landroid/widget/Button;
getstatic com/nd/android/u/allcommon/R$drawable/xy_btn_header_back_bg I
invokevirtual android/widget/Button/setBackgroundResource(I)V
aload 0
getfield com/product/android/ui/activity/WebViewActivity/activitytitle Landroid/widget/TextView;
aload 0
invokevirtual com/product/android/ui/activity/WebViewActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/allcommon/R$color/xy_header_title I
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual android/widget/TextView/setTextColor(I)V
L5:
aload 0
invokespecial com/product/android/ui/activity/WebViewActivity/initNewCapecPay()V
return
L0:
aload 0
getfield com/product/android/ui/activity/WebViewActivity/footViewGroup Landroid/view/ViewGroup;
iconst_0
invokevirtual android/view/ViewGroup/setVisibility(I)V
goto L1
L3:
aload 1
ifnull L6
aload 1
getstatic com/nd/android/u/allcommon/R$drawable/header_bg I
invokevirtual android/widget/LinearLayout/setBackgroundResource(I)V
L6:
aload 0
getfield com/product/android/ui/activity/WebViewActivity/backapppage Landroid/widget/Button;
getstatic com/nd/android/u/allcommon/R$drawable/bt_header_return_bg I
invokevirtual android/widget/Button/setBackgroundResource(I)V
goto L5
.limit locals 2
.limit stack 4
.end method

.method public initWebViewComponent()V
.annotation invisible Landroid/annotation/SuppressLint;
value [s = "NewApi" 
.end annotation
getstatic android/os/Build$VERSION/SDK_INT I
bipush 19
if_icmplt L0
aload 0
invokevirtual com/product/android/ui/activity/WebViewActivity/getApplicationInfo()Landroid/content/pm/ApplicationInfo;
astore 2
aload 2
getfield android/content/pm/ApplicationInfo/flags I
iconst_2
iand
istore 1
aload 2
iload 1
putfield android/content/pm/ApplicationInfo/flags I
iload 1
ifeq L0
iconst_1
invokestatic android/webkit/WebView/setWebContentsDebuggingEnabled(Z)V
L0:
aload 0
getfield com/product/android/ui/activity/WebViewActivity/mWebView Landroid/webkit/WebView;
invokevirtual android/webkit/WebView/getSettings()Landroid/webkit/WebSettings;
iconst_1
invokevirtual android/webkit/WebSettings/setJavaScriptEnabled(Z)V
aload 0
getfield com/product/android/ui/activity/WebViewActivity/mWebView Landroid/webkit/WebView;
iconst_0
invokevirtual android/webkit/WebView/setScrollBarStyle(I)V
aload 0
getfield com/product/android/ui/activity/WebViewActivity/mWebView Landroid/webkit/WebView;
invokevirtual android/webkit/WebView/getSettings()Landroid/webkit/WebSettings;
aload 0
getfield com/product/android/ui/activity/WebViewActivity/zoomsupport Z
invokevirtual android/webkit/WebSettings/setSupportZoom(Z)V
aload 0
getfield com/product/android/ui/activity/WebViewActivity/mWebView Landroid/webkit/WebView;
invokevirtual android/webkit/WebView/getSettings()Landroid/webkit/WebSettings;
aload 0
getfield com/product/android/ui/activity/WebViewActivity/zoomsupport Z
invokevirtual android/webkit/WebSettings/setBuiltInZoomControls(Z)V
aload 0
getfield com/product/android/ui/activity/WebViewActivity/mWebView Landroid/webkit/WebView;
invokevirtual android/webkit/WebView/getSettings()Landroid/webkit/WebSettings;
iconst_2
invokevirtual android/webkit/WebSettings/setCacheMode(I)V
getstatic android/os/Build$VERSION/SDK_INT I
bipush 21
if_icmplt L1
aload 0
getfield com/product/android/ui/activity/WebViewActivity/mWebView Landroid/webkit/WebView;
invokevirtual android/webkit/WebView/getSettings()Landroid/webkit/WebSettings;
iconst_0
invokevirtual android/webkit/WebSettings/setMixedContentMode(I)V
L1:
aload 0
getfield com/product/android/ui/activity/WebViewActivity/mWebView Landroid/webkit/WebView;
new com/product/android/ui/activity/WebViewActivity$4
dup
aload 0
invokespecial com/product/android/ui/activity/WebViewActivity$4/<init>(Lcom/product/android/ui/activity/WebViewActivity;)V
invokevirtual android/webkit/WebView/setWebViewClient(Landroid/webkit/WebViewClient;)V
aload 0
getfield com/product/android/ui/activity/WebViewActivity/mWebView Landroid/webkit/WebView;
new com/product/android/ui/activity/WebViewActivity$5
dup
aload 0
invokespecial com/product/android/ui/activity/WebViewActivity$5/<init>(Lcom/product/android/ui/activity/WebViewActivity;)V
invokevirtual android/webkit/WebView/setWebChromeClient(Landroid/webkit/WebChromeClient;)V
aload 0
getfield com/product/android/ui/activity/WebViewActivity/mWebView Landroid/webkit/WebView;
new com/product/android/ui/activity/WebViewActivity$MyWebViewDownLoadListener
dup
aload 0
aconst_null
invokespecial com/product/android/ui/activity/WebViewActivity$MyWebViewDownLoadListener/<init>(Lcom/product/android/ui/activity/WebViewActivity;Lcom/product/android/ui/activity/WebViewActivity$1;)V
invokevirtual android/webkit/WebView/setDownloadListener(Landroid/webkit/DownloadListener;)V
return
.limit locals 3
.limit stack 5
.end method

.method public loadurl(Landroid/webkit/WebView;Ljava/lang/String;)V
aload 0
getfield com/product/android/ui/activity/WebViewActivity/mWebView Landroid/webkit/WebView;
new com/product/android/ui/activity/WebViewActivity$6
dup
aload 0
aload 1
aload 2
invokespecial com/product/android/ui/activity/WebViewActivity$6/<init>(Lcom/product/android/ui/activity/WebViewActivity;Landroid/webkit/WebView;Ljava/lang/String;)V
invokevirtual android/webkit/WebView/post(Ljava/lang/Runnable;)Z
pop
return
.limit locals 3
.limit stack 6
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
.annotation invisible Landroid/annotation/SuppressLint;
value [s = "NewApi" 
.end annotation
aload 0
iload 1
iload 2
aload 3
invokespecial com/product/android/ui/activity/BaseActivity/onActivityResult(IILandroid/content/Intent;)V
iload 1
sipush 5173
if_icmpne L0
aload 0
getfield com/product/android/ui/activity/WebViewActivity/mUploadMessage Landroid/webkit/ValueCallback;
ifnonnull L1
L2:
return
L1:
aload 3
ifnull L3
iload 2
iconst_m1
if_icmpeq L4
L3:
aconst_null
astore 4
L5:
aload 0
getfield com/product/android/ui/activity/WebViewActivity/mUploadMessage Landroid/webkit/ValueCallback;
aload 4
invokeinterface android/webkit/ValueCallback/onReceiveValue(Ljava/lang/Object;)V 1
aload 0
aconst_null
putfield com/product/android/ui/activity/WebViewActivity/mUploadMessage Landroid/webkit/ValueCallback;
L6:
aload 0
getfield com/product/android/ui/activity/WebViewActivity/jsMethods Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 4
L7:
aload 4
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L2
aload 4
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast net/newcapec/pay/webview/JsMethodInterface
iload 1
iload 2
aload 3
invokeinterface net/newcapec/pay/webview/JsMethodInterface/onActivityResult(IILandroid/content/Intent;)V 3
goto L7
L4:
aload 3
invokevirtual android/content/Intent/getData()Landroid/net/Uri;
astore 4
goto L5
L0:
iload 1
sipush 5174
if_icmpne L6
aload 0
getfield com/product/android/ui/activity/WebViewActivity/mUploadMessage5 Landroid/webkit/ValueCallback;
ifnull L2
aload 0
getfield com/product/android/ui/activity/WebViewActivity/mUploadMessage5 Landroid/webkit/ValueCallback;
iload 2
aload 3
invokestatic android/webkit/WebChromeClient$FileChooserParams/parseResult(ILandroid/content/Intent;)[Landroid/net/Uri;
invokeinterface android/webkit/ValueCallback/onReceiveValue(Ljava/lang/Object;)V 1
aload 0
aconst_null
putfield com/product/android/ui/activity/WebViewActivity/mUploadMessage5 Landroid/webkit/ValueCallback;
goto L6
.limit locals 5
.limit stack 4
.end method

.method public onBackPressed()V
aload 0
getfield com/product/android/ui/activity/WebViewActivity/mAnimPop Landroid/widget/PopupWindow;
ifnull L0
aload 0
getfield com/product/android/ui/activity/WebViewActivity/mAnimPop Landroid/widget/PopupWindow;
invokevirtual android/widget/PopupWindow/isShowing()Z
ifeq L0
aload 0
getfield com/product/android/ui/activity/WebViewActivity/mAudioAnimManager Lcom/common/android/utils/audio/AudioAnimManager;
invokevirtual com/common/android/utils/audio/AudioAnimManager/stopPlay()V
return
L0:
aload 0
invokespecial com/product/android/ui/activity/BaseActivity/onBackPressed()V
return
.limit locals 1
.limit stack 1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/product/android/ui/activity/BaseActivity/onCreate(Landroid/os/Bundle;)V
aload 0
iconst_1
invokevirtual com/product/android/ui/activity/WebViewActivity/requestWindowFeature(I)Z
pop
aload 0
getstatic com/nd/android/u/allcommon/R$layout/activity_new_web_view I
invokevirtual com/product/android/ui/activity/WebViewActivity/setContentView(I)V
aload 0
aload 0
getstatic com/nd/android/u/allcommon/R$id/webview I
invokevirtual com/product/android/ui/activity/WebViewActivity/findViewById(I)Landroid/view/View;
checkcast android/webkit/WebView
putfield com/product/android/ui/activity/WebViewActivity/mWebView Landroid/webkit/WebView;
aload 0
aload 0
invokevirtual com/product/android/ui/activity/WebViewActivity/getIntent()Landroid/content/Intent;
invokevirtual android/content/Intent/getExtras()Landroid/os/Bundle;
getstatic com/product/android/ui/activity/WebViewActivity/EXTARS_WEBVIEW_URL Ljava/lang/String;
invokevirtual android/os/Bundle/getString(Ljava/lang/String;)Ljava/lang/String;
putfield com/product/android/ui/activity/WebViewActivity/url Ljava/lang/String;
aload 0
invokevirtual com/product/android/ui/activity/WebViewActivity/getIntent()Landroid/content/Intent;
invokevirtual android/content/Intent/getExtras()Landroid/os/Bundle;
astore 1
aload 1
ifnull L0
aload 1
getstatic com/product/android/ui/activity/WebViewActivity/EXTARS_WEBVIEW_NEED_TITLE Ljava/lang/String;
invokevirtual android/os/Bundle/containsKey(Ljava/lang/String;)Z
ifeq L1
aload 0
aload 1
getstatic com/product/android/ui/activity/WebViewActivity/EXTARS_WEBVIEW_NEED_TITLE Ljava/lang/String;
invokevirtual android/os/Bundle/getString(Ljava/lang/String;)Ljava/lang/String;
putfield com/product/android/ui/activity/WebViewActivity/needTitle Ljava/lang/String;
L1:
aload 0
aload 1
getstatic com/product/android/ui/activity/WebViewActivity/EXTARS_WEBVIEW_RETURN Ljava/lang/String;
invokevirtual android/os/Bundle/getBoolean(Ljava/lang/String;)Z
putfield com/product/android/ui/activity/WebViewActivity/redesk Z
aload 1
getstatic com/product/android/ui/activity/WebViewActivity/EXTARS_WEBVIEW_BOTTOMHIDE Ljava/lang/String;
invokevirtual android/os/Bundle/containsKey(Ljava/lang/String;)Z
ifeq L2
aload 0
aload 1
getstatic com/product/android/ui/activity/WebViewActivity/EXTARS_WEBVIEW_BOTTOMHIDE Ljava/lang/String;
invokevirtual android/os/Bundle/getBoolean(Ljava/lang/String;)Z
putfield com/product/android/ui/activity/WebViewActivity/webViewBottomHide Z
L2:
aload 1
getstatic com/product/android/ui/activity/WebViewActivity/EXTARS_WEBVIEW_REFRESH Ljava/lang/String;
invokevirtual android/os/Bundle/containsKey(Ljava/lang/String;)Z
ifeq L3
aload 0
aload 1
getstatic com/product/android/ui/activity/WebViewActivity/EXTARS_WEBVIEW_REFRESH Ljava/lang/String;
invokevirtual android/os/Bundle/getBoolean(Ljava/lang/String;)Z
putfield com/product/android/ui/activity/WebViewActivity/webViewRefresh Z
L3:
aload 1
getstatic com/product/android/ui/activity/WebViewActivity/EXTARS_WEBVIEW_HASCOOKIE Ljava/lang/String;
invokevirtual android/os/Bundle/containsKey(Ljava/lang/String;)Z
ifeq L4
aload 0
aload 1
getstatic com/product/android/ui/activity/WebViewActivity/EXTARS_WEBVIEW_HASCOOKIE Ljava/lang/String;
invokevirtual android/os/Bundle/getBoolean(Ljava/lang/String;)Z
putfield com/product/android/ui/activity/WebViewActivity/hasCookie Z
L4:
aload 1
getstatic com/product/android/ui/activity/WebViewActivity/EXTARS_WEBVIEW_ZOOMSUPPORT Ljava/lang/String;
invokevirtual android/os/Bundle/containsKey(Ljava/lang/String;)Z
ifeq L5
aload 0
aload 1
getstatic com/product/android/ui/activity/WebViewActivity/EXTARS_WEBVIEW_ZOOMSUPPORT Ljava/lang/String;
invokevirtual android/os/Bundle/getBoolean(Ljava/lang/String;)Z
putfield com/product/android/ui/activity/WebViewActivity/zoomsupport Z
L5:
aload 1
getstatic com/product/android/ui/activity/WebViewActivity/EXTARS_WEBVIEW_PSPID Ljava/lang/String;
invokevirtual android/os/Bundle/containsKey(Ljava/lang/String;)Z
ifeq L6
aload 0
aload 1
getstatic com/product/android/ui/activity/WebViewActivity/EXTARS_WEBVIEW_PSPID Ljava/lang/String;
invokevirtual android/os/Bundle/getString(Ljava/lang/String;)Ljava/lang/String;
putfield com/product/android/ui/activity/WebViewActivity/mPspId Ljava/lang/String;
L6:
aload 1
getstatic com/product/android/ui/activity/WebViewActivity/EXTARS_WEBVIEW_WEBONLY Ljava/lang/String;
invokevirtual android/os/Bundle/containsKey(Ljava/lang/String;)Z
ifeq L0
aload 0
aload 1
getstatic com/product/android/ui/activity/WebViewActivity/EXTARS_WEBVIEW_WEBONLY Ljava/lang/String;
invokevirtual android/os/Bundle/getBoolean(Ljava/lang/String;)Z
putfield com/product/android/ui/activity/WebViewActivity/mIsWebOnly Z
L0:
aload 0
invokevirtual com/product/android/ui/activity/WebViewActivity/initComponent()V
aload 0
getfield com/product/android/ui/activity/WebViewActivity/activitytitle Landroid/widget/TextView;
aload 0
getfield com/product/android/ui/activity/WebViewActivity/needTitle Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
aload 0
getfield com/product/android/ui/activity/WebViewActivity/mWebView Landroid/webkit/WebView;
aload 0
getfield com/product/android/ui/activity/WebViewActivity/url Ljava/lang/String;
invokevirtual com/product/android/ui/activity/WebViewActivity/loadurl(Landroid/webkit/WebView;Ljava/lang/String;)V
aload 0
new com/common/android/utils/download/ProgressDownloadManager
dup
invokespecial com/common/android/utils/download/ProgressDownloadManager/<init>()V
putfield com/product/android/ui/activity/WebViewActivity/mDownloadManager Lcom/common/android/utils/download/ProgressDownloadManager;
invokestatic de/greenrobot/event/EventBus/getDefault()Lde/greenrobot/event/EventBus;
aload 0
ldc java/lang/String
iconst_0
anewarray java/lang/Class
invokevirtual de/greenrobot/event/EventBus/register(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)V
return
.limit locals 2
.limit stack 4
.end method

.method protected onDestroy()V
aload 0
invokespecial com/product/android/ui/activity/BaseActivity/onDestroy()V
invokestatic de/greenrobot/event/EventBus/getDefault()Lde/greenrobot/event/EventBus;
aload 0
iconst_1
anewarray java/lang/Class
dup
iconst_0
ldc java/lang/String
aastore
invokevirtual de/greenrobot/event/EventBus/unregister(Ljava/lang/Object;[Ljava/lang/Class;)V
aload 0
getfield com/product/android/ui/activity/WebViewActivity/mWebView Landroid/webkit/WebView;
ldc "file:///android_asset/nonexistent.html"
invokevirtual android/webkit/WebView/loadUrl(Ljava/lang/String;)V
return
.limit locals 1
.limit stack 6
.end method

.method public onEventMainThread(Ljava/lang/String;)V
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
L1:
return
L0:
aload 1
getstatic com/product/android/ui/activity/WebViewActivity/UNSUB_PSP Ljava/lang/String;
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifeq L1
aload 1
getstatic com/product/android/ui/activity/WebViewActivity/UNSUB_PSP Ljava/lang/String;
ldc ""
invokevirtual java/lang/String/replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
astore 1
aload 0
getfield com/product/android/ui/activity/WebViewActivity/mPspId Ljava/lang/String;
ifnull L1
aload 1
ifnull L1
aload 1
aload 0
getfield com/product/android/ui/activity/WebViewActivity/mPspId Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L1
aload 0
invokevirtual com/product/android/ui/activity/WebViewActivity/finish()V
return
.limit locals 2
.limit stack 3
.end method

.method protected onPause()V
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L1 to L3 using L2
aload 0
invokespecial com/product/android/ui/activity/BaseActivity/onPause()V
L0:
aload 0
getfield com/product/android/ui/activity/WebViewActivity/mWebView Landroid/webkit/WebView;
ifnull L1
aload 0
getfield com/product/android/ui/activity/WebViewActivity/mWebView Landroid/webkit/WebView;
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
ldc "onPause"
iconst_0
anewarray java/lang/Class
invokevirtual java/lang/Class/getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
aload 0
getfield com/product/android/ui/activity/WebViewActivity/mWebView Landroid/webkit/WebView;
aconst_null
checkcast [Ljava/lang/Object;
invokevirtual java/lang/reflect/Method/invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
pop
aload 0
iconst_1
putfield com/product/android/ui/activity/WebViewActivity/isOnPause Z
L1:
aload 0
getfield com/product/android/ui/activity/WebViewActivity/mDownloadManager Lcom/common/android/utils/download/ProgressDownloadManager;
aconst_null
invokevirtual com/common/android/utils/download/ProgressDownloadManager/setOnDownloadListener(Lcom/common/android/utils/download/ProgressDownloadManager$onDonwloadListener;)V
L3:
return
L2:
astore 1
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
return
.limit locals 2
.limit stack 3
.end method

.method public onResume()V
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L1 to L3 using L2
aload 0
invokespecial com/product/android/ui/activity/BaseActivity/onResume()V
L0:
aload 0
getfield com/product/android/ui/activity/WebViewActivity/isOnPause Z
ifeq L3
aload 0
getfield com/product/android/ui/activity/WebViewActivity/mWebView Landroid/webkit/WebView;
ifnull L1
aload 0
getfield com/product/android/ui/activity/WebViewActivity/mWebView Landroid/webkit/WebView;
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
ldc "onResume"
iconst_0
anewarray java/lang/Class
invokevirtual java/lang/Class/getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
aload 0
getfield com/product/android/ui/activity/WebViewActivity/mWebView Landroid/webkit/WebView;
aconst_null
checkcast [Ljava/lang/Object;
invokevirtual java/lang/reflect/Method/invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
pop
L1:
aload 0
iconst_0
putfield com/product/android/ui/activity/WebViewActivity/isOnPause Z
L3:
return
L2:
astore 1
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
return
.limit locals 2
.limit stack 3
.end method

.method public reloadurl(Landroid/webkit/WebView;)V
aload 1
new com/product/android/ui/activity/WebViewActivity$8
dup
aload 0
aload 1
invokespecial com/product/android/ui/activity/WebViewActivity$8/<init>(Lcom/product/android/ui/activity/WebViewActivity;Landroid/webkit/WebView;)V
invokevirtual android/webkit/WebView/post(Ljava/lang/Runnable;)Z
pop
return
.limit locals 2
.limit stack 5
.end method

.method public setCookie()V
aload 0
getfield com/product/android/ui/activity/WebViewActivity/mWebView Landroid/webkit/WebView;
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
getfield com/product/android/ui/activity/WebViewActivity/url Ljava/lang/String;
ldc "Client-Type=mobile"
invokevirtual android/webkit/CookieManager/setCookie(Ljava/lang/String;Ljava/lang/String;)V
aload 1
invokevirtual android/webkit/CookieSyncManager/sync()V
return
.limit locals 3
.limit stack 3
.end method
