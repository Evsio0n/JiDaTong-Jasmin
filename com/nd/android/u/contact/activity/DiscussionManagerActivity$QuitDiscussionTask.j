.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/DiscussionManagerActivity$QuitDiscussionTask
.super com/common/android/utils/task/genericTask/GenericTask
.inner class private QuitDiscussionTask inner com/nd/android/u/contact/activity/DiscussionManagerActivity$QuitDiscussionTask outer com/nd/android/u/contact/activity/DiscussionManagerActivity

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/DiscussionManagerActivity;

.method private <init>(Lcom/nd/android/u/contact/activity/DiscussionManagerActivity;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/DiscussionManagerActivity$QuitDiscussionTask/this$0 Lcom/nd/android/u/contact/activity/DiscussionManagerActivity;
aload 0
invokespecial com/common/android/utils/task/genericTask/GenericTask/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/nd/android/u/contact/activity/DiscussionManagerActivity;Lcom/nd/android/u/contact/activity/DiscussionManagerActivity$1;)V
aload 0
aload 1
invokespecial com/nd/android/u/contact/activity/DiscussionManagerActivity$QuitDiscussionTask/<init>(Lcom/nd/android/u/contact/activity/DiscussionManagerActivity;)V
return
.limit locals 3
.limit stack 2
.end method

.method protected transient _doInBackground([Lcom/common/android/utils/task/genericTask/TaskParams;)Lcom/common/android/utils/task/genericTask/TaskResult;
aload 0
getfield com/nd/android/u/contact/activity/DiscussionManagerActivity$QuitDiscussionTask/this$0 Lcom/nd/android/u/contact/activity/DiscussionManagerActivity;
invokestatic com/nd/android/u/contact/activity/DiscussionManagerActivity/access$400(Lcom/nd/android/u/contact/activity/DiscussionManagerActivity;)Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/DiscussionGroup;
aload 0
getfield com/nd/android/u/contact/activity/DiscussionManagerActivity$QuitDiscussionTask/this$0 Lcom/nd/android/u/contact/activity/DiscussionManagerActivity;
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/DiscussionGroup/addGroupDataObserver(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupDataObserver;)V
aload 0
getfield com/nd/android/u/contact/activity/DiscussionManagerActivity$QuitDiscussionTask/this$0 Lcom/nd/android/u/contact/activity/DiscussionManagerActivity;
invokestatic com/nd/android/u/contact/activity/DiscussionManagerActivity/access$400(Lcom/nd/android/u/contact/activity/DiscussionManagerActivity;)Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/DiscussionGroup;
ldc ""
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/DiscussionGroup/quit(Ljava/lang/String;)Z
ifne L0
getstatic com/common/android/utils/task/genericTask/TaskResult/FAILED Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
L0:
getstatic com/common/android/utils/task/genericTask/TaskResult/OK Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
.limit locals 2
.limit stack 2
.end method
