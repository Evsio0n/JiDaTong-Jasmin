.bytecode 50.0
.class synchronized com/nd/android/u/contact/fragment/ContactMainFragment$6
.super com/common/android/utils/task/genericTask/TaskAdapter
.enclosing method com/nd/android/u/contact/fragment/ContactMainFragment
.inner class inner com/nd/android/u/contact/fragment/ContactMainFragment$6

.field final synthetic 'this$0' Lcom/nd/android/u/contact/fragment/ContactMainFragment;

.method <init>(Lcom/nd/android/u/contact/fragment/ContactMainFragment;)V
aload 0
aload 1
putfield com/nd/android/u/contact/fragment/ContactMainFragment$6/this$0 Lcom/nd/android/u/contact/fragment/ContactMainFragment;
aload 0
invokespecial com/common/android/utils/task/genericTask/TaskAdapter/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onPostExecute(Lcom/common/android/utils/task/genericTask/GenericTask;Lcom/common/android/utils/task/genericTask/TaskResult;)V
aload 0
getfield com/nd/android/u/contact/fragment/ContactMainFragment$6/this$0 Lcom/nd/android/u/contact/fragment/ContactMainFragment;
invokestatic com/nd/android/u/contact/fragment/ContactMainFragment/access$500(Lcom/nd/android/u/contact/fragment/ContactMainFragment;)Landroid/app/ProgressDialog;
ifnull L0
aload 0
getfield com/nd/android/u/contact/fragment/ContactMainFragment$6/this$0 Lcom/nd/android/u/contact/fragment/ContactMainFragment;
invokestatic com/nd/android/u/contact/fragment/ContactMainFragment/access$500(Lcom/nd/android/u/contact/fragment/ContactMainFragment;)Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/dismiss()V
L0:
aload 0
getfield com/nd/android/u/contact/fragment/ContactMainFragment$6/this$0 Lcom/nd/android/u/contact/fragment/ContactMainFragment;
invokestatic com/nd/android/u/contact/fragment/ContactMainFragment/access$600(Lcom/nd/android/u/contact/fragment/ContactMainFragment;)Lcom/nd/android/u/contact/view/PullToPreshExpandListView;
invokevirtual com/nd/android/u/contact/view/PullToPreshExpandListView/hideHeaderView()V
getstatic com/common/android/utils/task/genericTask/TaskResult/OK Lcom/common/android/utils/task/genericTask/TaskResult;
aload 2
if_acmpne L1
aload 0
getfield com/nd/android/u/contact/fragment/ContactMainFragment$6/this$0 Lcom/nd/android/u/contact/fragment/ContactMainFragment;
invokevirtual com/nd/android/u/contact/fragment/ContactMainFragment/refresh()V
return
L1:
aload 0
getfield com/nd/android/u/contact/fragment/ContactMainFragment$6/this$0 Lcom/nd/android/u/contact/fragment/ContactMainFragment;
invokevirtual com/nd/android/u/contact/fragment/ContactMainFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
ldc "\u5237\u65b0\u5217\u8868\u5931\u8d25"
invokestatic com/common/android/utils/ToastUtils/displayTimeLong(Landroid/content/Context;Ljava/lang/String;)V
return
.limit locals 3
.limit stack 2
.end method

.method public onPreExecute(Lcom/common/android/utils/task/genericTask/GenericTask;)V
aload 0
aload 1
invokespecial com/common/android/utils/task/genericTask/TaskAdapter/onPreExecute(Lcom/common/android/utils/task/genericTask/GenericTask;)V
return
.limit locals 2
.limit stack 2
.end method
