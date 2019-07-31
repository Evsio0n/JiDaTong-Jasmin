.bytecode 50.0
.class public synchronized com/nd/android/u/contact/business_new/ProcesssImpl/FriendImpl/FriendGroup
.super java/lang/Object
.implements com/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup

.field private 'group' Lcom/nd/android/u/contact/dataStructure/OapFriendGroup;

.method public <init>(Lcom/nd/android/u/contact/dataStructure/OapFriendGroup;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/nd/android/u/contact/business_new/ProcesssImpl/FriendImpl/FriendGroup/group Lcom/nd/android/u/contact/dataStructure/OapFriendGroup;
return
.limit locals 2
.limit stack 2
.end method

.method public addFollw(JLjava/lang/String;)Z
.throws com/common/android/utils/http/HttpException
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getOapFriendGroupcom()Lcom/nd/android/u/contact/com/OapFriendGroupCom;
lload 1
ldc ""
iconst_m1
invokevirtual com/nd/android/u/contact/com/OapFriendGroupCom/addFollw(JLjava/lang/String;I)V
invokestatic com/nd/android/u/contact/business/ContactGlobalVariable/getInstance()Lcom/nd/android/u/contact/business/ContactGlobalVariable;
invokevirtual com/nd/android/u/contact/business/ContactGlobalVariable/getFriendGroups()Lcom/nd/android/u/contact/dataStructure/FriendGroups;
iconst_0
lload 1
aconst_null
invokevirtual com/nd/android/u/contact/dataStructure/FriendGroups/addFriend(IJLcom/product/android/commonInterface/contact/OapUser;)V
invokestatic com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/FriendGroupSubjectImpl/getInstance()Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/FriendGroupSubjectImpl;
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/FriendImpl/FriendGroup/group Lcom/nd/android/u/contact/dataStructure/OapFriendGroup;
invokevirtual com/nd/android/u/contact/dataStructure/OapFriendGroup/getFgid()I
i2l
sipush 30002
invokevirtual com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/FriendGroupSubjectImpl/notifyFriendGroupDataChanged(JI)V
iconst_1
ireturn
.limit locals 4
.limit stack 5
.end method

.method public addMember(JLjava/lang/String;)Z
.throws com/common/android/utils/http/HttpException
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getOapFriendGroupcom()Lcom/nd/android/u/contact/com/OapFriendGroupCom;
lload 1
aload 3
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/FriendImpl/FriendGroup/group Lcom/nd/android/u/contact/dataStructure/OapFriendGroup;
invokevirtual com/nd/android/u/contact/dataStructure/OapFriendGroup/getFgid()I
invokevirtual com/nd/android/u/contact/com/OapFriendGroupCom/follw(JLjava/lang/String;I)Lcom/common/android/utils/http/Response;
invokevirtual com/common/android/utils/http/Response/getHttpResponse()Lorg/apache/http/HttpResponse;
invokeinterface org/apache/http/HttpResponse/getStatusLine()Lorg/apache/http/StatusLine; 0
invokeinterface org/apache/http/StatusLine/getStatusCode()I 0
sipush 200
if_icmpne L0
new com/nd/android/u/contact/dataStructure/FriendRelation
dup
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
lload 1
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/FriendImpl/FriendGroup/group Lcom/nd/android/u/contact/dataStructure/OapFriendGroup;
invokevirtual com/nd/android/u/contact/dataStructure/OapFriendGroup/getFgid()I
aconst_null
invokespecial com/nd/android/u/contact/dataStructure/FriendRelation/<init>(JJILjava/lang/String;)V
astore 3
ldc com/nd/android/u/contact/dao/FriendRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/FriendRelationDao
aload 3
invokeinterface com/nd/android/u/contact/dao/FriendRelationDao/insertFriendRelation(Lcom/nd/android/u/contact/dataStructure/FriendRelation;)J 1
pop2
invokestatic com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/FriendGroupSubjectImpl/getInstance()Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/FriendGroupSubjectImpl;
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/FriendImpl/FriendGroup/group Lcom/nd/android/u/contact/dataStructure/OapFriendGroup;
invokevirtual com/nd/android/u/contact/dataStructure/OapFriendGroup/getFgid()I
i2l
sipush 30002
invokevirtual com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/FriendGroupSubjectImpl/notifyFriendGroupDataChanged(JI)V
L0:
iconst_1
ireturn
.limit locals 4
.limit stack 8
.end method

.method public agreeAddFriend(J)Z
.catch org/json/JSONException from L0 to L1 using L2
.catch com/common/android/utils/http/HttpException from L0 to L1 using L3
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getOapFriendGroupcom()Lcom/nd/android/u/contact/com/OapFriendGroupCom;
astore 3
L0:
aload 3
lload 1
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/FriendImpl/FriendGroup/group Lcom/nd/android/u/contact/dataStructure/OapFriendGroup;
invokevirtual com/nd/android/u/contact/dataStructure/OapFriendGroup/getFgid()I
invokevirtual com/nd/android/u/contact/com/OapFriendGroupCom/friendAgree(JI)Z
ifeq L1
ldc com/nd/android/u/contact/dao/FriendRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/FriendRelationDao
astore 3
new com/nd/android/u/contact/dataStructure/FriendRelation
dup
invokespecial com/nd/android/u/contact/dataStructure/FriendRelation/<init>()V
astore 4
aload 4
lload 1
invokevirtual com/nd/android/u/contact/dataStructure/FriendRelation/setFid(J)V
aload 4
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/FriendImpl/FriendGroup/group Lcom/nd/android/u/contact/dataStructure/OapFriendGroup;
invokevirtual com/nd/android/u/contact/dataStructure/OapFriendGroup/getFgid()I
invokevirtual com/nd/android/u/contact/dataStructure/FriendRelation/setFgid(I)V
aload 3
aload 4
invokeinterface com/nd/android/u/contact/dao/FriendRelationDao/insertFriendRelation(Lcom/nd/android/u/contact/dataStructure/FriendRelation;)J 1
pop2
L1:
iconst_0
ireturn
L2:
astore 3
aload 3
invokevirtual org/json/JSONException/printStackTrace()V
goto L1
L3:
astore 3
aload 3
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
goto L1
.limit locals 5
.limit stack 4
.end method

.method public checkFriend(J)Z
ldc com/nd/android/u/contact/dao/FriendRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/FriendRelationDao
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/FriendImpl/FriendGroup/group Lcom/nd/android/u/contact/dataStructure/OapFriendGroup;
invokevirtual com/nd/android/u/contact/dataStructure/OapFriendGroup/getFgid()I
i2l
lload 1
invokeinterface com/nd/android/u/contact/dao/FriendRelationDao/isExistsInGroup(JJ)Z 4
ireturn
.limit locals 3
.limit stack 5
.end method

.method public delMember(J)Z
.throws com/common/android/utils/http/HttpException
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getOapFriendGroupcom()Lcom/nd/android/u/contact/com/OapFriendGroupCom;
lload 1
invokevirtual com/nd/android/u/contact/com/OapFriendGroupCom/friendDel(J)Z
istore 4
iconst_0
istore 3
iload 4
ifeq L0
ldc com/nd/android/u/contact/dao/FriendRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/FriendRelationDao
lload 1
invokeinterface com/nd/android/u/contact/dao/FriendRelationDao/deleteFriendRelation(J)Z 2
istore 3
invokestatic com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/FriendGroupSubjectImpl/getInstance()Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/FriendGroupSubjectImpl;
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/FriendImpl/FriendGroup/group Lcom/nd/android/u/contact/dataStructure/OapFriendGroup;
invokevirtual com/nd/android/u/contact/dataStructure/OapFriendGroup/getFgid()I
i2l
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
aconst_null
astore 1
ldc com/nd/android/u/contact/dao/FriendRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/FriendRelationDao
astore 2
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/FriendImpl/FriendGroup/group Lcom/nd/android/u/contact/dataStructure/OapFriendGroup;
ifnull L0
aload 2
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/FriendImpl/FriendGroup/group Lcom/nd/android/u/contact/dataStructure/OapFriendGroup;
invokevirtual com/nd/android/u/contact/dataStructure/OapFriendGroup/getFgid()I
invokeinterface com/nd/android/u/contact/dao/FriendRelationDao/searchFriendRelation(I)Ljava/util/List; 1
astore 1
L0:
aconst_null
astore 3
aload 3
astore 2
aload 1
ifnull L1
aload 3
astore 2
aload 1
invokeinterface java/util/List/isEmpty()Z 0
ifne L1
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 3
aload 1
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 1
L2:
aload 3
astore 2
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 3
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/contact/dataStructure/FriendRelation
invokevirtual com/nd/android/u/contact/dataStructure/FriendRelation/getFid()J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
goto L2
L1:
new com/nd/android/u/contact/dao/impl/OapUserDaoImpl
dup
invokespecial com/nd/android/u/contact/dao/impl/OapUserDaoImpl/<init>()V
aload 2
invokeinterface com/nd/android/u/contact/dao/OapUserDao/searchUserByID(Ljava/util/List;)Ljava/util/List; 1
areturn
.limit locals 4
.limit stack 3
.end method

.method public getOapFriendGroup()Lcom/nd/android/u/contact/dataStructure/OapFriendGroup;
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/FriendImpl/FriendGroup/group Lcom/nd/android/u/contact/dataStructure/OapFriendGroup;
areturn
.limit locals 1
.limit stack 1
.end method

.method public modFriendGroup(Ljava/lang/String;)Z
.throws com/common/android/utils/http/HttpException
.catch org/json/JSONException from L0 to L1 using L2
.catch org/json/JSONException from L3 to L4 using L2
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getOapFriendGroupcom()Lcom/nd/android/u/contact/com/OapFriendGroupCom;
astore 3
L0:
aload 3
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/FriendImpl/FriendGroup/group Lcom/nd/android/u/contact/dataStructure/OapFriendGroup;
invokevirtual com/nd/android/u/contact/dataStructure/OapFriendGroup/getFgid()I
aload 1
invokevirtual com/nd/android/u/contact/com/OapFriendGroupCom/modifyFriendGroup(ILjava/lang/String;)Z
istore 2
L1:
iload 2
ifeq L4
L3:
ldc com/nd/android/u/contact/dao/OapFriendGroupDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapFriendGroupDao
astore 3
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/FriendImpl/FriendGroup/group Lcom/nd/android/u/contact/dataStructure/OapFriendGroup;
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/OapFriendGroup/setName(Ljava/lang/String;)V
aload 3
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/FriendImpl/FriendGroup/group Lcom/nd/android/u/contact/dataStructure/OapFriendGroup;
invokeinterface com/nd/android/u/contact/dao/OapFriendGroupDao/updateFriendGroup(Lcom/nd/android/u/contact/dataStructure/OapFriendGroup;)V 1
invokestatic com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/FriendGroupSubjectImpl/getInstance()Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/FriendGroupSubjectImpl;
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/FriendImpl/FriendGroup/group Lcom/nd/android/u/contact/dataStructure/OapFriendGroup;
invokevirtual com/nd/android/u/contact/dataStructure/OapFriendGroup/getFgid()I
i2l
sipush 30004
invokevirtual com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/FriendGroupSubjectImpl/notifyFriendGroupDataChanged(JI)V
L4:
iload 2
ireturn
L2:
astore 1
aload 1
invokevirtual org/json/JSONException/printStackTrace()V
iconst_0
ireturn
.limit locals 4
.limit stack 4
.end method

.method public move2NewFriendGroup(JJLjava/lang/String;)Z
.throws com/common/android/utils/http/HttpException
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getOapFriendGroupcom()Lcom/nd/android/u/contact/com/OapFriendGroupCom;
lload 3
lload 1
invokevirtual com/nd/android/u/contact/com/OapFriendGroupCom/friendMove(JJ)Z
istore 6
iload 6
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
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/FriendImpl/FriendGroup/group Lcom/nd/android/u/contact/dataStructure/OapFriendGroup;
invokevirtual com/nd/android/u/contact/dataStructure/OapFriendGroup/getFgid()I
i2l
sipush 30001
invokevirtual com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/FriendGroupSubjectImpl/notifyFriendGroupDataChanged(JI)V
L0:
iload 6
ireturn
.limit locals 7
.limit stack 8
.end method
