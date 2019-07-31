.bytecode 50.0
.class public synchronized com/bestpay/app/H5PayActivity
.super android/app/Activity
.inner class inner com/bestpay/app/H5PayActivity$1
.inner class inner com/bestpay/app/H5PayActivity$2
.inner class inner com/bestpay/app/H5PayActivity$3
.inner class inner com/bestpay/app/H5PayActivity$4
.inner class inner com/bestpay/app/H5PayActivity$5
.inner class inner com/bestpay/app/H5PayActivity$6
.inner class inner com/bestpay/app/H5PayActivity$7
.inner class inner com/bestpay/app/H5PayActivity$8
.inner class public MyWebChromeClient inner com/bestpay/app/H5PayActivity$MyWebChromeClient outer com/bestpay/app/H5PayActivity
.inner class inner com/bestpay/app/H5PayActivity$MyWebChromeClient$1
.inner class inner com/bestpay/app/H5PayActivity$MyWebChromeClient$2
.inner class inner com/bestpay/app/H5PayActivity$MyWebChromeClient$3
.inner class inner com/bestpay/app/H5PayActivity$MyWebChromeClient$4
.inner class inner com/bestpay/app/H5PayActivity$MyWebChromeClient$5
.inner class inner com/bestpay/app/H5PayActivity$MyWebChromeClient$6
.inner class MyWebViewClient inner com/bestpay/app/H5PayActivity$MyWebViewClient outer com/bestpay/app/H5PayActivity
.inner class public PayJavaScriptInterface inner com/bestpay/app/H5PayActivity$PayJavaScriptInterface outer com/bestpay/app/H5PayActivity
.inner class inner com/bestpay/app/H5PayActivity$PayJavaScriptInterface$1
.inner class inner com/bestpay/app/H5PayActivity$PayJavaScriptInterface$2
.inner class inner com/bestpay/app/H5PayActivity$PayJavaScriptInterface$3
.inner class inner com/bestpay/app/H5PayActivity$PayJavaScriptInterface$4

.field public static 'OSSYSTEM' Ljava/lang/String;

.field public static final 'TAG' Ljava/lang/String; = "H5PayActivity"

.field private static 'isExit' Ljava/lang/Boolean;

.field private 'BASEURL' Ljava/lang/String;

.field private 'DEVICESEND' Ljava/lang/String;

.field private 'H5BASEURL' Ljava/lang/String;

.field private 'H5_SKIP_LOGIN' Ljava/lang/String;

.field private 'QUERYDEVSENS' Ljava/lang/String;

.field public 'jsonTo' Ljava/lang/String;

.field private 'mContext' Landroid/content/Context;

.field private 'mParamStr' Ljava/lang/String;

.field private 'mPassGuardManager' Lcom/bestpay/app/PassGuardManager;

.field private 'mProgressBar' Landroid/widget/ProgressBar;

.field private 'mProgressDialog' Landroid/app/ProgressDialog;

.field public 'mWebKitcookieStr' Ljava/lang/String;

.field private 'mWebView' Landroid/webkit/WebView;

.method static <clinit>()V
ldc "1"
putstatic com/bestpay/app/H5PayActivity/OSSYSTEM Ljava/lang/String;
iconst_0
invokestatic java/lang/Boolean/valueOf(Z)Ljava/lang/Boolean;
putstatic com/bestpay/app/H5PayActivity/isExit Ljava/lang/Boolean;
return
.limit locals 0
.limit stack 1
.end method

.method public <init>()V
aload 0
invokespecial android/app/Activity/<init>()V
aload 0
aconst_null
putfield com/bestpay/app/H5PayActivity/mPassGuardManager Lcom/bestpay/app/PassGuardManager;
aload 0
ldc "https://capi.bestpay.com.cn"
putfield com/bestpay/app/H5PayActivity/BASEURL Ljava/lang/String;
aload 0
ldc "/gateway.pay"
putfield com/bestpay/app/H5PayActivity/H5_SKIP_LOGIN Ljava/lang/String;
aload 0
ldc "/common/queryDevSens"
putfield com/bestpay/app/H5PayActivity/QUERYDEVSENS Ljava/lang/String;
aload 0
new java/lang/StringBuilder
dup
aload 0
getfield com/bestpay/app/H5PayActivity/BASEURL Ljava/lang/String;
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 0
getfield com/bestpay/app/H5PayActivity/H5_SKIP_LOGIN Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putfield com/bestpay/app/H5PayActivity/H5BASEURL Ljava/lang/String;
aload 0
new java/lang/StringBuilder
dup
aload 0
getfield com/bestpay/app/H5PayActivity/BASEURL Ljava/lang/String;
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 0
getfield com/bestpay/app/H5PayActivity/QUERYDEVSENS Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putfield com/bestpay/app/H5PayActivity/DEVICESEND Ljava/lang/String;
return
.limit locals 1
.limit stack 4
.end method

.method static synthetic access$0(Lcom/bestpay/app/H5PayActivity;)Landroid/content/Context;
aload 0
getfield com/bestpay/app/H5PayActivity/mContext Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1(Lcom/bestpay/app/H5PayActivity;)Landroid/webkit/WebView;
aload 0
getfield com/bestpay/app/H5PayActivity/mWebView Landroid/webkit/WebView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$2(Lcom/bestpay/app/H5PayActivity;)Landroid/app/ProgressDialog;
aload 0
getfield com/bestpay/app/H5PayActivity/mProgressDialog Landroid/app/ProgressDialog;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$3(Lcom/bestpay/app/H5PayActivity;)Landroid/widget/ProgressBar;
aload 0
getfield com/bestpay/app/H5PayActivity/mProgressBar Landroid/widget/ProgressBar;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$4(Lcom/bestpay/app/H5PayActivity;)Ljava/lang/String;
aload 0
getfield com/bestpay/app/H5PayActivity/mParamStr Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$5(Ljava/lang/Boolean;)V
aload 0
putstatic com/bestpay/app/H5PayActivity/isExit Ljava/lang/Boolean;
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$6(Lcom/bestpay/app/H5PayActivity;)V
aload 0
invokespecial com/bestpay/app/H5PayActivity/exit()V
return
.limit locals 1
.limit stack 1
.end method

.method private checkNetworkFlg(Landroid/content/Context;)Z
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
iconst_0
istore 3
L0:
aload 1
ldc "connectivity"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/net/ConnectivityManager
invokevirtual android/net/ConnectivityManager/getActiveNetworkInfo()Landroid/net/NetworkInfo;
astore 1
L1:
iload 3
istore 2
aload 1
ifnull L5
L3:
aload 1
invokevirtual android/net/NetworkInfo/isConnected()Z
istore 4
L4:
iload 3
istore 2
iload 4
ifeq L5
iconst_1
istore 2
L5:
iload 2
ireturn
L2:
astore 1
iconst_0
ireturn
.limit locals 5
.limit stack 2
.end method

.method private exit()V
iconst_0
invokestatic java/lang/System/exit(I)V
return
.limit locals 1
.limit stack 1
.end method

.method private exitBy2Click()V
getstatic com/bestpay/app/H5PayActivity/isExit Ljava/lang/Boolean;
invokevirtual java/lang/Boolean/booleanValue()Z
ifne L0
iconst_1
invokestatic java/lang/Boolean/valueOf(Z)Ljava/lang/Boolean;
putstatic com/bestpay/app/H5PayActivity/isExit Ljava/lang/Boolean;
aload 0
ldc "\u53cc\u51fb\u8fd4\u56de\u5546\u6237"
iconst_0
invokestatic android/widget/Toast/makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
invokevirtual android/widget/Toast/show()V
new java/util/Timer
dup
invokespecial java/util/Timer/<init>()V
new com/bestpay/app/H5PayActivity$3
dup
aload 0
invokespecial com/bestpay/app/H5PayActivity$3/<init>(Lcom/bestpay/app/H5PayActivity;)V
ldc2_w 2000L
invokevirtual java/util/Timer/schedule(Ljava/util/TimerTask;J)V
return
L0:
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
astore 1
aload 1
ldc "result"
ldc "\u5df2\u53d7\u7406"
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 0
sipush 512
aload 1
invokevirtual com/bestpay/app/H5PayActivity/setResult(ILandroid/content/Intent;)V
aload 0
invokevirtual com/bestpay/app/H5PayActivity/finish()V
aload 0
getfield com/bestpay/app/H5PayActivity/mWebView Landroid/webkit/WebView;
iconst_1
invokevirtual android/webkit/WebView/clearCache(Z)V
aload 0
getfield com/bestpay/app/H5PayActivity/mWebView Landroid/webkit/WebView;
invokevirtual android/webkit/WebView/clearHistory()V
return
.limit locals 2
.limit stack 4
.end method

.method private getIdentifierByStr(Ljava/lang/String;Ljava/lang/String;)I
aload 0
invokevirtual com/bestpay/app/H5PayActivity/getResources()Landroid/content/res/Resources;
aload 1
aload 2
aload 0
invokevirtual com/bestpay/app/H5PayActivity/getPackageName()Ljava/lang/String;
invokevirtual android/content/res/Resources/getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
ireturn
.limit locals 3
.limit stack 4
.end method

.method private initview()V
aload 0
aload 0
aload 0
ldc "bestpay_webview"
ldc "id"
invokespecial com/bestpay/app/H5PayActivity/getIdentifierByStr(Ljava/lang/String;Ljava/lang/String;)I
invokevirtual com/bestpay/app/H5PayActivity/findViewById(I)Landroid/view/View;
checkcast android/webkit/WebView
putfield com/bestpay/app/H5PayActivity/mWebView Landroid/webkit/WebView;
aload 0
invokevirtual com/bestpay/app/H5PayActivity/initSettings()V
aload 0
getfield com/bestpay/app/H5PayActivity/mWebView Landroid/webkit/WebView;
new com/bestpay/app/H5PayActivity$MyWebChromeClient
dup
aload 0
invokespecial com/bestpay/app/H5PayActivity$MyWebChromeClient/<init>(Lcom/bestpay/app/H5PayActivity;)V
invokevirtual android/webkit/WebView/setWebChromeClient(Landroid/webkit/WebChromeClient;)V
aload 0
aload 0
invokestatic com/bestpay/app/PassGuardManager/getInstance(Landroid/content/Context;)Lcom/bestpay/app/PassGuardManager;
putfield com/bestpay/app/H5PayActivity/mPassGuardManager Lcom/bestpay/app/PassGuardManager;
aload 0
getfield com/bestpay/app/H5PayActivity/mPassGuardManager Lcom/bestpay/app/PassGuardManager;
aload 0
getfield com/bestpay/app/H5PayActivity/mWebView Landroid/webkit/WebView;
invokevirtual com/bestpay/app/PassGuardManager/setWebView(Landroid/webkit/WebView;)V
aload 0
getfield com/bestpay/app/H5PayActivity/mWebView Landroid/webkit/WebView;
aload 0
getfield com/bestpay/app/H5PayActivity/mPassGuardManager Lcom/bestpay/app/PassGuardManager;
ldc "passGuardManager"
invokevirtual android/webkit/WebView/addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
aload 0
getfield com/bestpay/app/H5PayActivity/mWebView Landroid/webkit/WebView;
new com/bestpay/app/H5PayActivity$PayJavaScriptInterface
dup
aload 0
invokespecial com/bestpay/app/H5PayActivity$PayJavaScriptInterface/<init>(Lcom/bestpay/app/H5PayActivity;)V
ldc "pay"
invokevirtual android/webkit/WebView/addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
aload 0
getfield com/bestpay/app/H5PayActivity/mWebView Landroid/webkit/WebView;
new com/bestpay/app/H5PayActivity$2
dup
aload 0
invokespecial com/bestpay/app/H5PayActivity$2/<init>(Lcom/bestpay/app/H5PayActivity;)V
invokevirtual android/webkit/WebView/setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
return
.limit locals 1
.limit stack 5
.end method

.method public goback()V
.annotation visible Landroid/webkit/JavascriptInterface;
.end annotation
new android/app/AlertDialog$Builder
dup
aload 0
invokespecial android/app/AlertDialog$Builder/<init>(Landroid/content/Context;)V
ldc "\u786e\u8ba4\u4fe1\u606f"
invokevirtual android/app/AlertDialog$Builder/setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
ldc "\u662f\u5426\u9000\u51fa\u4ed8\u6b3e\uff1f"
invokevirtual android/app/AlertDialog$Builder/setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
ldc "\u786e\u5b9a"
new com/bestpay/app/H5PayActivity$4
dup
aload 0
invokespecial com/bestpay/app/H5PayActivity$4/<init>(Lcom/bestpay/app/H5PayActivity;)V
invokevirtual android/app/AlertDialog$Builder/setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
ldc "\u53d6\u6d88"
new com/bestpay/app/H5PayActivity$5
dup
aload 0
invokespecial com/bestpay/app/H5PayActivity$5/<init>(Lcom/bestpay/app/H5PayActivity;)V
invokevirtual android/app/AlertDialog$Builder/setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
iconst_0
invokevirtual android/app/AlertDialog$Builder/setCancelable(Z)Landroid/app/AlertDialog$Builder;
invokevirtual android/app/AlertDialog$Builder/show()Landroid/app/AlertDialog;
pop
return
.limit locals 1
.limit stack 5
.end method

.method public gobackpro()V
.annotation visible Landroid/webkit/JavascriptInterface;
.end annotation
new android/app/AlertDialog$Builder
dup
aload 0
invokespecial android/app/AlertDialog$Builder/<init>(Landroid/content/Context;)V
ldc "\u786e\u8ba4\u4fe1\u606f"
invokevirtual android/app/AlertDialog$Builder/setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
ldc "\u8bf7\u95ee\u60a8\u662f\u5426\u8981\u5b89\u5168\u9000\u51fa?"
invokevirtual android/app/AlertDialog$Builder/setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
ldc "\u786e\u5b9a"
new com/bestpay/app/H5PayActivity$6
dup
aload 0
invokespecial com/bestpay/app/H5PayActivity$6/<init>(Lcom/bestpay/app/H5PayActivity;)V
invokevirtual android/app/AlertDialog$Builder/setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
ldc "\u53d6\u6d88"
new com/bestpay/app/H5PayActivity$7
dup
aload 0
invokespecial com/bestpay/app/H5PayActivity$7/<init>(Lcom/bestpay/app/H5PayActivity;)V
invokevirtual android/app/AlertDialog$Builder/setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
iconst_0
invokevirtual android/app/AlertDialog$Builder/setCancelable(Z)Landroid/app/AlertDialog$Builder;
invokevirtual android/app/AlertDialog$Builder/show()Landroid/app/AlertDialog;
pop
return
.limit locals 1
.limit stack 5
.end method

.method public initSettings()V
aload 0
getfield com/bestpay/app/H5PayActivity/mWebView Landroid/webkit/WebView;
invokevirtual android/webkit/WebView/getSettings()Landroid/webkit/WebSettings;
iconst_1
invokevirtual android/webkit/WebSettings/setJavaScriptEnabled(Z)V
aload 0
getfield com/bestpay/app/H5PayActivity/mWebView Landroid/webkit/WebView;
invokevirtual android/webkit/WebView/getSettings()Landroid/webkit/WebSettings;
ldc "Linux/Android/tigerbrowser/2.0"
invokevirtual android/webkit/WebSettings/setUserAgentString(Ljava/lang/String;)V
aload 0
getfield com/bestpay/app/H5PayActivity/mWebView Landroid/webkit/WebView;
invokevirtual android/webkit/WebView/getSettings()Landroid/webkit/WebSettings;
iconst_1
invokevirtual android/webkit/WebSettings/setBuiltInZoomControls(Z)V
aload 0
getfield com/bestpay/app/H5PayActivity/mWebView Landroid/webkit/WebView;
invokevirtual android/webkit/WebView/getSettings()Landroid/webkit/WebSettings;
iconst_1
invokevirtual android/webkit/WebSettings/setSupportZoom(Z)V
aload 0
getfield com/bestpay/app/H5PayActivity/mWebView Landroid/webkit/WebView;
invokevirtual android/webkit/WebView/getSettings()Landroid/webkit/WebSettings;
iconst_1
invokevirtual android/webkit/WebSettings/setUseWideViewPort(Z)V
aload 0
getfield com/bestpay/app/H5PayActivity/mWebView Landroid/webkit/WebView;
invokevirtual android/webkit/WebView/getSettings()Landroid/webkit/WebSettings;
iconst_0
invokevirtual android/webkit/WebSettings/setJavaScriptCanOpenWindowsAutomatically(Z)V
aload 0
getfield com/bestpay/app/H5PayActivity/mWebView Landroid/webkit/WebView;
invokevirtual android/webkit/WebView/getSettings()Landroid/webkit/WebSettings;
iconst_1
invokevirtual android/webkit/WebSettings/setLoadWithOverviewMode(Z)V
aload 0
getfield com/bestpay/app/H5PayActivity/mWebView Landroid/webkit/WebView;
invokevirtual android/webkit/WebView/getSettings()Landroid/webkit/WebSettings;
getstatic android/webkit/WebSettings$LayoutAlgorithm/NARROW_COLUMNS Landroid/webkit/WebSettings$LayoutAlgorithm;
invokevirtual android/webkit/WebSettings/setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V
aload 0
getfield com/bestpay/app/H5PayActivity/mWebView Landroid/webkit/WebView;
invokevirtual android/webkit/WebView/getSettings()Landroid/webkit/WebSettings;
iconst_0
invokevirtual android/webkit/WebSettings/setSaveFormData(Z)V
aload 0
getfield com/bestpay/app/H5PayActivity/mWebView Landroid/webkit/WebView;
ldc_w 33554432
invokevirtual android/webkit/WebView/setScrollBarStyle(I)V
aload 0
getfield com/bestpay/app/H5PayActivity/mWebView Landroid/webkit/WebView;
invokevirtual android/webkit/WebView/getSettings()Landroid/webkit/WebSettings;
iconst_0
invokevirtual android/webkit/WebSettings/setSavePassword(Z)V
aload 0
getfield com/bestpay/app/H5PayActivity/mWebView Landroid/webkit/WebView;
invokevirtual android/webkit/WebView/getSettings()Landroid/webkit/WebSettings;
iconst_1
invokevirtual android/webkit/WebSettings/setLoadWithOverviewMode(Z)V
aload 0
getfield com/bestpay/app/H5PayActivity/mWebView Landroid/webkit/WebView;
iconst_0
invokevirtual android/webkit/WebView/setHorizontalScrollBarEnabled(Z)V
aload 0
getfield com/bestpay/app/H5PayActivity/mWebView Landroid/webkit/WebView;
iconst_0
invokevirtual android/webkit/WebView/setVerticalScrollBarEnabled(Z)V
return
.limit locals 1
.limit stack 2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
.annotation invisible Landroid/annotation/SuppressLint;
value [s = "JavascriptInterface" 
.end annotation
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L5
aload 0
aload 1
invokespecial android/app/Activity/onCreate(Landroid/os/Bundle;)V
aload 0
invokevirtual com/bestpay/app/H5PayActivity/getWindow()Landroid/view/Window;
iconst_1
invokevirtual android/view/Window/requestFeature(I)Z
pop
aload 0
invokevirtual com/bestpay/app/H5PayActivity/getWindow()Landroid/view/Window;
iconst_2
invokevirtual android/view/Window/requestFeature(I)Z
pop
aload 0
invokevirtual com/bestpay/app/H5PayActivity/getWindow()Landroid/view/Window;
bipush 18
invokevirtual android/view/Window/setSoftInputMode(I)V
aload 0
aload 0
putfield com/bestpay/app/H5PayActivity/mContext Landroid/content/Context;
L0:
aload 0
invokevirtual com/bestpay/app/H5PayActivity/getIntent()Landroid/content/Intent;
ifnull L1
aload 0
aload 0
invokevirtual com/bestpay/app/H5PayActivity/getIntent()Landroid/content/Intent;
ldc "arg_order_info"
invokevirtual android/content/Intent/getStringExtra(Ljava/lang/String;)Ljava/lang/String;
putfield com/bestpay/app/H5PayActivity/mParamStr Ljava/lang/String;
L1:
aload 0
aload 0
ldc "bestpay_h5"
ldc "layout"
invokespecial com/bestpay/app/H5PayActivity/getIdentifierByStr(Ljava/lang/String;Ljava/lang/String;)I
invokevirtual com/bestpay/app/H5PayActivity/setContentView(I)V
aload 0
getfield com/bestpay/app/H5PayActivity/mContext Landroid/content/Context;
invokestatic com/bestpay/db/BestPayDao/getInstance(Landroid/content/Context;)Lcom/bestpay/db/BestPayDao;
invokevirtual com/bestpay/db/BestPayDao/getLastAccount()Lcom/bestpay/db/AccountInfo;
astore 1
aload 1
ifnull L6
aload 0
new java/lang/StringBuilder
dup
aload 0
getfield com/bestpay/app/H5PayActivity/mParamStr Ljava/lang/String;
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
ldc "&"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "tid"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "=%s&"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "key_index"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "=%s&"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "key_tid"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "=%s"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
iconst_3
anewarray java/lang/Object
dup
iconst_0
aload 1
invokevirtual com/bestpay/db/AccountInfo/getTid()Ljava/lang/String;
aastore
dup
iconst_1
aload 1
invokevirtual com/bestpay/db/AccountInfo/getKey_index()Ljava/lang/String;
aastore
dup
iconst_2
aload 1
invokevirtual com/bestpay/db/AccountInfo/getKey_tid()Ljava/lang/String;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
putfield com/bestpay/app/H5PayActivity/mParamStr Ljava/lang/String;
L6:
aload 0
aload 0
aload 0
ldc "bestpay_progress"
ldc "id"
invokespecial com/bestpay/app/H5PayActivity/getIdentifierByStr(Ljava/lang/String;Ljava/lang/String;)I
invokevirtual com/bestpay/app/H5PayActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ProgressBar
putfield com/bestpay/app/H5PayActivity/mProgressBar Landroid/widget/ProgressBar;
aload 0
invokespecial com/bestpay/app/H5PayActivity/initview()V
aload 0
invokestatic android/webkit/CookieManager/getInstance()Landroid/webkit/CookieManager;
aload 0
getfield com/bestpay/app/H5PayActivity/H5BASEURL Ljava/lang/String;
invokevirtual android/webkit/CookieManager/getCookie(Ljava/lang/String;)Ljava/lang/String;
putfield com/bestpay/app/H5PayActivity/mWebKitcookieStr Ljava/lang/String;
ldc "aaa"
new java/lang/StringBuilder
dup
ldc "webview\u8fd4\u56decookie\u4fe1\u606f\uff1a"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 0
getfield com/bestpay/app/H5PayActivity/mWebKitcookieStr Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/i(Ljava/lang/String;Ljava/lang/String;)I
pop
L3:
aload 0
aload 0
aconst_null
ldc "\u6b63\u5728\u52a0\u8f7d\u4e2d......"
invokestatic android/app/ProgressDialog/show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;
putfield com/bestpay/app/H5PayActivity/mProgressDialog Landroid/app/ProgressDialog;
aload 0
getfield com/bestpay/app/H5PayActivity/mWebView Landroid/webkit/WebView;
aload 0
getfield com/bestpay/app/H5PayActivity/H5BASEURL Ljava/lang/String;
aload 0
getfield com/bestpay/app/H5PayActivity/mParamStr Ljava/lang/String;
invokestatic com/bestpay/encrypt/SginKeyEncrypt/encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
invokevirtual android/webkit/WebView/loadUrl(Ljava/lang/String;)V
aload 0
getfield com/bestpay/app/H5PayActivity/mWebView Landroid/webkit/WebView;
new com/bestpay/app/H5PayActivity$MyWebViewClient
dup
aload 0
invokespecial com/bestpay/app/H5PayActivity$MyWebViewClient/<init>(Lcom/bestpay/app/H5PayActivity;)V
invokevirtual android/webkit/WebView/setWebViewClient(Landroid/webkit/WebViewClient;)V
aload 0
getfield com/bestpay/app/H5PayActivity/mWebKitcookieStr Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L4
new java/lang/Thread
dup
new com/bestpay/app/H5PayActivity$1
dup
aload 0
invokespecial com/bestpay/app/H5PayActivity$1/<init>(Lcom/bestpay/app/H5PayActivity;)V
invokespecial java/lang/Thread/<init>(Ljava/lang/Runnable;)V
invokevirtual java/lang/Thread/start()V
L4:
return
L2:
astore 1
aload 0
ldc "\u652f\u4ed8\u51fa\u73b0\u672a\u77e5\u9519\u8bef"
iconst_1
invokestatic android/widget/Toast/makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
invokevirtual android/widget/Toast/show()V
aload 0
invokevirtual com/bestpay/app/H5PayActivity/finish()V
return
L5:
astore 1
aload 0
new java/lang/StringBuilder
dup
ldc "\u52a0\u5bc6\u4fe1\u606f\u51fa\u73b0\u672a\u77e5\u9519\u8bef"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
iconst_1
invokestatic android/widget/Toast/makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
invokevirtual android/widget/Toast/show()V
aload 0
invokevirtual com/bestpay/app/H5PayActivity/finish()V
return
.limit locals 2
.limit stack 6
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
aload 0
getfield com/bestpay/app/H5PayActivity/mPassGuardManager Lcom/bestpay/app/PassGuardManager;
invokevirtual com/bestpay/app/PassGuardManager/hasKeyBoardShowing()Z
ifeq L0
aload 0
getfield com/bestpay/app/H5PayActivity/mPassGuardManager Lcom/bestpay/app/PassGuardManager;
invokevirtual com/bestpay/app/PassGuardManager/StopPassGuardKeyBoardAll()V
iconst_1
ireturn
L0:
iload 1
iconst_4
if_icmpne L1
aload 0
invokespecial com/bestpay/app/H5PayActivity/exitBy2Click()V
iconst_1
ireturn
L1:
aload 0
iload 1
aload 2
invokespecial android/app/Activity/onKeyUp(ILandroid/view/KeyEvent;)Z
ireturn
.limit locals 3
.limit stack 3
.end method

.method protected onResume()V
aload 0
invokespecial android/app/Activity/onResume()V
aload 0
aload 0
invokespecial com/bestpay/app/H5PayActivity/checkNetworkFlg(Landroid/content/Context;)Z
ifne L0
new android/app/AlertDialog$Builder
dup
aload 0
invokespecial android/app/AlertDialog$Builder/<init>(Landroid/content/Context;)V
ldc "\u7f51\u7edc\u4e0d\u7ed9\u529b"
invokevirtual android/app/AlertDialog$Builder/setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
ldc "\u8bf7\u9000\u51fa\u540e\u91cd\u8bd5"
invokevirtual android/app/AlertDialog$Builder/setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
ldc "\u786e\u5b9a"
new com/bestpay/app/H5PayActivity$8
dup
aload 0
invokespecial com/bestpay/app/H5PayActivity$8/<init>(Lcom/bestpay/app/H5PayActivity;)V
invokevirtual android/app/AlertDialog$Builder/setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
iconst_0
invokevirtual android/app/AlertDialog$Builder/setCancelable(Z)Landroid/app/AlertDialog$Builder;
invokevirtual android/app/AlertDialog$Builder/show()Landroid/app/AlertDialog;
pop
L0:
return
.limit locals 1
.limit stack 5
.end method

.method public sendDeviceInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.throws java/lang/Exception
aload 1
invokestatic com/bestpay/util/Tools/string2Map(Ljava/lang/String;)Ljava/util/Hashtable;
astore 1
ldc "aaa"
new java/lang/StringBuilder
dup
ldc "\u53d1\u9001\u8bbe\u5907\u6307\u7eb9\u4fe1\u606f\u5b57\u7b26\u4e32\uff1a"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 1
invokevirtual java/util/Hashtable/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/i(Ljava/lang/String;Ljava/lang/String;)I
pop
new com/bestpay/util/DeviceInfo
dup
aload 0
invokespecial com/bestpay/util/DeviceInfo/<init>(Landroid/content/Context;)V
astore 4
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
astore 5
aload 5
ldc "merchantID"
aload 1
ldc "MERCHANTID"
invokevirtual java/util/Hashtable/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast java/lang/String
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
aload 5
ldc "orderNo"
aload 1
ldc "ORDERSEQ"
invokevirtual java/util/Hashtable/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast java/lang/String
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
aload 5
ldc "orderReqNo"
aload 1
ldc "ORDERREQTRANSEQ"
invokevirtual java/util/Hashtable/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast java/lang/String
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
aload 5
ldc "productNo"
aload 2
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
aload 5
ldc "encodeType"
ldc "1"
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
aload 5
ldc "operCity"
aload 4
invokevirtual com/bestpay/util/DeviceInfo/getLocationWithGps()Ljava/lang/String;
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
aload 5
ldc "osSystem"
getstatic com/bestpay/app/H5PayActivity/OSSYSTEM Ljava/lang/String;
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
aload 5
ldc "clientVersion"
aload 4
invokevirtual com/bestpay/util/DeviceInfo/getClientVersion()Ljava/lang/String;
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
aload 5
ldc "deviceName"
aload 4
invokevirtual com/bestpay/util/DeviceInfo/getDeviceName()Ljava/lang/String;
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
aload 5
ldc "osVersion"
aload 4
invokevirtual com/bestpay/util/DeviceInfo/getOsVersion()Ljava/lang/String;
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
aload 5
ldc "deviceModel"
aload 4
invokevirtual com/bestpay/util/DeviceInfo/getDeviceModel()Ljava/lang/String;
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
aload 5
ldc "imei"
aload 4
invokevirtual com/bestpay/util/DeviceInfo/getIMEI()Ljava/lang/String;
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
aload 5
ldc "imsi"
aload 4
invokevirtual com/bestpay/util/DeviceInfo/getIMSI()Ljava/lang/String;
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
aload 5
ldc "phoneMac"
aload 4
invokevirtual com/bestpay/util/DeviceInfo/getPhoneMac()Ljava/lang/String;
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
aload 5
ldc "baseVersion"
aload 4
invokevirtual com/bestpay/util/DeviceInfo/getBaseVersion()Ljava/lang/String;
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
aload 5
ldc "kernelVersion"
aload 4
invokevirtual com/bestpay/util/DeviceInfo/getKernelVersion()Ljava/lang/String;
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
aload 5
ldc "mac"
ldc ""
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
aload 5
ldc "isSaveToSession"
ldc "1"
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
ldc "aaa"
new java/lang/StringBuilder
dup
ldc "\u8bbe\u5907\u6307\u7eb9\u4fe1\u606f\uff1a"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 5
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/i(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 5
invokestatic com/bestpay/encrypt/SginKeyEncrypt/encryptMap(Ljava/util/Map;)Ljava/lang/String;
aload 0
getfield com/bestpay/app/H5PayActivity/DEVICESEND Ljava/lang/String;
aload 3
invokestatic com/bestpay/util/Net/sendNetInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
pop
return
.limit locals 6
.limit stack 4
.end method
