.bytecode 50.0
.class synchronized com/nd/android/u/contact/fragment/FriendListFragment$6
.super com/common/android/utils/task/genericTask/TaskAdapter
.enclosing method com/nd/android/u/contact/fragment/FriendListFragment
.inner class inner com/nd/android/u/contact/fragment/FriendListFragment$6

.field final synthetic 'this$0' Lcom/nd/android/u/contact/fragment/FriendListFragment;

.method <init>(Lcom/nd/android/u/contact/fragment/FriendListFragment;)V
aload 0
aload 1
putfield com/nd/android/u/contact/fragment/FriendListFragment$6/this$0 Lcom/nd/android/u/contact/fragment/FriendListFragment;
aload 0
invokespecial com/common/android/utils/task/genericTask/TaskAdapter/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onPostExecute(Lcom/common/android/utils/task/genericTask/GenericTask;Lcom/common/android/utils/task/genericTask/TaskResult;)V
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment$6/this$0 Lcom/nd/android/u/contact/fragment/FriendListFragment;
invokestatic com/nd/android/u/contact/fragment/FriendListFragment/access$1200(Lcom/nd/android/u/contact/fragment/FriendListFragment;)Landroid/app/ProgressDialog;
ifnull L0
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment$6/this$0 Lcom/nd/android/u/contact/fragment/FriendListFragment;
invokestatic com/nd/android/u/contact/fragment/FriendListFragment/access$1200(Lcom/nd/android/u/contact/fragment/FriendListFragment;)Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/dismiss()V
L0:
getstatic com/common/android/utils/task/genericTask/TaskResult/OK Lcom/common/android/utils/task/genericTask/TaskResult;
aload 2
if_acmpne L1
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment$6/this$0 Lcom/nd/android/u/contact/fragment/FriendListFragment;
invokevirtual com/nd/android/u/contact/fragment/FriendListFragment/refresh()V
return
L1:
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment$6/this$0 Lcom/nd/android/u/contact/fragment/FriendListFragment;
invokevirtual com/nd/android/u/contact/fragment/FriendListFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
ldc "\u5237\u65b0\u5217\u8868\u5931\u8d25"
invokestatic com/common/android/utils/ToastUtils/displayTimeLong(Landroid/content/Context;Ljava/lang/String;)V
return
.limit locals 3
.limit stack 2
.end method

.method public onPreExecute(Lcom/common/android/utils/task/genericTask/GenericTask;)V
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment$6/this$0 Lcom/nd/android/u/contact/fragment/FriendListFragment;
invokestatic com/nd/android/u/contact/fragment/FriendListFragment/access$1000(Lcom/nd/android/u/contact/fragment/FriendListFragment;)Z
ifeq L0
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment$6/this$0 Lcom/nd/android/u/contact/fragment/FriendListFragment;
aconst_null
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment$6/this$0 Lcom/nd/android/u/contact/fragment/FriendListFragment;
invokevirtual com/nd/android/u/contact/fragment/FriendListFragment/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/waiting_for_refresh I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokestatic com/nd/android/u/contact/fragment/FriendListFragment/access$1100(Lcom/nd/android/u/contact/fragment/FriendListFragment;Ljava/lang/String;Ljava/lang/String;)V
L0:
aload 0
aload 1
invokespecial com/common/android/utils/task/genericTask/TaskAdapter/onPreExecute(Lcom/common/android/utils/task/genericTask/GenericTask;)V
return
.limit locals 2
.limit stack 4
.end method
