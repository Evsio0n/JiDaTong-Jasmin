.bytecode 50.0
.class public synchronized com/nd/android/u/contact/activity/SearchMyFriendActivity
.super com/nd/android/u/contact/activity/base/BaseSearchActivity

.method public <init>()V
aload 0
invokespecial com/nd/android/u/contact/activity/base/BaseSearchActivity/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public final doSearch(Lcom/nd/android/u/contact/activity/base/BaseSearchActivity$SearchUserTask;)V
aload 1
invokevirtual com/nd/android/u/contact/activity/base/BaseSearchActivity$SearchUserTask/getKey()Ljava/lang/String;
invokestatic com/common/android/utils/StringUtils/getFliteStr(Ljava/lang/String;)Ljava/lang/String;
astore 3
aload 0
getfield com/nd/android/u/contact/activity/SearchMyFriendActivity/getMoreflag Z
ifeq L0
ldc com/nd/android/u/contact/dao/OapUserDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapUserDao
aload 0
getfield com/nd/android/u/contact/activity/SearchMyFriendActivity/pageNo I
iconst_1
iadd
bipush 20
aload 3
invokeinterface com/nd/android/u/contact/dao/OapUserDao/searchContracByKey(IILjava/lang/String;)Ljava/util/List; 3
astore 2
L1:
aload 2
ifnull L2
aload 2
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 3
L3:
aload 3
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L4
aload 3
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/chat/SearchContract
astore 4
aload 4
invokevirtual com/product/android/commonInterface/chat/SearchContract/getFid()J
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
lcmp
ifne L5
aload 4
iconst_1
invokevirtual com/product/android/commonInterface/chat/SearchContract/setIsFriend(Z)V
goto L3
L0:
ldc com/nd/android/u/contact/dao/OapUserDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapUserDao
iconst_0
bipush 20
aload 3
invokeinterface com/nd/android/u/contact/dao/OapUserDao/searchContracByKey(IILjava/lang/String;)Ljava/util/List; 3
astore 2
aload 1
invokevirtual com/nd/android/u/contact/activity/base/BaseSearchActivity$SearchUserTask/clearList()V
aload 1
ldc com/nd/android/u/contact/dao/OapUserDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapUserDao
aload 3
invokeinterface com/nd/android/u/contact/dao/OapUserDao/getSearchContracByKeySize(Ljava/lang/String;)I 1
invokevirtual com/nd/android/u/contact/activity/base/BaseSearchActivity$SearchUserTask/setTempTotal(I)V
goto L1
L5:
aload 4
aload 4
invokevirtual com/product/android/commonInterface/chat/SearchContract/getFid()J
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel$WeiboEntry/NdWeiboManagerCheckUidIsMyFolling(J)Z
invokevirtual com/product/android/commonInterface/chat/SearchContract/setIsFriend(Z)V
goto L3
L4:
aload 1
aload 2
invokevirtual com/nd/android/u/contact/activity/base/BaseSearchActivity$SearchUserTask/addAll(Ljava/util/List;)V
L2:
return
.limit locals 5
.limit stack 4
.end method

.method public final setTitle()V
aload 0
getfield com/nd/android/u/contact/activity/SearchMyFriendActivity/titleText Landroid/widget/TextView;
aload 0
getstatic com/nd/android/u/contact/R$string/search_my_friend I
invokevirtual com/nd/android/u/contact/activity/SearchMyFriendActivity/getString(I)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
.limit locals 1
.limit stack 3
.end method
