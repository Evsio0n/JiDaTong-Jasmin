.bytecode 50.0
.class public synchronized com/nd/android/u/contact/business_new/ProcesssImpl/FunctionLoaderImpl/NormalGroupLoader
.super java/lang/Object
.implements com/nd/android/u/contact/business_new/Common/OperatorInterface/LoaderInterface/IGroupLoader

.field private static 'instance' Lcom/nd/android/u/contact/business_new/ProcesssImpl/FunctionLoaderImpl/NormalGroupLoader;

.field private 'listCatagory' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/OapGroupCatagory;>;"

.method static <clinit>()V
aconst_null
putstatic com/nd/android/u/contact/business_new/ProcesssImpl/FunctionLoaderImpl/NormalGroupLoader/instance Lcom/nd/android/u/contact/business_new/ProcesssImpl/FunctionLoaderImpl/NormalGroupLoader;
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
putfield com/nd/android/u/contact/business_new/ProcesssImpl/FunctionLoaderImpl/NormalGroupLoader/listCatagory Ljava/util/ArrayList;
return
.limit locals 1
.limit stack 3
.end method

.method public static getInstance()Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/LoaderInterface/IGroupLoader;
.catch all from L0 to L1 using L2
.catch all from L1 to L3 using L2
ldc com/nd/android/u/contact/business_new/ProcesssImpl/FunctionLoaderImpl/NormalGroupLoader
monitorenter
L0:
getstatic com/nd/android/u/contact/business_new/ProcesssImpl/FunctionLoaderImpl/NormalGroupLoader/instance Lcom/nd/android/u/contact/business_new/ProcesssImpl/FunctionLoaderImpl/NormalGroupLoader;
ifnonnull L1
new com/nd/android/u/contact/business_new/ProcesssImpl/FunctionLoaderImpl/NormalGroupLoader
dup
invokespecial com/nd/android/u/contact/business_new/ProcesssImpl/FunctionLoaderImpl/NormalGroupLoader/<init>()V
putstatic com/nd/android/u/contact/business_new/ProcesssImpl/FunctionLoaderImpl/NormalGroupLoader/instance Lcom/nd/android/u/contact/business_new/ProcesssImpl/FunctionLoaderImpl/NormalGroupLoader;
L1:
getstatic com/nd/android/u/contact/business_new/ProcesssImpl/FunctionLoaderImpl/NormalGroupLoader/instance Lcom/nd/android/u/contact/business_new/ProcesssImpl/FunctionLoaderImpl/NormalGroupLoader;
astore 0
L3:
ldc com/nd/android/u/contact/business_new/ProcesssImpl/FunctionLoaderImpl/NormalGroupLoader
monitorexit
aload 0
areturn
L2:
astore 0
ldc com/nd/android/u/contact/business_new/ProcesssImpl/FunctionLoaderImpl/NormalGroupLoader
monitorexit
aload 0
athrow
.limit locals 1
.limit stack 2
.end method

.method public getGroupCatagory()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/OapGroupCatagory;>;"
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/FunctionLoaderImpl/NormalGroupLoader/listCatagory Ljava/util/ArrayList;
ifnonnull L0
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/contact/business_new/ProcesssImpl/FunctionLoaderImpl/NormalGroupLoader/listCatagory Ljava/util/ArrayList;
L0:
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/FunctionLoaderImpl/NormalGroupLoader/listCatagory Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
iconst_2
if_icmplt L1
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/FunctionLoaderImpl/NormalGroupLoader/listCatagory Ljava/util/ArrayList;
areturn
L1:
new com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/OapGroupCatagory
dup
iconst_0
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/my_group I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokespecial com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/OapGroupCatagory/<init>(ILjava/lang/String;)V
astore 1
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/FunctionLoaderImpl/NormalGroupLoader/listCatagory Ljava/util/ArrayList;
aload 1
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
new com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/OapGroupCatagory
dup
iconst_4
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/community_group I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokespecial com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/OapGroupCatagory/<init>(ILjava/lang/String;)V
astore 1
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/FunctionLoaderImpl/NormalGroupLoader/listCatagory Ljava/util/ArrayList;
aload 1
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/FunctionLoaderImpl/NormalGroupLoader/listCatagory Ljava/util/ArrayList;
areturn
.limit locals 2
.limit stack 5
.end method

.method public loadGroup(J)Z
.throws java/lang/InterruptedException
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
.catch com/common/android/utils/http/HttpException from L3 to L4 using L2
.catch java/lang/Exception from L5 to L6 using L7
.catch java/lang/Exception from L6 to L8 using L9
.catch com/common/android/utils/http/HttpException from L8 to L10 using L11
L0:
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getOapGroupCom()Lcom/nd/android/u/contact/com/OapGroupCom;
invokevirtual com/nd/android/u/contact/com/OapGroupCom/getGroupList()Ljava/util/List;
astore 3
L1:
aload 3
ifnull L4
L3:
ldc com/nd/android/u/contact/dao/OapGroupDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapGroupDao
iconst_0
invokeinterface com/nd/android/u/contact/dao/OapGroupDao/deleteGroups(I)Z 1
pop
ldc com/nd/android/u/contact/dao/OapGroupDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapGroupDao
iconst_4
invokeinterface com/nd/android/u/contact/dao/OapGroupDao/deleteGroups(I)Z 1
pop
L4:
aload 3
ifnull L12
aload 3
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 3
L13:
aload 3
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L12
aload 3
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/contact/OapGroup
astore 4
L5:
aload 4
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getOapGroupCom()Lcom/nd/android/u/contact/com/OapGroupCom;
aload 4
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGid()J
invokevirtual com/nd/android/u/contact/com/OapGroupCom/getSupportGroupInfo(J)Lorg/json/JSONObject;
invokevirtual com/product/android/commonInterface/contact/OapGroup/initGroup(Lorg/json/JSONObject;)V
L6:
ldc com/nd/android/u/contact/dao/OapGroupDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapGroupDao
aload 4
invokeinterface com/nd/android/u/contact/dao/OapGroupDao/insertGroup(Lcom/product/android/commonInterface/contact/OapGroup;)J 1
pop2
L8:
invokestatic com/nd/android/u/contact/business/SynOapGroupPro/getInstance()Lcom/nd/android/u/contact/business/SynOapGroupPro;
aload 4
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGid()J
invokevirtual com/nd/android/u/contact/business/SynOapGroupPro/getGroupMember(J)Ljava/util/List;
pop
L10:
goto L13
L11:
astore 4
aload 4
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
goto L13
L2:
astore 3
aload 3
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
iconst_0
ireturn
L7:
astore 3
aload 3
invokevirtual java/lang/Exception/printStackTrace()V
iconst_0
ireturn
L9:
astore 5
aload 5
invokevirtual java/lang/Exception/printStackTrace()V
ldc "SynOapGroupPro"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "initGroupList insert db error:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 4
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGroupName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
goto L8
L12:
iconst_1
ireturn
.limit locals 6
.limit stack 4
.end method
