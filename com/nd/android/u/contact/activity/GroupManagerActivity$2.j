.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/GroupManagerActivity$2
.super android/os/Handler
.enclosing method com/nd/android/u/contact/activity/GroupManagerActivity
.inner class inner com/nd/android/u/contact/activity/GroupManagerActivity$2

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/GroupManagerActivity;

.method <init>(Lcom/nd/android/u/contact/activity/GroupManagerActivity;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/GroupManagerActivity$2/this$0 Lcom/nd/android/u/contact/activity/GroupManagerActivity;
aload 0
invokespecial android/os/Handler/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public handleMessage(Landroid/os/Message;)V
aload 1
getfield android/os/Message/what I
tableswitch 1003
L0
default : L1
L1:
aload 0
aload 1
invokespecial android/os/Handler/handleMessage(Landroid/os/Message;)V
return
L0:
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity$2/this$0 Lcom/nd/android/u/contact/activity/GroupManagerActivity;
getstatic com/nd/android/u/contact/R$id/group_text_joinperm I
invokevirtual com/nd/android/u/contact/activity/GroupManagerActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity$2/this$0 Lcom/nd/android/u/contact/activity/GroupManagerActivity;
invokestatic com/nd/android/u/contact/activity/GroupManagerActivity/access$300(Lcom/nd/android/u/contact/activity/GroupManagerActivity;)Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/getPermissionDescription()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity$2/this$0 Lcom/nd/android/u/contact/activity/GroupManagerActivity;
invokestatic com/nd/android/u/contact/activity/GroupManagerActivity/access$400(Lcom/nd/android/u/contact/activity/GroupManagerActivity;)Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
ifnull L1
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity$2/this$0 Lcom/nd/android/u/contact/activity/GroupManagerActivity;
invokestatic com/nd/android/u/contact/activity/GroupManagerActivity/access$500(Lcom/nd/android/u/contact/activity/GroupManagerActivity;)Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/isManager(J)Z
ifeq L1
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity$2/this$0 Lcom/nd/android/u/contact/activity/GroupManagerActivity;
getstatic com/nd/android/u/contact/R$string/modify_discussion_success I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
goto L1
.limit locals 2
.limit stack 3
.end method
