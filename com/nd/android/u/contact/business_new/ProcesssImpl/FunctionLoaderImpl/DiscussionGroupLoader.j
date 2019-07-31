.bytecode 50.0
.class public synchronized com/nd/android/u/contact/business_new/ProcesssImpl/FunctionLoaderImpl/DiscussionGroupLoader
.super java/lang/Object
.implements com/nd/android/u/contact/business_new/Common/OperatorInterface/LoaderInterface/IGroupLoader

.field private static 'instance' Lcom/nd/android/u/contact/business_new/ProcesssImpl/FunctionLoaderImpl/DiscussionGroupLoader;

.field private 'listCatagory' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/OapGroupCatagory;>;"

.method static <clinit>()V
aconst_null
putstatic com/nd/android/u/contact/business_new/ProcesssImpl/FunctionLoaderImpl/DiscussionGroupLoader/instance Lcom/nd/android/u/contact/business_new/ProcesssImpl/FunctionLoaderImpl/DiscussionGroupLoader;
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
putfield com/nd/android/u/contact/business_new/ProcesssImpl/FunctionLoaderImpl/DiscussionGroupLoader/listCatagory Ljava/util/ArrayList;
return
.limit locals 1
.limit stack 3
.end method

.method public static getInstance()Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/LoaderInterface/IGroupLoader;
.catch all from L0 to L1 using L2
.catch all from L1 to L3 using L2
ldc com/nd/android/u/contact/business_new/ProcesssImpl/FunctionLoaderImpl/DiscussionGroupLoader
monitorenter
L0:
getstatic com/nd/android/u/contact/business_new/ProcesssImpl/FunctionLoaderImpl/DiscussionGroupLoader/instance Lcom/nd/android/u/contact/business_new/ProcesssImpl/FunctionLoaderImpl/DiscussionGroupLoader;
ifnonnull L1
new com/nd/android/u/contact/business_new/ProcesssImpl/FunctionLoaderImpl/DiscussionGroupLoader
dup
invokespecial com/nd/android/u/contact/business_new/ProcesssImpl/FunctionLoaderImpl/DiscussionGroupLoader/<init>()V
putstatic com/nd/android/u/contact/business_new/ProcesssImpl/FunctionLoaderImpl/DiscussionGroupLoader/instance Lcom/nd/android/u/contact/business_new/ProcesssImpl/FunctionLoaderImpl/DiscussionGroupLoader;
L1:
getstatic com/nd/android/u/contact/business_new/ProcesssImpl/FunctionLoaderImpl/DiscussionGroupLoader/instance Lcom/nd/android/u/contact/business_new/ProcesssImpl/FunctionLoaderImpl/DiscussionGroupLoader;
astore 0
L3:
ldc com/nd/android/u/contact/business_new/ProcesssImpl/FunctionLoaderImpl/DiscussionGroupLoader
monitorexit
aload 0
areturn
L2:
astore 0
ldc com/nd/android/u/contact/business_new/ProcesssImpl/FunctionLoaderImpl/DiscussionGroupLoader
monitorexit
aload 0
athrow
.limit locals 1
.limit stack 2
.end method

.method protected getDiscussionMember(J)Z
.throws com/common/android/utils/http/HttpException
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getOapDiscussionCom()Lcom/nd/android/u/contact/com/OapDiscussionCom;
lload 1
invokevirtual com/nd/android/u/contact/com/OapDiscussionCom/getDiscussionMemberList(J)Ljava/util/ArrayList;
astore 3
ldc com/nd/android/u/contact/dao/OapGroupRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapGroupRelationDao
lload 1
invokeinterface com/nd/android/u/contact/dao/OapGroupRelationDao/deleteGroupRelation(J)Z 2
pop
aload 3
ifnull L0
aload 3
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 3
L1:
aload 3
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L0
aload 3
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/contact/OapGroupRelation
astore 4
ldc com/nd/android/u/contact/dao/OapGroupRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapGroupRelationDao
aload 4
invokeinterface com/nd/android/u/contact/dao/OapGroupRelationDao/insertGroupRelation(Lcom/product/android/commonInterface/contact/OapGroupRelation;)J 1
pop2
goto L1
L0:
iconst_1
ireturn
.limit locals 5
.limit stack 3
.end method

.method public getGroupCatagory()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/OapGroupCatagory;>;"
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/FunctionLoaderImpl/DiscussionGroupLoader/listCatagory Ljava/util/ArrayList;
ifnonnull L0
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/contact/business_new/ProcesssImpl/FunctionLoaderImpl/DiscussionGroupLoader/listCatagory Ljava/util/ArrayList;
L0:
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/FunctionLoaderImpl/DiscussionGroupLoader/listCatagory Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
iconst_1
if_icmplt L1
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/FunctionLoaderImpl/DiscussionGroupLoader/listCatagory Ljava/util/ArrayList;
areturn
L1:
new com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/OapGroupCatagory
dup
iconst_3
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/disscussion I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokespecial com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/OapGroupCatagory/<init>(ILjava/lang/String;)V
astore 1
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/FunctionLoaderImpl/DiscussionGroupLoader/listCatagory Ljava/util/ArrayList;
aload 1
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/FunctionLoaderImpl/DiscussionGroupLoader/listCatagory Ljava/util/ArrayList;
areturn
.limit locals 2
.limit stack 5
.end method

.method public loadGroup(J)Z
.throws java/lang/InterruptedException
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
.catch com/common/android/utils/http/HttpException from L3 to L4 using L5
L0:
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getOapDiscussionCom()Lcom/nd/android/u/contact/com/OapDiscussionCom;
invokevirtual com/nd/android/u/contact/com/OapDiscussionCom/getDiscussionList()Ljava/util/ArrayList;
astore 3
ldc com/nd/android/u/contact/dao/OapGroupDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapGroupDao
iconst_3
invokeinterface com/nd/android/u/contact/dao/OapGroupDao/deleteGroups(I)Z 1
pop
L1:
aload 3
ifnull L6
aload 3
invokevirtual java/util/ArrayList/iterator()Ljava/util/Iterator;
astore 3
L7:
aload 3
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L6
aload 3
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/contact/OapGroup
astore 4
ldc com/nd/android/u/contact/dao/OapGroupDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapGroupDao
aload 4
invokeinterface com/nd/android/u/contact/dao/OapGroupDao/insertGroup(Lcom/product/android/commonInterface/contact/OapGroup;)J 1
pop2
L3:
aload 0
aload 4
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGid()J
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/FunctionLoaderImpl/DiscussionGroupLoader/getDiscussionMember(J)Z
pop
L4:
goto L7
L5:
astore 4
aload 4
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
goto L7
L2:
astore 3
aload 3
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
iconst_0
ireturn
L6:
iconst_1
ireturn
.limit locals 5
.limit stack 3
.end method
