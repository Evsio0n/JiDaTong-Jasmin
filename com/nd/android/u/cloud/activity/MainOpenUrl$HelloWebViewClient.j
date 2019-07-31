.bytecode 50.0
.class synchronized com/nd/android/u/cloud/activity/MainOpenUrl$HelloWebViewClient
.super android/webkit/WebViewClient
.inner class private HelloWebViewClient inner com/nd/android/u/cloud/activity/MainOpenUrl$HelloWebViewClient outer com/nd/android/u/cloud/activity/MainOpenUrl

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/activity/MainOpenUrl;

.method private <init>(Lcom/nd/android/u/cloud/activity/MainOpenUrl;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/MainOpenUrl$HelloWebViewClient/this$0 Lcom/nd/android/u/cloud/activity/MainOpenUrl;
aload 0
invokespecial android/webkit/WebViewClient/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/nd/android/u/cloud/activity/MainOpenUrl;Lcom/nd/android/u/cloud/activity/MainOpenUrl$1;)V
aload 0
aload 1
invokespecial com/nd/android/u/cloud/activity/MainOpenUrl$HelloWebViewClient/<init>(Lcom/nd/android/u/cloud/activity/MainOpenUrl;)V
return
.limit locals 3
.limit stack 2
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
aload 2
invokevirtual android/webkit/SslErrorHandler/proceed()V
return
.limit locals 4
.limit stack 1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
aload 1
aload 2
invokevirtual android/webkit/WebView/loadUrl(Ljava/lang/String;)V
iconst_1
ireturn
.limit locals 3
.limit stack 2
.end method
