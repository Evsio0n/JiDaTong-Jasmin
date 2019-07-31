.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/XYNewSelectUserActivity$AddDiscussionMemberTask
.super com/common/android/utils/task/genericTask/GenericTask
.inner class private AddDiscussionMemberTask inner com/nd/android/u/contact/activity/XYNewSelectUserActivity$AddDiscussionMemberTask outer com/nd/android/u/contact/activity/XYNewSelectUserActivity

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/XYNewSelectUserActivity;

.method private <init>(Lcom/nd/android/u/contact/activity/XYNewSelectUserActivity;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/XYNewSelectUserActivity$AddDiscussionMemberTask/this$0 Lcom/nd/android/u/contact/activity/XYNewSelectUserActivity;
aload 0
invokespecial com/common/android/utils/task/genericTask/GenericTask/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/nd/android/u/contact/activity/XYNewSelectUserActivity;Lcom/nd/android/u/contact/activity/XYNewSelectUserActivity$1;)V
aload 0
aload 1
invokespecial com/nd/android/u/contact/activity/XYNewSelectUserActivity$AddDiscussionMemberTask/<init>(Lcom/nd/android/u/contact/activity/XYNewSelectUserActivity;)V
return
.limit locals 3
.limit stack 2
.end method

.method protected transient _doInBackground([Lcom/common/android/utils/task/genericTask/TaskParams;)Lcom/common/android/utils/task/genericTask/TaskResult;
invokestatic com/nd/android/u/contact/dataStructure/SelectedMemberQueue/getInstance()Lcom/nd/android/u/contact/dataStructure/SelectedMemberQueue;
invokevirtual com/nd/android/u/contact/dataStructure/SelectedMemberQueue/getList()Ljava/util/ArrayList;
astore 1
aload 0
getfield com/nd/android/u/contact/activity/XYNewSelectUserActivity$AddDiscussionMemberTask/this$0 Lcom/nd/android/u/contact/activity/XYNewSelectUserActivity;
invokestatic com/nd/android/u/contact/activity/XYNewSelectUserActivity/access$400(Lcom/nd/android/u/contact/activity/XYNewSelectUserActivity;)Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
aload 0
getfield com/nd/android/u/contact/activity/XYNewSelectUserActivity$AddDiscussionMemberTask/this$0 Lcom/nd/android/u/contact/activity/XYNewSelectUserActivity;
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/addGroupDataObserver(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupDataObserver;)V
aload 0
getfield com/nd/android/u/contact/activity/XYNewSelectUserActivity$AddDiscussionMemberTask/this$0 Lcom/nd/android/u/contact/activity/XYNewSelectUserActivity;
invokestatic com/nd/android/u/contact/activity/XYNewSelectUserActivity/access$400(Lcom/nd/android/u/contact/activity/XYNewSelectUserActivity;)Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
ldc ""
aload 1
invokevirtual java/util/ArrayList/iterator()Ljava/util/Iterator;
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/addMember(Ljava/lang/String;Ljava/util/Iterator;)Z
ifne L0
getstatic com/common/android/utils/task/genericTask/TaskResult/FAILED Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
L0:
getstatic com/common/android/utils/task/genericTask/TaskResult/OK Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
.limit locals 2
.limit stack 3
.end method
