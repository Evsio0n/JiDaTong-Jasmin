.bytecode 50.0
.class synchronized com/nd/android/u/news/ui/activity/NewsDetailActivity$GetNewsDetailTask
.super com/common/android/utils/concurrent/NdTinyHttpAsyncTask
.signature "Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask<Ljava/lang/Void;Ljava/lang/Object;Lcom/nd/android/forumsdk/business/bean/result/NewsInfoBean;>;"
.inner class private GetNewsDetailTask inner com/nd/android/u/news/ui/activity/NewsDetailActivity$GetNewsDetailTask outer com/nd/android/u/news/ui/activity/NewsDetailActivity
.inner class inner com/nd/android/u/news/ui/activity/NewsDetailActivity$GetNewsDetailTask$1

.field public 'bNeedGetMore' Z

.field private 'gettingLastTime' J

.field final synthetic 'this$0' Lcom/nd/android/u/news/ui/activity/NewsDetailActivity;

.method private <init>(Lcom/nd/android/u/news/ui/activity/NewsDetailActivity;)V
aload 0
aload 1
putfield com/nd/android/u/news/ui/activity/NewsDetailActivity$GetNewsDetailTask/this$0 Lcom/nd/android/u/news/ui/activity/NewsDetailActivity;
aload 0
invokespecial com/common/android/utils/concurrent/NdTinyHttpAsyncTask/<init>()V
aload 0
iconst_0
putfield com/nd/android/u/news/ui/activity/NewsDetailActivity$GetNewsDetailTask/bNeedGetMore Z
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/nd/android/u/news/ui/activity/NewsDetailActivity;Lcom/nd/android/u/news/ui/activity/NewsDetailActivity$1;)V
aload 0
aload 1
invokespecial com/nd/android/u/news/ui/activity/NewsDetailActivity$GetNewsDetailTask/<init>(Lcom/nd/android/u/news/ui/activity/NewsDetailActivity;)V
return
.limit locals 3
.limit stack 2
.end method

.method protected transient doInBackground([Ljava/lang/Void;)Lcom/nd/android/forumsdk/business/bean/result/NewsInfoBean;
aload 0
getfield com/nd/android/u/news/ui/activity/NewsDetailActivity$GetNewsDetailTask/bNeedGetMore Z
ifeq L0
aload 0
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 0
getfield com/nd/android/u/news/ui/activity/NewsDetailActivity$GetNewsDetailTask/this$0 Lcom/nd/android/u/news/ui/activity/NewsDetailActivity;
invokevirtual com/nd/android/u/news/ui/activity/NewsDetailActivity/getMoreNews()Lcom/nd/android/forumsdk/business/bean/result/ResultNewsList;
aastore
invokevirtual com/nd/android/u/news/ui/activity/NewsDetailActivity$GetNewsDetailTask/publishProgress([Ljava/lang/Object;)V
L0:
aload 0
invokestatic java/lang/System/currentTimeMillis()J
putfield com/nd/android/u/news/ui/activity/NewsDetailActivity$GetNewsDetailTask/gettingLastTime J
getstatic com/nd/android/u/news/controller/NewsManager/INSTANCE Lcom/nd/android/u/news/controller/NewsManager;
aload 0
getfield com/nd/android/u/news/ui/activity/NewsDetailActivity$GetNewsDetailTask/this$0 Lcom/nd/android/u/news/ui/activity/NewsDetailActivity;
invokestatic com/nd/android/u/news/ui/activity/NewsDetailActivity/access$400(Lcom/nd/android/u/news/ui/activity/NewsDetailActivity;)J
invokevirtual com/nd/android/u/news/controller/NewsManager/getNewsDetail(J)Lcom/nd/android/forumsdk/business/bean/result/NewsInfoBean;
areturn
.limit locals 2
.limit stack 5
.end method

.method protected volatile synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
aload 0
aload 1
checkcast [Ljava/lang/Void;
invokevirtual com/nd/android/u/news/ui/activity/NewsDetailActivity$GetNewsDetailTask/doInBackground([Ljava/lang/Void;)Lcom/nd/android/forumsdk/business/bean/result/NewsInfoBean;
areturn
.limit locals 2
.limit stack 2
.end method

.method protected onPostExecute(Lcom/nd/android/forumsdk/business/bean/result/NewsInfoBean;)V
aload 0
invokestatic java/lang/System/currentTimeMillis()J
aload 0
getfield com/nd/android/u/news/ui/activity/NewsDetailActivity$GetNewsDetailTask/gettingLastTime J
lsub
putfield com/nd/android/u/news/ui/activity/NewsDetailActivity$GetNewsDetailTask/gettingLastTime J
aload 0
getfield com/nd/android/u/news/ui/activity/NewsDetailActivity$GetNewsDetailTask/gettingLastTime J
ldc2_w 1000L
lcmp
ifge L0
new android/os/Handler
dup
invokespecial android/os/Handler/<init>()V
new com/nd/android/u/news/ui/activity/NewsDetailActivity$GetNewsDetailTask$1
dup
aload 0
aload 1
invokespecial com/nd/android/u/news/ui/activity/NewsDetailActivity$GetNewsDetailTask$1/<init>(Lcom/nd/android/u/news/ui/activity/NewsDetailActivity$GetNewsDetailTask;Lcom/nd/android/forumsdk/business/bean/result/NewsInfoBean;)V
ldc2_w 1000L
aload 0
getfield com/nd/android/u/news/ui/activity/NewsDetailActivity$GetNewsDetailTask/gettingLastTime J
lsub
invokevirtual android/os/Handler/postDelayed(Ljava/lang/Runnable;J)Z
pop
L1:
aload 0
aload 1
invokespecial com/common/android/utils/concurrent/NdTinyHttpAsyncTask/onPostExecute(Ljava/lang/Object;)V
return
L0:
aload 0
getfield com/nd/android/u/news/ui/activity/NewsDetailActivity$GetNewsDetailTask/this$0 Lcom/nd/android/u/news/ui/activity/NewsDetailActivity;
aload 1
invokestatic com/nd/android/u/news/ui/activity/NewsDetailActivity/access$800(Lcom/nd/android/u/news/ui/activity/NewsDetailActivity;Lcom/nd/android/forumsdk/business/bean/result/NewsInfoBean;)V
goto L1
.limit locals 2
.limit stack 6
.end method

.method protected volatile synthetic onPostExecute(Ljava/lang/Object;)V
aload 0
aload 1
checkcast com/nd/android/forumsdk/business/bean/result/NewsInfoBean
invokevirtual com/nd/android/u/news/ui/activity/NewsDetailActivity$GetNewsDetailTask/onPostExecute(Lcom/nd/android/forumsdk/business/bean/result/NewsInfoBean;)V
return
.limit locals 2
.limit stack 2
.end method

.method protected onPreExecute()V
aload 0
invokespecial com/common/android/utils/concurrent/NdTinyHttpAsyncTask/onPreExecute()V
aload 0
getfield com/nd/android/u/news/ui/activity/NewsDetailActivity$GetNewsDetailTask/this$0 Lcom/nd/android/u/news/ui/activity/NewsDetailActivity;
invokestatic com/nd/android/u/news/ui/activity/NewsDetailActivity/access$600(Lcom/nd/android/u/news/ui/activity/NewsDetailActivity;)Lcom/nd/android/u/news/ui/view/NewsFootView;
ldc "news"
aload 0
getfield com/nd/android/u/news/ui/activity/NewsDetailActivity$GetNewsDetailTask/this$0 Lcom/nd/android/u/news/ui/activity/NewsDetailActivity;
invokestatic com/nd/android/u/news/ui/activity/NewsDetailActivity/access$400(Lcom/nd/android/u/news/ui/activity/NewsDetailActivity;)J
aload 0
getfield com/nd/android/u/news/ui/activity/NewsDetailActivity$GetNewsDetailTask/this$0 Lcom/nd/android/u/news/ui/activity/NewsDetailActivity;
getfield com/nd/android/u/news/ui/activity/NewsDetailActivity/newsList Ljava/util/List;
aload 0
getfield com/nd/android/u/news/ui/activity/NewsDetailActivity$GetNewsDetailTask/this$0 Lcom/nd/android/u/news/ui/activity/NewsDetailActivity;
invokestatic com/nd/android/u/news/ui/activity/NewsDetailActivity/access$500(Lcom/nd/android/u/news/ui/activity/NewsDetailActivity;)I
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/forumsdk/business/bean/result/NewsInfoBean
invokevirtual com/nd/android/u/news/ui/view/NewsFootView/setNewsId(Ljava/lang/String;JLcom/nd/android/forumsdk/business/bean/result/NewsInfoBean;)V
return
.limit locals 1
.limit stack 6
.end method

.method protected transient onProgressUpdate([Ljava/lang/Object;)V
aconst_null
astore 3
aload 3
astore 2
aload 1
ifnull L0
aload 3
astore 2
aload 1
arraylength
ifle L0
aload 1
iconst_0
aaload
astore 2
L0:
aload 2
ifnonnull L1
return
L1:
aload 2
instanceof com/nd/android/forumsdk/business/bean/result/ResultNewsList
ifeq L2
aload 2
checkcast com/nd/android/forumsdk/business/bean/result/ResultNewsList
astore 2
aload 2
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultNewsList/isSuccess()Z
ifne L3
getstatic com/nd/android/u/news/R$string/str_toast_get_newslist_error I
invokestatic com/common/android/utils/ToastUtils/display(I)V
L2:
aload 0
aload 1
invokespecial com/common/android/utils/concurrent/NdTinyHttpAsyncTask/onProgressUpdate([Ljava/lang/Object;)V
return
L3:
aload 0
getfield com/nd/android/u/news/ui/activity/NewsDetailActivity$GetNewsDetailTask/this$0 Lcom/nd/android/u/news/ui/activity/NewsDetailActivity;
aload 2
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultNewsList/getMinTs()J
putfield com/nd/android/u/news/ui/activity/NewsDetailActivity/maxTime J
aload 2
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultNewsList/getData()Ljava/util/List;
ifnonnull L4
aload 0
getfield com/nd/android/u/news/ui/activity/NewsDetailActivity$GetNewsDetailTask/this$0 Lcom/nd/android/u/news/ui/activity/NewsDetailActivity;
iconst_0
invokestatic com/nd/android/u/news/ui/activity/NewsDetailActivity/access$702(Lcom/nd/android/u/news/ui/activity/NewsDetailActivity;Z)Z
pop
goto L2
L4:
aload 0
getfield com/nd/android/u/news/ui/activity/NewsDetailActivity$GetNewsDetailTask/this$0 Lcom/nd/android/u/news/ui/activity/NewsDetailActivity;
getfield com/nd/android/u/news/ui/activity/NewsDetailActivity/newsList Ljava/util/List;
aload 2
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultNewsList/getData()Ljava/util/List;
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
aload 2
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultNewsList/getData()Ljava/util/List;
invokeinterface java/util/List/size()I 0
bipush 10
if_icmpge L5
aload 0
getfield com/nd/android/u/news/ui/activity/NewsDetailActivity$GetNewsDetailTask/this$0 Lcom/nd/android/u/news/ui/activity/NewsDetailActivity;
iconst_0
invokestatic com/nd/android/u/news/ui/activity/NewsDetailActivity/access$702(Lcom/nd/android/u/news/ui/activity/NewsDetailActivity;Z)Z
pop
goto L2
L5:
aload 0
getfield com/nd/android/u/news/ui/activity/NewsDetailActivity$GetNewsDetailTask/this$0 Lcom/nd/android/u/news/ui/activity/NewsDetailActivity;
iconst_1
invokestatic com/nd/android/u/news/ui/activity/NewsDetailActivity/access$702(Lcom/nd/android/u/news/ui/activity/NewsDetailActivity;Z)Z
pop
goto L2
.limit locals 4
.limit stack 3
.end method
