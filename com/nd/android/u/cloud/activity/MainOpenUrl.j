.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/activity/MainOpenUrl
.super com/product/android/ui/activity/HeaderActivity
.inner class static synthetic inner com/nd/android/u/cloud/activity/MainOpenUrl$1
.inner class private HelloWebViewClient inner com/nd/android/u/cloud/activity/MainOpenUrl$HelloWebViewClient outer com/nd/android/u/cloud/activity/MainOpenUrl

.field private 'mWebView' Landroid/webkit/WebView;

.method public <init>()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/product/android/ui/activity/HeaderActivity/onCreate(Landroid/os/Bundle;)V
aload 0
iconst_1
invokevirtual com/nd/android/u/cloud/activity/MainOpenUrl/requestWindowFeature(I)Z
pop
aload 0
ldc_w 2130903480
invokevirtual com/nd/android/u/cloud/activity/MainOpenUrl/setContentView(I)V
aload 0
invokevirtual com/nd/android/u/cloud/activity/MainOpenUrl/initComponent()V
aload 0
invokevirtual com/nd/android/u/cloud/activity/MainOpenUrl/initEvent()V
aload 0
aload 0
ldc_w 2131624095
invokevirtual com/nd/android/u/cloud/activity/MainOpenUrl/findViewById(I)Landroid/view/View;
checkcast android/webkit/WebView
putfield com/nd/android/u/cloud/activity/MainOpenUrl/mWebView Landroid/webkit/WebView;
aload 0
getfield com/nd/android/u/cloud/activity/MainOpenUrl/mWebView Landroid/webkit/WebView;
invokevirtual android/webkit/WebView/getSettings()Landroid/webkit/WebSettings;
iconst_1
invokevirtual android/webkit/WebSettings/setJavaScriptEnabled(Z)V
aload 0
invokevirtual com/nd/android/u/cloud/activity/MainOpenUrl/getIntent()Landroid/content/Intent;
invokevirtual android/content/Intent/getExtras()Landroid/os/Bundle;
astore 2
aload 2
ldc "WEB"
invokevirtual android/os/Bundle/getString(Ljava/lang/String;)Ljava/lang/String;
astore 1
aload 2
ldc "TITLE"
invokevirtual android/os/Bundle/getString(Ljava/lang/String;)Ljava/lang/String;
astore 2
aload 2
invokestatic com/common/android/utils/StringUtils/isEmpty(Ljava/lang/String;)Z
ifne L0
aload 0
aload 2
invokevirtual com/nd/android/u/cloud/activity/MainOpenUrl/setActivityTitle(Ljava/lang/String;)V
L0:
aload 0
getfield com/nd/android/u/cloud/activity/MainOpenUrl/mWebView Landroid/webkit/WebView;
aload 1
invokevirtual android/webkit/WebView/loadUrl(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/cloud/activity/MainOpenUrl/mWebView Landroid/webkit/WebView;
new com/nd/android/u/cloud/activity/MainOpenUrl$HelloWebViewClient
dup
aload 0
aconst_null
invokespecial com/nd/android/u/cloud/activity/MainOpenUrl$HelloWebViewClient/<init>(Lcom/nd/android/u/cloud/activity/MainOpenUrl;Lcom/nd/android/u/cloud/activity/MainOpenUrl$1;)V
invokevirtual android/webkit/WebView/setWebViewClient(Landroid/webkit/WebViewClient;)V
return
.limit locals 3
.limit stack 5
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
iload 1
iconst_4
if_icmpne L0
aload 0
getfield com/nd/android/u/cloud/activity/MainOpenUrl/mWebView Landroid/webkit/WebView;
invokevirtual android/webkit/WebView/canGoBack()Z
ifeq L0
aload 0
getfield com/nd/android/u/cloud/activity/MainOpenUrl/mWebView Landroid/webkit/WebView;
invokevirtual android/webkit/WebView/goBack()V
iconst_1
ireturn
L0:
aload 0
iload 1
aload 2
invokespecial com/product/android/ui/activity/HeaderActivity/onKeyDown(ILandroid/view/KeyEvent;)Z
ireturn
.limit locals 3
.limit stack 3
.end method
