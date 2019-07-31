.bytecode 50.0
.class synchronized com/handmark/pulltorefresh/library/PullToRefreshWebView$1
.super java/lang/Object
.implements com/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener
.signature "Ljava/lang/Object;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener<Landroid/webkit/WebView;>;"
.enclosing method com/handmark/pulltorefresh/library/PullToRefreshWebView
.inner class inner com/handmark/pulltorefresh/library/PullToRefreshWebView$1

.method <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public onRefresh(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
.signature "(Lcom/handmark/pulltorefresh/library/PullToRefreshBase<Landroid/webkit/WebView;>;)V"
aload 1
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase/getRefreshableView()Landroid/view/View;
checkcast android/webkit/WebView
invokevirtual android/webkit/WebView/reload()V
return
.limit locals 2
.limit stack 1
.end method
