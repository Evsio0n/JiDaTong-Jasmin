.bytecode 50.0
.class synchronized com/nd/android/u/news/ui/activity/NewsListActivity$GetMoreNewsListTask
.super com/common/android/utils/concurrent/NdTinyHttpAsyncTask
.signature "Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask<Ljava/lang/Void;Ljava/lang/Void;Lcom/nd/android/forumsdk/business/bean/result/ResultNewsList;>;"
.inner class private GetMoreNewsListTask inner com/nd/android/u/news/ui/activity/NewsListActivity$GetMoreNewsListTask outer com/nd/android/u/news/ui/activity/NewsListActivity

.field final synthetic 'this$0' Lcom/nd/android/u/news/ui/activity/NewsListActivity;

.method private <init>(Lcom/nd/android/u/news/ui/activity/NewsListActivity;)V
aload 0
aload 1
putfield com/nd/android/u/news/ui/activity/NewsListActivity$GetMoreNewsListTask/this$0 Lcom/nd/android/u/news/ui/activity/NewsListActivity;
aload 0
invokespecial com/common/android/utils/concurrent/NdTinyHttpAsyncTask/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/nd/android/u/news/ui/activity/NewsListActivity;Lcom/nd/android/u/news/ui/activity/NewsListActivity$1;)V
aload 0
aload 1
invokespecial com/nd/android/u/news/ui/activity/NewsListActivity$GetMoreNewsListTask/<init>(Lcom/nd/android/u/news/ui/activity/NewsListActivity;)V
return
.limit locals 3
.limit stack 2
.end method

.method protected transient doInBackground([Ljava/lang/Void;)Lcom/nd/android/forumsdk/business/bean/result/ResultNewsList;
getstatic com/nd/android/u/news/controller/NewsManager/INSTANCE Lcom/nd/android/u/news/controller/NewsManager;
aload 0
getfield com/nd/android/u/news/ui/activity/NewsListActivity$GetMoreNewsListTask/this$0 Lcom/nd/android/u/news/ui/activity/NewsListActivity;
getfield com/nd/android/u/news/ui/activity/NewsListActivity/mMinTs J
bipush 10
invokevirtual com/nd/android/u/news/controller/NewsManager/getMoreNewsHomePage(JI)Lcom/nd/android/forumsdk/business/bean/result/ResultNewsList;
areturn
.limit locals 2
.limit stack 4
.end method

.method protected volatile synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
aload 0
aload 1
checkcast [Ljava/lang/Void;
invokevirtual com/nd/android/u/news/ui/activity/NewsListActivity$GetMoreNewsListTask/doInBackground([Ljava/lang/Void;)Lcom/nd/android/forumsdk/business/bean/result/ResultNewsList;
areturn
.limit locals 2
.limit stack 2
.end method

.method protected onPostExecute(Lcom/nd/android/forumsdk/business/bean/result/ResultNewsList;)V
aload 0
getfield com/nd/android/u/news/ui/activity/NewsListActivity$GetMoreNewsListTask/this$0 Lcom/nd/android/u/news/ui/activity/NewsListActivity;
aload 1
invokevirtual com/nd/android/u/news/ui/activity/NewsListActivity/afterGetMoreDatas(Lcom/nd/android/forumsdk/business/bean/result/ResultNewsList;)V
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
invokevirtual com/nd/android/u/news/ui/activity/NewsListActivity$GetMoreNewsListTask/onPostExecute(Lcom/nd/android/forumsdk/business/bean/result/ResultNewsList;)V
return
.limit locals 2
.limit stack 2
.end method
