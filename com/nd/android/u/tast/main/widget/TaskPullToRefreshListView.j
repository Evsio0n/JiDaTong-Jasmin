.bytecode 50.0
.class public synchronized com/nd/android/u/tast/main/widget/TaskPullToRefreshListView
.super com/handmark/pulltorefresh/library/PullToRefreshListView

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial com/handmark/pulltorefresh/library/PullToRefreshListView/<init>(Landroid/content/Context;)V
return
.limit locals 2
.limit stack 2
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
aload 2
invokespecial com/handmark/pulltorefresh/library/PullToRefreshListView/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return
.limit locals 3
.limit stack 3
.end method

.method public <init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V
aload 0
aload 1
aload 2
invokespecial com/handmark/pulltorefresh/library/PullToRefreshListView/<init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V
return
.limit locals 3
.limit stack 3
.end method

.method protected createLoadingLayout(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;Landroid/content/res/TypedArray;)Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
new com/nd/android/u/tast/main/widget/MediumRotateLoadingLayout
dup
aload 1
aload 2
aload 0
invokevirtual com/nd/android/u/tast/main/widget/TaskPullToRefreshListView/getPullToRefreshScrollDirection()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;
aload 3
invokespecial com/nd/android/u/tast/main/widget/MediumRotateLoadingLayout/<init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;Landroid/content/res/TypedArray;)V
astore 1
aload 1
iconst_4
invokevirtual com/handmark/pulltorefresh/library/internal/LoadingLayout/setVisibility(I)V
aload 1
areturn
.limit locals 4
.limit stack 6
.end method
