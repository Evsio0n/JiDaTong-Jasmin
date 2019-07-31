.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/GroupManagerActivity$9
.super java/lang/Object
.implements com/nd/android/u/contact/cache/ProfileUserCacheCallback
.enclosing method com/nd/android/u/contact/activity/GroupManagerActivity/initComponentValue()V
.inner class inner com/nd/android/u/contact/activity/GroupManagerActivity$9

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/GroupManagerActivity;

.method <init>(Lcom/nd/android/u/contact/activity/GroupManagerActivity;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/GroupManagerActivity$9/this$0 Lcom/nd/android/u/contact/activity/GroupManagerActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public refresh(Lcom/product/android/commonInterface/contact/OapUser;)V
aload 1
ifnull L0
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity$9/this$0 Lcom/nd/android/u/contact/activity/GroupManagerActivity;
getfield com/nd/android/u/contact/activity/GroupManagerActivity/groupManagerText Landroid/widget/TextView;
aload 1
invokevirtual com/product/android/commonInterface/contact/OapUser/getUserName()Ljava/lang/String;
invokestatic com/common/android/utils/StringUtils/getFliteStr(Ljava/lang/String;)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L0:
return
.limit locals 2
.limit stack 2
.end method
