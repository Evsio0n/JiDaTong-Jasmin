.bytecode 50.0
.class synchronized com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$1
.super java/lang/Object
.implements com/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener
.signature "Ljava/lang/Object;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener<Landroid/widget/ListView;>;"
.enclosing method com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/onCreate(Landroid/os/Bundle;)V
.inner class inner com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$1

.field final synthetic 'this$0' Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;

.method <init>(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;)V
aload 0
aload 1
putfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$1/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onRefresh(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
.signature "(Lcom/handmark/pulltorefresh/library/PullToRefreshBase<Landroid/widget/ListView;>;)V"
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$1/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/getApplicationContext()Landroid/content/Context;
invokestatic java/lang/System/currentTimeMillis()J
ldc_w 524305
invokestatic android/text/format/DateUtils/formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;
astore 2
aload 1
iconst_1
iconst_0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase/getLoadingLayoutProxy(ZZ)Lcom/handmark/pulltorefresh/library/ILoadingLayout;
aload 2
invokeinterface com/handmark/pulltorefresh/library/ILoadingLayout/setLastUpdatedLabel(Ljava/lang/CharSequence;)V 1
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$1/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
iconst_1
invokestatic com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/access$002(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;Z)Z
pop
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$1/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
iconst_1
invokestatic com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/access$102(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;Z)Z
pop
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$1/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
invokestatic com/android/u/weibo/weibo/controller/Manager/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/controller/Manager;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$1/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/access$200(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;)J
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$1/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/access$300(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;)J
iconst_1
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$1/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/access$400(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;)Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity$ServerCallback;
invokevirtual com/android/u/weibo/weibo/controller/Manager/refreshUserTimeline(JJZLcom/android/u/weibo/weibo/controller/NdWeiboListener;)V
new com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$GetUserTask
dup
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$1/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
aconst_null
invokespecial com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$GetUserTask/<init>(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity$1;)V
iconst_0
anewarray java/lang/Void
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$GetUserTask/execute([Ljava/lang/Object;)Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;
pop
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$1/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/access$600(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;)Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity$GetBirthuserTask;
ifnull L0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$1/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/access$600(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;)Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity$GetBirthuserTask;
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$GetBirthuserTask/getStatus()Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status;
getstatic com/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status/FINISHED Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status;
if_acmpne L0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$1/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
new com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$GetBirthuserTask
dup
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$1/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
aconst_null
invokespecial com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$GetBirthuserTask/<init>(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity$1;)V
invokestatic com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/access$602(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity$GetBirthuserTask;)Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity$GetBirthuserTask;
pop
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$1/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/access$600(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;)Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity$GetBirthuserTask;
iconst_0
anewarray java/lang/Void
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$GetBirthuserTask/execute([Ljava/lang/Object;)Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;
pop
L0:
return
.limit locals 3
.limit stack 7
.end method
