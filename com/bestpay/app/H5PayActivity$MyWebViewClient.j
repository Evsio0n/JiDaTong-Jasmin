.bytecode 50.0
.class synchronized com/bestpay/app/H5PayActivity$MyWebViewClient
.super android/webkit/WebViewClient
.inner class MyWebViewClient inner com/bestpay/app/H5PayActivity$MyWebViewClient outer com/bestpay/app/H5PayActivity

.field final synthetic 'this$0' Lcom/bestpay/app/H5PayActivity;

.method <init>(Lcom/bestpay/app/H5PayActivity;)V
aload 0
aload 1
putfield com/bestpay/app/H5PayActivity$MyWebViewClient/this$0 Lcom/bestpay/app/H5PayActivity;
aload 0
invokespecial android/webkit/WebViewClient/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
aload 0
getfield com/bestpay/app/H5PayActivity$MyWebViewClient/this$0 Lcom/bestpay/app/H5PayActivity;
invokestatic com/bestpay/app/H5PayActivity/access$2(Lcom/bestpay/app/H5PayActivity;)Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/isShowing()Z
ifeq L0
aload 0
getfield com/bestpay/app/H5PayActivity$MyWebViewClient/this$0 Lcom/bestpay/app/H5PayActivity;
invokestatic com/bestpay/app/H5PayActivity/access$2(Lcom/bestpay/app/H5PayActivity;)Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/dismiss()V
L0:
return
.limit locals 3
.limit stack 1
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
aload 0
aload 1
iload 2
aload 3
aload 4
invokespecial android/webkit/WebViewClient/onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
aload 1
ldc "file:///android_asset/bestpaysdk/error/bestpay_error.html"
invokevirtual android/webkit/WebView/loadUrl(Ljava/lang/String;)V
return
.limit locals 5
.limit stack 5
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
aload 2
invokevirtual android/webkit/SslErrorHandler/proceed()V
return
.limit locals 4
.limit stack 1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
aload 2
ldc "http://"
invokevirtual java/lang/String/startsWith(Ljava/lang/String;)Z
ifne L0
aload 2
ldc "https://"
invokevirtual java/lang/String/startsWith(Ljava/lang/String;)Z
ifeq L1
L0:
aload 1
aload 2
invokevirtual android/webkit/WebView/loadUrl(Ljava/lang/String;)V
iconst_1
ireturn
L1:
iconst_0
ireturn
.limit locals 3
.limit stack 2
.end method
