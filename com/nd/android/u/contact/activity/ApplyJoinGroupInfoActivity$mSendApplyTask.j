.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/ApplyJoinGroupInfoActivity$mSendApplyTask
.super com/common/android/utils/task/genericTask/GenericTask
.inner class private mSendApplyTask inner com/nd/android/u/contact/activity/ApplyJoinGroupInfoActivity$mSendApplyTask outer com/nd/android/u/contact/activity/ApplyJoinGroupInfoActivity

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/ApplyJoinGroupInfoActivity;

.method private <init>(Lcom/nd/android/u/contact/activity/ApplyJoinGroupInfoActivity;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/ApplyJoinGroupInfoActivity$mSendApplyTask/this$0 Lcom/nd/android/u/contact/activity/ApplyJoinGroupInfoActivity;
aload 0
invokespecial com/common/android/utils/task/genericTask/GenericTask/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/nd/android/u/contact/activity/ApplyJoinGroupInfoActivity;Lcom/nd/android/u/contact/activity/ApplyJoinGroupInfoActivity$1;)V
aload 0
aload 1
invokespecial com/nd/android/u/contact/activity/ApplyJoinGroupInfoActivity$mSendApplyTask/<init>(Lcom/nd/android/u/contact/activity/ApplyJoinGroupInfoActivity;)V
return
.limit locals 3
.limit stack 2
.end method

.method protected transient _doInBackground([Lcom/common/android/utils/task/genericTask/TaskParams;)Lcom/common/android/utils/task/genericTask/TaskResult;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokestatic com/common/android/utils/NetWorkUtils/JudgeNetWorkStatus(Landroid/content/Context;)Z
ifne L0
getstatic com/common/android/utils/task/genericTask/TaskResult/FAILED Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
L0:
aload 0
getfield com/nd/android/u/contact/activity/ApplyJoinGroupInfoActivity$mSendApplyTask/this$0 Lcom/nd/android/u/contact/activity/ApplyJoinGroupInfoActivity;
invokestatic com/nd/android/u/contact/activity/ApplyJoinGroupInfoActivity/access$500(Lcom/nd/android/u/contact/activity/ApplyJoinGroupInfoActivity;)Lcom/product/android/commonInterface/contact/OapGroup;
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGid()J
aload 0
getfield com/nd/android/u/contact/activity/ApplyJoinGroupInfoActivity$mSendApplyTask/this$0 Lcom/nd/android/u/contact/activity/ApplyJoinGroupInfoActivity;
invokestatic com/nd/android/u/contact/activity/ApplyJoinGroupInfoActivity/access$600(Lcom/nd/android/u/contact/activity/ApplyJoinGroupInfoActivity;)Landroid/widget/EditText;
invokevirtual android/widget/EditText/getText()Landroid/text/Editable;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel$ChatEntry/ImsSendGroupCommandAddGroupRequest(JLjava/lang/String;)V
getstatic com/common/android/utils/task/genericTask/TaskResult/OK Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
.limit locals 2
.limit stack 3
.end method
