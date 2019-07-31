.bytecode 50.0
.class synchronized com/nd/android/u/news/ui/activity/NewsDetailActivity$3
.super android/webkit/WebViewClient
.enclosing method com/nd/android/u/news/ui/activity/NewsDetailActivity/createWebView()Landroid/webkit/WebView;
.inner class inner com/nd/android/u/news/ui/activity/NewsDetailActivity$3

.field final synthetic 'this$0' Lcom/nd/android/u/news/ui/activity/NewsDetailActivity;

.method <init>(Lcom/nd/android/u/news/ui/activity/NewsDetailActivity;)V
aload 0
aload 1
putfield com/nd/android/u/news/ui/activity/NewsDetailActivity$3/this$0 Lcom/nd/android/u/news/ui/activity/NewsDetailActivity;
aload 0
invokespecial android/webkit/WebViewClient/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/news/ui/activity/NewsDetailActivity$3/this$0 Lcom/nd/android/u/news/ui/activity/NewsDetailActivity;
invokestatic com/nd/android/u/news/ui/activity/NewsDetailActivity/access$100(Lcom/nd/android/u/news/ui/activity/NewsDetailActivity;)V
aload 0
aload 1
aload 2
invokespecial android/webkit/WebViewClient/onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
return
.limit locals 3
.limit stack 3
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
aload 0
getfield com/nd/android/u/news/ui/activity/NewsDetailActivity$3/this$0 Lcom/nd/android/u/news/ui/activity/NewsDetailActivity;
invokestatic com/nd/android/u/news/ui/activity/NewsDetailActivity/access$000(Lcom/nd/android/u/news/ui/activity/NewsDetailActivity;)Landroid/webkit/WebView;
aload 2
invokevirtual android/webkit/WebView/loadUrl(Ljava/lang/String;)V
iconst_1
ireturn
.limit locals 3
.limit stack 2
.end method
