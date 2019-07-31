.bytecode 50.0
.class final synchronized com/handmark/pulltorefresh/library/extras/PullToRefreshWebView2$JsValueCallback
.super java/lang/Object
.inner class final JsValueCallback inner com/handmark/pulltorefresh/library/extras/PullToRefreshWebView2$JsValueCallback outer com/handmark/pulltorefresh/library/extras/PullToRefreshWebView2

.field final synthetic 'this$0' Lcom/handmark/pulltorefresh/library/extras/PullToRefreshWebView2;

.method <init>(Lcom/handmark/pulltorefresh/library/extras/PullToRefreshWebView2;)V
aload 0
aload 1
putfield com/handmark/pulltorefresh/library/extras/PullToRefreshWebView2$JsValueCallback/this$0 Lcom/handmark/pulltorefresh/library/extras/PullToRefreshWebView2;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public isReadyForPullDownResponse(Z)V
aload 0
getfield com/handmark/pulltorefresh/library/extras/PullToRefreshWebView2$JsValueCallback/this$0 Lcom/handmark/pulltorefresh/library/extras/PullToRefreshWebView2;
invokestatic com/handmark/pulltorefresh/library/extras/PullToRefreshWebView2/access$1(Lcom/handmark/pulltorefresh/library/extras/PullToRefreshWebView2;)Ljava/util/concurrent/atomic/AtomicBoolean;
iload 1
invokevirtual java/util/concurrent/atomic/AtomicBoolean/set(Z)V
return
.limit locals 2
.limit stack 2
.end method

.method public isReadyForPullUpResponse(Z)V
aload 0
getfield com/handmark/pulltorefresh/library/extras/PullToRefreshWebView2$JsValueCallback/this$0 Lcom/handmark/pulltorefresh/library/extras/PullToRefreshWebView2;
invokestatic com/handmark/pulltorefresh/library/extras/PullToRefreshWebView2/access$0(Lcom/handmark/pulltorefresh/library/extras/PullToRefreshWebView2;)Ljava/util/concurrent/atomic/AtomicBoolean;
iload 1
invokevirtual java/util/concurrent/atomic/AtomicBoolean/set(Z)V
return
.limit locals 2
.limit stack 2
.end method
