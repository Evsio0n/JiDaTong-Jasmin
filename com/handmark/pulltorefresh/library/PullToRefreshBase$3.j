.bytecode 50.0
.class synchronized com/handmark/pulltorefresh/library/PullToRefreshBase$3
.super java/lang/Object
.implements com/handmark/pulltorefresh/library/PullToRefreshBase$OnSmoothScrollFinishedListener
.signature "Ljava/lang/Object;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnSmoothScrollFinishedListener;"
.enclosing method com/handmark/pulltorefresh/library/PullToRefreshBase/smoothScrollToAndBack(I)V
.inner class inner com/handmark/pulltorefresh/library/PullToRefreshBase$3

.field final synthetic 'this$0' Lcom/handmark/pulltorefresh/library/PullToRefreshBase;

.method <init>(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
aload 0
aload 1
putfield com/handmark/pulltorefresh/library/PullToRefreshBase$3/this$0 Lcom/handmark/pulltorefresh/library/PullToRefreshBase;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onSmoothScrollFinished()V
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshBase$3/this$0 Lcom/handmark/pulltorefresh/library/PullToRefreshBase;
iconst_0
ldc2_w 200L
ldc2_w 225L
aconst_null
invokestatic com/handmark/pulltorefresh/library/PullToRefreshBase/access$5(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;IJJLcom/handmark/pulltorefresh/library/PullToRefreshBase$OnSmoothScrollFinishedListener;)V
return
.limit locals 1
.limit stack 7
.end method
