.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/DiscussionManagerActivity$SynDiscussionInfoTask
.super com/common/android/utils/task/genericTask/GenericTask
.inner class private SynDiscussionInfoTask inner com/nd/android/u/contact/activity/DiscussionManagerActivity$SynDiscussionInfoTask outer com/nd/android/u/contact/activity/DiscussionManagerActivity

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/DiscussionManagerActivity;

.method private <init>(Lcom/nd/android/u/contact/activity/DiscussionManagerActivity;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/DiscussionManagerActivity$SynDiscussionInfoTask/this$0 Lcom/nd/android/u/contact/activity/DiscussionManagerActivity;
aload 0
invokespecial com/common/android/utils/task/genericTask/GenericTask/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/nd/android/u/contact/activity/DiscussionManagerActivity;Lcom/nd/android/u/contact/activity/DiscussionManagerActivity$1;)V
aload 0
aload 1
invokespecial com/nd/android/u/contact/activity/DiscussionManagerActivity$SynDiscussionInfoTask/<init>(Lcom/nd/android/u/contact/activity/DiscussionManagerActivity;)V
return
.limit locals 3
.limit stack 2
.end method

.method protected transient _doInBackground([Lcom/common/android/utils/task/genericTask/TaskParams;)Lcom/common/android/utils/task/genericTask/TaskResult;
aload 0
getfield com/nd/android/u/contact/activity/DiscussionManagerActivity$SynDiscussionInfoTask/this$0 Lcom/nd/android/u/contact/activity/DiscussionManagerActivity;
invokestatic com/nd/android/u/contact/activity/DiscussionManagerActivity/access$400(Lcom/nd/android/u/contact/activity/DiscussionManagerActivity;)Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/DiscussionGroup;
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/DiscussionGroup/loadGroup()Z
ifeq L0
aload 0
getfield com/nd/android/u/contact/activity/DiscussionManagerActivity$SynDiscussionInfoTask/this$0 Lcom/nd/android/u/contact/activity/DiscussionManagerActivity;
invokestatic com/nd/android/u/contact/activity/DiscussionManagerActivity/access$400(Lcom/nd/android/u/contact/activity/DiscussionManagerActivity;)Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/DiscussionGroup;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/DiscussionGroup/isMember(J)Z
ifne L1
invokestatic com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/GroupSubjectImpl/getInstance()Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/GroupSubjectImpl;
sipush 2001
aload 0
getfield com/nd/android/u/contact/activity/DiscussionManagerActivity$SynDiscussionInfoTask/this$0 Lcom/nd/android/u/contact/activity/DiscussionManagerActivity;
invokestatic com/nd/android/u/contact/activity/DiscussionManagerActivity/access$300(Lcom/nd/android/u/contact/activity/DiscussionManagerActivity;)J
aload 0
getfield com/nd/android/u/contact/activity/DiscussionManagerActivity$SynDiscussionInfoTask/this$0 Lcom/nd/android/u/contact/activity/DiscussionManagerActivity;
invokestatic com/nd/android/u/contact/activity/DiscussionManagerActivity/access$400(Lcom/nd/android/u/contact/activity/DiscussionManagerActivity;)Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/DiscussionGroup;
invokevirtual com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/GroupSubjectImpl/notifyGroupState(IJLcom/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup;)V
L1:
getstatic com/common/android/utils/task/genericTask/TaskResult/OK Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
L0:
getstatic com/common/android/utils/task/genericTask/TaskResult/FAILED Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
.limit locals 2
.limit stack 5
.end method
