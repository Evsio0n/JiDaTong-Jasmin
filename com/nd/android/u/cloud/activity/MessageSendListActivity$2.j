.bytecode 50.0
.class synchronized com/nd/android/u/cloud/activity/MessageSendListActivity$2
.super com/common/android/utils/task/genericTask/TaskAdapter
.enclosing method com/nd/android/u/cloud/activity/MessageSendListActivity
.inner class inner com/nd/android/u/cloud/activity/MessageSendListActivity$2

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/activity/MessageSendListActivity;

.method <init>(Lcom/nd/android/u/cloud/activity/MessageSendListActivity;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/MessageSendListActivity$2/this$0 Lcom/nd/android/u/cloud/activity/MessageSendListActivity;
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
ldc "MessageSendListActivity"
ldc "\u53d1\u9001\u6210\u529f"
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 0
getfield com/nd/android/u/cloud/activity/MessageSendListActivity$2/this$0 Lcom/nd/android/u/cloud/activity/MessageSendListActivity;
invokestatic com/nd/android/u/cloud/activity/MessageSendListActivity/access$100(Lcom/nd/android/u/cloud/activity/MessageSendListActivity;)Ljava/util/List;
ifnull L1
ldc com/nd/android/u/contact/dao/SmsQueryDetailDAO
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/SmsQueryDetailDAO
aload 0
getfield com/nd/android/u/cloud/activity/MessageSendListActivity$2/this$0 Lcom/nd/android/u/cloud/activity/MessageSendListActivity;
invokestatic com/nd/android/u/cloud/activity/MessageSendListActivity/access$100(Lcom/nd/android/u/cloud/activity/MessageSendListActivity;)Ljava/util/List;
aload 0
getfield com/nd/android/u/cloud/activity/MessageSendListActivity$2/this$0 Lcom/nd/android/u/cloud/activity/MessageSendListActivity;
invokestatic com/nd/android/u/cloud/activity/MessageSendListActivity/access$200(Lcom/nd/android/u/cloud/activity/MessageSendListActivity;)Ljava/lang/String;
invokeinterface com/nd/android/u/contact/dao/SmsQueryDetailDAO/insertSmsQueryDetailList(Ljava/util/List;Ljava/lang/String;)J 2
pop2
L1:
aload 0
getfield com/nd/android/u/cloud/activity/MessageSendListActivity$2/this$0 Lcom/nd/android/u/cloud/activity/MessageSendListActivity;
invokestatic com/nd/android/u/cloud/activity/MessageSendListActivity/access$300(Lcom/nd/android/u/cloud/activity/MessageSendListActivity;)Lcom/nd/android/u/cloud/ui/adapter/MessageSendListAdapter;
ifnonnull L2
ldc "MessageSendListActivity"
ldc "identityadapter == null"
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 0
getfield com/nd/android/u/cloud/activity/MessageSendListActivity$2/this$0 Lcom/nd/android/u/cloud/activity/MessageSendListActivity;
new com/nd/android/u/cloud/ui/adapter/MessageSendListAdapter
dup
aload 0
getfield com/nd/android/u/cloud/activity/MessageSendListActivity$2/this$0 Lcom/nd/android/u/cloud/activity/MessageSendListActivity;
aload 0
getfield com/nd/android/u/cloud/activity/MessageSendListActivity$2/this$0 Lcom/nd/android/u/cloud/activity/MessageSendListActivity;
invokestatic com/nd/android/u/cloud/activity/MessageSendListActivity/access$100(Lcom/nd/android/u/cloud/activity/MessageSendListActivity;)Ljava/util/List;
invokespecial com/nd/android/u/cloud/ui/adapter/MessageSendListAdapter/<init>(Landroid/content/Context;Ljava/util/List;)V
invokestatic com/nd/android/u/cloud/activity/MessageSendListActivity/access$302(Lcom/nd/android/u/cloud/activity/MessageSendListActivity;Lcom/nd/android/u/cloud/ui/adapter/MessageSendListAdapter;)Lcom/nd/android/u/cloud/ui/adapter/MessageSendListAdapter;
pop
aload 0
getfield com/nd/android/u/cloud/activity/MessageSendListActivity$2/this$0 Lcom/nd/android/u/cloud/activity/MessageSendListActivity;
invokestatic com/nd/android/u/cloud/activity/MessageSendListActivity/access$400(Lcom/nd/android/u/cloud/activity/MessageSendListActivity;)Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/cloud/activity/MessageSendListActivity$2/this$0 Lcom/nd/android/u/cloud/activity/MessageSendListActivity;
invokestatic com/nd/android/u/cloud/activity/MessageSendListActivity/access$300(Lcom/nd/android/u/cloud/activity/MessageSendListActivity;)Lcom/nd/android/u/cloud/ui/adapter/MessageSendListAdapter;
invokevirtual android/widget/ListView/setAdapter(Landroid/widget/ListAdapter;)V
aload 0
getfield com/nd/android/u/cloud/activity/MessageSendListActivity$2/this$0 Lcom/nd/android/u/cloud/activity/MessageSendListActivity;
invokestatic com/nd/android/u/cloud/activity/MessageSendListActivity/access$400(Lcom/nd/android/u/cloud/activity/MessageSendListActivity;)Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/cloud/activity/MessageSendListActivity$2/this$0 Lcom/nd/android/u/cloud/activity/MessageSendListActivity;
invokestatic com/nd/android/u/cloud/activity/MessageSendListActivity/access$500(Lcom/nd/android/u/cloud/activity/MessageSendListActivity;)I
invokevirtual android/widget/ListView/setSelection(I)V
L3:
aload 0
getfield com/nd/android/u/cloud/activity/MessageSendListActivity$2/this$0 Lcom/nd/android/u/cloud/activity/MessageSendListActivity;
invokestatic com/nd/android/u/cloud/activity/MessageSendListActivity/access$700(Lcom/nd/android/u/cloud/activity/MessageSendListActivity;)Landroid/app/ProgressDialog;
ifnull L4
aload 0
getfield com/nd/android/u/cloud/activity/MessageSendListActivity$2/this$0 Lcom/nd/android/u/cloud/activity/MessageSendListActivity;
invokestatic com/nd/android/u/cloud/activity/MessageSendListActivity/access$700(Lcom/nd/android/u/cloud/activity/MessageSendListActivity;)Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/dismiss()V
L4:
return
L2:
aload 0
getfield com/nd/android/u/cloud/activity/MessageSendListActivity$2/this$0 Lcom/nd/android/u/cloud/activity/MessageSendListActivity;
invokestatic com/nd/android/u/cloud/activity/MessageSendListActivity/access$100(Lcom/nd/android/u/cloud/activity/MessageSendListActivity;)Ljava/util/List;
ifnonnull L5
aload 0
getfield com/nd/android/u/cloud/activity/MessageSendListActivity$2/this$0 Lcom/nd/android/u/cloud/activity/MessageSendListActivity;
ldc_w 2131493712
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
goto L3
L5:
aload 0
getfield com/nd/android/u/cloud/activity/MessageSendListActivity$2/this$0 Lcom/nd/android/u/cloud/activity/MessageSendListActivity;
invokestatic com/nd/android/u/cloud/activity/MessageSendListActivity/access$300(Lcom/nd/android/u/cloud/activity/MessageSendListActivity;)Lcom/nd/android/u/cloud/ui/adapter/MessageSendListAdapter;
invokevirtual com/nd/android/u/cloud/ui/adapter/MessageSendListAdapter/getGroupList()Ljava/util/List;
aload 0
getfield com/nd/android/u/cloud/activity/MessageSendListActivity$2/this$0 Lcom/nd/android/u/cloud/activity/MessageSendListActivity;
invokestatic com/nd/android/u/cloud/activity/MessageSendListActivity/access$100(Lcom/nd/android/u/cloud/activity/MessageSendListActivity;)Ljava/util/List;
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
aload 0
getfield com/nd/android/u/cloud/activity/MessageSendListActivity$2/this$0 Lcom/nd/android/u/cloud/activity/MessageSendListActivity;
invokestatic com/nd/android/u/cloud/activity/MessageSendListActivity/access$300(Lcom/nd/android/u/cloud/activity/MessageSendListActivity;)Lcom/nd/android/u/cloud/ui/adapter/MessageSendListAdapter;
invokevirtual com/nd/android/u/cloud/ui/adapter/MessageSendListAdapter/notifyDataSetChanged()V
goto L3
L0:
aload 0
getfield com/nd/android/u/cloud/activity/MessageSendListActivity$2/this$0 Lcom/nd/android/u/cloud/activity/MessageSendListActivity;
ldc_w 2131493729
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
aload 0
getfield com/nd/android/u/cloud/activity/MessageSendListActivity$2/this$0 Lcom/nd/android/u/cloud/activity/MessageSendListActivity;
invokestatic com/nd/android/u/cloud/activity/MessageSendListActivity/access$600(Lcom/nd/android/u/cloud/activity/MessageSendListActivity;)I
iconst_m1
if_icmpeq L3
aload 0
getfield com/nd/android/u/cloud/activity/MessageSendListActivity$2/this$0 Lcom/nd/android/u/cloud/activity/MessageSendListActivity;
invokestatic com/nd/android/u/cloud/activity/MessageSendListActivity/access$610(Lcom/nd/android/u/cloud/activity/MessageSendListActivity;)I
pop
goto L3
.limit locals 3
.limit stack 5
.end method

.method public onPreExecute(Lcom/common/android/utils/task/genericTask/GenericTask;)V
aload 0
getfield com/nd/android/u/cloud/activity/MessageSendListActivity$2/this$0 Lcom/nd/android/u/cloud/activity/MessageSendListActivity;
aload 0
getfield com/nd/android/u/cloud/activity/MessageSendListActivity$2/this$0 Lcom/nd/android/u/cloud/activity/MessageSendListActivity;
invokevirtual com/nd/android/u/cloud/activity/MessageSendListActivity/getResources()Landroid/content/res/Resources;
ldc_w 2131495590
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokestatic com/nd/android/u/cloud/activity/MessageSendListActivity/access$800(Lcom/nd/android/u/cloud/activity/MessageSendListActivity;Ljava/lang/String;)V
return
.limit locals 2
.limit stack 3
.end method
