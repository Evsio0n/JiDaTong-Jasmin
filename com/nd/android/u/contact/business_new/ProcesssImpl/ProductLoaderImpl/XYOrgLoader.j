.bytecode 50.0
.class public synchronized com/nd/android/u/contact/business_new/ProcesssImpl/ProductLoaderImpl/XYOrgLoader
.super java/lang/Object
.implements com/nd/android/u/contact/business_new/Common/OperatorInterface/LoaderInterface/IOrganizationLoader

.field private static 'instance' Lcom/nd/android/u/contact/business_new/ProcesssImpl/ProductLoaderImpl/XYOrgLoader;

.method static <clinit>()V
aconst_null
putstatic com/nd/android/u/contact/business_new/ProcesssImpl/ProductLoaderImpl/XYOrgLoader/instance Lcom/nd/android/u/contact/business_new/ProcesssImpl/ProductLoaderImpl/XYOrgLoader;
return
.limit locals 0
.limit stack 1
.end method

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static getInstance()Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/LoaderInterface/IOrganizationLoader;
.catch all from L0 to L1 using L2
.catch all from L1 to L3 using L2
ldc com/nd/android/u/contact/business_new/ProcesssImpl/ProductLoaderImpl/XYOrgLoader
monitorenter
L0:
getstatic com/nd/android/u/contact/business_new/ProcesssImpl/ProductLoaderImpl/XYOrgLoader/instance Lcom/nd/android/u/contact/business_new/ProcesssImpl/ProductLoaderImpl/XYOrgLoader;
ifnonnull L1
new com/nd/android/u/contact/business_new/ProcesssImpl/ProductLoaderImpl/XYOrgLoader
dup
invokespecial com/nd/android/u/contact/business_new/ProcesssImpl/ProductLoaderImpl/XYOrgLoader/<init>()V
putstatic com/nd/android/u/contact/business_new/ProcesssImpl/ProductLoaderImpl/XYOrgLoader/instance Lcom/nd/android/u/contact/business_new/ProcesssImpl/ProductLoaderImpl/XYOrgLoader;
L1:
getstatic com/nd/android/u/contact/business_new/ProcesssImpl/ProductLoaderImpl/XYOrgLoader/instance Lcom/nd/android/u/contact/business_new/ProcesssImpl/ProductLoaderImpl/XYOrgLoader;
astore 0
L3:
ldc com/nd/android/u/contact/business_new/ProcesssImpl/ProductLoaderImpl/XYOrgLoader
monitorexit
aload 0
areturn
L2:
astore 0
ldc com/nd/android/u/contact/business_new/ProcesssImpl/ProductLoaderImpl/XYOrgLoader
monitorexit
aload 0
athrow
.limit locals 1
.limit stack 2
.end method

.method public calcUserCount(Lcom/product/android/commonInterface/contact/AbsNodeData;)I
iconst_0
ireturn
.limit locals 2
.limit stack 1
.end method

.method public fullLoadData(J)Z
.throws com/common/android/utils/http/HttpException
.throws java/lang/InterruptedException
iconst_1
ireturn
.limit locals 3
.limit stack 1
.end method

.method public getChildlList(Lcom/product/android/commonInterface/contact/AbsNodeData;Ljava/util/List;)Z
.signature "(Lcom/product/android/commonInterface/contact/AbsNodeData;Ljava/util/List<Lcom/product/android/commonInterface/contact/AbsNodeData;>;)Z"
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 4
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 5
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 6
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 7
aload 2
ifnull L0
aload 2
ifnonnull L1
L0:
iconst_0
ireturn
L1:
aload 1
ifnonnull L2
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getType()I 0
invokestatic com/product/android/business/ApplicationVariable$IDENTITY/value2Enum(I)Lcom/product/android/business/ApplicationVariable$IDENTITY;
getstatic com/product/android/business/ApplicationVariable$IDENTITY/STUDENT Lcom/product/android/business/ApplicationVariable$IDENTITY;
if_acmpne L3
aload 2
bipush -14
invokestatic com/nd/android/u/contact/business_new/Tool/AbsNodeDataTool/MakeABSNode(I)Lcom/product/android/commonInterface/contact/AbsNodeData;
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 2
invokestatic com/nd/android/u/contact/business_new/Tool/AbsNodeDataTool/ProcessUserCount(Ljava/util/List;)Z
pop
iconst_1
ireturn
L3:
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getType()I 0
invokestatic com/product/android/business/ApplicationVariable$IDENTITY/value2Enum(I)Lcom/product/android/business/ApplicationVariable$IDENTITY;
getstatic com/product/android/business/ApplicationVariable$IDENTITY/STAFF Lcom/product/android/business/ApplicationVariable$IDENTITY;
if_acmpne L0
aload 2
bipush -12
invokestatic com/nd/android/u/contact/business_new/Tool/AbsNodeDataTool/MakeABSNode(I)Lcom/product/android/commonInterface/contact/AbsNodeData;
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
bipush -13
invokestatic com/nd/android/u/contact/business_new/Tool/AbsNodeDataTool/MakeABSNode(I)Lcom/product/android/commonInterface/contact/AbsNodeData;
astore 1
aload 2
aload 1
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 2
invokestatic com/nd/android/u/contact/business_new/Tool/AbsNodeDataTool/ProcessUserCount(Ljava/util/List;)Z
pop
aload 1
invokevirtual com/product/android/commonInterface/contact/AbsNodeData/getAbsUsercount()I
ifne L4
aload 2
aload 1
invokeinterface java/util/List/remove(Ljava/lang/Object;)Z 1
pop
L4:
iconst_1
ireturn
L2:
aload 1
invokevirtual com/product/android/commonInterface/contact/AbsNodeData/getType()I
bipush -12
if_icmpne L5
invokestatic com/nd/android/u/contact/business_new/ProcesssImpl/FunctionLoaderImpl/WorkerLoader/getInstance()Lcom/nd/android/u/contact/business_new/ProcesssImpl/FunctionLoaderImpl/WorkerLoader;
lconst_0
aload 4
aload 5
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/FunctionLoaderImpl/WorkerLoader/getChildData(JLjava/util/List;Ljava/util/List;)Z
istore 3
iconst_m1
aload 4
invokestatic com/nd/android/u/contact/business_new/Tool/AbsNodeDataTool/ConvertABSNodeList(ILjava/util/List;)Z
pop
bipush -4
aload 5
invokestatic com/nd/android/u/contact/business_new/Tool/AbsNodeDataTool/ConvertABSNodeList(ILjava/util/List;)Z
pop
aload 2
aload 4
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
aload 2
aload 5
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
aload 2
invokestatic com/nd/android/u/contact/business_new/Tool/AbsNodeDataTool/ProcessUserCount(Ljava/util/List;)Z
pop
iload 3
ireturn
L5:
aload 1
invokevirtual com/product/android/commonInterface/contact/AbsNodeData/getType()I
bipush -13
if_icmpne L6
invokestatic com/nd/android/u/contact/business_new/ProcesssImpl/FunctionLoaderImpl/UniversityClassLoader/getInstance()Lcom/nd/android/u/contact/business_new/ProcesssImpl/FunctionLoaderImpl/UniversityClassLoader;
aload 6
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/FunctionLoaderImpl/UniversityClassLoader/getClassList(Ljava/util/List;)Z
istore 3
bipush -3
aload 6
invokestatic com/nd/android/u/contact/business_new/Tool/AbsNodeDataTool/ConvertABSNodeList(ILjava/util/List;)Z
pop
aload 2
aload 6
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
aload 2
invokestatic com/nd/android/u/contact/business_new/Tool/AbsNodeDataTool/ProcessUserCount(Ljava/util/List;)Z
pop
iload 3
ireturn
L6:
aload 1
invokevirtual com/product/android/commonInterface/contact/AbsNodeData/getType()I
bipush -14
if_icmpne L7
invokestatic com/nd/android/u/contact/business_new/ProcesssImpl/FunctionLoaderImpl/UniversityClassLoader/getInstance()Lcom/nd/android/u/contact/business_new/ProcesssImpl/FunctionLoaderImpl/UniversityClassLoader;
aload 6
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/FunctionLoaderImpl/UniversityClassLoader/getClassList(Ljava/util/List;)Z
istore 3
bipush -3
aload 6
invokestatic com/nd/android/u/contact/business_new/Tool/AbsNodeDataTool/ConvertABSNodeList(ILjava/util/List;)Z
pop
aload 2
aload 6
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
aload 2
invokestatic com/nd/android/u/contact/business_new/Tool/AbsNodeDataTool/ProcessUserCount(Ljava/util/List;)Z
pop
iload 3
ireturn
L7:
aload 1
invokevirtual com/product/android/commonInterface/contact/AbsNodeData/getType()I
bipush -3
if_icmpne L8
invokestatic com/nd/android/u/contact/business_new/ProcesssImpl/FunctionLoaderImpl/UniversityClassLoader/getInstance()Lcom/nd/android/u/contact/business_new/ProcesssImpl/FunctionLoaderImpl/UniversityClassLoader;
aload 1
invokevirtual com/product/android/commonInterface/contact/AbsNodeData/getNode_id()J
aload 7
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/FunctionLoaderImpl/UniversityClassLoader/getClassMember(JLjava/util/List;)Z
istore 3
bipush -5
aload 7
invokestatic com/nd/android/u/contact/business_new/Tool/AbsNodeDataTool/ConvertABSNodeList(ILjava/util/List;)Z
pop
aload 2
aload 7
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
aload 2
invokestatic com/nd/android/u/contact/business_new/Tool/AbsNodeDataTool/ProcessUserCount(Ljava/util/List;)Z
pop
iload 3
ireturn
L8:
aload 1
invokevirtual com/product/android/commonInterface/contact/AbsNodeData/getType()I
iconst_m1
if_icmpne L0
invokestatic com/nd/android/u/contact/business_new/ProcesssImpl/FunctionLoaderImpl/WorkerLoader/getInstance()Lcom/nd/android/u/contact/business_new/ProcesssImpl/FunctionLoaderImpl/WorkerLoader;
aload 1
invokevirtual com/product/android/commonInterface/contact/AbsNodeData/getNode_id()J
aload 4
aload 5
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/FunctionLoaderImpl/WorkerLoader/getChildData(JLjava/util/List;Ljava/util/List;)Z
istore 3
iconst_m1
aload 4
invokestatic com/nd/android/u/contact/business_new/Tool/AbsNodeDataTool/ConvertABSNodeList(ILjava/util/List;)Z
pop
bipush -4
aload 5
invokestatic com/nd/android/u/contact/business_new/Tool/AbsNodeDataTool/ConvertABSNodeList(ILjava/util/List;)Z
pop
aload 2
aload 4
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
aload 2
aload 5
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
aload 2
invokestatic com/nd/android/u/contact/business_new/Tool/AbsNodeDataTool/ProcessUserCount(Ljava/util/List;)Z
pop
iload 3
ireturn
.limit locals 8
.limit stack 5
.end method

.method public getParentInfo(Lcom/product/android/commonInterface/contact/AbsNodeData;Ljava/util/List;)Z
.signature "(Lcom/product/android/commonInterface/contact/AbsNodeData;Ljava/util/List<Lcom/product/android/commonInterface/contact/AbsNodeData;>;)Z"
aload 1
ifnull L0
aload 2
ifnonnull L1
L0:
iconst_0
ireturn
L1:
aload 1
invokevirtual com/product/android/commonInterface/contact/AbsNodeData/getType()I
bipush -3
if_icmpne L2
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getType()I 0
invokestatic com/product/android/business/ApplicationVariable$IDENTITY/value2Enum(I)Lcom/product/android/business/ApplicationVariable$IDENTITY;
getstatic com/product/android/business/ApplicationVariable$IDENTITY/STUDENT Lcom/product/android/business/ApplicationVariable$IDENTITY;
if_acmpne L3
aload 2
bipush -14
invokestatic com/nd/android/u/contact/business_new/Tool/AbsNodeDataTool/MakeABSNode(I)Lcom/product/android/commonInterface/contact/AbsNodeData;
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 2
invokestatic com/nd/android/u/contact/business_new/Tool/AbsNodeDataTool/ProcessUserCount(Ljava/util/List;)Z
pop
iconst_1
ireturn
L3:
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getType()I 0
invokestatic com/product/android/business/ApplicationVariable$IDENTITY/value2Enum(I)Lcom/product/android/business/ApplicationVariable$IDENTITY;
getstatic com/product/android/business/ApplicationVariable$IDENTITY/STAFF Lcom/product/android/business/ApplicationVariable$IDENTITY;
if_acmpne L4
aload 2
bipush -13
invokestatic com/nd/android/u/contact/business_new/Tool/AbsNodeDataTool/MakeABSNode(I)Lcom/product/android/commonInterface/contact/AbsNodeData;
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 2
invokestatic com/nd/android/u/contact/business_new/Tool/AbsNodeDataTool/ProcessUserCount(Ljava/util/List;)Z
pop
iconst_1
ireturn
L2:
aload 1
invokevirtual com/product/android/commonInterface/contact/AbsNodeData/getType()I
iconst_m1
if_icmpne L5
aload 1
checkcast com/nd/android/u/contact/dataStructure/OapDepart
invokevirtual com/nd/android/u/contact/dataStructure/OapDepart/getParentid()I
ifne L6
aload 2
bipush -12
invokestatic com/nd/android/u/contact/business_new/Tool/AbsNodeDataTool/MakeABSNode(I)Lcom/product/android/commonInterface/contact/AbsNodeData;
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 2
invokestatic com/nd/android/u/contact/business_new/Tool/AbsNodeDataTool/ProcessUserCount(Ljava/util/List;)Z
pop
iconst_1
ireturn
L6:
invokestatic com/nd/android/u/contact/business_new/ProcesssImpl/FunctionLoaderImpl/WorkerLoader/getInstance()Lcom/nd/android/u/contact/business_new/ProcesssImpl/FunctionLoaderImpl/WorkerLoader;
aload 1
aload 2
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/FunctionLoaderImpl/WorkerLoader/getParentInfo(Lcom/product/android/commonInterface/contact/AbsNodeData;Ljava/util/List;)Z
istore 3
iconst_m1
aload 2
invokestatic com/nd/android/u/contact/business_new/Tool/AbsNodeDataTool/ConvertABSNodeList(ILjava/util/List;)Z
pop
aload 2
invokestatic com/nd/android/u/contact/business_new/Tool/AbsNodeDataTool/ProcessUserCount(Ljava/util/List;)Z
pop
iload 3
ireturn
L5:
aload 1
invokevirtual com/product/android/commonInterface/contact/AbsNodeData/getType()I
bipush -4
if_icmpne L7
invokestatic com/nd/android/u/contact/business_new/ProcesssImpl/FunctionLoaderImpl/WorkerLoader/getInstance()Lcom/nd/android/u/contact/business_new/ProcesssImpl/FunctionLoaderImpl/WorkerLoader;
aload 1
aload 2
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/FunctionLoaderImpl/WorkerLoader/getParentInfo(Lcom/product/android/commonInterface/contact/AbsNodeData;Ljava/util/List;)Z
istore 3
iconst_m1
aload 2
invokestatic com/nd/android/u/contact/business_new/Tool/AbsNodeDataTool/ConvertABSNodeList(ILjava/util/List;)Z
pop
aload 2
invokestatic com/nd/android/u/contact/business_new/Tool/AbsNodeDataTool/ProcessUserCount(Ljava/util/List;)Z
pop
iload 3
ireturn
L7:
aload 1
invokevirtual com/product/android/commonInterface/contact/AbsNodeData/getType()I
bipush -5
if_icmpne L8
invokestatic com/nd/android/u/contact/business_new/ProcesssImpl/FunctionLoaderImpl/UniversityClassLoader/getInstance()Lcom/nd/android/u/contact/business_new/ProcesssImpl/FunctionLoaderImpl/UniversityClassLoader;
aload 1
aload 2
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/FunctionLoaderImpl/UniversityClassLoader/getParentInfo(Lcom/product/android/commonInterface/contact/AbsNodeData;Ljava/util/List;)Z
istore 3
bipush -3
aload 2
invokestatic com/nd/android/u/contact/business_new/Tool/AbsNodeDataTool/ConvertABSNodeList(ILjava/util/List;)Z
pop
aload 2
invokestatic com/nd/android/u/contact/business_new/Tool/AbsNodeDataTool/ProcessUserCount(Ljava/util/List;)Z
pop
iload 3
ireturn
L8:
iconst_0
ireturn
L4:
iconst_0
ireturn
.limit locals 4
.limit stack 3
.end method

.method public incrementLoadData(J)Z
.throws com/common/android/utils/http/HttpException
.throws java/lang/InterruptedException
iconst_1
ireturn
.limit locals 3
.limit stack 1
.end method

.method public loadData(ZJ)Z
.throws com/common/android/utils/http/HttpException
.throws java/lang/InterruptedException
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getOapUid()J 0
lstore 5
ldc com/nd/android/u/contact/dao/OapUserDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapUserDao
lload 5
l2i
invokeinterface com/nd/android/u/contact/dao/OapUserDao/deleteUser(I)Z 1
pop
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getType()I 0
invokestatic com/product/android/business/ApplicationVariable$IDENTITY/value2Enum(I)Lcom/product/android/business/ApplicationVariable$IDENTITY;
getstatic com/product/android/business/ApplicationVariable$IDENTITY/STUDENT Lcom/product/android/business/ApplicationVariable$IDENTITY;
if_acmpne L0
invokestatic com/nd/android/u/contact/business_new/ProcesssImpl/FunctionLoaderImpl/UniversityClassLoader/getInstance()Lcom/nd/android/u/contact/business_new/ProcesssImpl/FunctionLoaderImpl/UniversityClassLoader;
iload 1
lload 2
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/FunctionLoaderImpl/UniversityClassLoader/loadData(ZJ)Z
ireturn
L0:
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getType()I 0
invokestatic com/product/android/business/ApplicationVariable$IDENTITY/value2Enum(I)Lcom/product/android/business/ApplicationVariable$IDENTITY;
getstatic com/product/android/business/ApplicationVariable$IDENTITY/STAFF Lcom/product/android/business/ApplicationVariable$IDENTITY;
if_acmpne L1
invokestatic com/nd/android/u/contact/business_new/ProcesssImpl/FunctionLoaderImpl/UniversityClassLoader/getInstance()Lcom/nd/android/u/contact/business_new/ProcesssImpl/FunctionLoaderImpl/UniversityClassLoader;
iload 1
lload 2
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/FunctionLoaderImpl/UniversityClassLoader/loadData(ZJ)Z
istore 4
invokestatic com/nd/android/u/contact/business_new/ProcesssImpl/FunctionLoaderImpl/WorkerLoader/getInstance()Lcom/nd/android/u/contact/business_new/ProcesssImpl/FunctionLoaderImpl/WorkerLoader;
iload 1
lload 2
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/FunctionLoaderImpl/WorkerLoader/loadData(ZJ)Z
istore 1
iload 4
iconst_1
if_icmpne L2
iload 1
iconst_1
if_icmpne L2
iconst_1
ireturn
L2:
iconst_0
ireturn
L1:
iconst_0
ireturn
.limit locals 7
.limit stack 4
.end method
