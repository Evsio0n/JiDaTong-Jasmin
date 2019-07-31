.bytecode 50.0
.class public synchronized com/ccb/ccbnetpay/H5PayActivity
.super android/app/Activity
.implements android/view/View$OnClickListener
.inner class inner com/ccb/ccbnetpay/H5PayActivity$1
.inner class inner com/ccb/ccbnetpay/H5PayActivity$2
.inner class inner com/ccb/ccbnetpay/H5PayActivity$3
.inner class public MyJavaScriptInterface inner com/ccb/ccbnetpay/H5PayActivity$MyJavaScriptInterface outer com/ccb/ccbnetpay/H5PayActivity
.inner class private MyWebViewClient inner com/ccb/ccbnetpay/H5PayActivity$MyWebViewClient outer com/ccb/ccbnetpay/H5PayActivity

.field private static final 'FINISHTEXT' Ljava/lang/String; = "\u5b8c\u6210"

.field private static final 'RESULTPARAM' Ljava/lang/String; = "CCBPARAM"

.field public static final 'SDK_CANCEL_FINISH_RECEIVER_ACTION' Ljava/lang/String; = "sdk_cancel_finish_action"

.field public static final 'SDK_PAY_FAIL_TEXT' Ljava/lang/String; = "\u652f\u4ed8\u5931\u8d25"

.field private static final 'THIRDAPPINFO' Ljava/lang/String; = "THIRDAPPINFO="

.field private static final 'USERAGENT' Ljava/lang/String; = "CCBSDK/1.0.1"

.field private 'backImage' Landroid/widget/ImageView;

.field private 'handler' Landroid/os/Handler;

.field private 'mWebView' Landroid/webkit/WebView;

.field private 'progressDialog' Lcom/ccb/ccbnetpay/dialog/CCBProgressDialog;

.field private 'textFinish' Landroid/widget/TextView;

.field private 'url' Ljava/lang/String;

.method public <init>()V
aload 0
invokespecial android/app/Activity/<init>()V
aload 0
aconst_null
putfield com/ccb/ccbnetpay/H5PayActivity/url Ljava/lang/String;
aload 0
aconst_null
putfield com/ccb/ccbnetpay/H5PayActivity/backImage Landroid/widget/ImageView;
aload 0
aconst_null
putfield com/ccb/ccbnetpay/H5PayActivity/textFinish Landroid/widget/TextView;
aload 0
aconst_null
putfield com/ccb/ccbnetpay/H5PayActivity/progressDialog Lcom/ccb/ccbnetpay/dialog/CCBProgressDialog;
aload 0
new com/ccb/ccbnetpay/H5PayActivity$1
dup
aload 0
invokespecial com/ccb/ccbnetpay/H5PayActivity$1/<init>(Lcom/ccb/ccbnetpay/H5PayActivity;)V
putfield com/ccb/ccbnetpay/H5PayActivity/handler Landroid/os/Handler;
return
.limit locals 1
.limit stack 4
.end method

.method static synthetic access$0(Lcom/ccb/ccbnetpay/H5PayActivity;)Landroid/widget/ImageView;
aload 0
getfield com/ccb/ccbnetpay/H5PayActivity/backImage Landroid/widget/ImageView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1(Lcom/ccb/ccbnetpay/H5PayActivity;)Landroid/widget/TextView;
aload 0
getfield com/ccb/ccbnetpay/H5PayActivity/textFinish Landroid/widget/TextView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$2(Lcom/ccb/ccbnetpay/H5PayActivity;)Lcom/ccb/ccbnetpay/dialog/CCBProgressDialog;
aload 0
getfield com/ccb/ccbnetpay/H5PayActivity/progressDialog Lcom/ccb/ccbnetpay/dialog/CCBProgressDialog;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$3(Lcom/ccb/ccbnetpay/H5PayActivity;)Ljava/lang/String;
aload 0
getfield com/ccb/ccbnetpay/H5PayActivity/url Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$4(Lcom/ccb/ccbnetpay/H5PayActivity;)Landroid/os/Handler;
aload 0
getfield com/ccb/ccbnetpay/H5PayActivity/handler Landroid/os/Handler;
areturn
.limit locals 1
.limit stack 1
.end method

.method private initLayout()V
.catch java/io/IOException from L0 to L1 using L2
.catch java/io/IOException from L3 to L4 using L2
.catch java/io/IOException from L4 to L5 using L2
aload 0
iconst_1
invokespecial android/app/Activity/requestWindowFeature(I)Z
pop
new android/util/DisplayMetrics
dup
invokespecial android/util/DisplayMetrics/<init>()V
astore 7
aload 0
invokevirtual com/ccb/ccbnetpay/H5PayActivity/getWindowManager()Landroid/view/WindowManager;
invokeinterface android/view/WindowManager/getDefaultDisplay()Landroid/view/Display; 0
aload 7
invokevirtual android/view/Display/getMetrics(Landroid/util/DisplayMetrics;)V
ldc_w 50.0F
aload 7
getfield android/util/DisplayMetrics/density F
fmul
f2i
istore 1
ldc "---\u6807\u9898\u680f\u8fd4\u56de\u6309\u94ae\u8ddd\u79bb\u9876\u7aef---"
new java/lang/StringBuilder
dup
iload 1
invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/i(Ljava/lang/String;Ljava/lang/String;)I
pop
new android/widget/ScrollView
dup
aload 0
invokespecial android/widget/ScrollView/<init>(Landroid/content/Context;)V
astore 3
new android/view/ViewGroup$LayoutParams
dup
iconst_m1
iconst_m1
invokespecial android/view/ViewGroup$LayoutParams/<init>(II)V
astore 4
new android/widget/RelativeLayout
dup
aload 0
invokespecial android/widget/RelativeLayout/<init>(Landroid/content/Context;)V
astore 5
aload 3
aload 5
new android/widget/RelativeLayout$LayoutParams
dup
iconst_m1
iconst_m1
invokespecial android/widget/RelativeLayout$LayoutParams/<init>(II)V
invokevirtual android/widget/ScrollView/addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
aload 0
new android/webkit/WebView
dup
aload 0
invokespecial android/webkit/WebView/<init>(Landroid/content/Context;)V
putfield com/ccb/ccbnetpay/H5PayActivity/mWebView Landroid/webkit/WebView;
aload 0
getfield com/ccb/ccbnetpay/H5PayActivity/mWebView Landroid/webkit/WebView;
iconst_3
invokevirtual android/webkit/WebView/setId(I)V
aload 0
getfield com/ccb/ccbnetpay/H5PayActivity/mWebView Landroid/webkit/WebView;
iconst_0
invokevirtual android/webkit/WebView/setVisibility(I)V
new android/view/ViewGroup$LayoutParams
dup
iconst_m1
iconst_m1
invokespecial android/view/ViewGroup$LayoutParams/<init>(II)V
astore 6
aload 5
aload 0
getfield com/ccb/ccbnetpay/H5PayActivity/mWebView Landroid/webkit/WebView;
aload 6
invokevirtual android/widget/RelativeLayout/addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
new android/widget/RelativeLayout
dup
aload 0
invokespecial android/widget/RelativeLayout/<init>(Landroid/content/Context;)V
astore 6
new android/widget/RelativeLayout$LayoutParams
dup
iconst_m1
iload 1
invokespecial android/widget/RelativeLayout$LayoutParams/<init>(II)V
astore 8
aload 8
bipush 15
invokevirtual android/widget/RelativeLayout$LayoutParams/addRule(I)V
aload 8
bipush 6
aload 0
getfield com/ccb/ccbnetpay/H5PayActivity/mWebView Landroid/webkit/WebView;
invokevirtual android/webkit/WebView/getId()I
invokevirtual android/widget/RelativeLayout$LayoutParams/addRule(II)V
aload 8
iconst_5
aload 0
getfield com/ccb/ccbnetpay/H5PayActivity/mWebView Landroid/webkit/WebView;
invokevirtual android/webkit/WebView/getId()I
invokevirtual android/widget/RelativeLayout$LayoutParams/addRule(II)V
aload 6
aload 8
invokevirtual android/widget/RelativeLayout/setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
aload 6
iconst_0
invokevirtual android/widget/RelativeLayout/setBackgroundColor(I)V
aload 0
new android/widget/ImageView
dup
aload 0
invokespecial android/widget/ImageView/<init>(Landroid/content/Context;)V
putfield com/ccb/ccbnetpay/H5PayActivity/backImage Landroid/widget/ImageView;
new android/widget/RelativeLayout$LayoutParams
dup
bipush -2
bipush -2
invokespecial android/widget/RelativeLayout$LayoutParams/<init>(II)V
astore 8
aload 8
bipush 15
invokevirtual android/widget/RelativeLayout$LayoutParams/addRule(I)V
aload 8
bipush 9
invokevirtual android/widget/RelativeLayout$LayoutParams/addRule(I)V
aload 8
bipush 15
iconst_0
iconst_0
iconst_0
invokevirtual android/widget/RelativeLayout$LayoutParams/setMargins(IIII)V
aload 0
getfield com/ccb/ccbnetpay/H5PayActivity/backImage Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getfield com/ccb/ccbnetpay/H5PayActivity/backImage Landroid/widget/ImageView;
aload 8
invokevirtual android/widget/ImageView/setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
aload 0
getfield com/ccb/ccbnetpay/H5PayActivity/backImage Landroid/widget/ImageView;
iconst_0
bipush 8
iconst_0
bipush 8
invokevirtual android/widget/ImageView/setPadding(IIII)V
aload 0
getfield com/ccb/ccbnetpay/H5PayActivity/backImage Landroid/widget/ImageView;
iconst_1
invokevirtual android/widget/ImageView/setId(I)V
aload 0
invokevirtual com/ccb/ccbnetpay/H5PayActivity/getAssets()Landroid/content/res/AssetManager;
astore 8
L0:
aload 8
ldc "images/back_nor.png"
invokevirtual android/content/res/AssetManager/open(Ljava/lang/String;)Ljava/io/InputStream;
invokestatic android/graphics/BitmapFactory/decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
astore 8
L1:
aload 8
ifnull L4
L3:
aload 0
getfield com/ccb/ccbnetpay/H5PayActivity/backImage Landroid/widget/ImageView;
aload 8
invokevirtual android/widget/ImageView/setImageBitmap(Landroid/graphics/Bitmap;)V
L4:
iconst_1
aload 8
invokevirtual android/graphics/Bitmap/getWidth()I
iconst_1
imul
i2f
aload 7
invokestatic android/util/TypedValue/applyDimension(IFLandroid/util/DisplayMetrics;)F
f2i
istore 1
iconst_1
aload 8
invokevirtual android/graphics/Bitmap/getHeight()I
iconst_1
imul
i2f
aload 7
invokestatic android/util/TypedValue/applyDimension(IFLandroid/util/DisplayMetrics;)F
f2i
istore 2
aload 0
getfield com/ccb/ccbnetpay/H5PayActivity/backImage Landroid/widget/ImageView;
invokevirtual android/widget/ImageView/getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
iload 1
putfield android/view/ViewGroup$LayoutParams/width I
aload 0
getfield com/ccb/ccbnetpay/H5PayActivity/backImage Landroid/widget/ImageView;
invokevirtual android/widget/ImageView/getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
iload 2
putfield android/view/ViewGroup$LayoutParams/height I
L5:
aload 0
getfield com/ccb/ccbnetpay/H5PayActivity/backImage Landroid/widget/ImageView;
aload 0
invokevirtual android/widget/ImageView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
new android/widget/TextView
dup
aload 0
invokespecial android/widget/TextView/<init>(Landroid/content/Context;)V
putfield com/ccb/ccbnetpay/H5PayActivity/textFinish Landroid/widget/TextView;
new android/widget/RelativeLayout$LayoutParams
dup
bipush -2
bipush -2
invokespecial android/widget/RelativeLayout$LayoutParams/<init>(II)V
astore 7
aload 7
bipush 15
invokevirtual android/widget/RelativeLayout$LayoutParams/addRule(I)V
aload 7
bipush 11
invokevirtual android/widget/RelativeLayout$LayoutParams/addRule(I)V
aload 0
getfield com/ccb/ccbnetpay/H5PayActivity/textFinish Landroid/widget/TextView;
iconst_4
invokevirtual android/widget/TextView/setVisibility(I)V
aload 7
iconst_0
iconst_0
bipush 15
iconst_0
invokevirtual android/widget/RelativeLayout$LayoutParams/setMargins(IIII)V
aload 0
getfield com/ccb/ccbnetpay/H5PayActivity/textFinish Landroid/widget/TextView;
aload 7
invokevirtual android/widget/TextView/setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
aload 0
getfield com/ccb/ccbnetpay/H5PayActivity/textFinish Landroid/widget/TextView;
bipush 10
bipush 10
bipush 10
bipush 10
invokevirtual android/widget/TextView/setPadding(IIII)V
aload 0
getfield com/ccb/ccbnetpay/H5PayActivity/textFinish Landroid/widget/TextView;
bipush 16
invokevirtual android/widget/TextView/setGravity(I)V
aload 0
getfield com/ccb/ccbnetpay/H5PayActivity/textFinish Landroid/widget/TextView;
ldc "\u5b8c\u6210"
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/ccb/ccbnetpay/H5PayActivity/textFinish Landroid/widget/TextView;
ldc "#ffffff"
invokestatic android/graphics/Color/parseColor(Ljava/lang/String;)I
invokevirtual android/widget/TextView/setTextColor(I)V
aload 0
getfield com/ccb/ccbnetpay/H5PayActivity/textFinish Landroid/widget/TextView;
iconst_2
ldc_w 15.0F
invokevirtual android/widget/TextView/setTextSize(IF)V
aload 0
getfield com/ccb/ccbnetpay/H5PayActivity/textFinish Landroid/widget/TextView;
iconst_2
invokevirtual android/widget/TextView/setId(I)V
aload 0
getfield com/ccb/ccbnetpay/H5PayActivity/textFinish Landroid/widget/TextView;
aload 0
invokevirtual android/widget/TextView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 6
aload 0
getfield com/ccb/ccbnetpay/H5PayActivity/backImage Landroid/widget/ImageView;
invokevirtual android/widget/RelativeLayout/addView(Landroid/view/View;)V
aload 6
aload 0
getfield com/ccb/ccbnetpay/H5PayActivity/textFinish Landroid/widget/TextView;
invokevirtual android/widget/RelativeLayout/addView(Landroid/view/View;)V
aload 5
aload 6
invokevirtual android/widget/RelativeLayout/addView(Landroid/view/View;)V
aload 0
aload 3
aload 4
invokevirtual com/ccb/ccbnetpay/H5PayActivity/setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
return
L2:
astore 7
aload 7
invokevirtual java/io/IOException/printStackTrace()V
ldc "---\u83b7\u53d6\u56fe\u7247\u5f02\u5e38---"
aload 7
invokevirtual java/io/IOException/getMessage()Ljava/lang/String;
invokestatic android/util/Log/i(Ljava/lang/String;Ljava/lang/String;)I
pop
goto L5
.limit locals 9
.limit stack 6
.end method

.method private initView()V
aload 0
getfield com/ccb/ccbnetpay/H5PayActivity/progressDialog Lcom/ccb/ccbnetpay/dialog/CCBProgressDialog;
ifnonnull L0
aload 0
new com/ccb/ccbnetpay/dialog/CCBProgressDialog
dup
aload 0
aload 0
invokespecial com/ccb/ccbnetpay/dialog/CCBProgressDialog/<init>(Landroid/content/Context;Landroid/app/Activity;)V
putfield com/ccb/ccbnetpay/H5PayActivity/progressDialog Lcom/ccb/ccbnetpay/dialog/CCBProgressDialog;
L0:
aload 0
getfield com/ccb/ccbnetpay/H5PayActivity/progressDialog Lcom/ccb/ccbnetpay/dialog/CCBProgressDialog;
invokevirtual com/ccb/ccbnetpay/dialog/CCBProgressDialog/showDialog()V
aload 0
getfield com/ccb/ccbnetpay/H5PayActivity/mWebView Landroid/webkit/WebView;
invokevirtual android/webkit/WebView/getSettings()Landroid/webkit/WebSettings;
astore 1
aload 1
invokevirtual android/webkit/WebSettings/getUserAgentString()Ljava/lang/String;
astore 2
ldc "---webview\u7aefuseragent---"
aload 2
invokestatic android/util/Log/i(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 1
new java/lang/StringBuilder
dup
aload 2
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
ldc " "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "CCBSDK/1.0.1"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/webkit/WebSettings/setUserAgentString(Ljava/lang/String;)V
aload 1
iconst_1
invokevirtual android/webkit/WebSettings/setUseWideViewPort(Z)V
aload 1
iconst_1
invokevirtual android/webkit/WebSettings/setLoadWithOverviewMode(Z)V
aload 1
iconst_1
invokevirtual android/webkit/WebSettings/setJavaScriptEnabled(Z)V
aload 1
iconst_1
invokevirtual android/webkit/WebSettings/setJavaScriptCanOpenWindowsAutomatically(Z)V
aload 0
getfield com/ccb/ccbnetpay/H5PayActivity/mWebView Landroid/webkit/WebView;
new com/ccb/ccbnetpay/H5PayActivity$MyWebViewClient
dup
aload 0
aconst_null
invokespecial com/ccb/ccbnetpay/H5PayActivity$MyWebViewClient/<init>(Lcom/ccb/ccbnetpay/H5PayActivity;Lcom/ccb/ccbnetpay/H5PayActivity$MyWebViewClient;)V
invokevirtual android/webkit/WebView/setWebViewClient(Landroid/webkit/WebViewClient;)V
aload 0
getfield com/ccb/ccbnetpay/H5PayActivity/mWebView Landroid/webkit/WebView;
new com/ccb/ccbnetpay/H5PayActivity$3
dup
aload 0
invokespecial com/ccb/ccbnetpay/H5PayActivity$3/<init>(Lcom/ccb/ccbnetpay/H5PayActivity;)V
invokevirtual android/webkit/WebView/setWebChromeClient(Landroid/webkit/WebChromeClient;)V
aload 0
getfield com/ccb/ccbnetpay/H5PayActivity/mWebView Landroid/webkit/WebView;
new com/ccb/ccbnetpay/H5PayActivity$MyJavaScriptInterface
dup
aload 0
invokespecial com/ccb/ccbnetpay/H5PayActivity$MyJavaScriptInterface/<init>(Lcom/ccb/ccbnetpay/H5PayActivity;)V
ldc "javaObj"
invokevirtual android/webkit/WebView/addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
aload 0
getfield com/ccb/ccbnetpay/H5PayActivity/mWebView Landroid/webkit/WebView;
aload 0
getfield com/ccb/ccbnetpay/H5PayActivity/url Ljava/lang/String;
invokevirtual android/webkit/WebView/loadUrl(Ljava/lang/String;)V
return
.limit locals 3
.limit stack 5
.end method

.method public finish()V
aload 0
invokespecial android/app/Activity/finish()V
return
.limit locals 1
.limit stack 1
.end method

.method public onClick(Landroid/view/View;)V
iconst_1
aload 1
invokevirtual android/view/View/getId()I
if_icmpne L0
aload 0
invokevirtual com/ccb/ccbnetpay/H5PayActivity/sendBackMessage()V
L1:
return
L0:
iconst_2
aload 1
invokevirtual android/view/View/getId()I
if_icmpne L1
aload 0
getfield com/ccb/ccbnetpay/H5PayActivity/mWebView Landroid/webkit/WebView;
ldc "javascript:androidCallBack()"
invokevirtual android/webkit/WebView/loadUrl(Ljava/lang/String;)V
return
.limit locals 2
.limit stack 2
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
return
.limit locals 2
.limit stack 0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial android/app/Activity/onCreate(Landroid/os/Bundle;)V
aload 0
invokevirtual com/ccb/ccbnetpay/H5PayActivity/getWindow()Landroid/view/Window;
bipush 18
invokevirtual android/view/Window/setSoftInputMode(I)V
aload 0
aload 0
invokevirtual com/ccb/ccbnetpay/H5PayActivity/getIntent()Landroid/content/Intent;
ldc "url"
invokevirtual android/content/Intent/getStringExtra(Ljava/lang/String;)Ljava/lang/String;
putfield com/ccb/ccbnetpay/H5PayActivity/url Ljava/lang/String;
aload 0
getfield com/ccb/ccbnetpay/H5PayActivity/url Ljava/lang/String;
ifnull L0
ldc ""
aload 0
getfield com/ccb/ccbnetpay/H5PayActivity/url Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L1
L0:
new android/app/AlertDialog$Builder
dup
aload 0
invokespecial android/app/AlertDialog$Builder/<init>(Landroid/content/Context;)V
ldc "\u8b66\u544a"
invokevirtual android/app/AlertDialog$Builder/setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
ldc "\u5fc5\u987b\u914d\u7f6e\u9700\u8981\u6253\u5f00\u7684url\u5730\u5740"
invokevirtual android/app/AlertDialog$Builder/setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
ldc "\u786e\u5b9a"
new com/ccb/ccbnetpay/H5PayActivity$2
dup
aload 0
invokespecial com/ccb/ccbnetpay/H5PayActivity$2/<init>(Lcom/ccb/ccbnetpay/H5PayActivity;)V
invokevirtual android/app/AlertDialog$Builder/setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
invokevirtual android/app/AlertDialog$Builder/show()Landroid/app/AlertDialog;
pop
return
L1:
aload 0
invokespecial com/ccb/ccbnetpay/H5PayActivity/initLayout()V
aload 0
invokespecial com/ccb/ccbnetpay/H5PayActivity/initView()V
return
.limit locals 2
.limit stack 5
.end method

.method protected onDestroy()V
.catch java/lang/Throwable from L0 to L1 using L2
aload 0
invokespecial android/app/Activity/onDestroy()V
aload 0
getfield com/ccb/ccbnetpay/H5PayActivity/mWebView Landroid/webkit/WebView;
ifnull L3
aload 0
getfield com/ccb/ccbnetpay/H5PayActivity/mWebView Landroid/webkit/WebView;
invokevirtual android/webkit/WebView/removeAllViews()V
L0:
aload 0
getfield com/ccb/ccbnetpay/H5PayActivity/mWebView Landroid/webkit/WebView;
invokevirtual android/webkit/WebView/destroy()V
L1:
aload 0
aconst_null
putfield com/ccb/ccbnetpay/H5PayActivity/mWebView Landroid/webkit/WebView;
L3:
return
L2:
astore 1
goto L1
.limit locals 2
.limit stack 2
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
iload 1
iconst_4
if_icmpne L0
aload 0
getfield com/ccb/ccbnetpay/H5PayActivity/backImage Landroid/widget/ImageView;
invokevirtual android/widget/ImageView/getVisibility()I
ifne L1
aload 0
invokevirtual com/ccb/ccbnetpay/H5PayActivity/sendBackMessage()V
L2:
iconst_1
ireturn
L1:
aload 0
getfield com/ccb/ccbnetpay/H5PayActivity/mWebView Landroid/webkit/WebView;
ldc "javascript:androidCallBack()"
invokevirtual android/webkit/WebView/loadUrl(Ljava/lang/String;)V
goto L2
L0:
aload 0
iload 1
aload 2
invokespecial android/app/Activity/onKeyDown(ILandroid/view/KeyEvent;)Z
ireturn
.limit locals 3
.limit stack 3
.end method

.method public sendBackMessage()V
new android/content/Intent
dup
ldc "sdk_cancel_finish_action"
invokespecial android/content/Intent/<init>(Ljava/lang/String;)V
astore 1
aload 1
ldc "sdkremind"
ldc "\u652f\u4ed8\u5931\u8d25"
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 0
aload 1
invokevirtual com/ccb/ccbnetpay/H5PayActivity/sendBroadcast(Landroid/content/Intent;)V
aload 0
invokevirtual com/ccb/ccbnetpay/H5PayActivity/finish()V
return
.limit locals 2
.limit stack 3
.end method
