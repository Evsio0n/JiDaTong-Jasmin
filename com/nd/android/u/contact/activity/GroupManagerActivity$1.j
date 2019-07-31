.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/GroupManagerActivity$1
.super java/lang/Object
.implements com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupDataObserver
.enclosing method com/nd/android/u/contact/activity/GroupManagerActivity
.inner class inner com/nd/android/u/contact/activity/GroupManagerActivity$1

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/GroupManagerActivity;

.method <init>(Lcom/nd/android/u/contact/activity/GroupManagerActivity;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/GroupManagerActivity$1/this$0 Lcom/nd/android/u/contact/activity/GroupManagerActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onDataChanged(IJ)V
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity$1/this$0 Lcom/nd/android/u/contact/activity/GroupManagerActivity;
invokestatic com/nd/android/u/contact/activity/GroupManagerActivity/access$000(Lcom/nd/android/u/contact/activity/GroupManagerActivity;)Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
ifnull L0
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity$1/this$0 Lcom/nd/android/u/contact/activity/GroupManagerActivity;
invokestatic com/nd/android/u/contact/activity/GroupManagerActivity/access$100(Lcom/nd/android/u/contact/activity/GroupManagerActivity;)Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/getGID()J
lload 2
lcmp
ifeq L1
L0:
return
L1:
iload 1
sipush 1003
if_icmpne L2
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity$1/this$0 Lcom/nd/android/u/contact/activity/GroupManagerActivity;
getfield com/nd/android/u/contact/activity/GroupManagerActivity/handler Landroid/os/Handler;
sipush 1003
invokevirtual android/os/Handler/sendEmptyMessage(I)Z
pop
return
L2:
iload 1
sipush 1010
if_icmpne L0
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity$1/this$0 Lcom/nd/android/u/contact/activity/GroupManagerActivity;
iconst_0
invokestatic com/nd/android/u/contact/activity/GroupManagerActivity/access$200(Lcom/nd/android/u/contact/activity/GroupManagerActivity;Z)V
return
.limit locals 4
.limit stack 4
.end method
