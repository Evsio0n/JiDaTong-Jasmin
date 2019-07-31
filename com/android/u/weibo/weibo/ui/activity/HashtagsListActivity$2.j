.bytecode 50.0
.class synchronized com/android/u/weibo/weibo/ui/activity/HashtagsListActivity$2
.super java/lang/Object
.implements com/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener
.enclosing method com/android/u/weibo/weibo/ui/activity/HashtagsListActivity/onCreate(Landroid/os/Bundle;)V
.inner class inner com/android/u/weibo/weibo/ui/activity/HashtagsListActivity$2

.field final synthetic 'this$0' Lcom/android/u/weibo/weibo/ui/activity/HashtagsListActivity;

.method <init>(Lcom/android/u/weibo/weibo/ui/activity/HashtagsListActivity;)V
aload 0
aload 1
putfield com/android/u/weibo/weibo/ui/activity/HashtagsListActivity$2/this$0 Lcom/android/u/weibo/weibo/ui/activity/HashtagsListActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onLastItemVisible()V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/HashtagsListActivity$2/this$0 Lcom/android/u/weibo/weibo/ui/activity/HashtagsListActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/HashtagsListActivity/access$100(Lcom/android/u/weibo/weibo/ui/activity/HashtagsListActivity;)Lcom/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase;
ifnull L0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/HashtagsListActivity$2/this$0 Lcom/android/u/weibo/weibo/ui/activity/HashtagsListActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/HashtagsListActivity/access$200(Lcom/android/u/weibo/weibo/ui/activity/HashtagsListActivity;)Z
ifeq L0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/HashtagsListActivity$2/this$0 Lcom/android/u/weibo/weibo/ui/activity/HashtagsListActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/HashtagsListActivity/access$000(Lcom/android/u/weibo/weibo/ui/activity/HashtagsListActivity;)Z
ifeq L1
L0:
return
L1:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/HashtagsListActivity$2/this$0 Lcom/android/u/weibo/weibo/ui/activity/HashtagsListActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/HashtagsListActivity/access$100(Lcom/android/u/weibo/weibo/ui/activity/HashtagsListActivity;)Lcom/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase;
invokevirtual com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase/getLastItem()Ljava/lang/Object;
astore 3
aconst_null
astore 2
aload 2
astore 1
aload 3
ifnull L2
aload 2
astore 1
aload 3
instanceof com/android/u/weibo/weibo/business/bean/TopicInfo
ifeq L2
aload 3
checkcast com/android/u/weibo/weibo/business/bean/TopicInfo
astore 1
L2:
aload 1
ifnull L0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/HashtagsListActivity$2/this$0 Lcom/android/u/weibo/weibo/ui/activity/HashtagsListActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/HashtagsListActivity/access$300(Lcom/android/u/weibo/weibo/ui/activity/HashtagsListActivity;)Landroid/view/View;
iconst_0
invokevirtual android/view/View/setVisibility(I)V
new com/android/u/weibo/weibo/ui/activity/HashtagsListActivity$GetHashtagsListTask
dup
aload 0
getfield com/android/u/weibo/weibo/ui/activity/HashtagsListActivity$2/this$0 Lcom/android/u/weibo/weibo/ui/activity/HashtagsListActivity;
iconst_0
iconst_1
invokespecial com/android/u/weibo/weibo/ui/activity/HashtagsListActivity$GetHashtagsListTask/<init>(Lcom/android/u/weibo/weibo/ui/activity/HashtagsListActivity;ZZ)V
iconst_1
anewarray java/lang/Long
dup
iconst_0
aload 1
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/tid J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
aastore
invokevirtual com/android/u/weibo/weibo/ui/activity/HashtagsListActivity$GetHashtagsListTask/execute([Ljava/lang/Object;)Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;
pop
aload 0
getfield com/android/u/weibo/weibo/ui/activity/HashtagsListActivity$2/this$0 Lcom/android/u/weibo/weibo/ui/activity/HashtagsListActivity;
iconst_1
invokestatic com/android/u/weibo/weibo/ui/activity/HashtagsListActivity/access$002(Lcom/android/u/weibo/weibo/ui/activity/HashtagsListActivity;Z)Z
pop
return
.limit locals 4
.limit stack 6
.end method
