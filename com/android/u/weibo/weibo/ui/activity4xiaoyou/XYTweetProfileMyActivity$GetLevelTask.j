.bytecode 50.0
.class synchronized com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity$GetLevelTask
.super com/common/android/utils/concurrent/NdTinyHttpAsyncTask
.signature "Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask<Ljava/lang/Void;Ljava/lang/Object;Ljava/lang/Void;>;"
.inner class private GetLevelTask inner com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity$GetLevelTask outer com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity

.field final synthetic 'this$0' Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity;

.method private <init>(Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity;)V
aload 0
aload 1
putfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity$GetLevelTask/this$0 Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity;
aload 0
invokespecial com/common/android/utils/concurrent/NdTinyHttpAsyncTask/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity;Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity$1;)V
aload 0
aload 1
invokespecial com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity$GetLevelTask/<init>(Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity;)V
return
.limit locals 3
.limit stack 2
.end method

.method protected volatile synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
aload 0
aload 1
checkcast [Ljava/lang/Void;
invokevirtual com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity$GetLevelTask/doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
areturn
.limit locals 2
.limit stack 2
.end method

.method protected transient doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity$GetLevelTask/this$0 Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity;
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity/mUid J
invokestatic com/android/u/weibo/weiboInterfaceImpl/XiaoyouCallOtherModel/getOapScoreFromNet(J)Lcom/product/android/commonInterface/task/OapScore;
pop
aconst_null
areturn
.limit locals 2
.limit stack 2
.end method

.method protected volatile synthetic onPostExecute(Ljava/lang/Object;)V
aload 0
aload 1
checkcast java/lang/Void
invokevirtual com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity$GetLevelTask/onPostExecute(Ljava/lang/Void;)V
return
.limit locals 2
.limit stack 2
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity$GetLevelTask/this$0 Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity;
invokestatic com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity/access$300(Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity;)V
return
.limit locals 2
.limit stack 1
.end method

.method protected onPreExecute()V
aload 0
invokespecial com/common/android/utils/concurrent/NdTinyHttpAsyncTask/onPreExecute()V
return
.limit locals 1
.limit stack 1
.end method
