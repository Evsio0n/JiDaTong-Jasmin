.bytecode 50.0
.class public synchronized com/nd/schoollife/ui/square/view/SquarePullToRefreshScrollView
.super com/handmark/pulltorefresh/library/PullToRefreshScrollView

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial com/handmark/pulltorefresh/library/PullToRefreshScrollView/<init>(Landroid/content/Context;)V
return
.limit locals 2
.limit stack 2
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
aload 2
invokespecial com/handmark/pulltorefresh/library/PullToRefreshScrollView/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return
.limit locals 3
.limit stack 3
.end method

.method public <init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V
aload 0
aload 1
aload 2
invokespecial com/handmark/pulltorefresh/library/PullToRefreshScrollView/<init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V
return
.limit locals 3
.limit stack 3
.end method

.method protected createLoadingLayout(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;Landroid/content/res/TypedArray;)Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
new com/nd/schoollife/ui/square/view/MediumRotateLoadingLayout
dup
aload 1
aload 2
aload 0
invokevirtual com/nd/schoollife/ui/square/view/SquarePullToRefreshScrollView/getPullToRefreshScrollDirection()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;
aload 3
invokespecial com/nd/schoollife/ui/square/view/MediumRotateLoadingLayout/<init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;Landroid/content/res/TypedArray;)V
astore 1
aload 1
iconst_4
invokevirtual com/handmark/pulltorefresh/library/internal/LoadingLayout/setVisibility(I)V
aload 1
areturn
.limit locals 4
.limit stack 6
.end method
