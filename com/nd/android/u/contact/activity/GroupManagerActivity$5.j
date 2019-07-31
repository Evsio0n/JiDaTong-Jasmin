.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/GroupManagerActivity$5
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/android/u/contact/activity/GroupManagerActivity/showCustomDialog()V
.inner class inner com/nd/android/u/contact/activity/GroupManagerActivity$5

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/GroupManagerActivity;

.field final synthetic 'val$dialog' Lcom/nd/android/u/contact/dialog/XYAddGroupSetSingleChoiseDialog;

.method <init>(Lcom/nd/android/u/contact/activity/GroupManagerActivity;Lcom/nd/android/u/contact/dialog/XYAddGroupSetSingleChoiseDialog;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/GroupManagerActivity$5/this$0 Lcom/nd/android/u/contact/activity/GroupManagerActivity;
aload 0
aload 2
putfield com/nd/android/u/contact/activity/GroupManagerActivity$5/val$dialog Lcom/nd/android/u/contact/dialog/XYAddGroupSetSingleChoiseDialog;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity$5/this$0 Lcom/nd/android/u/contact/activity/GroupManagerActivity;
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity$5/this$0 Lcom/nd/android/u/contact/activity/GroupManagerActivity;
getfield com/nd/android/u/contact/activity/GroupManagerActivity/tempPerm I
invokestatic com/nd/android/u/contact/activity/GroupManagerActivity/access$3700(Lcom/nd/android/u/contact/activity/GroupManagerActivity;I)V
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity$5/val$dialog Lcom/nd/android/u/contact/dialog/XYAddGroupSetSingleChoiseDialog;
invokevirtual com/nd/android/u/contact/dialog/XYAddGroupSetSingleChoiseDialog/dismiss()V
return
.limit locals 2
.limit stack 2
.end method
