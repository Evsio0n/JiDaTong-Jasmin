.bytecode 50.0
.class synchronized com/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity$2
.super java/lang/Object
.implements android/widget/AbsListView$OnScrollListener
.enclosing method com/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity/initComponentValue()V
.inner class inner com/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity$2

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity;

.method <init>(Lcom/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity$2/this$0 Lcom/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
return
.limit locals 5
.limit stack 0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
iload 2
tableswitch 0
L0
default : L1
L1:
return
L0:
aload 1
invokevirtual android/widget/AbsListView/getLastVisiblePosition()I
aload 1
invokevirtual android/widget/AbsListView/getCount()I
iconst_1
isub
if_icmpne L1
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity$2/this$0 Lcom/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity;
invokestatic com/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity/access$200(Lcom/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity;)Z
ifeq L1
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity$2/this$0 Lcom/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity;
invokestatic com/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity/access$300(Lcom/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity;)Landroid/view/View;
iconst_0
invokevirtual android/view/View/setVisibility(I)V
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity$2/this$0 Lcom/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity;
new com/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity$GetMorFriendsListTask
dup
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity$2/this$0 Lcom/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity;
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity$2/this$0 Lcom/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity;
invokestatic com/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity/access$500(Lcom/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity;)Lcom/nd/android/u/cloud/ui/adapter/findfriends/FindFriendsFriendAdapter;
invokevirtual com/nd/android/u/cloud/ui/adapter/findfriends/FindFriendsFriendAdapter/getCount()I
bipush 20
idiv
iconst_1
iadd
invokespecial com/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity$GetMorFriendsListTask/<init>(Lcom/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity;I)V
invokestatic com/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity/access$402(Lcom/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity;Lcom/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity$GetMorFriendsListTask;)Lcom/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity$GetMorFriendsListTask;
pop
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity$2/this$0 Lcom/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity;
invokestatic com/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity/access$400(Lcom/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity;)Lcom/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity$GetMorFriendsListTask;
iconst_0
anewarray java/lang/Void
invokevirtual com/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity$GetMorFriendsListTask/execute([Ljava/lang/Object;)Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;
pop
return
.limit locals 3
.limit stack 6
.end method
