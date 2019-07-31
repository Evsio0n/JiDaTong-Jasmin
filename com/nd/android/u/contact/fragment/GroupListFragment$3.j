.bytecode 50.0
.class synchronized com/nd/android/u/contact/fragment/GroupListFragment$3
.super com/common/android/utils/task/genericTask/TaskAdapter
.enclosing method com/nd/android/u/contact/fragment/GroupListFragment
.inner class inner com/nd/android/u/contact/fragment/GroupListFragment$3

.field final synthetic 'this$0' Lcom/nd/android/u/contact/fragment/GroupListFragment;

.method <init>(Lcom/nd/android/u/contact/fragment/GroupListFragment;)V
aload 0
aload 1
putfield com/nd/android/u/contact/fragment/GroupListFragment$3/this$0 Lcom/nd/android/u/contact/fragment/GroupListFragment;
aload 0
invokespecial com/common/android/utils/task/genericTask/TaskAdapter/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onPostExecute(Lcom/common/android/utils/task/genericTask/GenericTask;Lcom/common/android/utils/task/genericTask/TaskResult;)V
aload 0
getfield com/nd/android/u/contact/fragment/GroupListFragment$3/this$0 Lcom/nd/android/u/contact/fragment/GroupListFragment;
invokestatic com/nd/android/u/contact/fragment/GroupListFragment/access$000(Lcom/nd/android/u/contact/fragment/GroupListFragment;)Landroid/app/ProgressDialog;
ifnull L0
aload 0
getfield com/nd/android/u/contact/fragment/GroupListFragment$3/this$0 Lcom/nd/android/u/contact/fragment/GroupListFragment;
invokestatic com/nd/android/u/contact/fragment/GroupListFragment/access$000(Lcom/nd/android/u/contact/fragment/GroupListFragment;)Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/dismiss()V
L0:
getstatic com/common/android/utils/task/genericTask/TaskResult/OK Lcom/common/android/utils/task/genericTask/TaskResult;
aload 2
if_acmpne L1
aload 0
getfield com/nd/android/u/contact/fragment/GroupListFragment$3/this$0 Lcom/nd/android/u/contact/fragment/GroupListFragment;
getfield com/nd/android/u/contact/fragment/GroupListFragment/groupAdpater Lcom/nd/android/u/contact/adapter/GroupAdapter;
invokestatic com/nd/android/u/contact/business/GroupVariable/getInstance()Lcom/nd/android/u/contact/business/GroupVariable;
invokevirtual com/nd/android/u/contact/business/GroupVariable/getOapGroupsList()Ljava/util/List;
invokevirtual com/nd/android/u/contact/adapter/GroupAdapter/setOapGroups(Ljava/util/List;)V
aload 0
getfield com/nd/android/u/contact/fragment/GroupListFragment$3/this$0 Lcom/nd/android/u/contact/fragment/GroupListFragment;
getfield com/nd/android/u/contact/fragment/GroupListFragment/groupAdpater Lcom/nd/android/u/contact/adapter/GroupAdapter;
invokevirtual com/nd/android/u/contact/adapter/GroupAdapter/refresh()V
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel$ChatEntry/groupLoginManagerLoginInitAllGroups()V
aload 0
getfield com/nd/android/u/contact/fragment/GroupListFragment$3/this$0 Lcom/nd/android/u/contact/fragment/GroupListFragment;
iconst_1
putfield com/nd/android/u/contact/fragment/GroupListFragment/isInited Z
return
L1:
aload 0
getfield com/nd/android/u/contact/fragment/GroupListFragment$3/this$0 Lcom/nd/android/u/contact/fragment/GroupListFragment;
invokevirtual com/nd/android/u/contact/fragment/GroupListFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
ldc "\u5237\u65b0\u5217\u8868\u5931\u8d25"
invokestatic com/common/android/utils/ToastUtils/displayTimeLong(Landroid/content/Context;Ljava/lang/String;)V
return
.limit locals 3
.limit stack 2
.end method

.method public onPreExecute(Lcom/common/android/utils/task/genericTask/GenericTask;)V
aload 0
getfield com/nd/android/u/contact/fragment/GroupListFragment$3/this$0 Lcom/nd/android/u/contact/fragment/GroupListFragment;
aconst_null
aload 0
getfield com/nd/android/u/contact/fragment/GroupListFragment$3/this$0 Lcom/nd/android/u/contact/fragment/GroupListFragment;
invokevirtual com/nd/android/u/contact/fragment/GroupListFragment/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/waiting_for_refresh I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual com/nd/android/u/contact/fragment/GroupListFragment/onBegin(Ljava/lang/String;Ljava/lang/String;)V
aload 0
aload 1
invokespecial com/common/android/utils/task/genericTask/TaskAdapter/onPreExecute(Lcom/common/android/utils/task/genericTask/GenericTask;)V
return
.limit locals 2
.limit stack 4
.end method
