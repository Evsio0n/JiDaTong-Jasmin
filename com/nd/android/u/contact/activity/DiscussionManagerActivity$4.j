.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/DiscussionManagerActivity$4
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/android/u/contact/activity/DiscussionManagerActivity/exitDisCussionGroup()V
.inner class inner com/nd/android/u/contact/activity/DiscussionManagerActivity$4

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/DiscussionManagerActivity;

.field final synthetic 'val$dialog' Lcom/nd/android/u/contact/dialog/CancelDeletGroupMemberDialog;

.method <init>(Lcom/nd/android/u/contact/activity/DiscussionManagerActivity;Lcom/nd/android/u/contact/dialog/CancelDeletGroupMemberDialog;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/DiscussionManagerActivity$4/this$0 Lcom/nd/android/u/contact/activity/DiscussionManagerActivity;
aload 0
aload 2
putfield com/nd/android/u/contact/activity/DiscussionManagerActivity$4/val$dialog Lcom/nd/android/u/contact/dialog/CancelDeletGroupMemberDialog;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 0
getfield com/nd/android/u/contact/activity/DiscussionManagerActivity$4/this$0 Lcom/nd/android/u/contact/activity/DiscussionManagerActivity;
invokestatic com/nd/android/u/contact/activity/DiscussionManagerActivity/access$900(Lcom/nd/android/u/contact/activity/DiscussionManagerActivity;)V
aload 0
getfield com/nd/android/u/contact/activity/DiscussionManagerActivity$4/val$dialog Lcom/nd/android/u/contact/dialog/CancelDeletGroupMemberDialog;
invokevirtual com/nd/android/u/contact/dialog/CancelDeletGroupMemberDialog/dismiss()V
return
.limit locals 2
.limit stack 1
.end method
