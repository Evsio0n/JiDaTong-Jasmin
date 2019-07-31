.bytecode 50.0
.class synchronized com/nd/rj/common/microblogging/SNSAuthorized$4
.super com/nd/rj/common/microblogging/SNSAuthorized$WebViewClientExt
.enclosing method com/nd/rj/common/microblogging/SNSAuthorized
.inner class inner com/nd/rj/common/microblogging/SNSAuthorized$4

.field final synthetic 'this$0' Lcom/nd/rj/common/microblogging/SNSAuthorized;

.method <init>(Lcom/nd/rj/common/microblogging/SNSAuthorized;)V
aload 0
aload 1
putfield com/nd/rj/common/microblogging/SNSAuthorized$4/this$0 Lcom/nd/rj/common/microblogging/SNSAuthorized;
aload 0
aload 1
invokespecial com/nd/rj/common/microblogging/SNSAuthorized$WebViewClientExt/<init>(Lcom/nd/rj/common/microblogging/SNSAuthorized;)V
return
.limit locals 2
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
