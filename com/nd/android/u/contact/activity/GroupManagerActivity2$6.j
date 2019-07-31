.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/GroupManagerActivity2$6
.super java/lang/Object
.implements android/content/DialogInterface$OnClickListener
.enclosing method com/nd/android/u/contact/activity/GroupManagerActivity2/showSystemDiaog()V
.inner class inner com/nd/android/u/contact/activity/GroupManagerActivity2$6

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/GroupManagerActivity2;

.method <init>(Lcom/nd/android/u/contact/activity/GroupManagerActivity2;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/GroupManagerActivity2$6/this$0 Lcom/nd/android/u/contact/activity/GroupManagerActivity2;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2$6/this$0 Lcom/nd/android/u/contact/activity/GroupManagerActivity2;
iload 2
invokestatic com/nd/android/u/contact/activity/GroupManagerActivity2/access$3100(Lcom/nd/android/u/contact/activity/GroupManagerActivity2;I)V
aload 1
invokeinterface android/content/DialogInterface/cancel()V 0
return
.limit locals 3
.limit stack 2
.end method
