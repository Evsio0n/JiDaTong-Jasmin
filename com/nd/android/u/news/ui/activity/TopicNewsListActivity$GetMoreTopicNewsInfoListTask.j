.bytecode 50.0
.class synchronized com/nd/android/u/news/ui/activity/TopicNewsListActivity$GetMoreTopicNewsInfoListTask
.super com/common/android/utils/concurrent/NdTinyHttpAsyncTask
.signature "Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask<Ljava/lang/Void;Ljava/lang/Void;Lcom/nd/android/forumsdk/business/bean/result/ResultNewsList;>;"
.inner class private GetMoreTopicNewsInfoListTask inner com/nd/android/u/news/ui/activity/TopicNewsListActivity$GetMoreTopicNewsInfoListTask outer com/nd/android/u/news/ui/activity/TopicNewsListActivity

.field final synthetic 'this$0' Lcom/nd/android/u/news/ui/activity/TopicNewsListActivity;

.method private <init>(Lcom/nd/android/u/news/ui/activity/TopicNewsListActivity;)V
aload 0
aload 1
putfield com/nd/android/u/news/ui/activity/TopicNewsListActivity$GetMoreTopicNewsInfoListTask/this$0 Lcom/nd/android/u/news/ui/activity/TopicNewsListActivity;
aload 0
invokespecial com/common/android/utils/concurrent/NdTinyHttpAsyncTask/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/nd/android/u/news/ui/activity/TopicNewsListActivity;Lcom/nd/android/u/news/ui/activity/TopicNewsListActivity$1;)V
aload 0
aload 1
invokespecial com/nd/android/u/news/ui/activity/TopicNewsListActivity$GetMoreTopicNewsInfoListTask/<init>(Lcom/nd/android/u/news/ui/activity/TopicNewsListActivity;)V
return
.limit locals 3
.limit stack 2
.end method

.method protected transient doInBackground([Ljava/lang/Void;)Lcom/nd/android/forumsdk/business/bean/result/ResultNewsList;
getstatic com/nd/android/u/news/controller/NewsManager/INSTANCE Lcom/nd/android/u/news/controller/NewsManager;
aload 0
getfield com/nd/android/u/news/ui/activity/TopicNewsListActivity$GetMoreTopicNewsInfoListTask/this$0 Lcom/nd/android/u/news/ui/activity/TopicNewsListActivity;
invokestatic com/nd/android/u/news/ui/activity/TopicNewsListActivity/access$000(Lcom/nd/android/u/news/ui/activity/TopicNewsListActivity;)J
aload 0
getfield com/nd/android/u/news/ui/activity/TopicNewsListActivity$GetMoreTopicNewsInfoListTask/this$0 Lcom/nd/android/u/news/ui/activity/TopicNewsListActivity;
getfield com/nd/android/u/news/ui/activity/TopicNewsListActivity/mMinTs J
bipush 10
invokevirtual com/nd/android/u/news/controller/NewsManager/getMoreTopicNewsList(JJI)Lcom/nd/android/forumsdk/business/bean/result/ResultNewsList;
areturn
.limit locals 2
.limit stack 6
.end method

.method protected volatile synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
aload 0
aload 1
checkcast [Ljava/lang/Void;
invokevirtual com/nd/android/u/news/ui/activity/TopicNewsListActivity$GetMoreTopicNewsInfoListTask/doInBackground([Ljava/lang/Void;)Lcom/nd/android/forumsdk/business/bean/result/ResultNewsList;
areturn
.limit locals 2
.limit stack 2
.end method

.method protected onPostExecute(Lcom/nd/android/forumsdk/business/bean/result/ResultNewsList;)V
aload 0
getfield com/nd/android/u/news/ui/activity/TopicNewsListActivity$GetMoreTopicNewsInfoListTask/this$0 Lcom/nd/android/u/news/ui/activity/TopicNewsListActivity;
aload 1
invokevirtual com/nd/android/u/news/ui/activity/TopicNewsListActivity/afterGetMoreDatas(Lcom/nd/android/forumsdk/business/bean/result/ResultNewsList;)V
aload 0
aload 1
invokespecial com/common/android/utils/concurrent/NdTinyHttpAsyncTask/onPostExecute(Ljava/lang/Object;)V
return
.limit locals 2
.limit stack 2
.end method

.method protected volatile synthetic onPostExecute(Ljava/lang/Object;)V
aload 0
aload 1
checkcast com/nd/android/forumsdk/business/bean/result/ResultNewsList
invokevirtual com/nd/android/u/news/ui/activity/TopicNewsListActivity$GetMoreTopicNewsInfoListTask/onPostExecute(Lcom/nd/android/forumsdk/business/bean/result/ResultNewsList;)V
return
.limit locals 2
.limit stack 2
.end method
