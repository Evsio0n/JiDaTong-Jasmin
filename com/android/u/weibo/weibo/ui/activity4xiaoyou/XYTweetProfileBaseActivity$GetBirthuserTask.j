.bytecode 50.0
.class synchronized com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$GetBirthuserTask
.super com/common/android/utils/concurrent/NdTinyHttpAsyncTask
.signature "Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask<Ljava/lang/Void;Ljava/lang/Void;Lcom/product/android/commonInterface/task/BirthUserData;>;"
.inner class private GetBirthuserTask inner com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$GetBirthuserTask outer com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity

.field final synthetic 'this$0' Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity;

.method private <init>(Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity;)V
aload 0
aload 1
putfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$GetBirthuserTask/this$0 Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity;
aload 0
invokespecial com/common/android/utils/concurrent/NdTinyHttpAsyncTask/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity;Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$1;)V
aload 0
aload 1
invokespecial com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$GetBirthuserTask/<init>(Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity;)V
return
.limit locals 3
.limit stack 2
.end method

.method protected transient doInBackground([Ljava/lang/Void;)Lcom/product/android/commonInterface/task/BirthUserData;
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$GetBirthuserTask/this$0 Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity;
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mUid J
invokestatic com/android/u/weibo/weiboInterfaceImpl/WeiboCallOtherModel/getBirthuser(J)Lcom/product/android/commonInterface/task/BirthUserData;
areturn
.limit locals 2
.limit stack 2
.end method

.method protected volatile synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
aload 0
aload 1
checkcast [Ljava/lang/Void;
invokevirtual com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$GetBirthuserTask/doInBackground([Ljava/lang/Void;)Lcom/product/android/commonInterface/task/BirthUserData;
areturn
.limit locals 2
.limit stack 2
.end method

.method protected onPostExecute(Lcom/product/android/commonInterface/task/BirthUserData;)V
aload 0
aload 1
invokespecial com/common/android/utils/concurrent/NdTinyHttpAsyncTask/onPostExecute(Ljava/lang/Object;)V
aload 1
ifnull L0
aload 1
getfield com/product/android/commonInterface/task/BirthUserData/strBirthday Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L0
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$GetBirthuserTask/this$0 Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity;
aload 1
getfield com/product/android/commonInterface/task/BirthUserData/iBlessCount I
putfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mBlessCnt I
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$GetBirthuserTask/this$0 Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity;
aload 1
getfield com/product/android/commonInterface/task/BirthUserData/iBlessed I
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$GetBirthuserTask/this$0 Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity;
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mBlessCnt I
invokevirtual com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/initBirthdayBanner(II)V
L0:
return
.limit locals 2
.limit stack 3
.end method

.method protected volatile synthetic onPostExecute(Ljava/lang/Object;)V
aload 0
aload 1
checkcast com/product/android/commonInterface/task/BirthUserData
invokevirtual com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$GetBirthuserTask/onPostExecute(Lcom/product/android/commonInterface/task/BirthUserData;)V
return
.limit locals 2
.limit stack 2
.end method
