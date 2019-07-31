.bytecode 50.0
.class synchronized com/product/android/ui/activity/WebViewActivity$4
.super android/webkit/WebViewClient
.enclosing method com/product/android/ui/activity/WebViewActivity/initWebViewComponent()V
.inner class inner com/product/android/ui/activity/WebViewActivity$4

.field final synthetic 'this$0' Lcom/product/android/ui/activity/WebViewActivity;

.method <init>(Lcom/product/android/ui/activity/WebViewActivity;)V
aload 0
aload 1
putfield com/product/android/ui/activity/WebViewActivity$4/this$0 Lcom/product/android/ui/activity/WebViewActivity;
aload 0
invokespecial android/webkit/WebViewClient/<init>()V
return
.limit locals 2
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
aload 0
getfield com/product/android/ui/activity/WebViewActivity$4/this$0 Lcom/product/android/ui/activity/WebViewActivity;
getfield com/product/android/ui/activity/WebViewActivity/handler Landroid/os/Handler;
iconst_0
invokevirtual android/os/Handler/sendEmptyMessage(I)Z
pop
aload 0
aload 1
aload 2
invokespecial android/webkit/WebViewClient/shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
ireturn
.limit locals 3
.limit stack 3
.end method
