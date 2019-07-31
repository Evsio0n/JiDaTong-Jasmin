.bytecode 50.0
.class public synchronized com/nd/rj/common/microblogging/SNSAuthorized$WebViewClientExt
.super android/webkit/WebViewClient
.inner class public WebViewClientExt inner com/nd/rj/common/microblogging/SNSAuthorized$WebViewClientExt outer com/nd/rj/common/microblogging/SNSAuthorized

.field final synthetic 'this$0' Lcom/nd/rj/common/microblogging/SNSAuthorized;

.method public <init>(Lcom/nd/rj/common/microblogging/SNSAuthorized;)V
aload 0
aload 1
putfield com/nd/rj/common/microblogging/SNSAuthorized$WebViewClientExt/this$0 Lcom/nd/rj/common/microblogging/SNSAuthorized;
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
