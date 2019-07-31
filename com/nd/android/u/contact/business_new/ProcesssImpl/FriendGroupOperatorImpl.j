.bytecode 50.0
.class public synchronized com/nd/android/u/contact/business_new/ProcesssImpl/FriendGroupOperatorImpl
.super java/lang/Object
.implements com/nd/android/u/contact/business_new/Common/OperatorInterface/IFriendGroupOperator

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public addFriendGroup(Ljava/lang/String;)Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup;
.throws com/common/android/utils/http/HttpException
.catch org/json/JSONException from L0 to L1 using L2
.catch org/json/JSONException from L3 to L4 using L2
.catch org/json/JSONException from L5 to L6 using L2
.catch org/json/JSONException from L6 to L7 using L8
aconst_null
astore 6
aconst_null
astore 5
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getOapFriendGroupcom()Lcom/nd/android/u/contact/com/OapFriendGroupCom;
astore 4
L0:
aload 4
aload 1
invokevirtual com/nd/android/u/contact/com/OapFriendGroupCom/addFriendGroupreturn(Ljava/lang/String;)Lorg/json/JSONObject;
astore 7
L1:
aload 6
astore 4
L3:
aload 7
ldc "msg"
invokevirtual org/json/JSONObject/has(Ljava/lang/String;)Z
ifne L9
aload 7
ldc "tagid"
invokevirtual org/json/JSONObject/optLong(Ljava/lang/String;)J
lstore 2
L4:
aload 6
astore 4
lload 2
lconst_0
lcmp
ifle L9
L5:
new com/nd/android/u/contact/dataStructure/OapFriendGroup
dup
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
lload 2
l2i
aload 1
invokespecial com/nd/android/u/contact/dataStructure/OapFriendGroup/<init>(JILjava/lang/String;)V
astore 4
ldc com/nd/android/u/contact/dao/OapFriendGroupDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapFriendGroupDao
aload 4
invokeinterface com/nd/android/u/contact/dao/OapFriendGroupDao/insertFriendGroup(Lcom/nd/android/u/contact/dataStructure/OapFriendGroup;)J 1
pop2
new com/nd/android/u/contact/business_new/ProcesssImpl/FriendImpl/FriendGroup
dup
aload 4
invokespecial com/nd/android/u/contact/business_new/ProcesssImpl/FriendImpl/FriendGroup/<init>(Lcom/nd/android/u/contact/dataStructure/OapFriendGroup;)V
astore 1
L6:
invokestatic com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/FriendGroupSubjectImpl/getInstance()Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/FriendGroupSubjectImpl;
aload 4
invokevirtual com/nd/android/u/contact/dataStructure/OapFriendGroup/getFgid()I
i2l
sipush 30005
invokevirtual com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/FriendGroupSubjectImpl/notifyFriendGroupDataChanged(JI)V
L7:
aload 1
areturn
L2:
astore 4
aload 5
astore 1
L10:
aload 4
invokevirtual org/json/JSONException/printStackTrace()V
aload 1
astore 4
L9:
aload 4
areturn
L8:
astore 4
goto L10
.limit locals 8
.limit stack 6
.end method

.method public addFriendGroupDataObserver(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IFriendGroupDataObserver;)V
invokestatic com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/FriendGroupSubjectImpl/getInstance()Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/FriendGroupSubjectImpl;
aload 1
invokevirtual com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/FriendGroupSubjectImpl/addFriendGroupDataObserver(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IFriendGroupDataObserver;)V
return
.limit locals 2
.limit stack 2
.end method

.method public addFriendGroupLoadObserver(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IFriendGroupLoadObserver;)V
invokestatic com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/FriendGroupSubjectImpl/getInstance()Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/FriendGroupSubjectImpl;
aload 1
invokevirtual com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/FriendGroupSubjectImpl/addFriendGroupLoadObserver(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IFriendGroupLoadObserver;)V
return
.limit locals 2
.limit stack 2
.end method

.method public checkFriend(J)Z
ldc com/nd/android/u/contact/dao/FriendRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/FriendRelationDao
lload 1
invokeinterface com/nd/android/u/contact/dao/FriendRelationDao/isExists(J)Z 2
ireturn
.limit locals 3
.limit stack 3
.end method

.method public delFriendGroup(I)Z
.throws com/common/android/utils/http/HttpException
.catch org/json/JSONException from L0 to L1 using L2
.catch org/json/JSONException from L3 to L4 using L2
.catch org/json/JSONException from L5 to L6 using L2
.catch org/json/JSONException from L6 to L7 using L2
.catch org/json/JSONException from L8 to L9 using L2
.catch org/json/JSONException from L9 to L10 using L2
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getOapFriendGroupcom()Lcom/nd/android/u/contact/com/OapFriendGroupCom;
astore 4
iconst_0
istore 2
L0:
aload 4
iload 1
invokevirtual com/nd/android/u/contact/com/OapFriendGroupCom/delFriendGroup(I)Z
istore 3
L1:
iload 3
ifeq L10
L3:
invokestatic com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory/getInstance()Lcom/nd/android/u/contact/business_new/Controller/ContactOperatorFactory;
invokevirtual com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory/getFriendGroupOperator()Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/IFriendGroupOperator;
iload 1
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/IFriendGroupOperator/getFriendGroup(I)Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup; 1
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup/getMember()Ljava/util/List; 0
astore 5
ldc com/nd/android/u/contact/dao/OapFriendGroupDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapFriendGroupDao
iload 1
invokeinterface com/nd/android/u/contact/dao/OapFriendGroupDao/deleteFriendGroup(I)Z 1
istore 2
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 4
L4:
aload 5
ifnull L9
L5:
aload 5
invokeinterface java/util/List/isEmpty()Z 0
ifne L9
aload 5
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 5
L6:
aload 5
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L8
aload 5
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/contact/OapUser
astore 6
aload 4
new com/nd/android/u/contact/dataStructure/FriendRelation
dup
aload 6
invokevirtual com/product/android/commonInterface/contact/OapUser/getUid()J
aload 6
invokevirtual com/product/android/commonInterface/contact/OapUser/getFid()J
iconst_0
aload 6
invokevirtual com/product/android/commonInterface/contact/OapUser/getNote()Ljava/lang/String;
invokespecial com/nd/android/u/contact/dataStructure/FriendRelation/<init>(JJILjava/lang/String;)V
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L7:
goto L6
L2:
astore 4
aload 4
invokevirtual org/json/JSONException/printStackTrace()V
iconst_0
ireturn
L8:
ldc com/nd/android/u/contact/dao/FriendRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/FriendRelationDao
aload 4
invokeinterface com/nd/android/u/contact/dao/FriendRelationDao/insertFriendRelation(Ljava/util/List;)J 1
pop2
L9:
invokestatic com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/FriendGroupSubjectImpl/getInstance()Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/FriendGroupSubjectImpl;
iload 1
i2l
sipush 30003
invokevirtual com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/FriendGroupSubjectImpl/notifyFriendGroupDataChanged(JI)V
L10:
iload 3
ifeq L11
iload 2
ifeq L11
iconst_1
ireturn
L11:
iconst_0
ireturn
.limit locals 7
.limit stack 9
.end method

.method public getBlackList()Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup;
new com/nd/android/u/contact/business_new/ProcesssImpl/FriendImpl/BlackGroup
dup
invokespecial com/nd/android/u/contact/business_new/ProcesssImpl/FriendImpl/BlackGroup/<init>()V
areturn
.limit locals 1
.limit stack 2
.end method

.method public getFriendGroup(I)Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup;
new com/nd/android/u/contact/business_new/ProcesssImpl/FriendImpl/FriendGroup
dup
ldc com/nd/android/u/contact/dao/OapFriendGroupDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapFriendGroupDao
iload 1
invokeinterface com/nd/android/u/contact/dao/OapFriendGroupDao/searchFriendGroupByFgid(I)Lcom/nd/android/u/contact/dataStructure/OapFriendGroup; 1
invokespecial com/nd/android/u/contact/business_new/ProcesssImpl/FriendImpl/FriendGroup/<init>(Lcom/nd/android/u/contact/dataStructure/OapFriendGroup;)V
areturn
.limit locals 2
.limit stack 4
.end method

.method public getFriendGroup(Ljava/lang/String;)Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup;
new com/nd/android/u/contact/business_new/ProcesssImpl/FriendImpl/FriendGroup
dup
ldc com/nd/android/u/contact/dao/OapFriendGroupDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapFriendGroupDao
aload 1
invokeinterface com/nd/android/u/contact/dao/OapFriendGroupDao/searchFriendGroup(Ljava/lang/String;)Lcom/nd/android/u/contact/dataStructure/OapFriendGroup; 1
invokespecial com/nd/android/u/contact/business_new/ProcesssImpl/FriendImpl/FriendGroup/<init>(Lcom/nd/android/u/contact/dataStructure/OapFriendGroup;)V
areturn
.limit locals 2
.limit stack 4
.end method

.method public getFriendGroupList()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup;>;"
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 1
invokestatic com/nd/android/u/contact/business/OapFriendGroupPro/getInstance()Lcom/nd/android/u/contact/business/OapFriendGroupPro;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokevirtual com/nd/android/u/contact/business/OapFriendGroupPro/getFriendGroupListByDB(J)Ljava/util/List;
astore 2
aload 2
ifnull L0
aload 2
invokeinterface java/util/List/isEmpty()Z 0
ifne L0
aload 2
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 2
L1:
aload 2
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L0
aload 1
new com/nd/android/u/contact/business_new/ProcesssImpl/FriendImpl/FriendGroup
dup
aload 2
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/contact/dataStructure/OapFriendGroup
invokespecial com/nd/android/u/contact/business_new/ProcesssImpl/FriendImpl/FriendGroup/<init>(Lcom/nd/android/u/contact/dataStructure/OapFriendGroup;)V
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
goto L1
L0:
aload 1
areturn
.limit locals 3
.limit stack 4
.end method

.method public moveFriend2NewGroup(JII)Z
.throws com/common/android/utils/http/HttpException
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getOapFriendGroupcom()Lcom/nd/android/u/contact/com/OapFriendGroupCom;
iload 3
i2l
lload 1
invokevirtual com/nd/android/u/contact/com/OapFriendGroupCom/friendMove(JJ)Z
istore 5
iload 5
ifeq L0
ldc com/nd/android/u/contact/dao/FriendRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/FriendRelationDao
new com/nd/android/u/contact/dataStructure/FriendRelation
dup
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
lload 1
iload 3
ldc ""
invokespecial com/nd/android/u/contact/dataStructure/FriendRelation/<init>(JJILjava/lang/String;)V
invokeinterface com/nd/android/u/contact/dao/FriendRelationDao/updateFriendRelation(Lcom/nd/android/u/contact/dataStructure/FriendRelation;)V 1
L0:
iload 5
ireturn
.limit locals 6
.limit stack 9
.end method

.method public refresh(JZ)Z
.catch java/lang/Exception from L0 to L1 using L2
.catch com/common/android/utils/http/HttpException from L3 to L4 using L5
aconst_null
astore 8
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getCurrentUserInfo()Lcom/product/android/business/bean/UserInfo;
ifnull L6
ldc com/nd/android/u/contact/dao/UserInfoDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/UserInfoDao
invokeinterface com/nd/android/u/contact/dao/UserInfoDao/findUpdateTime()[J 0
astore 8
L6:
aload 8
ifnull L7
aload 8
arraylength
iconst_2
if_icmpge L0
L7:
invokestatic com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/FriendGroupSubjectImpl/getInstance()Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/FriendGroupSubjectImpl;
lload 1
sipush 3003
invokevirtual com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/FriendGroupSubjectImpl/notifyFriendGroupLoadState(JI)V
iconst_0
ireturn
L0:
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getOapUserCom()Lcom/nd/android/u/contact/com/OapUserCom;
invokevirtual com/nd/android/u/contact/com/OapUserCom/getUserInfoUpdate()Lorg/json/JSONObject;
astore 9
L1:
invokestatic com/nd/android/u/contact/business/OapUserManager/getInstance()Lcom/nd/android/u/contact/business/OapUserManager;
invokevirtual com/nd/android/u/contact/business/OapUserManager/updateMyBlackListFromNet()V
aload 9
ldc "friend_updatetime"
invokestatic com/common/android/utils/JSONUtils/getLong(Lorg/json/JSONObject;Ljava/lang/String;)J
lstore 4
invokestatic com/nd/android/u/contact/business/OapGroupPro/getInstance()Lcom/nd/android/u/contact/business/OapGroupPro;
aload 8
iconst_1
laload
lload 4
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokevirtual com/nd/android/u/contact/business/OapGroupPro/vaildateFriendGroupUpdate(JJJ)Z
ifne L3
invokestatic com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/FriendGroupSubjectImpl/getInstance()Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/FriendGroupSubjectImpl;
lload 1
sipush 3002
invokevirtual com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/FriendGroupSubjectImpl/notifyFriendGroupLoadState(JI)V
iconst_0
ireturn
L2:
astore 8
invokestatic com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/FriendGroupSubjectImpl/getInstance()Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/FriendGroupSubjectImpl;
lload 1
sipush 3003
invokevirtual com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/FriendGroupSubjectImpl/notifyFriendGroupLoadState(JI)V
iconst_0
ireturn
L3:
invokestatic com/nd/android/u/contact/business/SynOapFriendGroupPro/getInstance()Lcom/nd/android/u/contact/business/SynOapFriendGroupPro;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokevirtual com/nd/android/u/contact/business/SynOapFriendGroupPro/loadOapFriendGroups(J)V
L4:
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getBindUser()Lcom/product/android/business/login/BindUser; 0
lload 4
invokevirtual com/product/android/business/login/BindUser/setFriend_updatetime(J)V
ldc com/nd/android/u/contact/dao/UserInfoDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/UserInfoDao
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getBindUser()Lcom/product/android/business/login/BindUser; 0
invokeinterface com/nd/android/u/contact/dao/UserInfoDao/updateUserInfo(Lcom/product/android/business/login/BindUser;)Z 1
pop
aload 9
ldc "updatetime"
invokestatic com/common/android/utils/JSONUtils/getLong(Lorg/json/JSONObject;Ljava/lang/String;)J
lstore 6
invokestatic com/nd/android/u/contact/business/OapGroupPro/getInstance()Lcom/nd/android/u/contact/business/OapGroupPro;
aload 8
iconst_0
laload
lload 6
lload 4
invokevirtual com/nd/android/u/contact/business/OapGroupPro/vaildateMyUpdate(JJJ)Z
ifeq L8
invokestatic com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/FriendGroupSubjectImpl/getInstance()Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/FriendGroupSubjectImpl;
lload 1
sipush 3004
invokevirtual com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/FriendGroupSubjectImpl/notifyFriendGroupLoadState(JI)V
iconst_0
ireturn
L5:
astore 8
aload 8
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
invokestatic com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/FriendGroupSubjectImpl/getInstance()Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/FriendGroupSubjectImpl;
lload 1
sipush 3003
invokevirtual com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/FriendGroupSubjectImpl/notifyFriendGroupLoadState(JI)V
iconst_0
ireturn
L8:
invokestatic com/product/android/business/manager/DataUpdateManager/getInstance()Lcom/product/android/business/manager/DataUpdateManager;
ldc "friend_list_update"
invokestatic java/lang/System/currentTimeMillis()J
invokevirtual com/product/android/business/manager/DataUpdateManager/save(Ljava/lang/String;J)V
invokestatic com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/FriendGroupSubjectImpl/getInstance()Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/FriendGroupSubjectImpl;
lload 1
sipush 3001
invokevirtual com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/FriendGroupSubjectImpl/notifyFriendGroupLoadState(JI)V
iconst_1
ireturn
.limit locals 10
.limit stack 7
.end method

.method public removeFriendGroupDataObserver(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IFriendGroupDataObserver;)V
invokestatic com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/FriendGroupSubjectImpl/getInstance()Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/FriendGroupSubjectImpl;
aload 1
invokevirtual com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/FriendGroupSubjectImpl/removeFriendGroupDataObserver(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IFriendGroupDataObserver;)V
return
.limit locals 2
.limit stack 2
.end method

.method public removeFriendGroupLoadObserver(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IFriendGroupLoadObserver;)V
invokestatic com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/FriendGroupSubjectImpl/getInstance()Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/FriendGroupSubjectImpl;
aload 1
invokevirtual com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/FriendGroupSubjectImpl/removeFriendGroupLoadObserver(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IFriendGroupLoadObserver;)V
return
.limit locals 2
.limit stack 2
.end method
