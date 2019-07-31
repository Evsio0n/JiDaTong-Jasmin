.bytecode 50.0
.class synchronized com/nd/android/u/news/ui/activity/NewsListActivity$GetNewsListTask
.super com/common/android/utils/concurrent/NdTinyHttpAsyncTask
.signature "Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask<Ljava/lang/Void;Lcom/nd/android/forumsdk/business/bean/result/ResultNewsList;Lcom/nd/android/forumsdk/business/bean/result/ResultNewsList;>;"
.inner class private GetNewsListTask inner com/nd/android/u/news/ui/activity/NewsListActivity$GetNewsListTask outer com/nd/android/u/news/ui/activity/NewsListActivity

.field private 'reload_flag' Z

.field final synthetic 'this$0' Lcom/nd/android/u/news/ui/activity/NewsListActivity;

.method public <init>(Lcom/nd/android/u/news/ui/activity/NewsListActivity;Z)V
aload 0
aload 1
putfield com/nd/android/u/news/ui/activity/NewsListActivity$GetNewsListTask/this$0 Lcom/nd/android/u/news/ui/activity/NewsListActivity;
aload 0
invokespecial com/common/android/utils/concurrent/NdTinyHttpAsyncTask/<init>()V
aload 0
iconst_0
putfield com/nd/android/u/news/ui/activity/NewsListActivity$GetNewsListTask/reload_flag Z
aload 0
iload 2
putfield com/nd/android/u/news/ui/activity/NewsListActivity$GetNewsListTask/reload_flag Z
return
.limit locals 3
.limit stack 2
.end method

.method protected transient doInBackground([Ljava/lang/Void;)Lcom/nd/android/forumsdk/business/bean/result/ResultNewsList;
aload 0
getfield com/nd/android/u/news/ui/activity/NewsListActivity$GetNewsListTask/reload_flag Z
ifne L0
aload 0
iconst_1
anewarray com/nd/android/forumsdk/business/bean/result/ResultNewsList
dup
iconst_0
getstatic com/nd/android/u/news/controller/NewsManager/INSTANCE Lcom/nd/android/u/news/controller/NewsManager;
aload 0
getfield com/nd/android/u/news/ui/activity/NewsListActivity$GetNewsListTask/reload_flag Z
bipush 21
invokevirtual com/nd/android/u/news/controller/NewsManager/getNewsHomePage(ZI)Lcom/nd/android/forumsdk/business/bean/result/ResultNewsList;
aastore
invokevirtual com/nd/android/u/news/ui/activity/NewsListActivity$GetNewsListTask/publishProgress([Ljava/lang/Object;)V
aconst_null
areturn
L0:
getstatic com/nd/android/u/news/controller/NewsManager/INSTANCE Lcom/nd/android/u/news/controller/NewsManager;
iconst_1
bipush 21
invokevirtual com/nd/android/u/news/controller/NewsManager/getNewsHomePage(ZI)Lcom/nd/android/forumsdk/business/bean/result/ResultNewsList;
areturn
.limit locals 2
.limit stack 7
.end method

.method protected volatile synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
aload 0
aload 1
checkcast [Ljava/lang/Void;
invokevirtual com/nd/android/u/news/ui/activity/NewsListActivity$GetNewsListTask/doInBackground([Ljava/lang/Void;)Lcom/nd/android/forumsdk/business/bean/result/ResultNewsList;
areturn
.limit locals 2
.limit stack 2
.end method

.method protected onPostExecute(Lcom/nd/android/forumsdk/business/bean/result/ResultNewsList;)V
aload 1
ifnull L0
aload 0
getfield com/nd/android/u/news/ui/activity/NewsListActivity$GetNewsListTask/this$0 Lcom/nd/android/u/news/ui/activity/NewsListActivity;
aload 1
invokevirtual com/nd/android/u/news/ui/activity/NewsListActivity/afterGetNewDatas(Lcom/nd/android/forumsdk/business/bean/result/ResultNewsList;)V
L0:
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
invokevirtual com/nd/android/u/news/ui/activity/NewsListActivity$GetNewsListTask/onPostExecute(Lcom/nd/android/forumsdk/business/bean/result/ResultNewsList;)V
return
.limit locals 2
.limit stack 2
.end method

.method protected transient onProgressUpdate([Lcom/nd/android/forumsdk/business/bean/result/ResultNewsList;)V
aload 1
ifnull L0
aload 1
arraylength
ifle L0
aload 1
iconst_0
aaload
astore 2
aload 0
getfield com/nd/android/u/news/ui/activity/NewsListActivity$GetNewsListTask/this$0 Lcom/nd/android/u/news/ui/activity/NewsListActivity;
aload 2
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultNewsList/getData()Ljava/util/List;
invokestatic com/nd/android/u/news/ui/activity/NewsListActivity/access$400(Lcom/nd/android/u/news/ui/activity/NewsListActivity;Ljava/util/List;)V
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
checkcast [Lcom/nd/android/forumsdk/business/bean/result/ResultNewsList;
invokevirtual com/nd/android/u/news/ui/activity/NewsListActivity$GetNewsListTask/onProgressUpdate([Lcom/nd/android/forumsdk/business/bean/result/ResultNewsList;)V
return
.limit locals 2
.limit stack 2
.end method
