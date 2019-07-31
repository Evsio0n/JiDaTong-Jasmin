.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/XYNewSelectUserActivity$CreateDiscussionTask
.super com/common/android/utils/task/genericTask/GenericTask
.inner class private CreateDiscussionTask inner com/nd/android/u/contact/activity/XYNewSelectUserActivity$CreateDiscussionTask outer com/nd/android/u/contact/activity/XYNewSelectUserActivity

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/XYNewSelectUserActivity;

.method private <init>(Lcom/nd/android/u/contact/activity/XYNewSelectUserActivity;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/XYNewSelectUserActivity$CreateDiscussionTask/this$0 Lcom/nd/android/u/contact/activity/XYNewSelectUserActivity;
aload 0
invokespecial com/common/android/utils/task/genericTask/GenericTask/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/nd/android/u/contact/activity/XYNewSelectUserActivity;Lcom/nd/android/u/contact/activity/XYNewSelectUserActivity$1;)V
aload 0
aload 1
invokespecial com/nd/android/u/contact/activity/XYNewSelectUserActivity$CreateDiscussionTask/<init>(Lcom/nd/android/u/contact/activity/XYNewSelectUserActivity;)V
return
.limit locals 3
.limit stack 2
.end method

.method protected transient _doInBackground([Lcom/common/android/utils/task/genericTask/TaskParams;)Lcom/common/android/utils/task/genericTask/TaskResult;
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L1 to L3 using L2
aload 1
ifnull L1
L0:
aload 1
arraylength
ifle L1
aload 1
iconst_0
aaload
ldc "name"
invokevirtual com/common/android/utils/task/genericTask/TaskParams/getString(Ljava/lang/String;)Ljava/lang/String;
astore 1
invokestatic com/nd/android/u/contact/dataStructure/SelectedMemberQueue/getInstance()Lcom/nd/android/u/contact/dataStructure/SelectedMemberQueue;
invokevirtual com/nd/android/u/contact/dataStructure/SelectedMemberQueue/getList()Ljava/util/ArrayList;
astore 2
aload 2
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
aload 0
getfield com/nd/android/u/contact/activity/XYNewSelectUserActivity$CreateDiscussionTask/this$0 Lcom/nd/android/u/contact/activity/XYNewSelectUserActivity;
aload 0
getfield com/nd/android/u/contact/activity/XYNewSelectUserActivity$CreateDiscussionTask/this$0 Lcom/nd/android/u/contact/activity/XYNewSelectUserActivity;
invokestatic com/nd/android/u/contact/activity/XYNewSelectUserActivity/access$1100(Lcom/nd/android/u/contact/activity/XYNewSelectUserActivity;)Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/IGroupOperator;
aload 1
aload 2
invokevirtual java/util/ArrayList/iterator()Ljava/util/Iterator;
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/IGroupOperator/createDiscussion(Ljava/lang/String;Ljava/util/Iterator;)Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup; 2
checkcast com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup
invokestatic com/nd/android/u/contact/activity/XYNewSelectUserActivity/access$402(Lcom/nd/android/u/contact/activity/XYNewSelectUserActivity;Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;)Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
pop
aload 0
getfield com/nd/android/u/contact/activity/XYNewSelectUserActivity$CreateDiscussionTask/this$0 Lcom/nd/android/u/contact/activity/XYNewSelectUserActivity;
invokestatic com/nd/android/u/contact/activity/XYNewSelectUserActivity/access$400(Lcom/nd/android/u/contact/activity/XYNewSelectUserActivity;)Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
ifnonnull L4
getstatic com/common/android/utils/task/genericTask/TaskResult/FAILED Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
L1:
getstatic com/common/android/utils/task/genericTask/TaskResult/FAILED Lcom/common/android/utils/task/genericTask/TaskResult;
astore 1
L3:
aload 1
areturn
L2:
astore 1
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
getstatic com/common/android/utils/task/genericTask/TaskResult/FAILED Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
L4:
getstatic com/common/android/utils/task/genericTask/TaskResult/OK Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
.limit locals 3
.limit stack 4
.end method
