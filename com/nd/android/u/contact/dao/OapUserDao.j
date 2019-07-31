.bytecode 50.0
.class public abstract interface com/nd/android/u/contact/dao/OapUserDao
.super java/lang/Object

.method public abstract deleteUnitRelation(I)V
.end method

.method public abstract deleteUser(Ljava/util/List;)V
.signature "(Ljava/util/List<Ljava/lang/Integer;>;)V"
.end method

.method public abstract deleteUser(I)Z
.end method

.method public abstract deleteUserByFid(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/OapJMClassRelation;>;)V"
.end method

.method public abstract findOapUser(J)Lcom/product/android/commonInterface/contact/OapUser;
.end method

.method public abstract getHundredUserNameByGender(I)Ljava/util/ArrayList;
.signature "(I)Ljava/util/ArrayList<Ljava/lang/String;>;"
.end method

.method public abstract getSearchContracByKeySize(Ljava/lang/String;)I
.end method

.method public abstract getUidByName(Ljava/lang/String;)J
.end method

.method public abstract getUsersByKey(Ljava/lang/String;)Ljava/util/List;
.signature "(Ljava/lang/String;)Ljava/util/List<Lcom/product/android/commonInterface/chat/SearchContract;>;"
.end method

.method public abstract getsearchContractSize()I
.end method

.method public abstract insertFriend(Lcom/product/android/commonInterface/contact/OapUser;)J
.end method

.method public abstract insertFriend(Ljava/util/List;)J
.signature "(Ljava/util/List<Lcom/product/android/commonInterface/contact/OapUser;>;)J"
.end method

.method public abstract insertUser(Ljava/util/List;)I
.signature "(Ljava/util/List<Lcom/product/android/commonInterface/contact/OapUser;>;)I"
.end method

.method public abstract insertUser(Lcom/product/android/commonInterface/contact/OapUser;)J
.end method

.method public abstract isExists(J)Z
.end method

.method public abstract searchContracByKey(IILjava/lang/String;)Ljava/util/List;
.signature "(IILjava/lang/String;)Ljava/util/List<Lcom/product/android/commonInterface/chat/SearchContract;>;"
.end method

.method public abstract searchContracByKey(Ljava/lang/String;)Ljava/util/List;
.signature "(Ljava/lang/String;)Ljava/util/List<Lcom/product/android/commonInterface/chat/SearchContract;>;"
.end method

.method public abstract searchFilterContracByKey(IILjava/lang/String;Ljava/util/ArrayList;)Ljava/util/List;
.signature "(IILjava/lang/String;Ljava/util/ArrayList<Ljava/lang/Long;>;)Ljava/util/List<Lcom/product/android/commonInterface/chat/SearchContract;>;"
.end method

.method public abstract searchUserByDeptids(ILjava/lang/String;I)Ljava/util/ArrayList;
.signature "(ILjava/lang/String;I)Ljava/util/ArrayList<Ljava/lang/Long;>;"
.end method

.method public abstract searchUserByID(Ljava/util/List;)Ljava/util/List;
.signature "(Ljava/util/List<Ljava/lang/Long;>;)Ljava/util/List<Lcom/product/android/commonInterface/contact/OapUser;>;"
.end method

.method public abstract searchUserByKeyExceptSelf(JILjava/lang/String;)Ljava/util/List;
.signature "(JILjava/lang/String;)Ljava/util/List<Lcom/product/android/commonInterface/contact/OapUser;>;"
.end method

.method public abstract searchUserByUnitid(II)Ljava/util/ArrayList;
.signature "(II)Ljava/util/ArrayList<Ljava/lang/Long;>;"
.end method

.method public abstract searchUserIdByKey(JILjava/lang/String;)Ljava/util/ArrayList;
.signature "(JILjava/lang/String;)Ljava/util/ArrayList<Ljava/lang/Long;>;"
.end method

.method public abstract searchUsersByClassid(JI)Ljava/util/ArrayList;
.signature "(JI)Ljava/util/ArrayList<Lcom/product/android/commonInterface/contact/OapUserSimple;>;"
.end method

.method public abstract searchUsersByDeptid(JI)Ljava/util/ArrayList;
.signature "(JI)Ljava/util/ArrayList<Lcom/product/android/commonInterface/contact/OapUserSimple;>;"
.end method

.method public abstract updateFriend(Lcom/product/android/commonInterface/contact/OapUser;)V
.end method

.method public abstract updateUser(Lcom/product/android/commonInterface/contact/OapUser;)V
.end method
