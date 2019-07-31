.bytecode 50.0
.class synchronized com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetListActivity$GetUserTask
.super com/common/android/utils/concurrent/NdTinyHttpAsyncTask
.signature "Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask<Ljava/lang/Long;Ljava/lang/Object;Lcom/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo;>;"
.inner class private GetUserTask inner com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetListActivity$GetUserTask outer com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetListActivity

.field final synthetic 'this$0' Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetListActivity;

.method private <init>(Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetListActivity;)V
aload 0
aload 1
putfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetListActivity$GetUserTask/this$0 Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetListActivity;
aload 0
invokespecial com/common/android/utils/concurrent/NdTinyHttpAsyncTask/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetListActivity;Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetListActivity$1;)V
aload 0
aload 1
invokespecial com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetListActivity$GetUserTask/<init>(Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetListActivity;)V
return
.limit locals 3
.limit stack 2
.end method

.method protected transient doInBackground([Ljava/lang/Long;)Lcom/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo;
.catch com/android/u/weibo/weibo/controller/WeiBoException from L0 to L1 using L2
getstatic com/android/u/weibo/weibo/controller/GlobalSetting/gIsNeedLottery Z
ifeq L3
getstatic com/android/u/weibo/weibo/controller/GlobalSetting/gIsNeedLottery Z
ifeq L3
invokestatic com/android/u/weibo/weiboInterfaceImpl/WeiboCallOtherModel/toTastGetData()Ljava/util/List;
astore 1
aload 1
ifnull L3
aload 1
invokeinterface java/util/List/size()I 0
ifle L3
aload 0
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 1
aastore
invokevirtual com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetListActivity$GetUserTask/publishProgress([Ljava/lang/Object;)V
L3:
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetListActivity$GetUserTask/this$0 Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetListActivity;
invokestatic com/android/u/weibo/weibo/controller/NdWeiboManager/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/controller/NdWeiboManager;
astore 1
L0:
aload 1
invokevirtual com/android/u/weibo/weibo/controller/NdWeiboManager/getWeiboMsgUnreadCount()Lcom/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo;
astore 1
L1:
aload 1
areturn
L2:
astore 1
aload 1
invokevirtual com/android/u/weibo/weibo/controller/WeiBoException/printStackTrace()V
aconst_null
areturn
.limit locals 2
.limit stack 5
.end method

.method protected volatile synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
aload 0
aload 1
checkcast [Ljava/lang/Long;
invokevirtual com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetListActivity$GetUserTask/doInBackground([Ljava/lang/Long;)Lcom/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo;
areturn
.limit locals 2
.limit stack 2
.end method

.method protected onPostExecute(Lcom/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetListActivity$GetUserTask/this$0 Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetListActivity;
aload 1
invokestatic com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetListActivity/access$202(Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetListActivity;Lcom/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo;)Lcom/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo;
pop
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetListActivity$GetUserTask/this$0 Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetListActivity;
aload 1
invokestatic com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetListActivity/access$300(Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetListActivity;Lcom/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo;)V
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
checkcast com/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo
invokevirtual com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetListActivity$GetUserTask/onPostExecute(Lcom/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo;)V
return
.limit locals 2
.limit stack 2
.end method

.method protected onPreExecute()V
aload 0
invokespecial com/common/android/utils/concurrent/NdTinyHttpAsyncTask/onPreExecute()V
return
.limit locals 1
.limit stack 1
.end method

.method protected transient onProgressUpdate([Ljava/lang/Object;)V
aload 1
iconst_0
aaload
astore 2
aload 2
instanceof java/util/List
ifeq L0
aload 2
checkcast java/util/List
astore 2
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetListActivity$GetUserTask/this$0 Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetListActivity;
aload 2
invokestatic com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetListActivity/access$100(Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetListActivity;Ljava/util/List;)V
L0:
aload 0
aload 1
invokespecial com/common/android/utils/concurrent/NdTinyHttpAsyncTask/onProgressUpdate([Ljava/lang/Object;)V
return
.limit locals 3
.limit stack 2
.end method
