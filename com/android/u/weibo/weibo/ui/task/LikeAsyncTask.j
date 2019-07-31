.bytecode 50.0
.class public synchronized com/android/u/weibo/weibo/ui/task/LikeAsyncTask
.super com/common/android/utils/concurrent/NdTinyHttpAsyncTask
.signature "Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Boolean;>;"

.field public static final 'ACTION_LIKE' I = 0


.field public static final 'ACTION_UNLIKE' I = 1


.field private 'action' I

.field private 'id' J

.field private 'mContext' Landroid/content/Context;

.field private 'mHandler' Landroid/os/Handler;

.field private 'mTopicInfo' Lcom/android/u/weibo/weibo/business/bean/TopicInfo;

.method public <init>(Lcom/android/u/weibo/weibo/business/bean/TopicInfo;ILandroid/content/Context;Landroid/os/Handler;)V
aload 0
invokespecial com/common/android/utils/concurrent/NdTinyHttpAsyncTask/<init>()V
aload 0
aload 4
putfield com/android/u/weibo/weibo/ui/task/LikeAsyncTask/mHandler Landroid/os/Handler;
aload 0
aload 1
putfield com/android/u/weibo/weibo/ui/task/LikeAsyncTask/mTopicInfo Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
aload 0
aload 0
getfield com/android/u/weibo/weibo/ui/task/LikeAsyncTask/mTopicInfo Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/tid J
putfield com/android/u/weibo/weibo/ui/task/LikeAsyncTask/id J
aload 0
iload 2
putfield com/android/u/weibo/weibo/ui/task/LikeAsyncTask/action I
aload 0
aload 3
putfield com/android/u/weibo/weibo/ui/task/LikeAsyncTask/mContext Landroid/content/Context;
return
.limit locals 5
.limit stack 3
.end method

.method protected transient doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
.catch com/android/u/weibo/weibo/controller/WeiBoException from L0 to L1 using L2
.catch com/android/u/weibo/weibo/controller/WeiBoException from L1 to L3 using L2
aload 0
getfield com/android/u/weibo/weibo/ui/task/LikeAsyncTask/mContext Landroid/content/Context;
invokestatic com/android/u/weibo/weibo/controller/NdWeiboManager/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/controller/NdWeiboManager;
astore 1
L0:
aload 0
getfield com/android/u/weibo/weibo/ui/task/LikeAsyncTask/action I
ifne L1
aload 1
aload 0
getfield com/android/u/weibo/weibo/ui/task/LikeAsyncTask/id J
invokevirtual com/android/u/weibo/weibo/controller/NdWeiboManager/likeWeibo(J)Z
invokestatic java/lang/Boolean/valueOf(Z)Ljava/lang/Boolean;
areturn
L1:
aload 1
aload 0
getfield com/android/u/weibo/weibo/ui/task/LikeAsyncTask/id J
invokevirtual com/android/u/weibo/weibo/controller/NdWeiboManager/notlikeWeibo(J)Z
istore 2
L3:
iload 2
invokestatic java/lang/Boolean/valueOf(Z)Ljava/lang/Boolean;
areturn
L2:
astore 1
aload 1
invokevirtual com/android/u/weibo/weibo/controller/WeiBoException/printStackTrace()V
iconst_0
invokestatic java/lang/Boolean/valueOf(Z)Ljava/lang/Boolean;
areturn
.limit locals 3
.limit stack 3
.end method

.method protected volatile synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
aload 0
aload 1
checkcast [Ljava/lang/Void;
invokevirtual com/android/u/weibo/weibo/ui/task/LikeAsyncTask/doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
areturn
.limit locals 2
.limit stack 2
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
aload 0
getfield com/android/u/weibo/weibo/ui/task/LikeAsyncTask/action I
iconst_1
if_icmpne L0
aload 0
getfield com/android/u/weibo/weibo/ui/task/LikeAsyncTask/mTopicInfo Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/praised Z
ifne L1
L2:
return
L1:
aload 0
iconst_0
putfield com/android/u/weibo/weibo/ui/task/LikeAsyncTask/action I
L3:
new com/android/u/weibo/weibo/ui/task/LikeAsyncTask
dup
aload 0
getfield com/android/u/weibo/weibo/ui/task/LikeAsyncTask/mTopicInfo Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
aload 0
getfield com/android/u/weibo/weibo/ui/task/LikeAsyncTask/action I
aload 0
getfield com/android/u/weibo/weibo/ui/task/LikeAsyncTask/mContext Landroid/content/Context;
aload 0
getfield com/android/u/weibo/weibo/ui/task/LikeAsyncTask/mHandler Landroid/os/Handler;
invokespecial com/android/u/weibo/weibo/ui/task/LikeAsyncTask/<init>(Lcom/android/u/weibo/weibo/business/bean/TopicInfo;ILandroid/content/Context;Landroid/os/Handler;)V
astore 1
invokestatic android/os/Message/obtain()Landroid/os/Message;
astore 2
aload 2
aload 1
putfield android/os/Message/obj Ljava/lang/Object;
aload 1
iconst_0
anewarray java/lang/Void
invokevirtual com/android/u/weibo/weibo/ui/task/LikeAsyncTask/execute([Ljava/lang/Object;)Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;
pop
aload 0
getfield com/android/u/weibo/weibo/ui/task/LikeAsyncTask/mHandler Landroid/os/Handler;
aload 2
invokevirtual android/os/Handler/sendMessage(Landroid/os/Message;)Z
pop
return
L0:
aload 0
getfield com/android/u/weibo/weibo/ui/task/LikeAsyncTask/action I
ifne L3
aload 0
getfield com/android/u/weibo/weibo/ui/task/LikeAsyncTask/mTopicInfo Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/praised Z
ifne L2
aload 0
iconst_1
putfield com/android/u/weibo/weibo/ui/task/LikeAsyncTask/action I
goto L3
.limit locals 3
.limit stack 6
.end method

.method protected volatile synthetic onPostExecute(Ljava/lang/Object;)V
aload 0
aload 1
checkcast java/lang/Boolean
invokevirtual com/android/u/weibo/weibo/ui/task/LikeAsyncTask/onPostExecute(Ljava/lang/Boolean;)V
return
.limit locals 2
.limit stack 2
.end method
