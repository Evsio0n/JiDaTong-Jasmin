.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/GroupManagerActivity2$4
.super java/lang/Object
.implements android/widget/RadioGroup$OnCheckedChangeListener
.enclosing method com/nd/android/u/contact/activity/GroupManagerActivity2/showCustomDialog()V
.inner class inner com/nd/android/u/contact/activity/GroupManagerActivity2$4

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/GroupManagerActivity2;

.method <init>(Lcom/nd/android/u/contact/activity/GroupManagerActivity2;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/GroupManagerActivity2$4/this$0 Lcom/nd/android/u/contact/activity/GroupManagerActivity2;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2$4/this$0 Lcom/nd/android/u/contact/activity/GroupManagerActivity2;
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/tempPerm I
iload 2
if_icmpeq L0
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2$4/this$0 Lcom/nd/android/u/contact/activity/GroupManagerActivity2;
iload 2
putfield com/nd/android/u/contact/activity/GroupManagerActivity2/tempPerm I
L0:
return
.limit locals 3
.limit stack 2
.end method
