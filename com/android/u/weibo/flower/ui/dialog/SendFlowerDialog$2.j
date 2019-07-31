.bytecode 50.0
.class synchronized com/android/u/weibo/flower/ui/dialog/SendFlowerDialog$2
.super com/common/android/utils/task/genericTask/TaskAdapter
.enclosing method com/android/u/weibo/flower/ui/dialog/SendFlowerDialog
.inner class inner com/android/u/weibo/flower/ui/dialog/SendFlowerDialog$2

.field final synthetic 'this$0' Lcom/android/u/weibo/flower/ui/dialog/SendFlowerDialog;

.method <init>(Lcom/android/u/weibo/flower/ui/dialog/SendFlowerDialog;)V
aload 0
aload 1
putfield com/android/u/weibo/flower/ui/dialog/SendFlowerDialog$2/this$0 Lcom/android/u/weibo/flower/ui/dialog/SendFlowerDialog;
aload 0
invokespecial com/common/android/utils/task/genericTask/TaskAdapter/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onPostExecute(Lcom/common/android/utils/task/genericTask/GenericTask;Lcom/common/android/utils/task/genericTask/TaskResult;)V
aload 0
getfield com/android/u/weibo/flower/ui/dialog/SendFlowerDialog$2/this$0 Lcom/android/u/weibo/flower/ui/dialog/SendFlowerDialog;
invokestatic com/android/u/weibo/flower/ui/dialog/SendFlowerDialog/access$200(Lcom/android/u/weibo/flower/ui/dialog/SendFlowerDialog;)Landroid/app/ProgressDialog;
ifnull L0
aload 0
getfield com/android/u/weibo/flower/ui/dialog/SendFlowerDialog$2/this$0 Lcom/android/u/weibo/flower/ui/dialog/SendFlowerDialog;
invokestatic com/android/u/weibo/flower/ui/dialog/SendFlowerDialog/access$200(Lcom/android/u/weibo/flower/ui/dialog/SendFlowerDialog;)Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/dismiss()V
L0:
aload 2
getstatic com/common/android/utils/task/genericTask/TaskResult/OK Lcom/common/android/utils/task/genericTask/TaskResult;
if_acmpne L1
aconst_null
astore 2
aload 1
instanceof com/android/u/weibo/flower/ui/dialog/SendFlowerDialog$DoSendFlowersTask
ifeq L2
aload 1
checkcast com/android/u/weibo/flower/ui/dialog/SendFlowerDialog$DoSendFlowersTask
astore 2
L2:
aload 0
getfield com/android/u/weibo/flower/ui/dialog/SendFlowerDialog$2/this$0 Lcom/android/u/weibo/flower/ui/dialog/SendFlowerDialog;
getfield com/android/u/weibo/flower/ui/dialog/SendFlowerDialog/myListener Lcom/product/android/commonInterface/weibo/ISendFlowerDialogListener;
ifnull L3
aload 2
ifnull L3
aload 0
getfield com/android/u/weibo/flower/ui/dialog/SendFlowerDialog$2/this$0 Lcom/android/u/weibo/flower/ui/dialog/SendFlowerDialog;
getfield com/android/u/weibo/flower/ui/dialog/SendFlowerDialog/myListener Lcom/product/android/commonInterface/weibo/ISendFlowerDialogListener;
aload 0
getfield com/android/u/weibo/flower/ui/dialog/SendFlowerDialog$2/this$0 Lcom/android/u/weibo/flower/ui/dialog/SendFlowerDialog;
getfield com/android/u/weibo/flower/ui/dialog/SendFlowerDialog/mContext Landroid/content/Context;
aload 2
getfield com/android/u/weibo/flower/ui/dialog/SendFlowerDialog$DoSendFlowersTask/totalNum I
aload 2
getfield com/android/u/weibo/flower/ui/dialog/SendFlowerDialog$DoSendFlowersTask/info Lcom/android/u/weibo/flower/business/bean/SendFlowerReturnInfo;
getfield com/android/u/weibo/flower/business/bean/SendFlowerReturnInfo/backPackList Ljava/util/List;
invokeinterface com/product/android/commonInterface/weibo/ISendFlowerDialogListener/onSuccessNum(Landroid/content/Context;ILjava/util/List;)V 3
L3:
aload 2
ifnull L4
aload 2
getfield com/android/u/weibo/flower/ui/dialog/SendFlowerDialog$DoSendFlowersTask/info Lcom/android/u/weibo/flower/business/bean/SendFlowerReturnInfo;
getfield com/android/u/weibo/flower/business/bean/SendFlowerReturnInfo/typeMsgList Ljava/util/List;
ifnull L4
iconst_0
istore 3
L5:
iload 3
aload 2
getfield com/android/u/weibo/flower/ui/dialog/SendFlowerDialog$DoSendFlowersTask/info Lcom/android/u/weibo/flower/business/bean/SendFlowerReturnInfo;
getfield com/android/u/weibo/flower/business/bean/SendFlowerReturnInfo/typeMsgList Ljava/util/List;
invokeinterface java/util/List/size()I 0
if_icmpge L6
aload 2
getfield com/android/u/weibo/flower/ui/dialog/SendFlowerDialog$DoSendFlowersTask/info Lcom/android/u/weibo/flower/business/bean/SendFlowerReturnInfo;
getfield com/android/u/weibo/flower/business/bean/SendFlowerReturnInfo/typeMsgList Ljava/util/List;
iload 3
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/android/u/weibo/flower/business/bean/SendFlowerReturnInfo$TypeMsg
astore 1
aload 1
ifnonnull L7
L8:
iload 3
iconst_1
iadd
istore 3
goto L5
L7:
aload 1
getfield com/android/u/weibo/flower/business/bean/SendFlowerReturnInfo$TypeMsg/type I
iconst_4
if_icmpne L9
new android/content/Intent
dup
ldc "com.nd.android.u.chat.flowertaskover"
invokespecial android/content/Intent/<init>(Ljava/lang/String;)V
astore 4
aload 4
ldc "activity_context"
aload 0
getfield com/android/u/weibo/flower/ui/dialog/SendFlowerDialog$2/this$0 Lcom/android/u/weibo/flower/ui/dialog/SendFlowerDialog;
getfield com/android/u/weibo/flower/ui/dialog/SendFlowerDialog/mContext Landroid/content/Context;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 4
ldc "task_over_type"
iconst_1
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;I)Landroid/content/Intent;
pop
aload 4
ldc "flower_task_over_msg"
aload 1
getfield com/android/u/weibo/flower/business/bean/SendFlowerReturnInfo$TypeMsg/msg Ljava/lang/String;
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 0
getfield com/android/u/weibo/flower/ui/dialog/SendFlowerDialog$2/this$0 Lcom/android/u/weibo/flower/ui/dialog/SendFlowerDialog;
getfield com/android/u/weibo/flower/ui/dialog/SendFlowerDialog/mContext Landroid/content/Context;
invokestatic android/support/v4/content/LocalBroadcastManager/getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;
aload 4
invokevirtual android/support/v4/content/LocalBroadcastManager/sendBroadcast(Landroid/content/Intent;)Z
pop
goto L8
L9:
aload 0
getfield com/android/u/weibo/flower/ui/dialog/SendFlowerDialog$2/this$0 Lcom/android/u/weibo/flower/ui/dialog/SendFlowerDialog;
aload 0
getfield com/android/u/weibo/flower/ui/dialog/SendFlowerDialog$2/this$0 Lcom/android/u/weibo/flower/ui/dialog/SendFlowerDialog;
getfield com/android/u/weibo/flower/ui/dialog/SendFlowerDialog/mContext Landroid/content/Context;
getstatic com/android/u/weibo/R$string/send_flower_success I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
aload 1
getfield com/android/u/weibo/flower/business/bean/SendFlowerReturnInfo$TypeMsg/msg Ljava/lang/String;
aload 2
getfield com/android/u/weibo/flower/ui/dialog/SendFlowerDialog$DoSendFlowersTask/type I
invokevirtual com/android/u/weibo/flower/ui/dialog/SendFlowerDialog/showSendSuccessPopupWindow(Ljava/lang/String;Ljava/lang/String;I)V
goto L8
L4:
aload 0
getfield com/android/u/weibo/flower/ui/dialog/SendFlowerDialog$2/this$0 Lcom/android/u/weibo/flower/ui/dialog/SendFlowerDialog;
getfield com/android/u/weibo/flower/ui/dialog/SendFlowerDialog/mContext Landroid/content/Context;
aload 0
getfield com/android/u/weibo/flower/ui/dialog/SendFlowerDialog$2/this$0 Lcom/android/u/weibo/flower/ui/dialog/SendFlowerDialog;
getfield com/android/u/weibo/flower/ui/dialog/SendFlowerDialog/mContext Landroid/content/Context;
getstatic com/android/u/weibo/R$string/send_flower_success I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
invokestatic com/common/android/utils/ToastUtils/displayTimeLong(Landroid/content/Context;Ljava/lang/String;)V
L6:
aload 0
getfield com/android/u/weibo/flower/ui/dialog/SendFlowerDialog$2/this$0 Lcom/android/u/weibo/flower/ui/dialog/SendFlowerDialog;
invokevirtual com/android/u/weibo/flower/ui/dialog/SendFlowerDialog/dismissDialogL()V
return
L1:
aload 0
getfield com/android/u/weibo/flower/ui/dialog/SendFlowerDialog$2/this$0 Lcom/android/u/weibo/flower/ui/dialog/SendFlowerDialog;
getfield com/android/u/weibo/flower/ui/dialog/SendFlowerDialog/mContext Landroid/content/Context;
aload 0
getfield com/android/u/weibo/flower/ui/dialog/SendFlowerDialog$2/this$0 Lcom/android/u/weibo/flower/ui/dialog/SendFlowerDialog;
getfield com/android/u/weibo/flower/ui/dialog/SendFlowerDialog/mContext Landroid/content/Context;
getstatic com/android/u/weibo/R$string/send_flower_fail I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
invokestatic com/common/android/utils/ToastUtils/displayTimeLong(Landroid/content/Context;Ljava/lang/String;)V
return
.limit locals 5
.limit stack 4
.end method

.method public onPreExecute(Lcom/common/android/utils/task/genericTask/GenericTask;)V
aload 0
getfield com/android/u/weibo/flower/ui/dialog/SendFlowerDialog$2/this$0 Lcom/android/u/weibo/flower/ui/dialog/SendFlowerDialog;
aload 0
getfield com/android/u/weibo/flower/ui/dialog/SendFlowerDialog$2/this$0 Lcom/android/u/weibo/flower/ui/dialog/SendFlowerDialog;
getfield com/android/u/weibo/flower/ui/dialog/SendFlowerDialog/mContext Landroid/content/Context;
aload 0
getfield com/android/u/weibo/flower/ui/dialog/SendFlowerDialog$2/this$0 Lcom/android/u/weibo/flower/ui/dialog/SendFlowerDialog;
getfield com/android/u/weibo/flower/ui/dialog/SendFlowerDialog/mContext Landroid/content/Context;
getstatic com/android/u/weibo/R$string/send_flower I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
aload 0
getfield com/android/u/weibo/flower/ui/dialog/SendFlowerDialog$2/this$0 Lcom/android/u/weibo/flower/ui/dialog/SendFlowerDialog;
getfield com/android/u/weibo/flower/ui/dialog/SendFlowerDialog/mContext Landroid/content/Context;
getstatic com/android/u/weibo/R$string/send_flower_sending I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
iconst_1
invokestatic android/app/ProgressDialog/show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;
invokestatic com/android/u/weibo/flower/ui/dialog/SendFlowerDialog/access$202(Lcom/android/u/weibo/flower/ui/dialog/SendFlowerDialog;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
pop
aload 0
getfield com/android/u/weibo/flower/ui/dialog/SendFlowerDialog$2/this$0 Lcom/android/u/weibo/flower/ui/dialog/SendFlowerDialog;
invokestatic com/android/u/weibo/flower/ui/dialog/SendFlowerDialog/access$200(Lcom/android/u/weibo/flower/ui/dialog/SendFlowerDialog;)Landroid/app/ProgressDialog;
iconst_1
invokevirtual android/app/ProgressDialog/setCancelable(Z)V
aload 0
getfield com/android/u/weibo/flower/ui/dialog/SendFlowerDialog$2/this$0 Lcom/android/u/weibo/flower/ui/dialog/SendFlowerDialog;
invokestatic com/android/u/weibo/flower/ui/dialog/SendFlowerDialog/access$200(Lcom/android/u/weibo/flower/ui/dialog/SendFlowerDialog;)Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/show()V
aload 0
aload 1
invokespecial com/common/android/utils/task/genericTask/TaskAdapter/onPreExecute(Lcom/common/android/utils/task/genericTask/GenericTask;)V
return
.limit locals 2
.limit stack 5
.end method
