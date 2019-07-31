.bytecode 50.0
.class public synchronized com/android/u/weibo/flower/ui/dialog/SendFlowerDialog$GetFlowerNumTask
.super com/common/android/utils/task/genericTask/GenericTask
.inner class public GetFlowerNumTask inner com/android/u/weibo/flower/ui/dialog/SendFlowerDialog$GetFlowerNumTask outer com/android/u/weibo/flower/ui/dialog/SendFlowerDialog

.field final synthetic 'this$0' Lcom/android/u/weibo/flower/ui/dialog/SendFlowerDialog;

.method public <init>(Lcom/android/u/weibo/flower/ui/dialog/SendFlowerDialog;)V
aload 0
aload 1
putfield com/android/u/weibo/flower/ui/dialog/SendFlowerDialog$GetFlowerNumTask/this$0 Lcom/android/u/weibo/flower/ui/dialog/SendFlowerDialog;
aload 0
invokespecial com/common/android/utils/task/genericTask/GenericTask/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public transient _doInBackground([Lcom/common/android/utils/task/genericTask/TaskParams;)Lcom/common/android/utils/task/genericTask/TaskResult;
aload 0
getfield com/android/u/weibo/flower/ui/dialog/SendFlowerDialog$GetFlowerNumTask/this$0 Lcom/android/u/weibo/flower/ui/dialog/SendFlowerDialog;
getfield com/android/u/weibo/flower/ui/dialog/SendFlowerDialog/mContext Landroid/content/Context;
invokestatic com/android/u/weibo/weibo/controller/NdWeiboManager/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/controller/NdWeiboManager;
invokevirtual com/android/u/weibo/weibo/controller/NdWeiboManager/getFlowerLeft()I
istore 2
iload 2
iconst_m1
if_icmpeq L0
iload 2
putstatic com/android/u/weibo/weibo/controller/GlobalSetting/flowerNum I
getstatic com/common/android/utils/task/genericTask/TaskResult/OK Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
L0:
getstatic com/common/android/utils/task/genericTask/TaskResult/FAILED Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
.limit locals 3
.limit stack 2
.end method
