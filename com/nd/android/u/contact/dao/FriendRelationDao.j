.bytecode 50.0
.class public abstract interface com/nd/android/u/contact/dao/FriendRelationDao
.super java/lang/Object

.method public abstract addFriendRelation(Ljava/util/List;)Z
.signature "(Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/FriendRelation;>;)Z"
.end method

.method public abstract deleteFriendRelation()Z
.end method

.method public abstract deleteFriendRelation(J)Z
.end method

.method public abstract deleteFriendRelationByGroup(I)Z
.end method

.method public abstract getFriendList()Ljava/util/ArrayList;
.signature "()Ljava/util/ArrayList<Lcom/product/android/commonInterface/contact/OapUserSimple;>;"
.end method

.method public abstract insertFriendRelation(Lcom/nd/android/u/contact/dataStructure/FriendRelation;)J
.end method

.method public abstract insertFriendRelation(Ljava/util/List;)J
.signature "(Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/FriendRelation;>;)J"
.end method

.method public abstract isExists(J)Z
.end method

.method public abstract isExistsInGroup(JJ)Z
.end method

.method public abstract searchFriendRelation()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/FriendRelation;>;"
.end method

.method public abstract searchFriendRelation(I)Ljava/util/List;
.signature "(I)Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/FriendRelation;>;"
.end method

.method public abstract searchFriendRelationByFid(J)Lcom/nd/android/u/contact/dataStructure/FriendRelation;
.end method

.method public abstract searchFriendRelationByGender(I)Ljava/util/ArrayList;
.signature "(I)Ljava/util/ArrayList<Ljava/lang/Long;>;"
.end method

.method public abstract updateFriendRelation(Lcom/nd/android/u/contact/dataStructure/FriendRelation;)V
.end method
