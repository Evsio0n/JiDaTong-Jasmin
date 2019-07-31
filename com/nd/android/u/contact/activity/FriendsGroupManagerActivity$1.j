.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/FriendsGroupManagerActivity$1
.super java/lang/Object
.implements android/widget/AdapterView$OnItemClickListener
.enclosing method com/nd/android/u/contact/activity/FriendsGroupManagerActivity/initComponentValue()V
.inner class inner com/nd/android/u/contact/activity/FriendsGroupManagerActivity$1

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/FriendsGroupManagerActivity;

.method <init>(Lcom/nd/android/u/contact/activity/FriendsGroupManagerActivity;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/FriendsGroupManagerActivity$1/this$0 Lcom/nd/android/u/contact/activity/FriendsGroupManagerActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.signature "(Landroid/widget/AdapterView<*>;Landroid/view/View;IJ)V"
aload 0
getfield com/nd/android/u/contact/activity/FriendsGroupManagerActivity$1/this$0 Lcom/nd/android/u/contact/activity/FriendsGroupManagerActivity;
iload 3
invokestatic com/nd/android/u/contact/activity/FriendsGroupManagerActivity/access$102(Lcom/nd/android/u/contact/activity/FriendsGroupManagerActivity;I)I
pop
aload 0
getfield com/nd/android/u/contact/activity/FriendsGroupManagerActivity$1/this$0 Lcom/nd/android/u/contact/activity/FriendsGroupManagerActivity;
invokestatic com/nd/android/u/contact/activity/FriendsGroupManagerActivity/access$200(Lcom/nd/android/u/contact/activity/FriendsGroupManagerActivity;)Lcom/nd/android/u/contact/activity/FriendsGroupManagerActivity$FriendGroupAdapter;
invokevirtual com/nd/android/u/contact/activity/FriendsGroupManagerActivity$FriendGroupAdapter/notifyDataSetChanged()V
return
.limit locals 6
.limit stack 2
.end method
