.bytecode 50.0
.class synchronized com/handmark/pulltorefresh/library/PullToRefreshWebView$2
.super android/webkit/WebChromeClient
.enclosing method com/handmark/pulltorefresh/library/PullToRefreshWebView
.inner class inner com/handmark/pulltorefresh/library/PullToRefreshWebView$2

.field final synthetic 'this$0' Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;

.method <init>(Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;)V
aload 0
aload 1
putfield com/handmark/pulltorefresh/library/PullToRefreshWebView$2/this$0 Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;
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
getfield com/handmark/pulltorefresh/library/PullToRefreshWebView$2/this$0 Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshWebView/onRefreshComplete()V
L0:
return
.limit locals 3
.limit stack 2
.end method
