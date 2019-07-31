.bytecode 50.0
.class synchronized com/product/android/ui/widget/TopRankView$4
.super java/lang/Object
.implements java/lang/Runnable
.enclosing method com/product/android/ui/widget/TopRankView/onRefresh(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
.inner class inner com/product/android/ui/widget/TopRankView$4

.field final synthetic 'this$0' Lcom/product/android/ui/widget/TopRankView;

.method <init>(Lcom/product/android/ui/widget/TopRankView;)V
aload 0
aload 1
putfield com/product/android/ui/widget/TopRankView$4/this$0 Lcom/product/android/ui/widget/TopRankView;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public run()V
aload 0
getfield com/product/android/ui/widget/TopRankView$4/this$0 Lcom/product/android/ui/widget/TopRankView;
invokestatic com/product/android/ui/widget/TopRankView/access$600(Lcom/product/android/ui/widget/TopRankView;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
ifnull L0
aload 0
getfield com/product/android/ui/widget/TopRankView$4/this$0 Lcom/product/android/ui/widget/TopRankView;
invokestatic com/product/android/ui/widget/TopRankView/access$600(Lcom/product/android/ui/widget/TopRankView;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/onRefreshComplete()V
L0:
return
.limit locals 1
.limit stack 1
.end method
