.bytecode 50.0
.class synchronized com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$AddHiddenLoveTask
.super com/common/android/utils/concurrent/NdTinyHttpAsyncTask
.signature "Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Boolean;>;"
.inner class private AddHiddenLoveTask inner com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$AddHiddenLoveTask outer com/android/u/weibo/weibo/ui/activity/TweetProfileActivity

.field 'errorMsg' Ljava/lang/StringBuilder;

.field final synthetic 'this$0' Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;

.method private <init>(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;)V
aload 0
aload 1
putfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$AddHiddenLoveTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
aload 0
invokespecial com/common/android/utils/concurrent/NdTinyHttpAsyncTask/<init>()V
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
putfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$AddHiddenLoveTask/errorMsg Ljava/lang/StringBuilder;
return
.limit locals 2
.limit stack 3
.end method

.method synthetic <init>(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity$1;)V
aload 0
aload 1
invokespecial com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$AddHiddenLoveTask/<init>(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;)V
return
.limit locals 3
.limit stack 2
.end method

.method protected transient doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$AddHiddenLoveTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/access$200(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;)J
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$AddHiddenLoveTask/errorMsg Ljava/lang/StringBuilder;
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
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$AddHiddenLoveTask/doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
areturn
.limit locals 2
.limit stack 2
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$AddHiddenLoveTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
astore 2
aload 1
invokevirtual java/lang/Boolean/booleanValue()Z
ifeq L0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$AddHiddenLoveTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/hidden_love_success I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
astore 1
L1:
aload 2
aload 1
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;Ljava/lang/String;)V
return
L0:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$AddHiddenLoveTask/errorMsg Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 1
goto L1
.limit locals 3
.limit stack 2
.end method

.method protected volatile synthetic onPostExecute(Ljava/lang/Object;)V
aload 0
aload 1
checkcast java/lang/Boolean
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$AddHiddenLoveTask/onPostExecute(Ljava/lang/Boolean;)V
return
.limit locals 2
.limit stack 2
.end method
