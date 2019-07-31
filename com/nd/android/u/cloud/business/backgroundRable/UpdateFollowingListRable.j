.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/business/backgroundRable/UpdateFollowingListRable
.super com/common/android/utils/concurrent/NdAbstractTask

.method public <init>()V
aload 0
invokespecial com/common/android/utils/concurrent/NdAbstractTask/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public run()V
invokestatic com/nd/android/u/cloud/OapApplication/getInstance()Lcom/nd/android/u/cloud/OapApplication;
invokestatic com/android/u/weibo/weibo/controller/NdWeiboManager/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/controller/NdWeiboManager;
invokestatic com/android/u/weibo/weibo/controller/GlobalSetting/getUid()J
invokevirtual com/android/u/weibo/weibo/controller/NdWeiboManager/updateIdolList(J)V
invokestatic java/lang/Thread/interrupted()Z
ifeq L0
ldc "DYF"
ldc "UpdateFollowingListRable interrupted"
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L0:
return
.limit locals 1
.limit stack 3
.end method
