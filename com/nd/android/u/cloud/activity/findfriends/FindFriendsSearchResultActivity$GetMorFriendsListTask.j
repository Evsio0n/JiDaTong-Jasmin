.bytecode 50.0
.class synchronized com/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity$GetMorFriendsListTask
.super com/common/android/utils/concurrent/NdTinyHttpAsyncTask
.signature "Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/util/List<Lcom/nd/android/u/cloud/bean/friendRcmmnd/FriendSearchResult;>;>;"
.inner class private GetMorFriendsListTask inner com/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity$GetMorFriendsListTask outer com/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity

.field private 'mPage' I

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity;

.method public <init>(Lcom/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity;I)V
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity$GetMorFriendsListTask/this$0 Lcom/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity;
aload 0
invokespecial com/common/android/utils/concurrent/NdTinyHttpAsyncTask/<init>()V
aload 0
iload 2
putfield com/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity$GetMorFriendsListTask/mPage I
aload 1
iconst_0
invokestatic com/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity/access$202(Lcom/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity;Z)Z
pop
return
.limit locals 3
.limit stack 2
.end method

.method protected volatile synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
aload 0
aload 1
checkcast [Ljava/lang/Void;
invokevirtual com/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity$GetMorFriendsListTask/doInBackground([Ljava/lang/Void;)Ljava/util/List;
areturn
.limit locals 2
.limit stack 2
.end method

.method protected transient doInBackground([Ljava/lang/Void;)Ljava/util/List;
.signature "([Ljava/lang/Void;)Ljava/util/List<Lcom/nd/android/u/cloud/bean/friendRcmmnd/FriendSearchResult;>;"
new com/nd/android/u/cloud/com/OapFriendRecommendCom
dup
invokespecial com/nd/android/u/cloud/com/OapFriendRecommendCom/<init>()V
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity$GetMorFriendsListTask/this$0 Lcom/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity;
invokestatic com/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity/access$600(Lcom/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity;)I
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity$GetMorFriendsListTask/this$0 Lcom/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity;
invokestatic com/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity/access$700(Lcom/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity;)Ljava/lang/String;
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity$GetMorFriendsListTask/this$0 Lcom/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity;
invokestatic com/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity/access$800(Lcom/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity;)Ljava/lang/String;
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity$GetMorFriendsListTask/this$0 Lcom/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity;
invokestatic com/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity/access$900(Lcom/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity;)Ljava/lang/String;
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity$GetMorFriendsListTask/this$0 Lcom/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity;
invokestatic com/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity/access$1000(Lcom/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity;)Ljava/lang/String;
bipush 20
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity$GetMorFriendsListTask/mPage I
invokevirtual com/nd/android/u/cloud/com/OapFriendRecommendCom/searchStudent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;
areturn
.limit locals 2
.limit stack 8
.end method

.method protected volatile synthetic onPostExecute(Ljava/lang/Object;)V
aload 0
aload 1
checkcast java/util/List
invokevirtual com/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity$GetMorFriendsListTask/onPostExecute(Ljava/util/List;)V
return
.limit locals 2
.limit stack 2
.end method

.method protected onPostExecute(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/nd/android/u/cloud/bean/friendRcmmnd/FriendSearchResult;>;)V"
aload 1
ifnull L0
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity$GetMorFriendsListTask/this$0 Lcom/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity;
invokestatic com/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity/access$300(Lcom/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity;)Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
aload 1
invokeinterface java/util/List/size()I 0
ifle L1
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity$GetMorFriendsListTask/this$0 Lcom/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity;
invokestatic com/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity/access$500(Lcom/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity;)Lcom/nd/android/u/cloud/ui/adapter/findfriends/FindFriendsFriendAdapter;
aload 1
invokevirtual com/nd/android/u/cloud/ui/adapter/findfriends/FindFriendsFriendAdapter/addData(Ljava/util/List;)V
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity$GetMorFriendsListTask/this$0 Lcom/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity;
invokestatic com/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity/access$500(Lcom/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity;)Lcom/nd/android/u/cloud/ui/adapter/findfriends/FindFriendsFriendAdapter;
invokevirtual com/nd/android/u/cloud/ui/adapter/findfriends/FindFriendsFriendAdapter/notifyDataSetChanged()V
L1:
aload 1
invokeinterface java/util/List/size()I 0
bipush 20
if_icmpge L2
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity$GetMorFriendsListTask/this$0 Lcom/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity;
iconst_0
invokestatic com/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity/access$202(Lcom/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity;Z)Z
pop
L3:
aload 0
aload 1
invokespecial com/common/android/utils/concurrent/NdTinyHttpAsyncTask/onPostExecute(Ljava/lang/Object;)V
return
L2:
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity$GetMorFriendsListTask/this$0 Lcom/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity;
iconst_1
invokestatic com/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity/access$202(Lcom/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity;Z)Z
pop
goto L3
L0:
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity$GetMorFriendsListTask/this$0 Lcom/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity;
iconst_1
invokestatic com/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity/access$202(Lcom/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity;Z)Z
pop
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity$GetMorFriendsListTask/this$0 Lcom/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity;
invokestatic com/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity/access$300(Lcom/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity;)Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
goto L3
.limit locals 2
.limit stack 2
.end method
