.bytecode 50.0
.class public abstract interface com/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup
.super java/lang/Object

.method public abstract addFollw(JLjava/lang/String;)Z
.throws com/common/android/utils/http/HttpException
.end method

.method public abstract addMember(JLjava/lang/String;)Z
.throws com/common/android/utils/http/HttpException
.end method

.method public abstract agreeAddFriend(J)Z
.end method

.method public abstract checkFriend(J)Z
.end method

.method public abstract delMember(J)Z
.throws com/common/android/utils/http/HttpException
.end method

.method public abstract getMember()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/product/android/commonInterface/contact/OapUser;>;"
.end method

.method public abstract getOapFriendGroup()Lcom/nd/android/u/contact/dataStructure/OapFriendGroup;
.end method

.method public abstract modFriendGroup(Ljava/lang/String;)Z
.throws com/common/android/utils/http/HttpException
.end method

.method public abstract move2NewFriendGroup(JJLjava/lang/String;)Z
.throws com/common/android/utils/http/HttpException
.end method
