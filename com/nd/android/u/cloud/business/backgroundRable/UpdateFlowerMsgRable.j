.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/business/backgroundRable/UpdateFlowerMsgRable
.super com/common/android/utils/concurrent/NdAbstractTask

.method public <init>()V
aload 0
invokespecial com/common/android/utils/concurrent/NdAbstractTask/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public run()V
.catch com/android/u/weibo/weibo/controller/WeiBoException from L0 to L1 using L2
invokestatic com/product/android/business/bean/SysParam/getInstance()Lcom/product/android/business/bean/SysParam;
invokevirtual com/product/android/business/bean/SysParam/getObtainupdateflowermsg()I
iconst_1
if_icmpne L3
L4:
return
L3:
iconst_1
istore 1
L0:
invokestatic com/nd/android/u/cloud/OapApplication/getInstance()Lcom/nd/android/u/cloud/OapApplication;
invokestatic com/android/u/weibo/weibo/controller/NdWeiboManager/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/controller/NdWeiboManager;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
iconst_1
invokevirtual com/android/u/weibo/weibo/controller/NdWeiboManager/getFlowerMessage(JI)Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;
pop
invokestatic com/nd/android/u/cloud/OapApplication/getInstance()Lcom/nd/android/u/cloud/OapApplication;
invokestatic com/android/u/weibo/weibo/controller/NdWeiboManager/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/controller/NdWeiboManager;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
iconst_2
invokevirtual com/android/u/weibo/weibo/controller/NdWeiboManager/getFlowerMessage(JI)Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;
pop
L1:
invokestatic java/lang/Thread/interrupted()Z
ifeq L5
ldc "DYF"
ldc "UpdateFlowerMsgRable interrupted"
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
return
L2:
astore 2
aload 2
invokevirtual com/android/u/weibo/weibo/controller/WeiBoException/printStackTrace()V
iconst_0
istore 1
goto L1
L5:
iload 1
ifeq L4
invokestatic com/product/android/business/bean/SysParam/getInstance()Lcom/product/android/business/bean/SysParam;
iconst_1
invokevirtual com/product/android/business/bean/SysParam/setObtainupdateflowermsg(I)V
invokestatic com/product/android/business/manager/DataUpdateManager/getInstance()Lcom/product/android/business/manager/DataUpdateManager;
ldc "flower_msg_update"
invokestatic java/lang/System/currentTimeMillis()J
invokevirtual com/product/android/business/manager/DataUpdateManager/save(Ljava/lang/String;J)V
return
.limit locals 3
.limit stack 4
.end method
