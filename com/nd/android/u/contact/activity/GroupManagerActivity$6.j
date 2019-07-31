.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/GroupManagerActivity$6
.super java/lang/Object
.implements android/widget/RadioGroup$OnCheckedChangeListener
.enclosing method com/nd/android/u/contact/activity/GroupManagerActivity/showCustomDialog()V
.inner class inner com/nd/android/u/contact/activity/GroupManagerActivity$6

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/GroupManagerActivity;

.method <init>(Lcom/nd/android/u/contact/activity/GroupManagerActivity;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/GroupManagerActivity$6/this$0 Lcom/nd/android/u/contact/activity/GroupManagerActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity$6/this$0 Lcom/nd/android/u/contact/activity/GroupManagerActivity;
getfield com/nd/android/u/contact/activity/GroupManagerActivity/tempPerm I
iload 2
if_icmpeq L0
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity$6/this$0 Lcom/nd/android/u/contact/activity/GroupManagerActivity;
iload 2
putfield com/nd/android/u/contact/activity/GroupManagerActivity/tempPerm I
L0:
return
.limit locals 3
.limit stack 2
.end method
