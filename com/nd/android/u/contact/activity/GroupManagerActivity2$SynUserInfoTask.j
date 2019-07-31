.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/GroupManagerActivity2$SynUserInfoTask
.super com/common/android/utils/task/genericTask/GenericTask
.inner class private SynUserInfoTask inner com/nd/android/u/contact/activity/GroupManagerActivity2$SynUserInfoTask outer com/nd/android/u/contact/activity/GroupManagerActivity2

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/GroupManagerActivity2;

.method private <init>(Lcom/nd/android/u/contact/activity/GroupManagerActivity2;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/GroupManagerActivity2$SynUserInfoTask/this$0 Lcom/nd/android/u/contact/activity/GroupManagerActivity2;
aload 0
invokespecial com/common/android/utils/task/genericTask/GenericTask/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/nd/android/u/contact/activity/GroupManagerActivity2;Lcom/nd/android/u/contact/activity/GroupManagerActivity2$1;)V
aload 0
aload 1
invokespecial com/nd/android/u/contact/activity/GroupManagerActivity2$SynUserInfoTask/<init>(Lcom/nd/android/u/contact/activity/GroupManagerActivity2;)V
return
.limit locals 3
.limit stack 2
.end method

.method protected transient _doInBackground([Lcom/common/android/utils/task/genericTask/TaskParams;)Lcom/common/android/utils/task/genericTask/TaskResult;
invokestatic com/nd/android/u/contact/business/SynOapGroupPro/getInstance()Lcom/nd/android/u/contact/business/SynOapGroupPro;
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2$SynUserInfoTask/this$0 Lcom/nd/android/u/contact/activity/GroupManagerActivity2;
invokestatic com/nd/android/u/contact/activity/GroupManagerActivity2/access$3200(Lcom/nd/android/u/contact/activity/GroupManagerActivity2;)J
invokevirtual com/nd/android/u/contact/business/SynOapGroupPro/getGroupInfoByGid(J)Lcom/product/android/commonInterface/contact/OapGroup;
astore 1
aload 1
ifnull L0
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2$SynUserInfoTask/this$0 Lcom/nd/android/u/contact/activity/GroupManagerActivity2;
invokestatic com/nd/android/u/contact/activity/GroupManagerActivity2/access$3300(Lcom/nd/android/u/contact/activity/GroupManagerActivity2;)Lcom/product/android/commonInterface/contact/OapGroup;
aload 1
invokevirtual com/product/android/commonInterface/contact/OapGroup/copyByOtherGroup(Lcom/product/android/commonInterface/contact/OapGroup;)V
L0:
getstatic com/common/android/utils/task/genericTask/TaskResult/OK Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
.limit locals 2
.limit stack 3
.end method
