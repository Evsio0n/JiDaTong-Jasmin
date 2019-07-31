.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/GroupManagerActivity$8
.super java/lang/Object
.implements android/content/DialogInterface$OnClickListener
.enclosing method com/nd/android/u/contact/activity/GroupManagerActivity/showSystemDiaog()V
.inner class inner com/nd/android/u/contact/activity/GroupManagerActivity$8

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/GroupManagerActivity;

.method <init>(Lcom/nd/android/u/contact/activity/GroupManagerActivity;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/GroupManagerActivity$8/this$0 Lcom/nd/android/u/contact/activity/GroupManagerActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity$8/this$0 Lcom/nd/android/u/contact/activity/GroupManagerActivity;
iload 2
invokestatic com/nd/android/u/contact/activity/GroupManagerActivity/access$3700(Lcom/nd/android/u/contact/activity/GroupManagerActivity;I)V
aload 1
invokeinterface android/content/DialogInterface/cancel()V 0
return
.limit locals 3
.limit stack 2
.end method
