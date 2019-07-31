.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/DiscussionManagerActivity$1
.super android/os/Handler
.enclosing method com/nd/android/u/contact/activity/DiscussionManagerActivity
.inner class inner com/nd/android/u/contact/activity/DiscussionManagerActivity$1

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/DiscussionManagerActivity;

.method <init>(Lcom/nd/android/u/contact/activity/DiscussionManagerActivity;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/DiscussionManagerActivity$1/this$0 Lcom/nd/android/u/contact/activity/DiscussionManagerActivity;
aload 0
invokespecial android/os/Handler/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public handleMessage(Landroid/os/Message;)V
aload 1
getfield android/os/Message/what I
tableswitch 1001
L0
default : L1
L1:
aload 0
aload 1
invokespecial android/os/Handler/handleMessage(Landroid/os/Message;)V
return
L0:
aload 0
getfield com/nd/android/u/contact/activity/DiscussionManagerActivity$1/this$0 Lcom/nd/android/u/contact/activity/DiscussionManagerActivity;
invokestatic com/nd/android/u/contact/activity/DiscussionManagerActivity/access$000(Lcom/nd/android/u/contact/activity/DiscussionManagerActivity;)Lcom/nd/android/u/contact/adapter/DiscussionMemberFaceAdapter;
ifnull L1
aload 0
getfield com/nd/android/u/contact/activity/DiscussionManagerActivity$1/this$0 Lcom/nd/android/u/contact/activity/DiscussionManagerActivity;
invokestatic com/nd/android/u/contact/activity/DiscussionManagerActivity/access$000(Lcom/nd/android/u/contact/activity/DiscussionManagerActivity;)Lcom/nd/android/u/contact/adapter/DiscussionMemberFaceAdapter;
invokevirtual com/nd/android/u/contact/adapter/DiscussionMemberFaceAdapter/notifyDataSetChanged()V
goto L1
.limit locals 2
.limit stack 2
.end method
