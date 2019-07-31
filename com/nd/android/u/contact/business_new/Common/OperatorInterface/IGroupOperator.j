.bytecode 50.0
.class public abstract interface com/nd/android/u/contact/business_new/Common/OperatorInterface/IGroupOperator
.super java/lang/Object

.method public abstract addGroupLoadObserver(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupLoadObserver;)V
.end method

.method public abstract addGroupStateObserver(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupStateObserver;)V
.end method

.method public abstract clearGroupCache()V
.end method

.method public abstract createDiscussion(Ljava/lang/String;Ljava/util/Iterator;)Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup;
.signature "(Ljava/lang/String;Ljava/util/Iterator<Ljava/lang/Long;>;)Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup;"
.end method

.method public abstract createGroup(Ljava/lang/String;Ljava/lang/String;IIII)Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup;
.end method

.method public abstract findGroupByDB(J)Lcom/product/android/commonInterface/contact/OapGroup;
.end method

.method public abstract getCommonMsgNotifyType()I
.end method

.method public abstract getGroup(J)Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup;
.end method

.method public abstract getGroupCategory()Ljava/util/Iterator;
.signature "()Ljava/util/Iterator<Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/OapGroupCatagory;>;"
.end method

.method public abstract getGroupList(I)Ljava/util/Iterator;
.signature "(I)Ljava/util/Iterator<Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup;>;"
.end method

.method public abstract refresh(JZ)Z
.end method

.method public abstract removeGroupLoadObserver(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupLoadObserver;)V
.end method

.method public abstract removeGroupStateObserver(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupStateObserver;)V
.end method

.method public abstract searchGroupByDB(Ljava/lang/String;)Ljava/util/Iterator;
.signature "(Ljava/lang/String;)Ljava/util/Iterator<Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup;>;"
.end method

.method public abstract searchGroupByNet(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;II)I
.signature "(Ljava/util/List<Lcom/product/android/commonInterface/contact/OapGroup;>;Ljava/lang/String;Ljava/lang/String;II)I"
.throws com/common/android/utils/http/HttpException
.end method

.method public abstract setCommonMsgNotifyType(II)V
.end method

.method public abstract setGroupLoader(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/LoaderInterface/IGroupLoader;)V
.end method
