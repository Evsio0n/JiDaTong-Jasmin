.bytecode 50.0
.class public synchronized com/bestpay/ui/ProgressWebView$WebChromeClient
.super android/webkit/WebChromeClient
.inner class public WebChromeClient inner com/bestpay/ui/ProgressWebView$WebChromeClient outer com/bestpay/ui/ProgressWebView

.field final synthetic 'this$0' Lcom/bestpay/ui/ProgressWebView;

.method public <init>(Lcom/bestpay/ui/ProgressWebView;)V
aload 0
aload 1
putfield com/bestpay/ui/ProgressWebView$WebChromeClient/this$0 Lcom/bestpay/ui/ProgressWebView;
aload 0
invokespecial android/webkit/WebChromeClient/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
iload 2
bipush 100
if_icmpne L0
aload 0
getfield com/bestpay/ui/ProgressWebView$WebChromeClient/this$0 Lcom/bestpay/ui/ProgressWebView;
invokestatic com/bestpay/ui/ProgressWebView/access$0(Lcom/bestpay/ui/ProgressWebView;)Landroid/widget/ProgressBar;
bipush 8
invokevirtual android/widget/ProgressBar/setVisibility(I)V
L1:
aload 0
aload 1
iload 2
invokespecial android/webkit/WebChromeClient/onProgressChanged(Landroid/webkit/WebView;I)V
return
L0:
aload 0
getfield com/bestpay/ui/ProgressWebView$WebChromeClient/this$0 Lcom/bestpay/ui/ProgressWebView;
invokestatic com/bestpay/ui/ProgressWebView/access$0(Lcom/bestpay/ui/ProgressWebView;)Landroid/widget/ProgressBar;
invokevirtual android/widget/ProgressBar/getVisibility()I
bipush 8
if_icmpne L2
aload 0
getfield com/bestpay/ui/ProgressWebView$WebChromeClient/this$0 Lcom/bestpay/ui/ProgressWebView;
invokestatic com/bestpay/ui/ProgressWebView/access$0(Lcom/bestpay/ui/ProgressWebView;)Landroid/widget/ProgressBar;
iconst_0
invokevirtual android/widget/ProgressBar/setVisibility(I)V
L2:
aload 0
getfield com/bestpay/ui/ProgressWebView$WebChromeClient/this$0 Lcom/bestpay/ui/ProgressWebView;
invokestatic com/bestpay/ui/ProgressWebView/access$0(Lcom/bestpay/ui/ProgressWebView;)Landroid/widget/ProgressBar;
iload 2
invokevirtual android/widget/ProgressBar/setProgress(I)V
goto L1
.limit locals 3
.limit stack 3
.end method
