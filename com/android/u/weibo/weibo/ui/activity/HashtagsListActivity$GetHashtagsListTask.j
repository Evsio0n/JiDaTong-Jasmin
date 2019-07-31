.bytecode 50.0
.class synchronized com/android/u/weibo/weibo/ui/activity/HashtagsListActivity$GetHashtagsListTask
.super com/common/android/utils/concurrent/NdTinyHttpAsyncTask
.signature "Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask<Ljava/lang/Long;Ljava/lang/Void;Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;>;"
.inner class private GetHashtagsListTask inner com/android/u/weibo/weibo/ui/activity/HashtagsListActivity$GetHashtagsListTask outer com/android/u/weibo/weibo/ui/activity/HashtagsListActivity

.field private 'force' Z

.field private 'isNew' Z

.field private 'manager' Lcom/android/u/weibo/weibo/controller/NdWeiboManager;

.field final synthetic 'this$0' Lcom/android/u/weibo/weibo/ui/activity/HashtagsListActivity;

.method public <init>(Lcom/android/u/weibo/weibo/ui/activity/HashtagsListActivity;ZZ)V
aload 0
aload 1
putfield com/android/u/weibo/weibo/ui/activity/HashtagsListActivity$GetHashtagsListTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/HashtagsListActivity;
aload 0
invokespecial com/common/android/utils/concurrent/NdTinyHttpAsyncTask/<init>()V
aload 0
aload 1
invokestatic com/android/u/weibo/weibo/controller/NdWeiboManager/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/controller/NdWeiboManager;
putfield com/android/u/weibo/weibo/ui/activity/HashtagsListActivity$GetHashtagsListTask/manager Lcom/android/u/weibo/weibo/controller/NdWeiboManager;
aload 0
iload 2
putfield com/android/u/weibo/weibo/ui/activity/HashtagsListActivity$GetHashtagsListTask/isNew Z
aload 0
iload 3
putfield com/android/u/weibo/weibo/ui/activity/HashtagsListActivity$GetHashtagsListTask/force Z
return
.limit locals 4
.limit stack 2
.end method

.method protected transient doInBackground([Ljava/lang/Long;)Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
.catch com/android/u/weibo/weibo/controller/WeiBoException from L0 to L1 using L2
.catch com/android/u/weibo/weibo/controller/WeiBoException from L1 to L3 using L2
.catch com/android/u/weibo/weibo/controller/WeiBoException from L4 to L5 using L2
L0:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/HashtagsListActivity$GetHashtagsListTask/isNew Z
ifeq L4
aload 0
getfield com/android/u/weibo/weibo/ui/activity/HashtagsListActivity$GetHashtagsListTask/manager Lcom/android/u/weibo/weibo/controller/NdWeiboManager;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/HashtagsListActivity$GetHashtagsListTask/force Z
aload 0
getfield com/android/u/weibo/weibo/ui/activity/HashtagsListActivity$GetHashtagsListTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/HashtagsListActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/HashtagsListActivity/access$400(Lcom/android/u/weibo/weibo/ui/activity/HashtagsListActivity;)Ljava/lang/String;
invokevirtual com/android/u/weibo/weibo/controller/NdWeiboManager/getNewHashtagsList(ZLjava/lang/String;)Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
astore 1
L1:
aload 1
iconst_1
invokestatic com/android/u/weibo/weibo/utils/ConvertTweetListUtils/convertTopicList(Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;Z)V
L3:
aload 1
areturn
L4:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/HashtagsListActivity$GetHashtagsListTask/manager Lcom/android/u/weibo/weibo/controller/NdWeiboManager;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/HashtagsListActivity$GetHashtagsListTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/HashtagsListActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/HashtagsListActivity/access$400(Lcom/android/u/weibo/weibo/ui/activity/HashtagsListActivity;)Ljava/lang/String;
aload 1
iconst_0
aaload
invokevirtual java/lang/Long/longValue()J
invokevirtual com/android/u/weibo/weibo/controller/NdWeiboManager/getOldHashtagsList(Ljava/lang/String;J)Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
astore 1
L5:
goto L1
L2:
astore 1
aload 1
invokevirtual com/android/u/weibo/weibo/controller/WeiBoException/printStackTrace()V
aconst_null
areturn
.limit locals 2
.limit stack 4
.end method

.method protected volatile synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
aload 0
aload 1
checkcast [Ljava/lang/Long;
invokevirtual com/android/u/weibo/weibo/ui/activity/HashtagsListActivity$GetHashtagsListTask/doInBackground([Ljava/lang/Long;)Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
areturn
.limit locals 2
.limit stack 2
.end method

.method protected onPostExecute(Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/HashtagsListActivity$GetHashtagsListTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/HashtagsListActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/HashtagsListActivity/access$500(Lcom/android/u/weibo/weibo/ui/activity/HashtagsListActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/onRefreshComplete()V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/HashtagsListActivity$GetHashtagsListTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/HashtagsListActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/HashtagsListActivity/access$300(Lcom/android/u/weibo/weibo/ui/activity/HashtagsListActivity;)Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/HashtagsListActivity$GetHashtagsListTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/HashtagsListActivity;
iconst_0
invokestatic com/android/u/weibo/weibo/ui/activity/HashtagsListActivity/access$002(Lcom/android/u/weibo/weibo/ui/activity/HashtagsListActivity;Z)Z
pop
aload 0
getfield com/android/u/weibo/weibo/ui/activity/HashtagsListActivity$GetHashtagsListTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/HashtagsListActivity;
invokestatic com/common/android/utils/NetWorkUtils/JudgeNetWorkStatus(Landroid/content/Context;)Z
ifne L0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/HashtagsListActivity$GetHashtagsListTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/HashtagsListActivity;
getstatic com/android/u/weibo/R$string/net_warn_no_network I
iconst_0
invokestatic android/widget/Toast/makeText(Landroid/content/Context;II)Landroid/widget/Toast;
invokevirtual android/widget/Toast/show()V
return
L0:
aload 1
ifnull L1
aload 0
getfield com/android/u/weibo/weibo/ui/activity/HashtagsListActivity$GetHashtagsListTask/isNew Z
ifeq L1
aload 0
getfield com/android/u/weibo/weibo/ui/activity/HashtagsListActivity$GetHashtagsListTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/HashtagsListActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/HashtagsListActivity/access$100(Lcom/android/u/weibo/weibo/ui/activity/HashtagsListActivity;)Lcom/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase;
aload 1
invokevirtual com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase/setData(Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/HashtagsListActivity$GetHashtagsListTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/HashtagsListActivity;
iconst_1
invokestatic com/android/u/weibo/weibo/ui/activity/HashtagsListActivity/access$202(Lcom/android/u/weibo/weibo/ui/activity/HashtagsListActivity;Z)Z
pop
L2:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/HashtagsListActivity$GetHashtagsListTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/HashtagsListActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/HashtagsListActivity/access$100(Lcom/android/u/weibo/weibo/ui/activity/HashtagsListActivity;)Lcom/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase;
invokevirtual com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase/notifyDataSetChanged()V
return
L1:
aload 1
ifnull L2
aload 0
getfield com/android/u/weibo/weibo/ui/activity/HashtagsListActivity$GetHashtagsListTask/isNew Z
ifne L2
aload 0
getfield com/android/u/weibo/weibo/ui/activity/HashtagsListActivity$GetHashtagsListTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/HashtagsListActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/HashtagsListActivity/access$100(Lcom/android/u/weibo/weibo/ui/activity/HashtagsListActivity;)Lcom/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase;
aload 1
invokevirtual com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase/addTweetList(Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;)V
aload 1
invokevirtual com/android/u/weibo/weibo/business/bean/TopicInfoList/size()I
ifne L2
aload 0
getfield com/android/u/weibo/weibo/ui/activity/HashtagsListActivity$GetHashtagsListTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/HashtagsListActivity;
iconst_0
invokestatic com/android/u/weibo/weibo/ui/activity/HashtagsListActivity/access$202(Lcom/android/u/weibo/weibo/ui/activity/HashtagsListActivity;Z)Z
pop
goto L2
.limit locals 2
.limit stack 3
.end method

.method protected volatile synthetic onPostExecute(Ljava/lang/Object;)V
aload 0
aload 1
checkcast com/android/u/weibo/weibo/business/bean/TopicInfoList
invokevirtual com/android/u/weibo/weibo/ui/activity/HashtagsListActivity$GetHashtagsListTask/onPostExecute(Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;)V
return
.limit locals 2
.limit stack 2
.end method
