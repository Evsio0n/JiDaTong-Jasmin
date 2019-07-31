.bytecode 50.0
.class public abstract interface com/nd/android/u/contact/business_new/Common/OperatorInterface/IFriendGroupOperator
.super java/lang/Object

.method public abstract addFriendGroup(Ljava/lang/String;)Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup;
.throws com/common/android/utils/http/HttpException
.end method

.method public abstract addFriendGroupDataObserver(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IFriendGroupDataObserver;)V
.end method

.method public abstract addFriendGroupLoadObserver(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IFriendGroupLoadObserver;)V
.end method

.method public abstract checkFriend(J)Z
.end method

.method public abstract delFriendGroup(I)Z
.throws com/common/android/utils/http/HttpException
.end method

.method public abstract getBlackList()Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup;
.end method

.method public abstract getFriendGroup(I)Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup;
.end method

.method public abstract getFriendGroup(Ljava/lang/String;)Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup;
.end method

.method public abstract getFriendGroupList()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup;>;"
.end method

.method public abstract moveFriend2NewGroup(JII)Z
.throws com/common/android/utils/http/HttpException
.end method

.method public abstract refresh(JZ)Z
.end method

.method public abstract removeFriendGroupDataObserver(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IFriendGroupDataObserver;)V
.end method

.method public abstract removeFriendGroupLoadObserver(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IFriendGroupLoadObserver;)V
.end method
