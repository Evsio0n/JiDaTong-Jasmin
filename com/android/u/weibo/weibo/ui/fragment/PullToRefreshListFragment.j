.bytecode 50.0
.class public synchronized com/android/u/weibo/weibo/ui/fragment/PullToRefreshListFragment
.super com/android/u/weibo/weibo/ui/fragment/PullToRefreshBaseListFragment
.signature "Lcom/android/u/weibo/weibo/ui/fragment/PullToRefreshBaseListFragment<Lcom/handmark/pulltorefresh/library/PullToRefreshListView;>;"

.method public <init>()V
aload 0
invokespecial com/android/u/weibo/weibo/ui/fragment/PullToRefreshBaseListFragment/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method protected volatile synthetic onCreatePullToRefreshListView(Landroid/view/LayoutInflater;Landroid/os/Bundle;)Lcom/handmark/pulltorefresh/library/PullToRefreshBase;
aload 0
aload 1
aload 2
invokevirtual com/android/u/weibo/weibo/ui/fragment/PullToRefreshListFragment/onCreatePullToRefreshListView(Landroid/view/LayoutInflater;Landroid/os/Bundle;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
areturn
.limit locals 3
.limit stack 3
.end method

.method protected onCreatePullToRefreshListView(Landroid/view/LayoutInflater;Landroid/os/Bundle;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
new com/handmark/pulltorefresh/library/PullToRefreshListView
dup
aload 0
invokevirtual com/android/u/weibo/weibo/ui/fragment/PullToRefreshListFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
invokespecial com/handmark/pulltorefresh/library/PullToRefreshListView/<init>(Landroid/content/Context;)V
areturn
.limit locals 3
.limit stack 3
.end method
