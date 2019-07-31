.bytecode 50.0
.class synchronized com/android/u/weibo/weibo/ui/activity/ContactListActivity$GetSearchFriendTask
.super com/common/android/utils/concurrent/NdTinyHttpAsyncTask
.signature "Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/util/List<Lcom/product/android/commonInterface/chat/SearchContract;>;>;"
.inner class private GetSearchFriendTask inner com/android/u/weibo/weibo/ui/activity/ContactListActivity$GetSearchFriendTask outer com/android/u/weibo/weibo/ui/activity/ContactListActivity

.field private 'page' I

.field private 'searchString' Ljava/lang/String;

.field final synthetic 'this$0' Lcom/android/u/weibo/weibo/ui/activity/ContactListActivity;

.method public <init>(Lcom/android/u/weibo/weibo/ui/activity/ContactListActivity;Ljava/lang/String;I)V
aload 0
aload 1
putfield com/android/u/weibo/weibo/ui/activity/ContactListActivity$GetSearchFriendTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/ContactListActivity;
aload 0
invokespecial com/common/android/utils/concurrent/NdTinyHttpAsyncTask/<init>()V
aload 0
aload 2
putfield com/android/u/weibo/weibo/ui/activity/ContactListActivity$GetSearchFriendTask/searchString Ljava/lang/String;
aload 0
iload 3
putfield com/android/u/weibo/weibo/ui/activity/ContactListActivity$GetSearchFriendTask/page I
return
.limit locals 4
.limit stack 2
.end method

.method protected volatile synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
aload 0
aload 1
checkcast [Ljava/lang/Void;
invokevirtual com/android/u/weibo/weibo/ui/activity/ContactListActivity$GetSearchFriendTask/doInBackground([Ljava/lang/Void;)Ljava/util/List;
areturn
.limit locals 2
.limit stack 2
.end method

.method protected transient doInBackground([Ljava/lang/Void;)Ljava/util/List;
.signature "([Ljava/lang/Void;)Ljava/util/List<Lcom/product/android/commonInterface/chat/SearchContract;>;"
aload 0
getfield com/android/u/weibo/weibo/ui/activity/ContactListActivity$GetSearchFriendTask/searchString Ljava/lang/String;
ldc ""
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L0
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getOapUid()J 0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/ContactListActivity$GetSearchFriendTask/searchString Ljava/lang/String;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/ContactListActivity$GetSearchFriendTask/page I
bipush 50
invokestatic com/android/u/weibo/weiboInterfaceImpl/WeiboCallOtherModel/searchAtList(JLjava/lang/String;II)Ljava/util/List;
astore 1
L1:
aload 1
areturn
L0:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/ContactListActivity$GetSearchFriendTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/ContactListActivity;
invokestatic com/android/u/weibo/weibo/controller/NdWeiboManager/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/controller/NdWeiboManager;
bipush 50
invokevirtual com/android/u/weibo/weibo/controller/NdWeiboManager/getAtListByRand(I)Ljava/util/ArrayList;
astore 4
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 3
iconst_0
istore 2
L2:
aload 3
astore 1
iload 2
aload 4
invokevirtual java/util/ArrayList/size()I
if_icmpge L1
new com/product/android/commonInterface/chat/SearchContract
dup
invokespecial com/product/android/commonInterface/chat/SearchContract/<init>()V
astore 1
aload 1
aload 4
iload 2
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast com/product/android/commonInterface/weibo/Idol
getfield com/product/android/commonInterface/weibo/Idol/user Lcom/product/android/commonInterface/weibo/WbUserInfo;
getfield com/product/android/commonInterface/weibo/WbUserInfo/uid J
invokevirtual com/product/android/commonInterface/chat/SearchContract/setFid(J)V
aload 1
aload 4
iload 2
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast com/product/android/commonInterface/weibo/Idol
getfield com/product/android/commonInterface/weibo/Idol/user Lcom/product/android/commonInterface/weibo/WbUserInfo;
getfield com/product/android/commonInterface/weibo/WbUserInfo/nickname Ljava/lang/String;
invokevirtual com/product/android/commonInterface/chat/SearchContract/setUsername(Ljava/lang/String;)V
aload 1
aload 1
invokevirtual com/product/android/commonInterface/chat/SearchContract/getFid()J
invokestatic com/android/u/weibo/weiboInterfaceImpl/WeiboCallOtherModel/getUserSysAvatarId(J)I
invokevirtual com/product/android/commonInterface/chat/SearchContract/setSysavatar(I)V
aload 3
aload 1
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
iload 2
iconst_1
iadd
istore 2
goto L2
.limit locals 5
.limit stack 5
.end method

.method protected volatile synthetic onPostExecute(Ljava/lang/Object;)V
aload 0
aload 1
checkcast java/util/List
invokevirtual com/android/u/weibo/weibo/ui/activity/ContactListActivity$GetSearchFriendTask/onPostExecute(Ljava/util/List;)V
return
.limit locals 2
.limit stack 2
.end method

.method protected onPostExecute(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/product/android/commonInterface/chat/SearchContract;>;)V"
aload 0
getfield com/android/u/weibo/weibo/ui/activity/ContactListActivity$GetSearchFriendTask/page I
ifeq L0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/ContactListActivity$GetSearchFriendTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/ContactListActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/ContactListActivity/access$500(Lcom/android/u/weibo/weibo/ui/activity/ContactListActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/getRefreshableView()Landroid/view/View;
checkcast android/widget/ListView
aload 0
getfield com/android/u/weibo/weibo/ui/activity/ContactListActivity$GetSearchFriendTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/ContactListActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/ContactListActivity/access$400(Lcom/android/u/weibo/weibo/ui/activity/ContactListActivity;)Landroid/view/View;
invokevirtual android/widget/ListView/removeFooterView(Landroid/view/View;)Z
pop
L0:
aload 1
ifnonnull L1
return
L1:
aload 1
invokeinterface java/util/List/size()I 0
ifne L2
aload 0
getfield com/android/u/weibo/weibo/ui/activity/ContactListActivity$GetSearchFriendTask/searchString Ljava/lang/String;
ldc ""
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L2
aload 0
getfield com/android/u/weibo/weibo/ui/activity/ContactListActivity$GetSearchFriendTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/ContactListActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/ContactListActivity/access$600(Lcom/android/u/weibo/weibo/ui/activity/ContactListActivity;)Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/ContactListActivity$GetSearchFriendTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/ContactListActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/ContactListActivity/access$500(Lcom/android/u/weibo/weibo/ui/activity/ContactListActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
bipush 8
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/setVisibility(I)V
return
L2:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/ContactListActivity$GetSearchFriendTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/ContactListActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/ContactListActivity/access$600(Lcom/android/u/weibo/weibo/ui/activity/ContactListActivity;)Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/ContactListActivity$GetSearchFriendTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/ContactListActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/ContactListActivity/access$500(Lcom/android/u/weibo/weibo/ui/activity/ContactListActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
iconst_0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/setVisibility(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/ContactListActivity$GetSearchFriendTask/page I
ifne L3
aload 0
getfield com/android/u/weibo/weibo/ui/activity/ContactListActivity$GetSearchFriendTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/ContactListActivity;
aload 1
invokestatic com/android/u/weibo/weibo/ui/activity/ContactListActivity/access$002(Lcom/android/u/weibo/weibo/ui/activity/ContactListActivity;Ljava/util/List;)Ljava/util/List;
pop
L4:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/ContactListActivity$GetSearchFriendTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/ContactListActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/ContactListActivity/access$700(Lcom/android/u/weibo/weibo/ui/activity/ContactListActivity;)Lcom/android/u/weibo/weibo/ui/activity/ContactListActivity$FriendListAdapter;
invokevirtual com/android/u/weibo/weibo/ui/activity/ContactListActivity$FriendListAdapter/notifyDataSetChanged()V
return
L3:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/ContactListActivity$GetSearchFriendTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/ContactListActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/ContactListActivity/access$000(Lcom/android/u/weibo/weibo/ui/activity/ContactListActivity;)Ljava/util/List;
aload 1
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
goto L4
.limit locals 2
.limit stack 2
.end method

.method protected onPreExecute()V
aload 0
invokespecial com/common/android/utils/concurrent/NdTinyHttpAsyncTask/onPreExecute()V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/ContactListActivity$GetSearchFriendTask/page I
ifeq L0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/ContactListActivity$GetSearchFriendTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/ContactListActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/ContactListActivity/access$500(Lcom/android/u/weibo/weibo/ui/activity/ContactListActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/getRefreshableView()Landroid/view/View;
checkcast android/widget/ListView
aload 0
getfield com/android/u/weibo/weibo/ui/activity/ContactListActivity$GetSearchFriendTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/ContactListActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/ContactListActivity/access$400(Lcom/android/u/weibo/weibo/ui/activity/ContactListActivity;)Landroid/view/View;
aconst_null
iconst_0
invokevirtual android/widget/ListView/addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V
L0:
return
.limit locals 1
.limit stack 4
.end method
