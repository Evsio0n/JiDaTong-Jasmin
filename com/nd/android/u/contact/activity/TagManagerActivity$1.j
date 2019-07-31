.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/TagManagerActivity$1
.super java/lang/Object
.implements com/common/android/ui/flowIndicator/ViewFlow$ViewSwitchListener
.enclosing method com/nd/android/u/contact/activity/TagManagerActivity/initComponent()V
.inner class inner com/nd/android/u/contact/activity/TagManagerActivity$1

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/TagManagerActivity;

.method <init>(Lcom/nd/android/u/contact/activity/TagManagerActivity;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/TagManagerActivity$1/this$0 Lcom/nd/android/u/contact/activity/TagManagerActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onSwitched(Landroid/view/View;I)V
aload 0
getfield com/nd/android/u/contact/activity/TagManagerActivity$1/this$0 Lcom/nd/android/u/contact/activity/TagManagerActivity;
invokestatic com/nd/android/u/contact/activity/TagManagerActivity/access$000(Lcom/nd/android/u/contact/activity/TagManagerActivity;)Landroid/os/Handler;
sipush 200
iload 2
iconst_0
invokevirtual android/os/Handler/obtainMessage(III)Landroid/os/Message;
astore 1
aload 0
getfield com/nd/android/u/contact/activity/TagManagerActivity$1/this$0 Lcom/nd/android/u/contact/activity/TagManagerActivity;
invokestatic com/nd/android/u/contact/activity/TagManagerActivity/access$000(Lcom/nd/android/u/contact/activity/TagManagerActivity;)Landroid/os/Handler;
aload 1
invokevirtual android/os/Handler/sendMessage(Landroid/os/Message;)Z
pop
return
.limit locals 3
.limit stack 4
.end method
