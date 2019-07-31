.bytecode 50.0
.class public synchronized com/nd/rj/common/login/view/NdOpenUrl
.super android/app/Activity
.inner class inner com/nd/rj/common/login/view/NdOpenUrl$1
.inner class inner com/nd/rj/common/login/view/NdOpenUrl$2
.inner class private HelloWebViewClient inner com/nd/rj/common/login/view/NdOpenUrl$HelloWebViewClient outer com/nd/rj/common/login/view/NdOpenUrl

.field private 'mProgress' Landroid/widget/ProgressBar;

.field private 'mWebView' Landroid/webkit/WebView;

.method public <init>()V
aload 0
invokespecial android/app/Activity/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$000(Lcom/nd/rj/common/login/view/NdOpenUrl;)Landroid/widget/ProgressBar;
aload 0
getfield com/nd/rj/common/login/view/NdOpenUrl/mProgress Landroid/widget/ProgressBar;
areturn
.limit locals 1
.limit stack 1
.end method

.method public onCreate(Landroid/os/Bundle;)V
.annotation invisible Landroid/annotation/SuppressLint;
value [s = "SetJavaScriptEnabled" 
.end annotation
aload 0
aload 1
invokespecial android/app/Activity/onCreate(Landroid/os/Bundle;)V
aload 0
iconst_1
invokevirtual com/nd/rj/common/login/view/NdOpenUrl/requestWindowFeature(I)Z
pop
aload 0
getstatic com/nd/rj/common/R$layout/nd_open_url I
invokevirtual com/nd/rj/common/login/view/NdOpenUrl/setContentView(I)V
aload 0
aload 0
getstatic com/nd/rj/common/R$id/progressbar I
invokevirtual com/nd/rj/common/login/view/NdOpenUrl/findViewById(I)Landroid/view/View;
checkcast android/widget/ProgressBar
putfield com/nd/rj/common/login/view/NdOpenUrl/mProgress Landroid/widget/ProgressBar;
aload 0
aload 0
getstatic com/nd/rj/common/R$id/webView I
invokevirtual com/nd/rj/common/login/view/NdOpenUrl/findViewById(I)Landroid/view/View;
checkcast android/webkit/WebView
putfield com/nd/rj/common/login/view/NdOpenUrl/mWebView Landroid/webkit/WebView;
aload 0
getfield com/nd/rj/common/login/view/NdOpenUrl/mWebView Landroid/webkit/WebView;
invokevirtual android/webkit/WebView/getSettings()Landroid/webkit/WebSettings;
astore 1
aload 1
iconst_1
invokevirtual android/webkit/WebSettings/setJavaScriptEnabled(Z)V
aload 1
iconst_1
invokevirtual android/webkit/WebSettings/setLightTouchEnabled(Z)V
aload 1
getstatic android/webkit/WebSettings$PluginState/ON Landroid/webkit/WebSettings$PluginState;
invokevirtual android/webkit/WebSettings/setPluginState(Landroid/webkit/WebSettings$PluginState;)V
aload 0
getfield com/nd/rj/common/login/view/NdOpenUrl/mWebView Landroid/webkit/WebView;
new com/nd/rj/common/login/view/NdOpenUrl$1
dup
aload 0
invokespecial com/nd/rj/common/login/view/NdOpenUrl$1/<init>(Lcom/nd/rj/common/login/view/NdOpenUrl;)V
invokevirtual android/webkit/WebView/setWebChromeClient(Landroid/webkit/WebChromeClient;)V
aload 0
getfield com/nd/rj/common/login/view/NdOpenUrl/mWebView Landroid/webkit/WebView;
new com/nd/rj/common/login/view/NdOpenUrl$HelloWebViewClient
dup
aload 0
aconst_null
invokespecial com/nd/rj/common/login/view/NdOpenUrl$HelloWebViewClient/<init>(Lcom/nd/rj/common/login/view/NdOpenUrl;Lcom/nd/rj/common/login/view/NdOpenUrl$1;)V
invokevirtual android/webkit/WebView/setWebViewClient(Landroid/webkit/WebViewClient;)V
aload 0
getstatic com/nd/rj/common/R$id/tvBack I
invokevirtual com/nd/rj/common/login/view/NdOpenUrl/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
new com/nd/rj/common/login/view/NdOpenUrl$2
dup
aload 0
invokespecial com/nd/rj/common/login/view/NdOpenUrl$2/<init>(Lcom/nd/rj/common/login/view/NdOpenUrl;)V
invokevirtual android/widget/TextView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getstatic com/nd/rj/common/R$id/tvDo I
invokevirtual com/nd/rj/common/login/view/NdOpenUrl/findViewById(I)Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
aload 0
invokevirtual com/nd/rj/common/login/view/NdOpenUrl/getIntent()Landroid/content/Intent;
invokevirtual android/content/Intent/getExtras()Landroid/os/Bundle;
ldc "WEB"
invokevirtual android/os/Bundle/getString(Ljava/lang/String;)Ljava/lang/String;
astore 1
aload 0
getfield com/nd/rj/common/login/view/NdOpenUrl/mWebView Landroid/webkit/WebView;
aload 1
invokevirtual android/webkit/WebView/loadUrl(Ljava/lang/String;)V
return
.limit locals 2
.limit stack 5
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
iload 1
iconst_4
if_icmpne L0
aload 0
getfield com/nd/rj/common/login/view/NdOpenUrl/mWebView Landroid/webkit/WebView;
invokevirtual android/webkit/WebView/canGoBack()Z
ifeq L0
aload 0
getfield com/nd/rj/common/login/view/NdOpenUrl/mWebView Landroid/webkit/WebView;
invokevirtual android/webkit/WebView/goBack()V
iconst_1
ireturn
L0:
aload 0
iload 1
aload 2
invokespecial android/app/Activity/onKeyDown(ILandroid/view/KeyEvent;)Z
ireturn
.limit locals 3
.limit stack 3
.end method
