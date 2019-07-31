.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/GroupManagerActivity2$3
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/android/u/contact/activity/GroupManagerActivity2/showCustomDialog()V
.inner class inner com/nd/android/u/contact/activity/GroupManagerActivity2$3

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/GroupManagerActivity2;

.field final synthetic 'val$dialog' Lcom/nd/android/u/contact/dialog/XYAddGroupSetSingleChoiseDialog;

.method <init>(Lcom/nd/android/u/contact/activity/GroupManagerActivity2;Lcom/nd/android/u/contact/dialog/XYAddGroupSetSingleChoiseDialog;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/GroupManagerActivity2$3/this$0 Lcom/nd/android/u/contact/activity/GroupManagerActivity2;
aload 0
aload 2
putfield com/nd/android/u/contact/activity/GroupManagerActivity2$3/val$dialog Lcom/nd/android/u/contact/dialog/XYAddGroupSetSingleChoiseDialog;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2$3/this$0 Lcom/nd/android/u/contact/activity/GroupManagerActivity2;
invokestatic com/nd/android/u/contact/activity/GroupManagerActivity2/access$3000(Lcom/nd/android/u/contact/activity/GroupManagerActivity2;)Lcom/product/android/commonInterface/contact/OapGroup;
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2$3/this$0 Lcom/nd/android/u/contact/activity/GroupManagerActivity2;
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/tempPerm I
invokevirtual com/product/android/commonInterface/contact/OapGroup/setJoinperm(I)V
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2$3/this$0 Lcom/nd/android/u/contact/activity/GroupManagerActivity2;
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2$3/this$0 Lcom/nd/android/u/contact/activity/GroupManagerActivity2;
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/tempPerm I
invokestatic com/nd/android/u/contact/activity/GroupManagerActivity2/access$3100(Lcom/nd/android/u/contact/activity/GroupManagerActivity2;I)V
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2$3/val$dialog Lcom/nd/android/u/contact/dialog/XYAddGroupSetSingleChoiseDialog;
invokevirtual com/nd/android/u/contact/dialog/XYAddGroupSetSingleChoiseDialog/dismiss()V
return
.limit locals 2
.limit stack 2
.end method
