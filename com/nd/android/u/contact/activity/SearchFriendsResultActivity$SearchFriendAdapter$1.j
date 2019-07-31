.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/SearchFriendsResultActivity$SearchFriendAdapter$1
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/android/u/contact/activity/SearchFriendsResultActivity$SearchFriendAdapter/getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.inner class private SearchFriendAdapter inner com/nd/android/u/contact/activity/SearchFriendsResultActivity$SearchFriendAdapter outer com/nd/android/u/contact/activity/SearchFriendsResultActivity
.inner class inner com/nd/android/u/contact/activity/SearchFriendsResultActivity$SearchFriendAdapter$1

.field final synthetic 'this$1' Lcom/nd/android/u/contact/activity/SearchFriendsResultActivity$SearchFriendAdapter;

.field final synthetic 'val$position' I

.method <init>(Lcom/nd/android/u/contact/activity/SearchFriendsResultActivity$SearchFriendAdapter;I)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/SearchFriendsResultActivity$SearchFriendAdapter$1/this$1 Lcom/nd/android/u/contact/activity/SearchFriendsResultActivity$SearchFriendAdapter;
aload 0
iload 2
putfield com/nd/android/u/contact/activity/SearchFriendsResultActivity$SearchFriendAdapter$1/val$position I
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 0
getfield com/nd/android/u/contact/activity/SearchFriendsResultActivity$SearchFriendAdapter$1/this$1 Lcom/nd/android/u/contact/activity/SearchFriendsResultActivity$SearchFriendAdapter;
aload 0
getfield com/nd/android/u/contact/activity/SearchFriendsResultActivity$SearchFriendAdapter$1/val$position I
invokevirtual com/nd/android/u/contact/activity/SearchFriendsResultActivity$SearchFriendAdapter/changFriendState(I)V
return
.limit locals 2
.limit stack 2
.end method
