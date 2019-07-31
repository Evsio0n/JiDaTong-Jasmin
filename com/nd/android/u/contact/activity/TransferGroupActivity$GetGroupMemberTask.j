.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/TransferGroupActivity$GetGroupMemberTask
.super com/common/android/utils/task/genericTask/GenericTask
.inner class private GetGroupMemberTask inner com/nd/android/u/contact/activity/TransferGroupActivity$GetGroupMemberTask outer com/nd/android/u/contact/activity/TransferGroupActivity

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/TransferGroupActivity;

.method private <init>(Lcom/nd/android/u/contact/activity/TransferGroupActivity;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/TransferGroupActivity$GetGroupMemberTask/this$0 Lcom/nd/android/u/contact/activity/TransferGroupActivity;
aload 0
invokespecial com/common/android/utils/task/genericTask/GenericTask/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/nd/android/u/contact/activity/TransferGroupActivity;Lcom/nd/android/u/contact/activity/TransferGroupActivity$1;)V
aload 0
aload 1
invokespecial com/nd/android/u/contact/activity/TransferGroupActivity$GetGroupMemberTask/<init>(Lcom/nd/android/u/contact/activity/TransferGroupActivity;)V
return
.limit locals 3
.limit stack 2
.end method

.method protected transient _doInBackground([Lcom/common/android/utils/task/genericTask/TaskParams;)Lcom/common/android/utils/task/genericTask/TaskResult;
aload 0
getfield com/nd/android/u/contact/activity/TransferGroupActivity$GetGroupMemberTask/this$0 Lcom/nd/android/u/contact/activity/TransferGroupActivity;
invokestatic com/nd/android/u/contact/activity/TransferGroupActivity/access$000(Lcom/nd/android/u/contact/activity/TransferGroupActivity;)Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/getMember()Ljava/util/Iterator;
astore 1
aload 1
ifnull L0
aload 0
getfield com/nd/android/u/contact/activity/TransferGroupActivity$GetGroupMemberTask/this$0 Lcom/nd/android/u/contact/activity/TransferGroupActivity;
invokestatic com/nd/android/u/contact/activity/TransferGroupActivity/access$100(Lcom/nd/android/u/contact/activity/TransferGroupActivity;)Ljava/util/List;
invokeinterface java/util/List/clear()V 0
L1:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L2
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/contact/OapUser
astore 2
aload 2
invokevirtual com/product/android/commonInterface/contact/OapUser/getFid()J
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
lcmp
ifne L3
aload 0
getfield com/nd/android/u/contact/activity/TransferGroupActivity$GetGroupMemberTask/this$0 Lcom/nd/android/u/contact/activity/TransferGroupActivity;
invokestatic com/nd/android/u/contact/activity/TransferGroupActivity/access$100(Lcom/nd/android/u/contact/activity/TransferGroupActivity;)Ljava/util/List;
aload 2
invokeinterface java/util/List/remove(Ljava/lang/Object;)Z 1
pop
goto L1
L3:
aload 0
getfield com/nd/android/u/contact/activity/TransferGroupActivity$GetGroupMemberTask/this$0 Lcom/nd/android/u/contact/activity/TransferGroupActivity;
invokestatic com/nd/android/u/contact/activity/TransferGroupActivity/access$100(Lcom/nd/android/u/contact/activity/TransferGroupActivity;)Ljava/util/List;
aload 2
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
goto L1
L2:
getstatic com/common/android/utils/task/genericTask/TaskResult/OK Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
L0:
getstatic com/common/android/utils/task/genericTask/TaskResult/FAILED Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
.limit locals 3
.limit stack 4
.end method
