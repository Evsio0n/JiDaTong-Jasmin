.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/GroupMemberActivity$SynUserInfoTask
.super com/common/android/utils/task/genericTask/GenericTask
.inner class private SynUserInfoTask inner com/nd/android/u/contact/activity/GroupMemberActivity$SynUserInfoTask outer com/nd/android/u/contact/activity/GroupMemberActivity

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/GroupMemberActivity;

.method private <init>(Lcom/nd/android/u/contact/activity/GroupMemberActivity;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/GroupMemberActivity$SynUserInfoTask/this$0 Lcom/nd/android/u/contact/activity/GroupMemberActivity;
aload 0
invokespecial com/common/android/utils/task/genericTask/GenericTask/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/nd/android/u/contact/activity/GroupMemberActivity;Lcom/nd/android/u/contact/activity/GroupMemberActivity$1;)V
aload 0
aload 1
invokespecial com/nd/android/u/contact/activity/GroupMemberActivity$SynUserInfoTask/<init>(Lcom/nd/android/u/contact/activity/GroupMemberActivity;)V
return
.limit locals 3
.limit stack 2
.end method

.method protected transient _doInBackground([Lcom/common/android/utils/task/genericTask/TaskParams;)Lcom/common/android/utils/task/genericTask/TaskResult;
aload 0
getfield com/nd/android/u/contact/activity/GroupMemberActivity$SynUserInfoTask/this$0 Lcom/nd/android/u/contact/activity/GroupMemberActivity;
aload 0
getfield com/nd/android/u/contact/activity/GroupMemberActivity$SynUserInfoTask/this$0 Lcom/nd/android/u/contact/activity/GroupMemberActivity;
invokestatic com/nd/android/u/contact/activity/GroupMemberActivity/access$200(Lcom/nd/android/u/contact/activity/GroupMemberActivity;)Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/IGroupOperator;
aload 0
getfield com/nd/android/u/contact/activity/GroupMemberActivity$SynUserInfoTask/this$0 Lcom/nd/android/u/contact/activity/GroupMemberActivity;
getfield com/nd/android/u/contact/activity/GroupMemberActivity/gid J
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/IGroupOperator/getGroup(J)Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup; 2
checkcast com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup
putfield com/nd/android/u/contact/activity/GroupMemberActivity/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
aload 0
getfield com/nd/android/u/contact/activity/GroupMemberActivity$SynUserInfoTask/this$0 Lcom/nd/android/u/contact/activity/GroupMemberActivity;
getfield com/nd/android/u/contact/activity/GroupMemberActivity/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
ifnonnull L0
getstatic com/common/android/utils/task/genericTask/TaskResult/FAILED Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
L0:
aload 0
getfield com/nd/android/u/contact/activity/GroupMemberActivity$SynUserInfoTask/this$0 Lcom/nd/android/u/contact/activity/GroupMemberActivity;
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
invokestatic com/nd/android/u/contact/activity/GroupMemberActivity/access$302(Lcom/nd/android/u/contact/activity/GroupMemberActivity;Ljava/util/List;)Ljava/util/List;
pop
aload 0
getfield com/nd/android/u/contact/activity/GroupMemberActivity$SynUserInfoTask/this$0 Lcom/nd/android/u/contact/activity/GroupMemberActivity;
getfield com/nd/android/u/contact/activity/GroupMemberActivity/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/getMember()Ljava/util/Iterator;
astore 1
aload 1
ifnonnull L1
getstatic com/common/android/utils/task/genericTask/TaskResult/FAILED Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
L1:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L2
aload 0
getfield com/nd/android/u/contact/activity/GroupMemberActivity$SynUserInfoTask/this$0 Lcom/nd/android/u/contact/activity/GroupMemberActivity;
invokestatic com/nd/android/u/contact/activity/GroupMemberActivity/access$300(Lcom/nd/android/u/contact/activity/GroupMemberActivity;)Ljava/util/List;
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
goto L1
L2:
getstatic com/common/android/utils/task/genericTask/TaskResult/OK Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
.limit locals 2
.limit stack 4
.end method
