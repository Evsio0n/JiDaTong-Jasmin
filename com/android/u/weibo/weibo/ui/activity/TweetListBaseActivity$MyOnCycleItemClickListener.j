.bytecode 50.0
.class public synchronized com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$MyOnCycleItemClickListener
.super java/lang/Object
.implements com/android/u/weibo/weibo/ui/widget/CycleSelectionView$OnCycleItemClickListener
.inner class public MyOnCycleItemClickListener inner com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$MyOnCycleItemClickListener outer com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity

.field final synthetic 'this$0' Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity;

.method public <init>(Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity;)V
aload 0
aload 1
putfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$MyOnCycleItemClickListener/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onCycleItemClick(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$MyOnCycleItemClickListener/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity;
iload 1
putfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/mCurrentType I
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$MyOnCycleItemClickListener/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity;
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/mCurrentType I
ifne L0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$MyOnCycleItemClickListener/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity;
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/mListSelection Landroid/widget/Button;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$MyOnCycleItemClickListener/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity;
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/my_follow I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual android/widget/Button/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$MyOnCycleItemClickListener/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity;
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/publicListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
bipush 8
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/setVisibility(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$MyOnCycleItemClickListener/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity;
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/friendListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
iconst_0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/setVisibility(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$MyOnCycleItemClickListener/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity;
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/mFriendTweetListCache Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
ifnonnull L1
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$MyOnCycleItemClickListener/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity;
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/friendListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/isRefreshing()Z
ifeq L2
L3:
return
L2:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$MyOnCycleItemClickListener/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$MyOnCycleItemClickListener/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity;
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/friendListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/access$500(Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity;Lcom/handmark/pulltorefresh/library/PullToRefreshListView;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$MyOnCycleItemClickListener/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity;
new com/android/u/weibo/weibo/ui/adapter/TweetListAdapter
dup
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$MyOnCycleItemClickListener/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity;
invokespecial com/android/u/weibo/weibo/ui/adapter/TweetListAdapter/<init>(Landroid/app/Activity;)V
putfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/mAdapter Lcom/android/u/weibo/weibo/ui/adapter/TweetListAdapter;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$MyOnCycleItemClickListener/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity;
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/friendListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$MyOnCycleItemClickListener/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity;
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/mAdapter Lcom/android/u/weibo/weibo/ui/adapter/TweetListAdapter;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/setAdapter(Landroid/widget/ListAdapter;)V
L4:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$MyOnCycleItemClickListener/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity;
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/friendListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/getRefreshableView()Landroid/view/View;
checkcast android/widget/ListView
iconst_0
invokevirtual android/widget/ListView/setSelection(I)V
return
L1:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$MyOnCycleItemClickListener/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity;
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/mAdapter Lcom/android/u/weibo/weibo/ui/adapter/TweetListAdapter;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$MyOnCycleItemClickListener/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity;
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/mFriendTweetListCache Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
invokevirtual com/android/u/weibo/weibo/ui/adapter/TweetListAdapter/setData(Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$MyOnCycleItemClickListener/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity;
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/friendListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$MyOnCycleItemClickListener/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity;
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/mAdapter Lcom/android/u/weibo/weibo/ui/adapter/TweetListAdapter;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/setAdapter(Landroid/widget/ListAdapter;)V
goto L4
L0:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$MyOnCycleItemClickListener/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity;
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/mListSelection Landroid/widget/Button;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$MyOnCycleItemClickListener/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity;
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/common_weibo I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual android/widget/Button/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$MyOnCycleItemClickListener/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity;
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/publicListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
iconst_0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/setVisibility(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$MyOnCycleItemClickListener/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity;
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/friendListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
bipush 8
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/setVisibility(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$MyOnCycleItemClickListener/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity;
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/mPublicTweetListCache Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
ifnonnull L5
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$MyOnCycleItemClickListener/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity;
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/publicListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/isRefreshing()Z
ifne L3
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$MyOnCycleItemClickListener/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$MyOnCycleItemClickListener/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity;
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/publicListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/access$500(Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity;Lcom/handmark/pulltorefresh/library/PullToRefreshListView;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$MyOnCycleItemClickListener/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity;
new com/android/u/weibo/weibo/ui/adapter/TweetListAdapter
dup
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$MyOnCycleItemClickListener/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity;
invokespecial com/android/u/weibo/weibo/ui/adapter/TweetListAdapter/<init>(Landroid/app/Activity;)V
putfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/mAdapter Lcom/android/u/weibo/weibo/ui/adapter/TweetListAdapter;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$MyOnCycleItemClickListener/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity;
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/publicListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$MyOnCycleItemClickListener/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity;
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/mAdapter Lcom/android/u/weibo/weibo/ui/adapter/TweetListAdapter;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/setAdapter(Landroid/widget/ListAdapter;)V
L6:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$MyOnCycleItemClickListener/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity;
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/publicListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/getRefreshableView()Landroid/view/View;
checkcast android/widget/ListView
iconst_0
invokevirtual android/widget/ListView/setSelection(I)V
return
L5:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$MyOnCycleItemClickListener/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity;
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/mAdapter Lcom/android/u/weibo/weibo/ui/adapter/TweetListAdapter;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$MyOnCycleItemClickListener/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity;
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/mPublicTweetListCache Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
invokevirtual com/android/u/weibo/weibo/ui/adapter/TweetListAdapter/setData(Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$MyOnCycleItemClickListener/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity;
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/publicListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$MyOnCycleItemClickListener/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity;
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/mAdapter Lcom/android/u/weibo/weibo/ui/adapter/TweetListAdapter;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/setAdapter(Landroid/widget/ListAdapter;)V
goto L6
.limit locals 2
.limit stack 4
.end method
