.bytecode 50.0
.class synchronized com/nd/android/u/contact/fragment/FriendListFragment$UpdateFrinedListTask
.super com/common/android/utils/task/genericTask/GenericTask
.inner class private UpdateFrinedListTask inner com/nd/android/u/contact/fragment/FriendListFragment$UpdateFrinedListTask outer com/nd/android/u/contact/fragment/FriendListFragment

.field final synthetic 'this$0' Lcom/nd/android/u/contact/fragment/FriendListFragment;

.method private <init>(Lcom/nd/android/u/contact/fragment/FriendListFragment;)V
aload 0
aload 1
putfield com/nd/android/u/contact/fragment/FriendListFragment$UpdateFrinedListTask/this$0 Lcom/nd/android/u/contact/fragment/FriendListFragment;
aload 0
invokespecial com/common/android/utils/task/genericTask/GenericTask/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/nd/android/u/contact/fragment/FriendListFragment;Lcom/nd/android/u/contact/fragment/FriendListFragment$1;)V
aload 0
aload 1
invokespecial com/nd/android/u/contact/fragment/FriendListFragment$UpdateFrinedListTask/<init>(Lcom/nd/android/u/contact/fragment/FriendListFragment;)V
return
.limit locals 3
.limit stack 2
.end method

.method public transient _doInBackground([Lcom/common/android/utils/task/genericTask/TaskParams;)Lcom/common/android/utils/task/genericTask/TaskResult;
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
.catch com/common/android/utils/http/HttpException from L1 to L3 using L2
L0:
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment$UpdateFrinedListTask/this$0 Lcom/nd/android/u/contact/fragment/FriendListFragment;
invokestatic com/nd/android/u/contact/fragment/FriendListFragment/access$1000(Lcom/nd/android/u/contact/fragment/FriendListFragment;)Z
ifeq L1
invokestatic com/nd/android/u/contact/business/SynOapFriendGroupPro/getInstance()Lcom/nd/android/u/contact/business/SynOapFriendGroupPro;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokevirtual com/nd/android/u/contact/business/SynOapFriendGroupPro/loadOapFriendGroups(J)V
L1:
invokestatic com/nd/android/u/contact/business/ContactGlobalVariable/getInstance()Lcom/nd/android/u/contact/business/ContactGlobalVariable;
invokevirtual com/nd/android/u/contact/business/ContactGlobalVariable/initFriendGroups()V
L3:
getstatic com/common/android/utils/task/genericTask/TaskResult/OK Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
L2:
astore 1
aload 1
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
getstatic com/common/android/utils/task/genericTask/TaskResult/FAILED Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
.limit locals 2
.limit stack 3
.end method
