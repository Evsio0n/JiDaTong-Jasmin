.bytecode 50.0
.class public abstract interface com/nd/android/u/contact/business_new/Common/OperatorInterface/IOrganizationOperator
.super java/lang/Object

.method public abstract GetSearchUserCount(Ljava/lang/String;)I
.end method

.method public abstract addOrgObeserver(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IOrgDataObserver;)Z
.end method

.method public abstract getChildlList(Lcom/product/android/commonInterface/contact/AbsNodeData;Ljava/util/List;)Z
.signature "(Lcom/product/android/commonInterface/contact/AbsNodeData;Ljava/util/List<Lcom/product/android/commonInterface/contact/AbsNodeData;>;)Z"
.end method

.method public abstract getDepartInfo(Lcom/product/android/commonInterface/contact/AbsNodeData;)Z
.end method

.method public abstract getOapUser(JLcom/nd/android/u/contact/cache/ProfileUserCacheCallback;)Lcom/product/android/commonInterface/contact/OapUser;
.end method

.method public abstract getOapUserByCom(J)Lcom/product/android/commonInterface/contact/OapUser;
.end method

.method public abstract getParentInfo(Lcom/product/android/commonInterface/contact/AbsNodeData;Ljava/util/List;)Z
.signature "(Lcom/product/android/commonInterface/contact/AbsNodeData;Ljava/util/List<Lcom/product/android/commonInterface/contact/AbsNodeData;>;)Z"
.end method

.method public abstract modifyUserSignature(Ljava/lang/String;)Z
.end method

.method public abstract refreshOrgData(ZJ)Z
.end method

.method public abstract removeOrgObeserver(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IOrgDataObserver;)Z
.end method

.method public abstract seachUserByNameByNet(Ljava/lang/String;)Ljava/util/List;
.signature "(Ljava/lang/String;)Ljava/util/List<Lcom/product/android/commonInterface/contact/OapUser;>;"
.end method

.method public abstract searchUserByDB(IILjava/lang/String;)Ljava/util/List;
.signature "(IILjava/lang/String;)Ljava/util/List<Lcom/product/android/commonInterface/chat/SearchContract;>;"
.end method

.method public abstract setOrgLoader(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/LoaderInterface/IOrganizationLoader;)Z
.end method

.method public abstract updateUserInfo(Lorg/json/JSONObject;)Z
.end method
