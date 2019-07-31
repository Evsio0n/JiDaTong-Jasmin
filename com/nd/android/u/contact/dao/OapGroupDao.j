.bytecode 50.0
.class public abstract interface com/nd/android/u/contact/dao/OapGroupDao
.super java/lang/Object

.method public abstract clearGroups()Z
.end method

.method public abstract deleteGroup(J)Z
.end method

.method public abstract deleteGroup(JI)Z
.end method

.method public abstract deleteGroups(I)Z
.end method

.method public abstract findAvailGroupByGUid(J)Lcom/product/android/commonInterface/contact/OapGroup;
.end method

.method public abstract findGroupByGUid(J)Lcom/product/android/commonInterface/contact/OapGroup;
.end method

.method public abstract findTempGroup(J)Lcom/product/android/commonInterface/contact/OapGroup;
.end method

.method public abstract getGroupName(J)Ljava/lang/String;
.end method

.method public abstract insertGroup(Lcom/product/android/commonInterface/contact/OapGroup;)J
.end method

.method public abstract insertGroup(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/product/android/commonInterface/contact/OapGroup;>;)V"
.end method

.method public abstract isExists(JZ)Z
.end method

.method public abstract searchGroupByKey(Ljava/lang/String;)Ljava/util/List;
.signature "(Ljava/lang/String;)Ljava/util/List<Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup;>;"
.end method

.method public abstract searchGroups(I)Ljava/util/List;
.signature "(I)Ljava/util/List<Lcom/product/android/commonInterface/contact/OapGroup;>;"
.end method

.method public abstract searchGroups(Ljava/lang/String;)Ljava/util/List;
.signature "(Ljava/lang/String;)Ljava/util/List<Lcom/product/android/commonInterface/contact/OapGroup;>;"
.end method

.method public abstract updateGroup(Lcom/product/android/commonInterface/contact/OapGroup;)V
.end method

.method public abstract updatetUnavailGroup(JI)Z
.end method
