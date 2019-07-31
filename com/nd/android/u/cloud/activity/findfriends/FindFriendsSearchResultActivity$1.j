.bytecode 50.0
.class synchronized com/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity$1
.super java/lang/Object
.implements android/widget/AdapterView$OnItemClickListener
.enclosing method com/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity/initComponentValue()V
.inner class inner com/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity$1

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity;

.method <init>(Lcom/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity$1/this$0 Lcom/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.signature "(Landroid/widget/AdapterView<*>;Landroid/view/View;IJ)V"
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity$1/this$0 Lcom/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity;
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity$1/this$0 Lcom/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity;
invokestatic com/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity/access$000(Lcom/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity;)Ljava/util/List;
iload 3
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/cloud/bean/friendRcmmnd/FriendSearchResult
getfield com/nd/android/u/cloud/bean/friendRcmmnd/FriendSearchResult/uid J
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity$1/this$0 Lcom/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity;
invokestatic com/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity/access$100(Lcom/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity;)I
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel$WeiboEntry/toTweetProfileActivity(Landroid/content/Context;JI)V
return
.limit locals 6
.limit stack 4
.end method
