.bytecode 50.0
.class synchronized com/weibo/sdk/android/WeiboDialog$WeiboWebViewClient
.super android/webkit/WebViewClient
.inner class private WeiboWebViewClient inner com/weibo/sdk/android/WeiboDialog$WeiboWebViewClient outer com/weibo/sdk/android/WeiboDialog

.field final synthetic 'this$0' Lcom/weibo/sdk/android/WeiboDialog;

.method private <init>(Lcom/weibo/sdk/android/WeiboDialog;)V
aload 0
aload 1
putfield com/weibo/sdk/android/WeiboDialog$WeiboWebViewClient/this$0 Lcom/weibo/sdk/android/WeiboDialog;
aload 0
invokespecial android/webkit/WebViewClient/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/weibo/sdk/android/WeiboDialog;Lcom/weibo/sdk/android/WeiboDialog$WeiboWebViewClient;)V
aload 0
aload 1
invokespecial com/weibo/sdk/android/WeiboDialog$WeiboWebViewClient/<init>(Lcom/weibo/sdk/android/WeiboDialog;)V
return
.limit locals 3
.limit stack 2
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
aload 0
aload 1
aload 2
invokespecial android/webkit/WebViewClient/onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
aload 0
getfield com/weibo/sdk/android/WeiboDialog$WeiboWebViewClient/this$0 Lcom/weibo/sdk/android/WeiboDialog;
invokestatic com/weibo/sdk/android/WeiboDialog/access$2(Lcom/weibo/sdk/android/WeiboDialog;)Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/isShowing()Z
ifeq L0
aload 0
getfield com/weibo/sdk/android/WeiboDialog$WeiboWebViewClient/this$0 Lcom/weibo/sdk/android/WeiboDialog;
invokestatic com/weibo/sdk/android/WeiboDialog/access$2(Lcom/weibo/sdk/android/WeiboDialog;)Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/dismiss()V
L0:
aload 0
getfield com/weibo/sdk/android/WeiboDialog$WeiboWebViewClient/this$0 Lcom/weibo/sdk/android/WeiboDialog;
invokestatic com/weibo/sdk/android/WeiboDialog/access$3(Lcom/weibo/sdk/android/WeiboDialog;)Landroid/webkit/WebView;
iconst_0
invokevirtual android/webkit/WebView/setVisibility(I)V
return
.limit locals 3
.limit stack 3
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
aload 2
invokestatic com/weibo/sdk/android/Weibo/getRedirecturl()Ljava/lang/String;
invokevirtual java/lang/String/startsWith(Ljava/lang/String;)Z
ifeq L0
aload 0
getfield com/weibo/sdk/android/WeiboDialog$WeiboWebViewClient/this$0 Lcom/weibo/sdk/android/WeiboDialog;
aload 1
aload 2
invokestatic com/weibo/sdk/android/WeiboDialog/access$1(Lcom/weibo/sdk/android/WeiboDialog;Landroid/webkit/WebView;Ljava/lang/String;)V
aload 0
getfield com/weibo/sdk/android/WeiboDialog$WeiboWebViewClient/this$0 Lcom/weibo/sdk/android/WeiboDialog;
invokevirtual com/weibo/sdk/android/WeiboDialog/dismiss()V
return
L0:
aload 0
aload 1
aload 2
aload 3
invokespecial android/webkit/WebViewClient/onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
aload 0
getfield com/weibo/sdk/android/WeiboDialog$WeiboWebViewClient/this$0 Lcom/weibo/sdk/android/WeiboDialog;
invokestatic com/weibo/sdk/android/WeiboDialog/access$2(Lcom/weibo/sdk/android/WeiboDialog;)Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/show()V
return
.limit locals 4
.limit stack 4
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
aload 0
aload 1
iload 2
aload 3
aload 4
invokespecial android/webkit/WebViewClient/onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
aload 0
getfield com/weibo/sdk/android/WeiboDialog$WeiboWebViewClient/this$0 Lcom/weibo/sdk/android/WeiboDialog;
invokestatic com/weibo/sdk/android/WeiboDialog/access$0(Lcom/weibo/sdk/android/WeiboDialog;)Lcom/weibo/sdk/android/WeiboAuthListener;
new com/weibo/sdk/android/WeiboDialogError
dup
aload 3
iload 2
aload 4
invokespecial com/weibo/sdk/android/WeiboDialogError/<init>(Ljava/lang/String;ILjava/lang/String;)V
invokeinterface com/weibo/sdk/android/WeiboAuthListener/onError(Lcom/weibo/sdk/android/WeiboDialogError;)V 1
aload 0
getfield com/weibo/sdk/android/WeiboDialog$WeiboWebViewClient/this$0 Lcom/weibo/sdk/android/WeiboDialog;
invokevirtual com/weibo/sdk/android/WeiboDialog/dismiss()V
return
.limit locals 5
.limit stack 6
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
aload 2
ldc "sms:"
invokevirtual java/lang/String/startsWith(Ljava/lang/String;)Z
ifeq L0
new android/content/Intent
dup
ldc "android.intent.action.VIEW"
invokespecial android/content/Intent/<init>(Ljava/lang/String;)V
astore 1
aload 1
ldc "address"
aload 2
ldc "sms:"
ldc ""
invokevirtual java/lang/String/replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 1
ldc "vnd.android-dir/mms-sms"
invokevirtual android/content/Intent/setType(Ljava/lang/String;)Landroid/content/Intent;
pop
aload 0
getfield com/weibo/sdk/android/WeiboDialog$WeiboWebViewClient/this$0 Lcom/weibo/sdk/android/WeiboDialog;
invokevirtual com/weibo/sdk/android/WeiboDialog/getContext()Landroid/content/Context;
aload 1
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
iconst_1
ireturn
L0:
aload 0
aload 1
aload 2
invokespecial android/webkit/WebViewClient/shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
ireturn
.limit locals 3
.limit stack 5
.end method
