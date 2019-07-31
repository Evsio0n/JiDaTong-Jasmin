.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/BlackListActivity$1
.super com/common/android/utils/task/genericTask/TaskAdapter
.enclosing method com/nd/android/u/contact/activity/BlackListActivity
.inner class inner com/nd/android/u/contact/activity/BlackListActivity$1

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/BlackListActivity;

.method <init>(Lcom/nd/android/u/contact/activity/BlackListActivity;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/BlackListActivity$1/this$0 Lcom/nd/android/u/contact/activity/BlackListActivity;
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
aload 1
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getMessage()Ljava/lang/String;
invokestatic com/common/android/utils/FormatUtils/parseInt(Ljava/lang/String;)I
istore 3
aload 0
getfield com/nd/android/u/contact/activity/BlackListActivity$1/this$0 Lcom/nd/android/u/contact/activity/BlackListActivity;
invokestatic com/nd/android/u/contact/activity/BlackListActivity/access$100(Lcom/nd/android/u/contact/activity/BlackListActivity;)Ljava/util/ArrayList;
iload 3
invokevirtual java/util/ArrayList/remove(I)Ljava/lang/Object;
pop
aload 0
getfield com/nd/android/u/contact/activity/BlackListActivity$1/this$0 Lcom/nd/android/u/contact/activity/BlackListActivity;
invokestatic com/nd/android/u/contact/activity/BlackListActivity/access$200(Lcom/nd/android/u/contact/activity/BlackListActivity;)V
L1:
aload 0
getfield com/nd/android/u/contact/activity/BlackListActivity$1/this$0 Lcom/nd/android/u/contact/activity/BlackListActivity;
invokestatic com/nd/android/u/contact/activity/BlackListActivity/access$300(Lcom/nd/android/u/contact/activity/BlackListActivity;)Landroid/app/ProgressDialog;
ifnull L2
aload 0
getfield com/nd/android/u/contact/activity/BlackListActivity$1/this$0 Lcom/nd/android/u/contact/activity/BlackListActivity;
invokestatic com/nd/android/u/contact/activity/BlackListActivity/access$300(Lcom/nd/android/u/contact/activity/BlackListActivity;)Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/dismiss()V
L2:
return
L0:
aload 0
getfield com/nd/android/u/contact/activity/BlackListActivity$1/this$0 Lcom/nd/android/u/contact/activity/BlackListActivity;
getstatic com/nd/android/u/contact/R$string/delete_blacklist_fail I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
goto L1
.limit locals 4
.limit stack 2
.end method

.method public onPreExecute(Lcom/common/android/utils/task/genericTask/GenericTask;)V
aload 0
getfield com/nd/android/u/contact/activity/BlackListActivity$1/this$0 Lcom/nd/android/u/contact/activity/BlackListActivity;
aload 0
getfield com/nd/android/u/contact/activity/BlackListActivity$1/this$0 Lcom/nd/android/u/contact/activity/BlackListActivity;
invokevirtual com/nd/android/u/contact/activity/BlackListActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/wait_for_remove_blacklist I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokestatic com/nd/android/u/contact/activity/BlackListActivity/access$400(Lcom/nd/android/u/contact/activity/BlackListActivity;Ljava/lang/String;)V
return
.limit locals 2
.limit stack 3
.end method
