.bytecode 50.0
.class synchronized com/nd/android/u/cloud/activity/ConcernFriends$1
.super com/common/android/utils/task/progressTask/ProgressTask
.enclosing method com/nd/android/u/cloud/activity/ConcernFriends/initComponentValue()V
.inner class inner com/nd/android/u/cloud/activity/ConcernFriends$1

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/activity/ConcernFriends;

.method <init>(Lcom/nd/android/u/cloud/activity/ConcernFriends;Landroid/content/Context;I)V
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/ConcernFriends$1/this$0 Lcom/nd/android/u/cloud/activity/ConcernFriends;
aload 0
aload 2
iload 3
invokespecial com/common/android/utils/task/progressTask/ProgressTask/<init>(Landroid/content/Context;I)V
return
.limit locals 4
.limit stack 3
.end method

.method protected transient doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
.catch com/android/u/weibo/weibo/controller/WeiBoException from L0 to L1 using L2
L0:
aload 0
getfield com/nd/android/u/cloud/activity/ConcernFriends$1/this$0 Lcom/nd/android/u/cloud/activity/ConcernFriends;
getstatic com/nd/android/u/weibo/manager/XYWeiboManager/INSTANCE Lcom/nd/android/u/weibo/manager/XYWeiboManager;
invokevirtual com/nd/android/u/weibo/manager/XYWeiboManager/getRecommends()Lcom/android/u/weibo/weibo/business/bean/WbUserInfoList;
invokestatic com/nd/android/u/cloud/activity/ConcernFriends/access$002(Lcom/nd/android/u/cloud/activity/ConcernFriends;Lcom/android/u/weibo/weibo/business/bean/WbUserInfoList;)Lcom/android/u/weibo/weibo/business/bean/WbUserInfoList;
pop
L1:
iconst_0
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
areturn
L2:
astore 1
aload 1
invokevirtual com/android/u/weibo/weibo/controller/WeiBoException/printStackTrace()V
goto L1
.limit locals 2
.limit stack 2
.end method

.method protected volatile synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
aload 0
aload 1
checkcast [Ljava/lang/Void;
invokevirtual com/nd/android/u/cloud/activity/ConcernFriends$1/doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
areturn
.limit locals 2
.limit stack 2
.end method

.method protected doSuccess()V
aload 0
getfield com/nd/android/u/cloud/activity/ConcernFriends$1/this$0 Lcom/nd/android/u/cloud/activity/ConcernFriends;
invokestatic com/nd/android/u/cloud/activity/ConcernFriends/access$100(Lcom/nd/android/u/cloud/activity/ConcernFriends;)Lcom/nd/android/u/cloud/activity/ConcernFriends$ImageAdapter;
aload 0
getfield com/nd/android/u/cloud/activity/ConcernFriends$1/this$0 Lcom/nd/android/u/cloud/activity/ConcernFriends;
invokestatic com/nd/android/u/cloud/activity/ConcernFriends/access$000(Lcom/nd/android/u/cloud/activity/ConcernFriends;)Lcom/android/u/weibo/weibo/business/bean/WbUserInfoList;
invokevirtual com/nd/android/u/cloud/activity/ConcernFriends$ImageAdapter/setList(Lcom/android/u/weibo/weibo/business/bean/WbUserInfoList;)V
aload 0
getfield com/nd/android/u/cloud/activity/ConcernFriends$1/this$0 Lcom/nd/android/u/cloud/activity/ConcernFriends;
invokestatic com/nd/android/u/cloud/activity/ConcernFriends/access$100(Lcom/nd/android/u/cloud/activity/ConcernFriends;)Lcom/nd/android/u/cloud/activity/ConcernFriends$ImageAdapter;
invokevirtual com/nd/android/u/cloud/activity/ConcernFriends$ImageAdapter/notifyDataSetChanged()V
return
.limit locals 1
.limit stack 2
.end method
