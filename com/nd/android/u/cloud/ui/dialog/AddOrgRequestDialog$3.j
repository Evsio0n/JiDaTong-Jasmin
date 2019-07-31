.bytecode 50.0
.class synchronized com/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog$3
.super com/common/android/utils/task/genericTask/TaskAdapter
.enclosing method com/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog
.inner class inner com/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog$3

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog;

.method <init>(Lcom/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog$3/this$0 Lcom/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog;
aload 0
invokespecial com/common/android/utils/task/genericTask/TaskAdapter/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onPostExecute(Lcom/common/android/utils/task/genericTask/GenericTask;Lcom/common/android/utils/task/genericTask/TaskResult;)V
aload 2
getstatic com/common/android/utils/task/genericTask/TaskResult/OK Lcom/common/android/utils/task/genericTask/TaskResult;
if_acmpne L0
aload 0
getfield com/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog$3/this$0 Lcom/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog;
invokestatic com/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog/access$400(Lcom/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog;)Landroid/content/Context;
ldc_w 2131495572
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
L1:
aload 0
getfield com/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog$3/this$0 Lcom/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog;
invokestatic com/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog/access$800(Lcom/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog;)Landroid/app/ProgressDialog;
ifnull L2
aload 0
getfield com/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog$3/this$0 Lcom/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog;
invokestatic com/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog/access$800(Lcom/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog;)Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/dismiss()V
L2:
aload 0
getfield com/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog$3/this$0 Lcom/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog;
invokestatic com/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog/access$900(Lcom/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog;)Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L3
aload 0
getfield com/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog$3/this$0 Lcom/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog;
invokestatic com/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog/access$900(Lcom/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog;)Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L3
aload 0
getfield com/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog$3/this$0 Lcom/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog;
invokestatic com/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog/access$900(Lcom/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog;)Lcom/common/android/utils/task/genericTask/GenericTask;
iconst_1
invokevirtual com/common/android/utils/task/genericTask/GenericTask/cancel(Z)Z
pop
L3:
return
L0:
aload 1
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getMessage()Ljava/lang/String;
ldc "403"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L4
aload 0
getfield com/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog$3/this$0 Lcom/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog;
invokestatic com/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog/access$400(Lcom/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog;)Landroid/content/Context;
ldc_w 2131494515
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
goto L1
L4:
aload 1
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getMessage()Ljava/lang/String;
ldc "404"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L5
aload 0
getfield com/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog$3/this$0 Lcom/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog;
invokestatic com/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog/access$400(Lcom/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog;)Landroid/content/Context;
ldc_w 2131494098
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
goto L1
L5:
aload 1
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getMessage()Ljava/lang/String;
ldc "401"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L6
aload 0
getfield com/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog$3/this$0 Lcom/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog;
invokestatic com/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog/access$400(Lcom/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog;)Landroid/content/Context;
ldc_w 2131494534
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
goto L1
L6:
aload 1
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getMessage()Ljava/lang/String;
ldc "405"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L7
aload 0
getfield com/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog$3/this$0 Lcom/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog;
invokestatic com/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog/access$400(Lcom/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog;)Landroid/content/Context;
ldc_w 2131493556
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
goto L1
L7:
aload 1
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getMessage()Ljava/lang/String;
ldc "500"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L8
aload 0
getfield com/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog$3/this$0 Lcom/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog;
invokestatic com/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog/access$400(Lcom/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog;)Landroid/content/Context;
ldc_w 2131493559
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
goto L1
L8:
aload 0
getfield com/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog$3/this$0 Lcom/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog;
invokestatic com/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog/access$400(Lcom/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog;)Landroid/content/Context;
ldc_w 2131495020
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
goto L1
.limit locals 3
.limit stack 2
.end method

.method public onPreExecute(Lcom/common/android/utils/task/genericTask/GenericTask;)V
aload 0
getfield com/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog$3/this$0 Lcom/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog;
aload 0
getfield com/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog$3/this$0 Lcom/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog;
invokestatic com/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog/access$400(Lcom/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog;)Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
ldc_w 2131494980
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokestatic com/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog/access$700(Lcom/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog;Ljava/lang/String;)V
return
.limit locals 2
.limit stack 3
.end method
