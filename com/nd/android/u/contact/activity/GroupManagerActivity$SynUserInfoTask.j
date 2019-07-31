.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/GroupManagerActivity$SynUserInfoTask
.super com/common/android/utils/task/genericTask/GenericTask
.inner class private SynUserInfoTask inner com/nd/android/u/contact/activity/GroupManagerActivity$SynUserInfoTask outer com/nd/android/u/contact/activity/GroupManagerActivity

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/GroupManagerActivity;

.method private <init>(Lcom/nd/android/u/contact/activity/GroupManagerActivity;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/GroupManagerActivity$SynUserInfoTask/this$0 Lcom/nd/android/u/contact/activity/GroupManagerActivity;
aload 0
invokespecial com/common/android/utils/task/genericTask/GenericTask/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/nd/android/u/contact/activity/GroupManagerActivity;Lcom/nd/android/u/contact/activity/GroupManagerActivity$1;)V
aload 0
aload 1
invokespecial com/nd/android/u/contact/activity/GroupManagerActivity$SynUserInfoTask/<init>(Lcom/nd/android/u/contact/activity/GroupManagerActivity;)V
return
.limit locals 3
.limit stack 2
.end method

.method protected transient _doInBackground([Lcom/common/android/utils/task/genericTask/TaskParams;)Lcom/common/android/utils/task/genericTask/TaskResult;
lconst_0
lstore 4
lload 4
lstore 2
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity$SynUserInfoTask/this$0 Lcom/nd/android/u/contact/activity/GroupManagerActivity;
invokestatic com/nd/android/u/contact/activity/GroupManagerActivity/access$3800(Lcom/nd/android/u/contact/activity/GroupManagerActivity;)Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/getType()I
tableswitch 0
L0
L1
L2
L3
L4
default : L5
L5:
lload 4
lstore 2
L3:
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity$SynUserInfoTask/this$0 Lcom/nd/android/u/contact/activity/GroupManagerActivity;
invokestatic com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory/getInstance()Lcom/nd/android/u/contact/business_new/Controller/ContactOperatorFactory;
invokestatic com/nd/android/u/contact/business_new/ProcesssImpl/ProductLoaderImpl/XYGroupLoader/getInstance()Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/LoaderInterface/IGroupLoader;
invokevirtual com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory/getGroupOperator(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/LoaderInterface/IGroupLoader;)Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/IGroupOperator;
lload 2
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/IGroupOperator/getGroup(J)Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup; 2
checkcast com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup
invokestatic com/nd/android/u/contact/activity/GroupManagerActivity/access$4302(Lcom/nd/android/u/contact/activity/GroupManagerActivity;Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;)Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
pop
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity$SynUserInfoTask/this$0 Lcom/nd/android/u/contact/activity/GroupManagerActivity;
invokestatic com/nd/android/u/contact/activity/GroupManagerActivity/access$4400(Lcom/nd/android/u/contact/activity/GroupManagerActivity;)Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
ifnonnull L6
getstatic com/common/android/utils/task/genericTask/TaskResult/FAILED Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
L0:
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity$SynUserInfoTask/this$0 Lcom/nd/android/u/contact/activity/GroupManagerActivity;
invokestatic com/nd/android/u/contact/activity/GroupManagerActivity/access$3900(Lcom/nd/android/u/contact/activity/GroupManagerActivity;)J
lstore 2
goto L3
L1:
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity$SynUserInfoTask/this$0 Lcom/nd/android/u/contact/activity/GroupManagerActivity;
invokestatic com/nd/android/u/contact/activity/GroupManagerActivity/access$4000(Lcom/nd/android/u/contact/activity/GroupManagerActivity;)J
lstore 2
goto L3
L2:
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity$SynUserInfoTask/this$0 Lcom/nd/android/u/contact/activity/GroupManagerActivity;
invokestatic com/nd/android/u/contact/activity/GroupManagerActivity/access$4100(Lcom/nd/android/u/contact/activity/GroupManagerActivity;)J
lstore 2
goto L3
L4:
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity$SynUserInfoTask/this$0 Lcom/nd/android/u/contact/activity/GroupManagerActivity;
invokestatic com/nd/android/u/contact/activity/GroupManagerActivity/access$4200(Lcom/nd/android/u/contact/activity/GroupManagerActivity;)J
lstore 2
goto L3
L6:
getstatic com/common/android/utils/task/genericTask/TaskResult/OK Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
.limit locals 6
.limit stack 4
.end method
