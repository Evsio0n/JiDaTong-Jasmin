.bytecode 50.0
.class synchronized com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileOtherActivity$AddHiddenLoveTask
.super com/common/android/utils/concurrent/NdTinyHttpAsyncTask
.signature "Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Boolean;>;"
.inner class private AddHiddenLoveTask inner com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileOtherActivity$AddHiddenLoveTask outer com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileOtherActivity

.field 'errorMsg' Ljava/lang/StringBuilder;

.field final synthetic 'this$0' Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileOtherActivity;

.method private <init>(Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileOtherActivity;)V
aload 0
aload 1
putfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileOtherActivity$AddHiddenLoveTask/this$0 Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileOtherActivity;
aload 0
invokespecial com/common/android/utils/concurrent/NdTinyHttpAsyncTask/<init>()V
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
putfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileOtherActivity$AddHiddenLoveTask/errorMsg Ljava/lang/StringBuilder;
return
.limit locals 2
.limit stack 3
.end method

.method synthetic <init>(Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileOtherActivity;Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileOtherActivity$1;)V
aload 0
aload 1
invokespecial com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileOtherActivity$AddHiddenLoveTask/<init>(Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileOtherActivity;)V
return
.limit locals 3
.limit stack 2
.end method

.method protected transient doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileOtherActivity$AddHiddenLoveTask/this$0 Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileOtherActivity;
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileOtherActivity/mUid J
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileOtherActivity$AddHiddenLoveTask/errorMsg Ljava/lang/StringBuilder;
invokestatic com/android/u/weibo/weiboInterfaceImpl/WeiboCallOtherModel/addHiddenLove(JLjava/lang/StringBuilder;)Z
invokestatic java/lang/Boolean/valueOf(Z)Ljava/lang/Boolean;
areturn
.limit locals 2
.limit stack 3
.end method

.method protected volatile synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
aload 0
aload 1
checkcast [Ljava/lang/Void;
invokevirtual com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileOtherActivity$AddHiddenLoveTask/doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
areturn
.limit locals 2
.limit stack 2
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileOtherActivity$AddHiddenLoveTask/this$0 Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileOtherActivity;
invokevirtual com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileOtherActivity/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/hidden_love_success I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
astore 2
aload 1
invokevirtual java/lang/Boolean/booleanValue()Z
ifne L0
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileOtherActivity$AddHiddenLoveTask/errorMsg Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 2
L0:
aload 2
invokestatic com/common/android/utils/ToastUtils/display(Ljava/lang/String;)V
return
.limit locals 3
.limit stack 2
.end method

.method protected volatile synthetic onPostExecute(Ljava/lang/Object;)V
aload 0
aload 1
checkcast java/lang/Boolean
invokevirtual com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileOtherActivity$AddHiddenLoveTask/onPostExecute(Ljava/lang/Boolean;)V
return
.limit locals 2
.limit stack 2
.end method
