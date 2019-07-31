.bytecode 50.0
.class public synchronized com/nd/android/u/contact/activity/base/BaseSearchActivity$GetRecommendList
.super com/common/android/utils/task/genericTask/GenericTask
.inner class protected GetRecommendList inner com/nd/android/u/contact/activity/base/BaseSearchActivity$GetRecommendList outer com/nd/android/u/contact/activity/base/BaseSearchActivity

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/base/BaseSearchActivity;

.method protected <init>(Lcom/nd/android/u/contact/activity/base/BaseSearchActivity;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/base/BaseSearchActivity$GetRecommendList/this$0 Lcom/nd/android/u/contact/activity/base/BaseSearchActivity;
aload 0
invokespecial com/common/android/utils/task/genericTask/GenericTask/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method protected final transient _doInBackground([Lcom/common/android/utils/task/genericTask/TaskParams;)Lcom/common/android/utils/task/genericTask/TaskResult;
aload 0
getfield com/nd/android/u/contact/activity/base/BaseSearchActivity$GetRecommendList/this$0 Lcom/nd/android/u/contact/activity/base/BaseSearchActivity;
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel$WeiboEntry/getWeiboCommonFriend()Ljava/util/ArrayList;
putfield com/nd/android/u/contact/activity/base/BaseSearchActivity/commonList Ljava/util/ArrayList;
aload 0
getfield com/nd/android/u/contact/activity/base/BaseSearchActivity$GetRecommendList/this$0 Lcom/nd/android/u/contact/activity/base/BaseSearchActivity;
getfield com/nd/android/u/contact/activity/base/BaseSearchActivity/commonList Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/iterator()Ljava/util/Iterator;
astore 1
L0:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/weibo/CommonFriendInfo
astore 2
ldc com/nd/android/u/contact/dao/FriendRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/FriendRelationDao
aload 2
getfield com/product/android/commonInterface/weibo/CommonFriendInfo/uid J
invokeinterface com/nd/android/u/contact/dao/FriendRelationDao/isExists(J)Z 2
ifeq L0
aload 0
getfield com/nd/android/u/contact/activity/base/BaseSearchActivity$GetRecommendList/this$0 Lcom/nd/android/u/contact/activity/base/BaseSearchActivity;
getfield com/nd/android/u/contact/activity/base/BaseSearchActivity/commonList Ljava/util/ArrayList;
aload 2
invokevirtual java/util/ArrayList/remove(Ljava/lang/Object;)Z
pop
goto L0
L1:
getstatic com/common/android/utils/task/genericTask/TaskResult/OK Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
.limit locals 3
.limit stack 3
.end method
