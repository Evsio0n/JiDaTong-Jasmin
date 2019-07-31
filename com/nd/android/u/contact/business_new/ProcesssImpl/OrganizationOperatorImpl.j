.bytecode 50.0
.class public synchronized com/nd/android/u/contact/business_new/ProcesssImpl/OrganizationOperatorImpl
.super java/lang/Object
.implements com/nd/android/u/contact/business_new/Common/OperatorInterface/IOrganizationOperator

.field private 'orgDataObserverList' Ljava/util/List; signature "Ljava/util/List<Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IOrgDataObserver;>;"

.field private 'orgLoaderObj' Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/LoaderInterface/IOrganizationLoader;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/contact/business_new/ProcesssImpl/OrganizationOperatorImpl/orgDataObserverList Ljava/util/List;
return
.limit locals 1
.limit stack 3
.end method

.method public GetSearchUserCount(Ljava/lang/String;)I
.catch java/lang/Exception from L0 to L1 using L2
L0:
ldc com/nd/android/u/contact/dao/OapUserDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapUserDao
aload 1
invokeinterface com/nd/android/u/contact/dao/OapUserDao/getSearchContracByKeySize(Ljava/lang/String;)I 1
istore 2
L1:
iload 2
ireturn
L2:
astore 1
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
ldc "wanggd"
ldc "GetSearchUserCount error"
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
iconst_0
ireturn
.limit locals 3
.limit stack 2
.end method

.method public addOrgObeserver(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IOrgDataObserver;)Z
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/OrganizationOperatorImpl/orgDataObserverList Ljava/util/List;
ifnull L0
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/OrganizationOperatorImpl/orgDataObserverList Ljava/util/List;
aload 1
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 2
.limit stack 2
.end method

.method public getChildlList(Lcom/product/android/commonInterface/contact/AbsNodeData;Ljava/util/List;)Z
.signature "(Lcom/product/android/commonInterface/contact/AbsNodeData;Ljava/util/List<Lcom/product/android/commonInterface/contact/AbsNodeData;>;)Z"
.catch java/lang/Exception from L0 to L1 using L2
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/OrganizationOperatorImpl/orgLoaderObj Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/LoaderInterface/IOrganizationLoader;
ifnonnull L0
iconst_0
ireturn
L0:
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/OrganizationOperatorImpl/orgLoaderObj Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/LoaderInterface/IOrganizationLoader;
aload 1
aload 2
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/LoaderInterface/IOrganizationLoader/getChildlList(Lcom/product/android/commonInterface/contact/AbsNodeData;Ljava/util/List;)Z 2
istore 3
L1:
iload 3
ireturn
L2:
astore 1
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
ldc "wanggd"
ldc "getChildlList error"
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
iconst_0
ireturn
.limit locals 4
.limit stack 3
.end method

.method public getDepartInfo(Lcom/product/android/commonInterface/contact/AbsNodeData;)Z
iconst_1
ireturn
.limit locals 2
.limit stack 1
.end method

.method public getOapUser(JLcom/nd/android/u/contact/cache/ProfileUserCacheCallback;)Lcom/product/android/commonInterface/contact/OapUser;
invokestatic com/nd/android/u/contact/cache/UserCacheManager/getInstance()Lcom/nd/android/u/contact/cache/UserCacheManager;
lload 1
aload 3
invokevirtual com/nd/android/u/contact/cache/UserCacheManager/get(JLcom/nd/android/u/contact/cache/ProfileUserCacheCallback;)Lcom/product/android/commonInterface/contact/OapUser;
areturn
.limit locals 4
.limit stack 4
.end method

.method public getOapUserByCom(J)Lcom/product/android/commonInterface/contact/OapUser;
invokestatic com/nd/android/u/contact/cache/UserCacheManager/getInstance()Lcom/nd/android/u/contact/cache/UserCacheManager;
lload 1
invokevirtual com/nd/android/u/contact/cache/UserCacheManager/safeGet(J)Lcom/product/android/commonInterface/contact/OapUser;
areturn
.limit locals 3
.limit stack 3
.end method

.method public getParentInfo(Lcom/product/android/commonInterface/contact/AbsNodeData;Ljava/util/List;)Z
.signature "(Lcom/product/android/commonInterface/contact/AbsNodeData;Ljava/util/List<Lcom/product/android/commonInterface/contact/AbsNodeData;>;)Z"
.catch java/lang/Exception from L0 to L1 using L2
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/OrganizationOperatorImpl/orgLoaderObj Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/LoaderInterface/IOrganizationLoader;
ifnonnull L0
iconst_0
ireturn
L0:
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/OrganizationOperatorImpl/orgLoaderObj Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/LoaderInterface/IOrganizationLoader;
aload 1
aload 2
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/LoaderInterface/IOrganizationLoader/getParentInfo(Lcom/product/android/commonInterface/contact/AbsNodeData;Ljava/util/List;)Z 2
istore 3
L1:
iload 3
ireturn
L2:
astore 1
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
ldc "wanggd"
ldc "getParentInfo error"
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
iconst_0
ireturn
.limit locals 4
.limit stack 3
.end method

.method public modifyUserSignature(Ljava/lang/String;)Z
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
L0:
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getOapUserCom()Lcom/nd/android/u/contact/com/OapUserCom;
aload 1
invokevirtual com/nd/android/u/contact/com/OapUserCom/modifyUserSign(Ljava/lang/String;)Z
istore 2
L1:
iload 2
ifne L3
iconst_0
ireturn
L2:
astore 5
aload 5
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
ldc "wanggd"
ldc "updateUserInfo error"
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
iconst_0
istore 2
goto L1
L3:
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getBindUser()Lcom/product/android/business/login/BindUser; 0
aload 1
invokevirtual com/product/android/business/login/BindUser/setSignature(Ljava/lang/String;)V
ldc com/nd/android/u/contact/dao/UserInfoDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/UserInfoDao
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getBindUser()Lcom/product/android/business/login/BindUser; 0
invokeinterface com/nd/android/u/contact/dao/UserInfoDao/updateUserInfo(Lcom/product/android/business/login/BindUser;)Z 1
pop
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
lstore 3
invokestatic com/nd/android/u/contact/cache/UserCacheManager/getInstance()Lcom/nd/android/u/contact/cache/UserCacheManager;
lload 3
invokevirtual com/nd/android/u/contact/cache/UserCacheManager/getUser(J)Lcom/product/android/commonInterface/contact/OapUser;
aload 1
invokevirtual com/product/android/commonInterface/contact/OapUser/setSignature(Ljava/lang/String;)V
iconst_1
ireturn
.limit locals 6
.limit stack 3
.end method

.method public refreshOrgData(ZJ)Z
.catch java/lang/InterruptedException from L0 to L1 using L2
.catch com/common/android/utils/http/HttpException from L0 to L1 using L3
.catch java/lang/Exception from L0 to L1 using L4
.catch java/lang/InterruptedException from L5 to L6 using L2
.catch com/common/android/utils/http/HttpException from L5 to L6 using L3
.catch java/lang/Exception from L5 to L6 using L4
.catch java/lang/InterruptedException from L7 to L8 using L2
.catch com/common/android/utils/http/HttpException from L7 to L8 using L3
.catch java/lang/Exception from L7 to L8 using L4
.catch java/lang/Exception from L9 to L10 using L11
.catch java/lang/Exception from L12 to L13 using L11
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/OrganizationOperatorImpl/orgLoaderObj Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/LoaderInterface/IOrganizationLoader;
ifnonnull L0
iconst_0
istore 5
L14:
iload 5
ireturn
L0:
invokestatic com/nd/android/u/contact/cache/UserCacheManager/getInstance()Lcom/nd/android/u/contact/cache/UserCacheManager;
invokevirtual com/nd/android/u/contact/cache/UserCacheManager/clear()V
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/OrganizationOperatorImpl/orgLoaderObj Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/LoaderInterface/IOrganizationLoader;
iload 1
lload 2
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/LoaderInterface/IOrganizationLoader/loadData(ZJ)Z 3
istore 1
L1:
iload 1
iconst_1
if_icmpne L15
iconst_0
istore 4
L5:
lload 2
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
lcmp
ifeq L8
L6:
bipush -2
istore 4
iconst_0
istore 1
L7:
ldc "wanggd"
ldc "refreshOrgData return ORG_DATA_OBSERVER_ERR_UID"
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L8:
iload 1
istore 5
L9:
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/OrganizationOperatorImpl/orgDataObserverList Ljava/util/List;
invokeinterface java/util/List/size()I 0
ifle L14
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/OrganizationOperatorImpl/orgDataObserverList Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 6
L10:
iload 1
istore 5
L12:
aload 6
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L14
aload 6
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IOrgDataObserver
iload 4
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IOrgDataObserver/FinishRefreshData(I)V 1
L13:
goto L10
L11:
astore 6
aload 6
invokevirtual java/lang/Exception/printStackTrace()V
ldc "wanggd"
ldc "refreshOrgData error1"
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
iconst_0
ireturn
L15:
iconst_m1
istore 4
goto L5
L2:
astore 6
aload 6
invokevirtual java/lang/InterruptedException/printStackTrace()V
iconst_0
istore 1
iconst_m1
istore 4
ldc "wanggd"
ldc "refreshOrgData InterruptedException return ORG_DATA_OBSERVER_ERR_UID"
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
goto L8
L3:
astore 6
aload 6
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
iconst_0
istore 1
iconst_m1
istore 4
ldc "wanggd"
ldc "refreshOrgData HttpException return ORG_DATA_OBSERVER_ERR_UID"
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
goto L8
L4:
astore 6
aload 6
invokevirtual java/lang/Exception/printStackTrace()V
iconst_0
istore 1
iconst_m1
istore 4
ldc "wanggd"
ldc "refreshOrgData Exception return ORG_DATA_OBSERVER_ERR_UID"
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
goto L8
.limit locals 7
.limit stack 4
.end method

.method public removeOrgObeserver(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IOrgDataObserver;)Z
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/OrganizationOperatorImpl/orgDataObserverList Ljava/util/List;
aload 1
invokeinterface java/util/List/indexOf(Ljava/lang/Object;)I 1
istore 2
iload 2
iflt L0
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/OrganizationOperatorImpl/orgDataObserverList Ljava/util/List;
iload 2
invokeinterface java/util/List/remove(I)Ljava/lang/Object; 1
pop
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 3
.limit stack 2
.end method

.method public seachUserByNameByNet(Ljava/lang/String;)Ljava/util/List;
.signature "(Ljava/lang/String;)Ljava/util/List<Lcom/product/android/commonInterface/contact/OapUser;>;"
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
L0:
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getOapUserCom()Lcom/nd/android/u/contact/com/OapUserCom;
aload 1
invokevirtual com/nd/android/u/contact/com/OapUserCom/searchUserByUsername(Ljava/lang/String;)Ljava/util/List;
astore 1
L1:
aload 1
areturn
L2:
astore 1
aload 1
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
ldc "wanggd"
ldc "seachUserByNameByNet error"
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
aconst_null
areturn
.limit locals 2
.limit stack 2
.end method

.method public searchUserByDB(IILjava/lang/String;)Ljava/util/List;
.signature "(IILjava/lang/String;)Ljava/util/List<Lcom/product/android/commonInterface/chat/SearchContract;>;"
.catch java/lang/Exception from L0 to L1 using L2
L0:
ldc com/nd/android/u/contact/dao/OapUserDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapUserDao
iload 1
iload 2
aload 3
invokeinterface com/nd/android/u/contact/dao/OapUserDao/searchContracByKey(IILjava/lang/String;)Ljava/util/List; 3
astore 3
L1:
aload 3
areturn
L2:
astore 3
aload 3
invokevirtual java/lang/Exception/printStackTrace()V
ldc "wanggd"
ldc "searchUserByDB error"
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
aconst_null
areturn
.limit locals 4
.limit stack 4
.end method

.method public setOrgLoader(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/LoaderInterface/IOrganizationLoader;)Z
aload 1
ifnull L0
aload 0
aload 1
putfield com/nd/android/u/contact/business_new/ProcesssImpl/OrganizationOperatorImpl/orgLoaderObj Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/LoaderInterface/IOrganizationLoader;
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 2
.limit stack 2
.end method

.method public updateUserInfo(Lorg/json/JSONObject;)Z
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
L0:
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getOapUserCom()Lcom/nd/android/u/contact/com/OapUserCom;
aload 1
invokevirtual com/nd/android/u/contact/com/OapUserCom/modifyUser(Lorg/json/JSONObject;)Z
istore 2
L1:
iload 2
ireturn
L2:
astore 1
aload 1
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
ldc "wanggd"
ldc "updateUserInfo error"
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
iconst_0
ireturn
.limit locals 3
.limit stack 2
.end method
