.bytecode 50.0
.class synchronized com/nd/android/u/news/ui/activity/TopicNewsListActivity$GetTopicNewsListTask
.super com/common/android/utils/concurrent/NdTinyHttpAsyncTask
.signature "Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask<Ljava/lang/Void;Lcom/nd/android/forumsdk/business/bean/result/NewsInfoBean;Lcom/nd/android/forumsdk/business/bean/result/ResultNewsList;>;"
.inner class private GetTopicNewsListTask inner com/nd/android/u/news/ui/activity/TopicNewsListActivity$GetTopicNewsListTask outer com/nd/android/u/news/ui/activity/TopicNewsListActivity

.field final synthetic 'this$0' Lcom/nd/android/u/news/ui/activity/TopicNewsListActivity;

.method private <init>(Lcom/nd/android/u/news/ui/activity/TopicNewsListActivity;)V
aload 0
aload 1
putfield com/nd/android/u/news/ui/activity/TopicNewsListActivity$GetTopicNewsListTask/this$0 Lcom/nd/android/u/news/ui/activity/TopicNewsListActivity;
aload 0
invokespecial com/common/android/utils/concurrent/NdTinyHttpAsyncTask/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/nd/android/u/news/ui/activity/TopicNewsListActivity;Lcom/nd/android/u/news/ui/activity/TopicNewsListActivity$1;)V
aload 0
aload 1
invokespecial com/nd/android/u/news/ui/activity/TopicNewsListActivity$GetTopicNewsListTask/<init>(Lcom/nd/android/u/news/ui/activity/TopicNewsListActivity;)V
return
.limit locals 3
.limit stack 2
.end method

.method protected transient doInBackground([Ljava/lang/Void;)Lcom/nd/android/forumsdk/business/bean/result/ResultNewsList;
aload 0
iconst_1
anewarray com/nd/android/forumsdk/business/bean/result/NewsInfoBean
dup
iconst_0
getstatic com/nd/android/u/news/controller/NewsManager/INSTANCE Lcom/nd/android/u/news/controller/NewsManager;
aload 0
getfield com/nd/android/u/news/ui/activity/TopicNewsListActivity$GetTopicNewsListTask/this$0 Lcom/nd/android/u/news/ui/activity/TopicNewsListActivity;
invokestatic com/nd/android/u/news/ui/activity/TopicNewsListActivity/access$000(Lcom/nd/android/u/news/ui/activity/TopicNewsListActivity;)J
invokevirtual com/nd/android/u/news/controller/NewsManager/getTopicNewsDetail(J)Lcom/nd/android/forumsdk/business/bean/result/NewsInfoBean;
aastore
invokevirtual com/nd/android/u/news/ui/activity/TopicNewsListActivity$GetTopicNewsListTask/publishProgress([Ljava/lang/Object;)V
getstatic com/nd/android/u/news/controller/NewsManager/INSTANCE Lcom/nd/android/u/news/controller/NewsManager;
aload 0
getfield com/nd/android/u/news/ui/activity/TopicNewsListActivity$GetTopicNewsListTask/this$0 Lcom/nd/android/u/news/ui/activity/TopicNewsListActivity;
invokestatic com/nd/android/u/news/ui/activity/TopicNewsListActivity/access$000(Lcom/nd/android/u/news/ui/activity/TopicNewsListActivity;)J
bipush 21
invokevirtual com/nd/android/u/news/controller/NewsManager/getTopicNewsList(JI)Lcom/nd/android/forumsdk/business/bean/result/ResultNewsList;
areturn
.limit locals 2
.limit stack 7
.end method

.method protected volatile synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
aload 0
aload 1
checkcast [Ljava/lang/Void;
invokevirtual com/nd/android/u/news/ui/activity/TopicNewsListActivity$GetTopicNewsListTask/doInBackground([Ljava/lang/Void;)Lcom/nd/android/forumsdk/business/bean/result/ResultNewsList;
areturn
.limit locals 2
.limit stack 2
.end method

.method protected onPostExecute(Lcom/nd/android/forumsdk/business/bean/result/ResultNewsList;)V
aload 0
getfield com/nd/android/u/news/ui/activity/TopicNewsListActivity$GetTopicNewsListTask/this$0 Lcom/nd/android/u/news/ui/activity/TopicNewsListActivity;
aload 1
invokevirtual com/nd/android/u/news/ui/activity/TopicNewsListActivity/afterGetNewDatas(Lcom/nd/android/forumsdk/business/bean/result/ResultNewsList;)V
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
invokevirtual com/nd/android/u/news/ui/activity/TopicNewsListActivity$GetTopicNewsListTask/onPostExecute(Lcom/nd/android/forumsdk/business/bean/result/ResultNewsList;)V
return
.limit locals 2
.limit stack 2
.end method

.method protected transient onProgressUpdate([Lcom/nd/android/forumsdk/business/bean/result/NewsInfoBean;)V
aload 1
ifnull L0
aload 1
arraylength
ifle L0
aload 1
iconst_0
aaload
astore 2
aload 2
invokevirtual com/nd/android/forumsdk/business/bean/result/NewsInfoBean/isSuccess()Z
ifeq L0
aload 0
getfield com/nd/android/u/news/ui/activity/TopicNewsListActivity$GetTopicNewsListTask/this$0 Lcom/nd/android/u/news/ui/activity/TopicNewsListActivity;
aload 2
invokestatic com/nd/android/u/news/ui/activity/TopicNewsListActivity/access$100(Lcom/nd/android/u/news/ui/activity/TopicNewsListActivity;Lcom/nd/android/forumsdk/business/bean/result/NewsInfoBean;)V
L0:
aload 0
aload 1
invokespecial com/common/android/utils/concurrent/NdTinyHttpAsyncTask/onProgressUpdate([Ljava/lang/Object;)V
return
.limit locals 3
.limit stack 2
.end method

.method protected volatile synthetic onProgressUpdate([Ljava/lang/Object;)V
aload 0
aload 1
checkcast [Lcom/nd/android/forumsdk/business/bean/result/NewsInfoBean;
invokevirtual com/nd/android/u/news/ui/activity/TopicNewsListActivity$GetTopicNewsListTask/onProgressUpdate([Lcom/nd/android/forumsdk/business/bean/result/NewsInfoBean;)V
return
.limit locals 2
.limit stack 2
.end method
