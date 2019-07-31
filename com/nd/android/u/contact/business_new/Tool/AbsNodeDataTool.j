.bytecode 50.0
.class public synchronized com/nd/android/u/contact/business_new/Tool/AbsNodeDataTool
.super java/lang/Object

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static ConvertABSNode(ILcom/product/android/commonInterface/contact/AbsNodeData;)Z
aload 1
ifnonnull L0
iconst_0
ireturn
L0:
iload 0
tableswitch -5
L1
L2
L3
L4
L5
default : L6
L6:
iconst_0
ireturn
L1:
aload 1
checkcast com/product/android/commonInterface/contact/OapUserSimple
astore 1
aload 1
bipush -5
invokevirtual com/product/android/commonInterface/contact/OapUserSimple/setType(I)V
aload 1
aload 1
getfield com/product/android/commonInterface/contact/OapUserSimple/fid J
invokevirtual com/product/android/commonInterface/contact/OapUserSimple/setNode_id(J)V
aload 1
aload 1
getfield com/product/android/commonInterface/contact/OapUserSimple/username Ljava/lang/String;
invokevirtual com/product/android/commonInterface/contact/OapUserSimple/setName(Ljava/lang/String;)V
aload 1
aload 1
getfield com/product/android/commonInterface/contact/OapUserSimple/signature Ljava/lang/String;
invokevirtual com/product/android/commonInterface/contact/OapUserSimple/setSignature(Ljava/lang/String;)V
aload 1
aload 1
getfield com/product/android/commonInterface/contact/OapUserSimple/sysavatar I
invokevirtual com/product/android/commonInterface/contact/OapUserSimple/setSystemAavatar(I)V
L4:
iconst_1
ireturn
L5:
aload 1
checkcast com/nd/android/u/contact/dataStructure/OapDepart
astore 1
aload 1
iconst_m1
invokevirtual com/nd/android/u/contact/dataStructure/OapDepart/setType(I)V
aload 1
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/OapDepart/getDeptid()I
i2l
invokevirtual com/nd/android/u/contact/dataStructure/OapDepart/setNode_id(J)V
aload 1
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/OapDepart/getDeptname()Ljava/lang/String;
invokevirtual com/nd/android/u/contact/dataStructure/OapDepart/setName(Ljava/lang/String;)V
goto L4
L3:
aload 1
checkcast com/nd/android/u/contact/dataStructure/OapJMClass
astore 1
aload 1
bipush -3
invokevirtual com/nd/android/u/contact/dataStructure/OapJMClass/setType(I)V
aload 1
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/OapJMClass/getClassid()I
i2l
invokevirtual com/nd/android/u/contact/dataStructure/OapJMClass/setNode_id(J)V
aload 1
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/OapJMClass/getClassname()Ljava/lang/String;
invokevirtual com/nd/android/u/contact/dataStructure/OapJMClass/setName(Ljava/lang/String;)V
goto L4
L2:
aload 1
checkcast com/product/android/commonInterface/contact/OapUserSimple
astore 1
aload 1
bipush -4
invokevirtual com/product/android/commonInterface/contact/OapUserSimple/setType(I)V
aload 1
aload 1
getfield com/product/android/commonInterface/contact/OapUserSimple/fid J
invokevirtual com/product/android/commonInterface/contact/OapUserSimple/setNode_id(J)V
aload 1
aload 1
getfield com/product/android/commonInterface/contact/OapUserSimple/username Ljava/lang/String;
invokevirtual com/product/android/commonInterface/contact/OapUserSimple/setName(Ljava/lang/String;)V
aload 1
aload 1
getfield com/product/android/commonInterface/contact/OapUserSimple/signature Ljava/lang/String;
invokevirtual com/product/android/commonInterface/contact/OapUserSimple/setSignature(Ljava/lang/String;)V
aload 1
aload 1
getfield com/product/android/commonInterface/contact/OapUserSimple/sysavatar I
invokevirtual com/product/android/commonInterface/contact/OapUserSimple/setSystemAavatar(I)V
goto L4
.limit locals 2
.limit stack 3
.end method

.method public static ConvertABSNodeList(ILjava/util/List;)Z
.signature "<T:Ljava/lang/Object;>(ILjava/util/List<TT;>;)Z"
aload 1
ifnull L0
aload 1
invokeinterface java/util/List/size()I 0
ifle L0
aload 1
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 1
L1:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L2
iload 0
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/contact/AbsNodeData
invokestatic com/nd/android/u/contact/business_new/Tool/AbsNodeDataTool/ConvertABSNode(ILcom/product/android/commonInterface/contact/AbsNodeData;)Z
pop
goto L1
L2:
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 2
.limit stack 2
.end method

.method public static MakeABSNode(I)Lcom/product/android/commonInterface/contact/AbsNodeData;
iload 0
tableswitch -14
L0
L1
L2
L3
default : L4
L4:
aconst_null
areturn
L3:
new com/product/android/commonInterface/contact/AbsNodeData
dup
invokespecial com/product/android/commonInterface/contact/AbsNodeData/<init>()V
astore 1
L5:
aload 1
areturn
L2:
new com/product/android/commonInterface/contact/AbsNodeData
dup
invokespecial com/product/android/commonInterface/contact/AbsNodeData/<init>()V
astore 1
aload 1
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
getstatic com/nd/android/u/contact/R$string/staff I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
invokevirtual com/product/android/commonInterface/contact/AbsNodeData/setName(Ljava/lang/String;)V
aload 1
ldc2_w -12L
invokevirtual com/product/android/commonInterface/contact/AbsNodeData/setNode_id(J)V
aload 1
bipush -12
invokevirtual com/product/android/commonInterface/contact/AbsNodeData/setType(I)V
goto L5
L1:
new com/product/android/commonInterface/contact/AbsNodeData
dup
invokespecial com/product/android/commonInterface/contact/AbsNodeData/<init>()V
astore 1
aload 1
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
getstatic com/nd/android/u/contact/R$string/my_class I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
invokevirtual com/product/android/commonInterface/contact/AbsNodeData/setName(Ljava/lang/String;)V
aload 1
ldc2_w -13L
invokevirtual com/product/android/commonInterface/contact/AbsNodeData/setNode_id(J)V
aload 1
bipush -13
invokevirtual com/product/android/commonInterface/contact/AbsNodeData/setType(I)V
goto L5
L0:
new com/product/android/commonInterface/contact/AbsNodeData
dup
invokespecial com/product/android/commonInterface/contact/AbsNodeData/<init>()V
astore 1
aload 1
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
getstatic com/nd/android/u/contact/R$string/my_classmate I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
invokevirtual com/product/android/commonInterface/contact/AbsNodeData/setName(Ljava/lang/String;)V
aload 1
ldc2_w -14L
invokevirtual com/product/android/commonInterface/contact/AbsNodeData/setNode_id(J)V
aload 1
bipush -14
invokevirtual com/product/android/commonInterface/contact/AbsNodeData/setType(I)V
goto L5
.limit locals 2
.limit stack 3
.end method

.method public static ProcessUserCount(Lcom/product/android/commonInterface/contact/AbsNodeData;)Z
aload 0
ifnonnull L0
iconst_0
ireturn
L0:
aload 0
invokevirtual com/product/android/commonInterface/contact/AbsNodeData/getType()I
tableswitch -14
L1
L1
L2
L2
L3
L3
L3
L3
L3
L3
L3
L1
L3
L2
default : L3
L3:
iconst_0
ireturn
L1:
aload 0
invokestatic com/nd/android/u/contact/business_new/ProcesssImpl/FunctionLoaderImpl/UniversityClassLoader/getInstance()Lcom/nd/android/u/contact/business_new/ProcesssImpl/FunctionLoaderImpl/UniversityClassLoader;
aload 0
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/FunctionLoaderImpl/UniversityClassLoader/calcUserCount(Lcom/product/android/commonInterface/contact/AbsNodeData;)I
invokevirtual com/product/android/commonInterface/contact/AbsNodeData/setAbsUsercount(I)V
L4:
iconst_1
ireturn
L2:
aload 0
invokestatic com/nd/android/u/contact/business_new/ProcesssImpl/FunctionLoaderImpl/WorkerLoader/getInstance()Lcom/nd/android/u/contact/business_new/ProcesssImpl/FunctionLoaderImpl/WorkerLoader;
aload 0
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/FunctionLoaderImpl/WorkerLoader/calcUserCount(Lcom/product/android/commonInterface/contact/AbsNodeData;)I
invokevirtual com/product/android/commonInterface/contact/AbsNodeData/setAbsUsercount(I)V
goto L4
.limit locals 1
.limit stack 3
.end method

.method public static ProcessUserCount(Ljava/util/List;)Z
.signature "(Ljava/util/List<Lcom/product/android/commonInterface/contact/AbsNodeData;>;)Z"
aload 0
ifnull L0
aload 0
invokeinterface java/util/List/size()I 0
ifne L1
L0:
iconst_0
ireturn
L1:
aload 0
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 0
L2:
aload 0
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L3
aload 0
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/contact/AbsNodeData
invokestatic com/nd/android/u/contact/business_new/Tool/AbsNodeDataTool/ProcessUserCount(Lcom/product/android/commonInterface/contact/AbsNodeData;)Z
pop
goto L2
L3:
iconst_1
ireturn
.limit locals 1
.limit stack 1
.end method
