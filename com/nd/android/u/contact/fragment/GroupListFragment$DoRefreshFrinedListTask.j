.bytecode 50.0
.class public synchronized com/nd/android/u/contact/fragment/GroupListFragment$DoRefreshFrinedListTask
.super com/common/android/utils/task/genericTask/GenericTask
.inner class public DoRefreshFrinedListTask inner com/nd/android/u/contact/fragment/GroupListFragment$DoRefreshFrinedListTask outer com/nd/android/u/contact/fragment/GroupListFragment

.field final synthetic 'this$0' Lcom/nd/android/u/contact/fragment/GroupListFragment;

.method public <init>(Lcom/nd/android/u/contact/fragment/GroupListFragment;)V
aload 0
aload 1
putfield com/nd/android/u/contact/fragment/GroupListFragment$DoRefreshFrinedListTask/this$0 Lcom/nd/android/u/contact/fragment/GroupListFragment;
aload 0
invokespecial com/common/android/utils/task/genericTask/GenericTask/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public transient _doInBackground([Lcom/common/android/utils/task/genericTask/TaskParams;)Lcom/common/android/utils/task/genericTask/TaskResult;
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
L0:
invokestatic com/nd/android/u/contact/business/SynOapGroupPro/getInstance()Lcom/nd/android/u/contact/business/SynOapGroupPro;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokevirtual com/nd/android/u/contact/business/SynOapGroupPro/initGroupList(J)V
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel/getClubGroupIds()Ljava/util/List;
pop
L1:
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
