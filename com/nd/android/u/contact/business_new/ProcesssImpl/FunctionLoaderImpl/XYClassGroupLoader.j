.bytecode 50.0
.class public synchronized com/nd/android/u/contact/business_new/ProcesssImpl/FunctionLoaderImpl/XYClassGroupLoader
.super java/lang/Object
.implements com/nd/android/u/contact/business_new/Common/OperatorInterface/LoaderInterface/IGroupLoader

.field private static 'instance' Lcom/nd/android/u/contact/business_new/ProcesssImpl/FunctionLoaderImpl/XYClassGroupLoader;

.field private 'listCatagory' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/OapGroupCatagory;>;"

.method static <clinit>()V
aconst_null
putstatic com/nd/android/u/contact/business_new/ProcesssImpl/FunctionLoaderImpl/XYClassGroupLoader/instance Lcom/nd/android/u/contact/business_new/ProcesssImpl/FunctionLoaderImpl/XYClassGroupLoader;
return
.limit locals 0
.limit stack 1
.end method

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/contact/business_new/ProcesssImpl/FunctionLoaderImpl/XYClassGroupLoader/listCatagory Ljava/util/ArrayList;
return
.limit locals 1
.limit stack 3
.end method

.method public static getInstance()Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/LoaderInterface/IGroupLoader;
.catch all from L0 to L1 using L2
.catch all from L1 to L3 using L2
ldc com/nd/android/u/contact/business_new/ProcesssImpl/FunctionLoaderImpl/XYClassGroupLoader
monitorenter
L0:
getstatic com/nd/android/u/contact/business_new/ProcesssImpl/FunctionLoaderImpl/XYClassGroupLoader/instance Lcom/nd/android/u/contact/business_new/ProcesssImpl/FunctionLoaderImpl/XYClassGroupLoader;
ifnonnull L1
new com/nd/android/u/contact/business_new/ProcesssImpl/FunctionLoaderImpl/XYClassGroupLoader
dup
invokespecial com/nd/android/u/contact/business_new/ProcesssImpl/FunctionLoaderImpl/XYClassGroupLoader/<init>()V
putstatic com/nd/android/u/contact/business_new/ProcesssImpl/FunctionLoaderImpl/XYClassGroupLoader/instance Lcom/nd/android/u/contact/business_new/ProcesssImpl/FunctionLoaderImpl/XYClassGroupLoader;
L1:
getstatic com/nd/android/u/contact/business_new/ProcesssImpl/FunctionLoaderImpl/XYClassGroupLoader/instance Lcom/nd/android/u/contact/business_new/ProcesssImpl/FunctionLoaderImpl/XYClassGroupLoader;
astore 0
L3:
ldc com/nd/android/u/contact/business_new/ProcesssImpl/FunctionLoaderImpl/XYClassGroupLoader
monitorexit
aload 0
areturn
L2:
astore 0
ldc com/nd/android/u/contact/business_new/ProcesssImpl/FunctionLoaderImpl/XYClassGroupLoader
monitorexit
aload 0
athrow
.limit locals 1
.limit stack 2
.end method

.method private getXYClassGroups()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/product/android/commonInterface/contact/OapGroup;>;"
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
.catch com/common/android/utils/http/HttpException from L3 to L4 using L2
.catch java/lang/Exception from L5 to L6 using L7
ldc com/nd/android/u/contact/dao/OapGroupDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapGroupDao
iconst_2
invokeinterface com/nd/android/u/contact/dao/OapGroupDao/searchGroups(I)Ljava/util/List; 1
astore 5
L0:
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getOapGroupCom()Lcom/nd/android/u/contact/com/OapGroupCom;
invokevirtual com/nd/android/u/contact/com/OapGroupCom/getClassGroups()Ljava/util/List;
astore 4
L1:
aload 4
ifnull L4
L3:
ldc com/nd/android/u/contact/dao/OapGroupDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapGroupDao
iconst_2
invokeinterface com/nd/android/u/contact/dao/OapGroupDao/deleteGroups(I)Z 1
pop
L4:
aload 4
ifnull L8
aload 4
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 6
L9:
aload 6
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L8
aload 6
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/contact/OapGroup
astore 7
aload 7
iconst_2
invokevirtual com/product/android/commonInterface/contact/OapGroup/setGroupType(I)V
L5:
ldc com/nd/android/u/contact/dao/OapGroupDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapGroupDao
aload 7
invokeinterface com/nd/android/u/contact/dao/OapGroupDao/insertGroup(Lcom/product/android/commonInterface/contact/OapGroup;)J 1
pop2
L6:
goto L9
L7:
astore 8
aload 8
invokevirtual java/lang/Exception/printStackTrace()V
ldc "SynOapGroupPro"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "initGroupList insert db error:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 7
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGroupName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
goto L9
L2:
astore 4
aload 4
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
aconst_null
areturn
L8:
iconst_0
istore 2
aload 4
ifnonnull L10
aload 5
ifnonnull L11
L10:
aload 4
ifnull L12
aload 5
ifnonnull L12
L11:
iconst_1
ifeq L13
invokestatic com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/LoaderSubjectImpl/getInstance()Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/LoaderSubjectImpl;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
sipush 32002
invokevirtual com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/LoaderSubjectImpl/notifyGroupChanged(JI)V
L13:
aload 4
areturn
L12:
aload 4
ifnull L11
aload 5
ifnull L11
aload 4
invokeinterface java/util/List/size()I 0
aload 5
invokeinterface java/util/List/size()I 0
if_icmpeq L14
goto L11
L14:
aload 4
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 6
L15:
iload 2
istore 1
aload 6
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L16
aload 6
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/contact/OapGroup
astore 7
iconst_0
istore 3
aload 5
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 8
L17:
iload 3
istore 1
aload 8
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L18
aload 8
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/contact/OapGroup
astore 9
aload 7
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGid()J
aload 9
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGid()J
lcmp
ifne L17
iconst_1
istore 1
L18:
iload 1
ifne L15
iconst_1
istore 1
L16:
iload 1
ifne L11
aload 5
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 5
L19:
aload 5
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L11
aload 5
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/contact/OapGroup
astore 6
iconst_0
istore 2
aload 4
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 7
L20:
iload 2
istore 1
aload 7
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L21
aload 7
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/contact/OapGroup
astore 8
aload 6
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGid()J
aload 8
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGid()J
lcmp
ifne L20
iconst_1
istore 1
L21:
iload 1
ifne L19
goto L11
.limit locals 10
.limit stack 4
.end method

.method public getGroupCatagory()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/OapGroupCatagory;>;"
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/FunctionLoaderImpl/XYClassGroupLoader/listCatagory Ljava/util/ArrayList;
ifnonnull L0
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/contact/business_new/ProcesssImpl/FunctionLoaderImpl/XYClassGroupLoader/listCatagory Ljava/util/ArrayList;
L0:
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/FunctionLoaderImpl/XYClassGroupLoader/listCatagory Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
iconst_1
if_icmplt L1
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/FunctionLoaderImpl/XYClassGroupLoader/listCatagory Ljava/util/ArrayList;
areturn
L1:
new com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/OapGroupCatagory
dup
iconst_2
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/classeng_group I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokespecial com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/OapGroupCatagory/<init>(ILjava/lang/String;)V
astore 1
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/FunctionLoaderImpl/XYClassGroupLoader/listCatagory Ljava/util/ArrayList;
aload 1
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/FunctionLoaderImpl/XYClassGroupLoader/listCatagory Ljava/util/ArrayList;
areturn
.limit locals 2
.limit stack 5
.end method

.method public loadGroup(J)Z
.throws java/lang/InterruptedException
aload 0
invokespecial com/nd/android/u/contact/business_new/ProcesssImpl/FunctionLoaderImpl/XYClassGroupLoader/getXYClassGroups()Ljava/util/List;
ifnonnull L0
iconst_0
ireturn
L0:
iconst_1
ireturn
.limit locals 3
.limit stack 1
.end method
