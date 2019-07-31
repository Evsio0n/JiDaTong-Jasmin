.bytecode 50.0
.class public synchronized com/nd/android/u/contact/business_new/ProcesssImpl/FriendImpl/BlackGroup
.super java/lang/Object
.implements com/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public addFollw(JLjava/lang/String;)Z
.throws com/common/android/utils/http/HttpException
iconst_0
ireturn
.limit locals 4
.limit stack 1
.end method

.method public addMember(JLjava/lang/String;)Z
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getOapBlackListCom()Lcom/nd/android/u/contact/com/OapBlackListCom;
lload 1
invokevirtual com/nd/android/u/contact/com/OapBlackListCom/addToBlackList(J)Z
istore 5
iconst_0
istore 4
iload 5
ifeq L0
new com/product/android/commonInterface/contact/BlackListPerson
dup
invokespecial com/product/android/commonInterface/contact/BlackListPerson/<init>()V
astore 3
aload 3
lload 1
putfield com/product/android/commonInterface/contact/BlackListPerson/uid J
aload 3
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
putfield com/product/android/commonInterface/contact/BlackListPerson/myoapid J
ldc com/nd/android/u/contact/dao/OapBlackListDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapBlackListDao
aload 3
invokeinterface com/nd/android/u/contact/dao/OapBlackListDao/addBlackListPerson(Lcom/product/android/commonInterface/contact/BlackListPerson;)Z 1
istore 4
invokestatic com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/FriendGroupSubjectImpl/getInstance()Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/FriendGroupSubjectImpl;
ldc2_w -1L
sipush 30002
invokevirtual com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/FriendGroupSubjectImpl/notifyFriendGroupDataChanged(JI)V
L0:
iload 5
ifeq L1
iload 4
ifeq L1
iconst_1
ireturn
L1:
iconst_0
ireturn
.limit locals 6
.limit stack 4
.end method

.method public agreeAddFriend(J)Z
iconst_0
ireturn
.limit locals 3
.limit stack 1
.end method

.method public checkFriend(J)Z
ldc com/nd/android/u/contact/dao/OapBlackListDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapBlackListDao
lload 1
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokeinterface com/nd/android/u/contact/dao/OapBlackListDao/checkUidIsBlackList(JJ)Z 4
ireturn
.limit locals 3
.limit stack 5
.end method

.method public delMember(J)Z
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getOapBlackListCom()Lcom/nd/android/u/contact/com/OapBlackListCom;
lload 1
invokevirtual com/nd/android/u/contact/com/OapBlackListCom/delFromBlackList(J)Z
istore 4
iconst_0
istore 3
iload 4
ifeq L0
ldc com/nd/android/u/contact/dao/OapBlackListDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapBlackListDao
lload 1
invokeinterface com/nd/android/u/contact/dao/OapBlackListDao/deleteBlackListPersonByID(J)Z 2
istore 3
invokestatic com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/FriendGroupSubjectImpl/getInstance()Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/FriendGroupSubjectImpl;
ldc2_w -1L
sipush 30001
invokevirtual com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/FriendGroupSubjectImpl/notifyFriendGroupDataChanged(JI)V
L0:
iload 4
ifeq L1
iload 3
ifeq L1
iconst_1
ireturn
L1:
iconst_0
ireturn
.limit locals 5
.limit stack 4
.end method

.method public getMember()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/product/android/commonInterface/contact/OapUser;>;"
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 2
ldc com/nd/android/u/contact/dao/OapBlackListDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapBlackListDao
invokeinterface com/nd/android/u/contact/dao/OapBlackListDao/getBlackList()Ljava/util/ArrayList; 0
astore 1
aload 1
ifnull L0
aload 1
invokeinterface java/util/List/isEmpty()Z 0
ifne L0
aload 1
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 1
L1:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L0
aload 2
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/contact/BlackListPerson
getfield com/product/android/commonInterface/contact/BlackListPerson/uid J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
goto L1
L0:
aconst_null
astore 1
aload 2
invokeinterface java/util/List/isEmpty()Z 0
ifne L2
ldc com/nd/android/u/contact/dao/OapUserDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapUserDao
aload 2
invokeinterface com/nd/android/u/contact/dao/OapUserDao/searchUserByID(Ljava/util/List;)Ljava/util/List; 1
astore 1
L2:
aload 1
areturn
.limit locals 3
.limit stack 3
.end method

.method public getOapFriendGroup()Lcom/nd/android/u/contact/dataStructure/OapFriendGroup;
aconst_null
areturn
.limit locals 1
.limit stack 1
.end method

.method public modFriendGroup(Ljava/lang/String;)Z
iconst_0
ireturn
.limit locals 2
.limit stack 1
.end method

.method public move2NewFriendGroup(JJLjava/lang/String;)Z
.throws com/common/android/utils/http/HttpException
aload 0
lload 1
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/FriendImpl/BlackGroup/delMember(J)Z
istore 8
iconst_0
istore 6
iload 8
ifeq L0
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getOapFriendGroupcom()Lcom/nd/android/u/contact/com/OapFriendGroupCom;
astore 10
aload 10
lload 1
aload 5
invokevirtual com/nd/android/u/contact/com/OapFriendGroupCom/friendApply(JLjava/lang/String;)Z
istore 7
aload 10
lload 3
lload 1
invokevirtual com/nd/android/u/contact/com/OapFriendGroupCom/friendMove(JJ)Z
istore 9
iload 7
istore 6
iload 7
ifeq L0
iload 7
istore 6
iload 9
ifeq L0
new com/nd/android/u/contact/dataStructure/FriendRelation
dup
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
lload 1
lload 3
l2i
aload 5
invokespecial com/nd/android/u/contact/dataStructure/FriendRelation/<init>(JJILjava/lang/String;)V
astore 5
ldc com/nd/android/u/contact/dao/FriendRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/FriendRelationDao
aload 5
invokeinterface com/nd/android/u/contact/dao/FriendRelationDao/insertFriendRelation(Lcom/nd/android/u/contact/dataStructure/FriendRelation;)J 1
pop2
invokestatic com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/FriendGroupSubjectImpl/getInstance()Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/FriendGroupSubjectImpl;
ldc2_w -1L
sipush 30001
invokevirtual com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/FriendGroupSubjectImpl/notifyFriendGroupDataChanged(JI)V
iload 7
istore 6
L0:
iload 8
ifeq L1
iload 6
ifeq L1
iconst_1
ireturn
L1:
iconst_0
ireturn
.limit locals 11
.limit stack 8
.end method
