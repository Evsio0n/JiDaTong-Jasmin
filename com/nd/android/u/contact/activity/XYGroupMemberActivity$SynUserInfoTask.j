.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/XYGroupMemberActivity$SynUserInfoTask
.super com/common/android/utils/task/genericTask/GenericTask
.inner class private SynUserInfoTask inner com/nd/android/u/contact/activity/XYGroupMemberActivity$SynUserInfoTask outer com/nd/android/u/contact/activity/XYGroupMemberActivity

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/XYGroupMemberActivity;

.method private <init>(Lcom/nd/android/u/contact/activity/XYGroupMemberActivity;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/XYGroupMemberActivity$SynUserInfoTask/this$0 Lcom/nd/android/u/contact/activity/XYGroupMemberActivity;
aload 0
invokespecial com/common/android/utils/task/genericTask/GenericTask/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/nd/android/u/contact/activity/XYGroupMemberActivity;Lcom/nd/android/u/contact/activity/XYGroupMemberActivity$1;)V
aload 0
aload 1
invokespecial com/nd/android/u/contact/activity/XYGroupMemberActivity$SynUserInfoTask/<init>(Lcom/nd/android/u/contact/activity/XYGroupMemberActivity;)V
return
.limit locals 3
.limit stack 2
.end method

.method protected transient _doInBackground([Lcom/common/android/utils/task/genericTask/TaskParams;)Lcom/common/android/utils/task/genericTask/TaskResult;
aload 0
getfield com/nd/android/u/contact/activity/XYGroupMemberActivity$SynUserInfoTask/this$0 Lcom/nd/android/u/contact/activity/XYGroupMemberActivity;
getfield com/nd/android/u/contact/activity/XYGroupMemberActivity/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/loadGroup()Z
ifne L0
getstatic com/common/android/utils/task/genericTask/TaskResult/FAILED Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
L0:
aload 0
getfield com/nd/android/u/contact/activity/XYGroupMemberActivity$SynUserInfoTask/this$0 Lcom/nd/android/u/contact/activity/XYGroupMemberActivity;
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
invokestatic com/nd/android/u/contact/activity/XYGroupMemberActivity/access$202(Lcom/nd/android/u/contact/activity/XYGroupMemberActivity;Ljava/util/List;)Ljava/util/List;
pop
aload 0
getfield com/nd/android/u/contact/activity/XYGroupMemberActivity$SynUserInfoTask/this$0 Lcom/nd/android/u/contact/activity/XYGroupMemberActivity;
getfield com/nd/android/u/contact/activity/XYGroupMemberActivity/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
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
getfield com/nd/android/u/contact/activity/XYGroupMemberActivity$SynUserInfoTask/this$0 Lcom/nd/android/u/contact/activity/XYGroupMemberActivity;
invokestatic com/nd/android/u/contact/activity/XYGroupMemberActivity/access$200(Lcom/nd/android/u/contact/activity/XYGroupMemberActivity;)Ljava/util/List;
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
goto L1
L2:
getstatic com/common/android/utils/task/genericTask/TaskResult/OK Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
.limit locals 2
.limit stack 3
.end method
