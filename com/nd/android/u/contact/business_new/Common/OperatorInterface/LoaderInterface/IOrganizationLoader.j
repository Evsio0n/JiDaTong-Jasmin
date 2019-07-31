.bytecode 50.0
.class public abstract interface com/nd/android/u/contact/business_new/Common/OperatorInterface/LoaderInterface/IOrganizationLoader
.super java/lang/Object

.method public abstract calcUserCount(Lcom/product/android/commonInterface/contact/AbsNodeData;)I
.end method

.method public abstract fullLoadData(J)Z
.throws com/common/android/utils/http/HttpException
.throws java/lang/InterruptedException
.end method

.method public abstract getChildlList(Lcom/product/android/commonInterface/contact/AbsNodeData;Ljava/util/List;)Z
.signature "(Lcom/product/android/commonInterface/contact/AbsNodeData;Ljava/util/List<Lcom/product/android/commonInterface/contact/AbsNodeData;>;)Z"
.end method

.method public abstract getParentInfo(Lcom/product/android/commonInterface/contact/AbsNodeData;Ljava/util/List;)Z
.signature "(Lcom/product/android/commonInterface/contact/AbsNodeData;Ljava/util/List<Lcom/product/android/commonInterface/contact/AbsNodeData;>;)Z"
.end method

.method public abstract incrementLoadData(J)Z
.throws com/common/android/utils/http/HttpException
.throws java/lang/InterruptedException
.end method

.method public abstract loadData(ZJ)Z
.throws com/common/android/utils/http/HttpException
.throws java/lang/InterruptedException
.end method
