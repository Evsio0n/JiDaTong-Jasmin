.bytecode 50.0
.class synchronized com/android/u/weibo/weibo/ui/activity/HashtagsListActivity$1
.super java/lang/Object
.implements com/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener
.signature "Ljava/lang/Object;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener<Landroid/widget/ListView;>;"
.enclosing method com/android/u/weibo/weibo/ui/activity/HashtagsListActivity/onCreate(Landroid/os/Bundle;)V
.inner class inner com/android/u/weibo/weibo/ui/activity/HashtagsListActivity$1

.field final synthetic 'this$0' Lcom/android/u/weibo/weibo/ui/activity/HashtagsListActivity;

.method <init>(Lcom/android/u/weibo/weibo/ui/activity/HashtagsListActivity;)V
aload 0
aload 1
putfield com/android/u/weibo/weibo/ui/activity/HashtagsListActivity$1/this$0 Lcom/android/u/weibo/weibo/ui/activity/HashtagsListActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onRefresh(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
.signature "(Lcom/handmark/pulltorefresh/library/PullToRefreshBase<Landroid/widget/ListView;>;)V"
aload 0
getfield com/android/u/weibo/weibo/ui/activity/HashtagsListActivity$1/this$0 Lcom/android/u/weibo/weibo/ui/activity/HashtagsListActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/HashtagsListActivity/access$000(Lcom/android/u/weibo/weibo/ui/activity/HashtagsListActivity;)Z
ifne L0
new com/android/u/weibo/weibo/ui/activity/HashtagsListActivity$GetHashtagsListTask
dup
aload 0
getfield com/android/u/weibo/weibo/ui/activity/HashtagsListActivity$1/this$0 Lcom/android/u/weibo/weibo/ui/activity/HashtagsListActivity;
iconst_1
iconst_1
invokespecial com/android/u/weibo/weibo/ui/activity/HashtagsListActivity$GetHashtagsListTask/<init>(Lcom/android/u/weibo/weibo/ui/activity/HashtagsListActivity;ZZ)V
iconst_1
anewarray java/lang/Long
dup
iconst_0
ldc2_w 9223372036854775807L
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
aastore
invokevirtual com/android/u/weibo/weibo/ui/activity/HashtagsListActivity$GetHashtagsListTask/execute([Ljava/lang/Object;)Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;
pop
aload 0
getfield com/android/u/weibo/weibo/ui/activity/HashtagsListActivity$1/this$0 Lcom/android/u/weibo/weibo/ui/activity/HashtagsListActivity;
iconst_1
invokestatic com/android/u/weibo/weibo/ui/activity/HashtagsListActivity/access$002(Lcom/android/u/weibo/weibo/ui/activity/HashtagsListActivity;Z)Z
pop
L0:
return
.limit locals 2
.limit stack 6
.end method
