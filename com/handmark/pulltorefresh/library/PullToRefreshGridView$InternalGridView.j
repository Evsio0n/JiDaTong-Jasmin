.bytecode 50.0
.class synchronized com/handmark/pulltorefresh/library/PullToRefreshGridView$InternalGridView
.super android/widget/GridView
.implements com/handmark/pulltorefresh/library/internal/EmptyViewMethodAccessor
.inner class InternalGridView inner com/handmark/pulltorefresh/library/PullToRefreshGridView$InternalGridView outer com/handmark/pulltorefresh/library/PullToRefreshGridView

.field final synthetic 'this$0' Lcom/handmark/pulltorefresh/library/PullToRefreshGridView;

.method public <init>(Lcom/handmark/pulltorefresh/library/PullToRefreshGridView;Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
putfield com/handmark/pulltorefresh/library/PullToRefreshGridView$InternalGridView/this$0 Lcom/handmark/pulltorefresh/library/PullToRefreshGridView;
aload 0
aload 2
aload 3
invokespecial android/widget/GridView/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return
.limit locals 4
.limit stack 3
.end method

.method public setEmptyView(Landroid/view/View;)V
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshGridView$InternalGridView/this$0 Lcom/handmark/pulltorefresh/library/PullToRefreshGridView;
aload 1
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshGridView/setEmptyView(Landroid/view/View;)V
return
.limit locals 2
.limit stack 2
.end method

.method public setEmptyViewInternal(Landroid/view/View;)V
aload 0
aload 1
invokespecial android/widget/GridView/setEmptyView(Landroid/view/View;)V
return
.limit locals 2
.limit stack 2
.end method
