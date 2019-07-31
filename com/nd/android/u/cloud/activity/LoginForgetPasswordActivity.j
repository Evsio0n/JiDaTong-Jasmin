.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/activity/LoginForgetPasswordActivity
.super com/product/android/ui/activity/HeaderActivity
.inner class static synthetic inner com/nd/android/u/cloud/activity/LoginForgetPasswordActivity$1
.inner class private HelloWebViewClient inner com/nd/android/u/cloud/activity/LoginForgetPasswordActivity$HelloWebViewClient outer com/nd/android/u/cloud/activity/LoginForgetPasswordActivity

.field public static final 'URL' Ljava/lang/String; = "url"

.field public static final 'XY_URL_FORGET_MAIL' Ljava/lang/String; = "https://reguap.99.com/uaplogin/forget/email?appid=101&returnurl=https://oa.99.com/sso?url=https://desk.oa.99.com/&username="

.field public static final 'XY_URL_FORGET_PHONE' Ljava/lang/String; = "https://reguap.99.com/uaplogin/forget/phone?appid=101&returnurl=https://oa.99.com/sso?url=https://desk.oa.99.com/&username="

.field private 'mWebView' Landroid/webkit/WebView;

.method public <init>()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
.annotation invisible Landroid/annotation/SuppressLint;
value [s = "SetJavaScriptEnabled" 
.end annotation
aload 0
aload 1
invokespecial com/product/android/ui/activity/HeaderActivity/onCreate(Landroid/os/Bundle;)V
aload 0
iconst_1
invokevirtual com/nd/android/u/cloud/activity/LoginForgetPasswordActivity/requestWindowFeature(I)Z
pop
aload 0
ldc_w 2130903449
invokevirtual com/nd/android/u/cloud/activity/LoginForgetPasswordActivity/setContentView(I)V
aload 0
invokevirtual com/nd/android/u/cloud/activity/LoginForgetPasswordActivity/initComponent()V
aload 0
invokevirtual com/nd/android/u/cloud/activity/LoginForgetPasswordActivity/initEvent()V
aload 0
ldc_w 2131493630
invokevirtual com/nd/android/u/cloud/activity/LoginForgetPasswordActivity/setActivityTitle(I)V
aload 0
invokevirtual com/nd/android/u/cloud/activity/LoginForgetPasswordActivity/getIntent()Landroid/content/Intent;
ldc "url"
invokevirtual android/content/Intent/getStringExtra(Ljava/lang/String;)Ljava/lang/String;
astore 1
aload 0
aload 0
ldc_w 2131624920
invokevirtual com/nd/android/u/cloud/activity/LoginForgetPasswordActivity/findViewById(I)Landroid/view/View;
checkcast android/webkit/WebView
putfield com/nd/android/u/cloud/activity/LoginForgetPasswordActivity/mWebView Landroid/webkit/WebView;
aload 0
getfield com/nd/android/u/cloud/activity/LoginForgetPasswordActivity/mWebView Landroid/webkit/WebView;
invokevirtual android/webkit/WebView/getSettings()Landroid/webkit/WebSettings;
iconst_1
invokevirtual android/webkit/WebSettings/setJavaScriptEnabled(Z)V
aload 0
getfield com/nd/android/u/cloud/activity/LoginForgetPasswordActivity/mWebView Landroid/webkit/WebView;
aload 1
invokevirtual android/webkit/WebView/loadUrl(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/cloud/activity/LoginForgetPasswordActivity/mWebView Landroid/webkit/WebView;
new com/nd/android/u/cloud/activity/LoginForgetPasswordActivity$HelloWebViewClient
dup
aload 0
aconst_null
invokespecial com/nd/android/u/cloud/activity/LoginForgetPasswordActivity$HelloWebViewClient/<init>(Lcom/nd/android/u/cloud/activity/LoginForgetPasswordActivity;Lcom/nd/android/u/cloud/activity/LoginForgetPasswordActivity$1;)V
invokevirtual android/webkit/WebView/setWebViewClient(Landroid/webkit/WebViewClient;)V
return
.limit locals 2
.limit stack 5
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
iload 1
iconst_4
if_icmpne L0
aload 0
getfield com/nd/android/u/cloud/activity/LoginForgetPasswordActivity/mWebView Landroid/webkit/WebView;
invokevirtual android/webkit/WebView/canGoBack()Z
ifeq L0
aload 0
getfield com/nd/android/u/cloud/activity/LoginForgetPasswordActivity/mWebView Landroid/webkit/WebView;
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
