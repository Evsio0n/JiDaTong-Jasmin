.bytecode 50.0
.class synchronized com/nd/android/u/contact/ui/transfer/OrgDataTransfer$1
.super java/lang/Object
.implements com/nd/android/u/contact/ui/base/ContactCacheAsyncTask$CallBackgrounp
.enclosing method com/nd/android/u/contact/ui/transfer/OrgDataTransfer/getDirectChildren(IJLjava/lang/Integer;I)V
.inner class inner com/nd/android/u/contact/ui/transfer/OrgDataTransfer$1

.field final synthetic 'this$0' Lcom/nd/android/u/contact/ui/transfer/OrgDataTransfer;

.field final synthetic 'val$depId' J

.field final synthetic 'val$level' I

.field final synthetic 'val$pos' Ljava/lang/Integer;

.field final synthetic 'val$type' I

.method <init>(Lcom/nd/android/u/contact/ui/transfer/OrgDataTransfer;JILjava/lang/Integer;I)V
aload 0
aload 1
putfield com/nd/android/u/contact/ui/transfer/OrgDataTransfer$1/this$0 Lcom/nd/android/u/contact/ui/transfer/OrgDataTransfer;
aload 0
lload 2
putfield com/nd/android/u/contact/ui/transfer/OrgDataTransfer$1/val$depId J
aload 0
iload 4
putfield com/nd/android/u/contact/ui/transfer/OrgDataTransfer$1/val$type I
aload 0
aload 5
putfield com/nd/android/u/contact/ui/transfer/OrgDataTransfer$1/val$pos Ljava/lang/Integer;
aload 0
iload 6
putfield com/nd/android/u/contact/ui/transfer/OrgDataTransfer$1/val$level I
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 7
.limit stack 3
.end method

.method public doBackgrounp()Lcom/nd/android/u/contact/ui/bean/CallBackResult;
new com/nd/android/u/contact/ui/bean/CallBackResult
dup
invokespecial com/nd/android/u/contact/ui/bean/CallBackResult/<init>()V
astore 3
aload 3
getstatic com/nd/android/u/contact/ui/task/OrgAsyncTask$CALLBACK_TYPE/GET_NODE_CHILDREN Lcom/nd/android/u/contact/ui/task/OrgAsyncTask$CALLBACK_TYPE;
invokevirtual com/nd/android/u/contact/ui/task/OrgAsyncTask$CALLBACK_TYPE/ordinal()I
invokevirtual com/nd/android/u/contact/ui/bean/CallBackResult/setType(I)V
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 4
new com/product/android/commonInterface/contact/AbsNodeData
dup
invokespecial com/product/android/commonInterface/contact/AbsNodeData/<init>()V
astore 6
aload 6
aload 0
getfield com/nd/android/u/contact/ui/transfer/OrgDataTransfer$1/val$depId J
invokevirtual com/product/android/commonInterface/contact/AbsNodeData/setNode_id(J)V
aload 6
aload 0
getfield com/nd/android/u/contact/ui/transfer/OrgDataTransfer$1/val$type I
invokevirtual com/product/android/commonInterface/contact/AbsNodeData/setType(I)V
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 5
aload 0
getfield com/nd/android/u/contact/ui/transfer/OrgDataTransfer$1/val$pos Ljava/lang/Integer;
invokevirtual java/lang/Integer/intValue()I
iconst_m1
if_icmpne L0
invokestatic com/nd/android/u/contact/ui/transfer/OrgDataTransfer/access$000()Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/IOrganizationOperator;
aconst_null
aload 5
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/IOrganizationOperator/getChildlList(Lcom/product/android/commonInterface/contact/AbsNodeData;Ljava/util/List;)Z 2
istore 2
iload 2
istore 1
iload 2
ifeq L1
iload 2
istore 1
invokestatic com/nd/android/u/contact/ui/transfer/OrgDataTransfer/access$100()Z
ifeq L1
iload 2
istore 1
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getType()I 0
invokestatic com/product/android/business/ApplicationVariable$IDENTITY/value2Enum(I)Lcom/product/android/business/ApplicationVariable$IDENTITY;
getstatic com/product/android/business/ApplicationVariable$IDENTITY/STAFF Lcom/product/android/business/ApplicationVariable$IDENTITY;
if_acmpne L1
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 6
aload 6
aload 5
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
aload 6
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 6
L2:
iload 2
istore 1
aload 6
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 6
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/contact/AbsNodeData
astore 7
aload 7
invokevirtual com/product/android/commonInterface/contact/AbsNodeData/getNode_id()J
ldc2_w -13L
lcmp
ifne L2
aload 5
aload 7
invokeinterface java/util/List/remove(Ljava/lang/Object;)Z 1
pop
goto L2
L0:
invokestatic com/nd/android/u/contact/ui/transfer/OrgDataTransfer/access$000()Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/IOrganizationOperator;
aload 6
aload 5
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/IOrganizationOperator/getChildlList(Lcom/product/android/commonInterface/contact/AbsNodeData;Ljava/util/List;)Z 2
istore 1
L1:
iload 1
ifne L3
aload 3
getstatic com/nd/android/u/contact/ui/bean/CallBackResult/FAILURE I
invokevirtual com/nd/android/u/contact/ui/bean/CallBackResult/setCode(I)V
aload 3
getstatic com/nd/android/u/contact/R$string/org_common_error I
invokevirtual com/nd/android/u/contact/ui/bean/CallBackResult/setResId(I)V
aload 3
areturn
L3:
aload 5
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 5
L4:
aload 5
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L5
aload 5
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/contact/AbsNodeData
astore 6
aload 6
invokevirtual com/product/android/commonInterface/contact/AbsNodeData/getType()I
bipush -4
if_icmpeq L6
aload 6
invokevirtual com/product/android/commonInterface/contact/AbsNodeData/getType()I
bipush -5
if_icmpne L7
L6:
invokestatic com/nd/android/u/contact/ui/transfer/OrgDataTransfer/access$100()Z
ifne L4
new com/nd/android/u/contact/ui/bean/OrgUserNode
dup
invokespecial com/nd/android/u/contact/ui/bean/OrgUserNode/<init>()V
astore 7
aload 7
aload 6
invokevirtual com/product/android/commonInterface/contact/AbsNodeData/getNode_id()J
invokevirtual com/nd/android/u/contact/ui/bean/OrgUserNode/setId(J)V
aload 7
aload 0
getfield com/nd/android/u/contact/ui/transfer/OrgDataTransfer$1/val$level I
iconst_1
iadd
invokevirtual com/nd/android/u/contact/ui/bean/OrgUserNode/setLevel(I)V
aload 7
aload 6
invokevirtual com/product/android/commonInterface/contact/AbsNodeData/getName()Ljava/lang/String;
invokevirtual com/nd/android/u/contact/ui/bean/OrgUserNode/setName(Ljava/lang/String;)V
aload 7
aload 6
invokevirtual com/product/android/commonInterface/contact/AbsNodeData/getType()I
invokevirtual com/nd/android/u/contact/ui/bean/OrgUserNode/setBackType(I)V
aload 7
getstatic com/nd/android/u/contact/ui/bean/OrgNode$NODE_TYPE/UNEXPEND_NODE_USER Lcom/nd/android/u/contact/ui/bean/OrgNode$NODE_TYPE;
invokevirtual com/nd/android/u/contact/ui/bean/OrgUserNode/setUiType(Lcom/nd/android/u/contact/ui/bean/OrgNode$NODE_TYPE;)V
aload 7
aload 6
invokevirtual com/product/android/commonInterface/contact/AbsNodeData/getSignature()Ljava/lang/String;
invokevirtual com/nd/android/u/contact/ui/bean/OrgUserNode/setIntro(Ljava/lang/String;)V
aload 4
aload 7
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
goto L4
L7:
new com/nd/android/u/contact/ui/bean/OrgDepatNode
dup
invokespecial com/nd/android/u/contact/ui/bean/OrgDepatNode/<init>()V
astore 7
aload 7
aload 6
invokevirtual com/product/android/commonInterface/contact/AbsNodeData/getNode_id()J
invokevirtual com/nd/android/u/contact/ui/bean/OrgDepatNode/setId(J)V
aload 7
aload 0
getfield com/nd/android/u/contact/ui/transfer/OrgDataTransfer$1/val$level I
iconst_1
iadd
invokevirtual com/nd/android/u/contact/ui/bean/OrgDepatNode/setLevel(I)V
aload 7
aload 6
invokevirtual com/product/android/commonInterface/contact/AbsNodeData/getName()Ljava/lang/String;
invokevirtual com/nd/android/u/contact/ui/bean/OrgDepatNode/setName(Ljava/lang/String;)V
aload 7
aload 6
invokevirtual com/product/android/commonInterface/contact/AbsNodeData/getType()I
invokevirtual com/nd/android/u/contact/ui/bean/OrgDepatNode/setBackType(I)V
aload 7
getstatic com/nd/android/u/contact/ui/bean/OrgNode$NODE_TYPE/EXPEND_NODE Lcom/nd/android/u/contact/ui/bean/OrgNode$NODE_TYPE;
invokevirtual com/nd/android/u/contact/ui/bean/OrgDepatNode/setUiType(Lcom/nd/android/u/contact/ui/bean/OrgNode$NODE_TYPE;)V
aload 7
aload 6
invokevirtual com/product/android/commonInterface/contact/AbsNodeData/getAbsUsercount()I
invokevirtual com/nd/android/u/contact/ui/bean/OrgDepatNode/setNum(I)V
aload 4
aload 7
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
goto L4
L5:
aload 3
aload 0
getfield com/nd/android/u/contact/ui/transfer/OrgDataTransfer$1/val$pos Ljava/lang/Integer;
invokevirtual com/nd/android/u/contact/ui/bean/CallBackResult/setExtras(Ljava/lang/Object;)V
aload 3
getstatic com/nd/android/u/contact/ui/bean/CallBackResult/SUCCESS I
invokevirtual com/nd/android/u/contact/ui/bean/CallBackResult/setCode(I)V
aload 3
aload 4
invokevirtual com/nd/android/u/contact/ui/bean/CallBackResult/setDatas(Ljava/util/List;)V
aload 3
areturn
.limit locals 8
.limit stack 4
.end method
