.bytecode 50.0
.class synchronized com/handmark/pulltorefresh/library/PullToRefreshBase$2
.super java/lang/Object
.implements java/lang/Runnable
.enclosing method com/handmark/pulltorefresh/library/PullToRefreshBase/onSizeChanged(IIII)V
.inner class inner com/handmark/pulltorefresh/library/PullToRefreshBase$2

.field final synthetic 'this$0' Lcom/handmark/pulltorefresh/library/PullToRefreshBase;

.method <init>(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
aload 0
aload 1
putfield com/handmark/pulltorefresh/library/PullToRefreshBase$2/this$0 Lcom/handmark/pulltorefresh/library/PullToRefreshBase;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public run()V
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase$2/this$0 Lcom/handmark/pulltorefresh/library/PullToRefreshBase;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase/requestLayout()V
return
.limit locals 1
.limit stack 1
.end method
