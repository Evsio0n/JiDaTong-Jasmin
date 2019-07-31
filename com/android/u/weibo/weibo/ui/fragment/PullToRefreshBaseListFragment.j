.bytecode 50.0
.class synchronized abstract com/android/u/weibo/weibo/ui/fragment/PullToRefreshBaseListFragment
.super android/support/v4/app/ListFragment
.signature "<T:Lcom/handmark/pulltorefresh/library/PullToRefreshBase<+Landroid/widget/AbsListView;>;>Landroid/support/v4/app/ListFragment;"

.field private 'mPullToRefreshListView' Lcom/handmark/pulltorefresh/library/PullToRefreshBase; signature "TT;"

.method <init>()V
aload 0
invokespecial android/support/v4/app/ListFragment/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public final getPullToRefreshListView()Lcom/handmark/pulltorefresh/library/PullToRefreshBase;
.signature "()TT;"
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/PullToRefreshBaseListFragment/mPullToRefreshListView Lcom/handmark/pulltorefresh/library/PullToRefreshBase;
areturn
.limit locals 1
.limit stack 1
.end method

.method protected abstract onCreatePullToRefreshListView(Landroid/view/LayoutInflater;Landroid/os/Bundle;)Lcom/handmark/pulltorefresh/library/PullToRefreshBase;
.signature "(Landroid/view/LayoutInflater;Landroid/os/Bundle;)TT;"
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
aload 0
aload 1
aload 2
aload 3
invokespecial android/support/v4/app/ListFragment/onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
astore 2
aload 2
ldc_w 16908298
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ListView
astore 5
aload 5
invokevirtual android/widget/ListView/getParent()Landroid/view/ViewParent;
checkcast android/view/ViewGroup
astore 6
aload 6
aload 5
invokevirtual android/view/ViewGroup/indexOfChild(Landroid/view/View;)I
istore 4
aload 6
iload 4
invokevirtual android/view/ViewGroup/removeViewAt(I)V
aload 0
aload 0
aload 1
aload 3
invokevirtual com/android/u/weibo/weibo/ui/fragment/PullToRefreshBaseListFragment/onCreatePullToRefreshListView(Landroid/view/LayoutInflater;Landroid/os/Bundle;)Lcom/handmark/pulltorefresh/library/PullToRefreshBase;
putfield com/android/u/weibo/weibo/ui/fragment/PullToRefreshBaseListFragment/mPullToRefreshListView Lcom/handmark/pulltorefresh/library/PullToRefreshBase;
aload 6
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/PullToRefreshBaseListFragment/mPullToRefreshListView Lcom/handmark/pulltorefresh/library/PullToRefreshBase;
iload 4
aload 5
invokevirtual android/widget/ListView/getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
invokevirtual android/view/ViewGroup/addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
aload 2
areturn
.limit locals 7
.limit stack 4
.end method
