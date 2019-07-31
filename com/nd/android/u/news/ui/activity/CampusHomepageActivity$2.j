.bytecode 50.0
.class synchronized com/nd/android/u/news/ui/activity/CampusHomepageActivity$2
.super android/webkit/WebViewClient
.enclosing method com/nd/android/u/news/ui/activity/CampusHomepageActivity/onCreate(Landroid/os/Bundle;)V
.inner class inner com/nd/android/u/news/ui/activity/CampusHomepageActivity$2

.field final synthetic 'this$0' Lcom/nd/android/u/news/ui/activity/CampusHomepageActivity;

.method <init>(Lcom/nd/android/u/news/ui/activity/CampusHomepageActivity;)V
aload 0
aload 1
putfield com/nd/android/u/news/ui/activity/CampusHomepageActivity$2/this$0 Lcom/nd/android/u/news/ui/activity/CampusHomepageActivity;
aload 0
invokespecial android/webkit/WebViewClient/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
aload 0
aload 1
aload 2
invokespecial android/webkit/WebViewClient/onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/news/ui/activity/CampusHomepageActivity$2/this$0 Lcom/nd/android/u/news/ui/activity/CampusHomepageActivity;
invokestatic com/nd/android/u/news/ui/activity/CampusHomepageActivity/access$200(Lcom/nd/android/u/news/ui/activity/CampusHomepageActivity;)V
return
.limit locals 3
.limit stack 3
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
aload 0
aload 1
aload 2
aload 3
invokespecial android/webkit/WebViewClient/onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
aload 0
getfield com/nd/android/u/news/ui/activity/CampusHomepageActivity$2/this$0 Lcom/nd/android/u/news/ui/activity/CampusHomepageActivity;
invokestatic com/nd/android/u/news/ui/activity/CampusHomepageActivity/access$100(Lcom/nd/android/u/news/ui/activity/CampusHomepageActivity;)V
return
.limit locals 4
.limit stack 4
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
getfield com/nd/android/u/news/ui/activity/CampusHomepageActivity$2/this$0 Lcom/nd/android/u/news/ui/activity/CampusHomepageActivity;
invokestatic com/nd/android/u/news/ui/activity/CampusHomepageActivity/access$300(Lcom/nd/android/u/news/ui/activity/CampusHomepageActivity;)Landroid/webkit/WebView;
aload 2
invokevirtual android/webkit/WebView/loadUrl(Ljava/lang/String;)V
iconst_1
ireturn
.limit locals 3
.limit stack 2
.end method
