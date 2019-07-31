.bytecode 50.0
.class synchronized com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$GetHiddenLoveMeTask
.super com/common/android/utils/task/progressTask/ProgressTask
.inner class private GetHiddenLoveMeTask inner com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$GetHiddenLoveMeTask outer com/android/u/weibo/weibo/ui/activity/TweetProfileActivity

.field private 'loveInfo' Lorg/json/JSONObject;

.field final synthetic 'this$0' Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;

.method public <init>(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;Landroid/content/Context;I)V
aload 0
aload 1
putfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$GetHiddenLoveMeTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
aload 0
aload 2
iload 3
invokespecial com/common/android/utils/task/progressTask/ProgressTask/<init>(Landroid/content/Context;I)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$GetHiddenLoveMeTask/mErrorMsg Ljava/lang/StringBuilder;
ldc "\u5bf9\u4e0d\u8d77\uff0c\u901a\u4fe1\u5931\u8d25\u8bf7\u7a0d\u540e\u518d\u8bd5\uff01"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
return
.limit locals 4
.limit stack 3
.end method

.method protected transient doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
aload 0
invokestatic com/android/u/weibo/weiboInterfaceImpl/WeiboCallOtherModel/getMyHiddenLoveInfos()Lorg/json/JSONObject;
putfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$GetHiddenLoveMeTask/loveInfo Lorg/json/JSONObject;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$GetHiddenLoveMeTask/loveInfo Lorg/json/JSONObject;
ifnull L0
iconst_0
istore 2
L1:
iload 2
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
areturn
L0:
iconst_m1
istore 2
goto L1
.limit locals 3
.limit stack 2
.end method

.method protected volatile synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
aload 0
aload 1
checkcast [Ljava/lang/Void;
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$GetHiddenLoveMeTask/doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
areturn
.limit locals 2
.limit stack 2
.end method

.method protected doSuccess()V
.catch org/json/JSONException from L0 to L1 using L2
.catch org/json/JSONException from L3 to L4 using L2
L0:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$GetHiddenLoveMeTask/loveInfo Lorg/json/JSONObject;
ldc "quota"
invokevirtual org/json/JSONObject/getInt(Ljava/lang/String;)I
ifne L3
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$GetHiddenLoveMeTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$GetHiddenLoveMeTask/loveInfo Lorg/json/JSONObject;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/access$3900(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;Lorg/json/JSONObject;)V
L1:
return
L3:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$GetHiddenLoveMeTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/access$4000(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;)V
L4:
return
L2:
astore 1
aload 1
invokevirtual org/json/JSONException/printStackTrace()V
return
.limit locals 2
.limit stack 2
.end method
