.bytecode 50.0
.class synchronized com/nd/android/u/tast/lottery/activity/LotMainActivity$6
.super com/common/android/utils/task/genericTask/TaskAdapter
.enclosing method com/nd/android/u/tast/lottery/activity/LotMainActivity
.inner class inner com/nd/android/u/tast/lottery/activity/LotMainActivity$6

.field final synthetic 'this$0' Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;

.method <init>(Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;)V
aload 0
aload 1
putfield com/nd/android/u/tast/lottery/activity/LotMainActivity$6/this$0 Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;
aload 0
invokespecial com/common/android/utils/task/genericTask/TaskAdapter/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onPostExecute(Lcom/common/android/utils/task/genericTask/GenericTask;Lcom/common/android/utils/task/genericTask/TaskResult;)V
aload 0
getfield com/nd/android/u/tast/lottery/activity/LotMainActivity$6/this$0 Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;
invokestatic com/nd/android/u/tast/lottery/activity/LotMainActivity/access$2200(Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;)Landroid/app/ProgressDialog;
ifnull L0
aload 0
getfield com/nd/android/u/tast/lottery/activity/LotMainActivity$6/this$0 Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;
invokestatic com/nd/android/u/tast/lottery/activity/LotMainActivity/access$2200(Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;)Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/dismiss()V
L0:
aload 2
getstatic com/common/android/utils/task/genericTask/TaskResult/OK Lcom/common/android/utils/task/genericTask/TaskResult;
if_acmpne L1
aload 0
getfield com/nd/android/u/tast/lottery/activity/LotMainActivity$6/this$0 Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;
invokestatic com/nd/android/u/tast/lottery/activity/LotMainActivity/access$2300(Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;)V
aload 0
getfield com/nd/android/u/tast/lottery/activity/LotMainActivity$6/this$0 Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;
invokestatic com/nd/android/u/tast/lottery/activity/LotMainActivity/access$2400(Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;)V
aload 0
getfield com/nd/android/u/tast/lottery/activity/LotMainActivity$6/this$0 Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;
aload 0
getfield com/nd/android/u/tast/lottery/activity/LotMainActivity$6/this$0 Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;
invokestatic com/nd/android/u/tast/lottery/activity/LotMainActivity/access$200(Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;)I
invokestatic com/nd/android/u/tast/lottery/activity/LotMainActivity/access$600(Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;I)V
aload 0
getfield com/nd/android/u/tast/lottery/activity/LotMainActivity$6/this$0 Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;
iconst_1
invokestatic com/nd/android/u/tast/lottery/activity/LotMainActivity/access$002(Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;Z)Z
pop
return
L1:
aload 1
getfield com/common/android/utils/task/genericTask/GenericTask/message Ljava/lang/String;
ifnull L2
ldc "-1"
aload 1
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getMessage()Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L2
aload 0
getfield com/nd/android/u/tast/lottery/activity/LotMainActivity$6/this$0 Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;
invokestatic com/nd/android/u/tast/lottery/activity/LotMainActivity/access$500(Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;)Landroid/content/Context;
ldc "\u7f51\u7edc\u5f02\u5e38"
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;Ljava/lang/String;)V
return
L2:
aload 0
getfield com/nd/android/u/tast/lottery/activity/LotMainActivity$6/this$0 Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;
invokestatic com/nd/android/u/tast/lottery/activity/LotMainActivity/access$500(Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;)Landroid/content/Context;
ldc "\u7f51\u7edc\u901a\u4fe1\u5931\u8d25"
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;Ljava/lang/String;)V
return
.limit locals 3
.limit stack 2
.end method

.method public onPreExecute(Lcom/common/android/utils/task/genericTask/GenericTask;)V
aload 0
getfield com/nd/android/u/tast/lottery/activity/LotMainActivity$6/this$0 Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;
aload 0
getfield com/nd/android/u/tast/lottery/activity/LotMainActivity$6/this$0 Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;
invokestatic com/nd/android/u/tast/lottery/activity/LotMainActivity/access$500(Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;)Landroid/content/Context;
ldc ""
aload 0
getfield com/nd/android/u/tast/lottery/activity/LotMainActivity$6/this$0 Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;
getstatic com/nd/android/u/tasklib/R$string/lot_get_data_waiting I
invokevirtual com/nd/android/u/tast/lottery/activity/LotMainActivity/getString(I)Ljava/lang/String;
iconst_1
invokestatic android/app/ProgressDialog/show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;
invokestatic com/nd/android/u/tast/lottery/activity/LotMainActivity/access$2202(Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
pop
aload 0
getfield com/nd/android/u/tast/lottery/activity/LotMainActivity$6/this$0 Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;
invokestatic com/nd/android/u/tast/lottery/activity/LotMainActivity/access$2200(Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;)Landroid/app/ProgressDialog;
iconst_1
invokevirtual android/app/ProgressDialog/setCancelable(Z)V
return
.limit locals 2
.limit stack 5
.end method
