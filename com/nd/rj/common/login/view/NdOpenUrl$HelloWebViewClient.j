.bytecode 50.0
.class synchronized com/nd/rj/common/login/view/NdOpenUrl$HelloWebViewClient
.super android/webkit/WebViewClient
.inner class private HelloWebViewClient inner com/nd/rj/common/login/view/NdOpenUrl$HelloWebViewClient outer com/nd/rj/common/login/view/NdOpenUrl

.field final synthetic 'this$0' Lcom/nd/rj/common/login/view/NdOpenUrl;

.method private <init>(Lcom/nd/rj/common/login/view/NdOpenUrl;)V
aload 0
aload 1
putfield com/nd/rj/common/login/view/NdOpenUrl$HelloWebViewClient/this$0 Lcom/nd/rj/common/login/view/NdOpenUrl;
aload 0
invokespecial android/webkit/WebViewClient/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/nd/rj/common/login/view/NdOpenUrl;Lcom/nd/rj/common/login/view/NdOpenUrl$1;)V
aload 0
aload 1
invokespecial com/nd/rj/common/login/view/NdOpenUrl$HelloWebViewClient/<init>(Lcom/nd/rj/common/login/view/NdOpenUrl;)V
return
.limit locals 3
.limit stack 2
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
