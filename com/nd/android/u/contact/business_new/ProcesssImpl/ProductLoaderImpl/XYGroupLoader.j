.bytecode 50.0
.class public synchronized com/nd/android/u/contact/business_new/ProcesssImpl/ProductLoaderImpl/XYGroupLoader
.super java/lang/Object
.implements com/nd/android/u/contact/business_new/Common/OperatorInterface/LoaderInterface/IGroupLoader

.field private static 'instance' Lcom/nd/android/u/contact/business_new/ProcesssImpl/ProductLoaderImpl/XYGroupLoader;

.method static <clinit>()V
aconst_null
putstatic com/nd/android/u/contact/business_new/ProcesssImpl/ProductLoaderImpl/XYGroupLoader/instance Lcom/nd/android/u/contact/business_new/ProcesssImpl/ProductLoaderImpl/XYGroupLoader;
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

.method public static getInstance()Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/LoaderInterface/IGroupLoader;
.catch all from L0 to L1 using L2
.catch all from L1 to L3 using L2
ldc com/nd/android/u/contact/business_new/ProcesssImpl/ProductLoaderImpl/XYGroupLoader
monitorenter
L0:
getstatic com/nd/android/u/contact/business_new/ProcesssImpl/ProductLoaderImpl/XYGroupLoader/instance Lcom/nd/android/u/contact/business_new/ProcesssImpl/ProductLoaderImpl/XYGroupLoader;
ifnonnull L1
new com/nd/android/u/contact/business_new/ProcesssImpl/ProductLoaderImpl/XYGroupLoader
dup
invokespecial com/nd/android/u/contact/business_new/ProcesssImpl/ProductLoaderImpl/XYGroupLoader/<init>()V
putstatic com/nd/android/u/contact/business_new/ProcesssImpl/ProductLoaderImpl/XYGroupLoader/instance Lcom/nd/android/u/contact/business_new/ProcesssImpl/ProductLoaderImpl/XYGroupLoader;
L1:
getstatic com/nd/android/u/contact/business_new/ProcesssImpl/ProductLoaderImpl/XYGroupLoader/instance Lcom/nd/android/u/contact/business_new/ProcesssImpl/ProductLoaderImpl/XYGroupLoader;
astore 0
L3:
ldc com/nd/android/u/contact/business_new/ProcesssImpl/ProductLoaderImpl/XYGroupLoader
monitorexit
aload 0
areturn
L2:
astore 0
ldc com/nd/android/u/contact/business_new/ProcesssImpl/ProductLoaderImpl/XYGroupLoader
monitorexit
aload 0
athrow
.limit locals 1
.limit stack 2
.end method

.method public getGroupCatagory()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/OapGroupCatagory;>;"
invokestatic com/nd/android/u/contact/business_new/ProcesssImpl/FunctionLoaderImpl/NormalGroupLoader/getInstance()Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/LoaderInterface/IGroupLoader;
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/LoaderInterface/IGroupLoader/getGroupCatagory()Ljava/util/List; 0
astore 8
invokestatic com/nd/android/u/contact/business_new/ProcesssImpl/FunctionLoaderImpl/DiscussionGroupLoader/getInstance()Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/LoaderInterface/IGroupLoader;
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/LoaderInterface/IGroupLoader/getGroupCatagory()Ljava/util/List; 0
astore 9
invokestatic com/nd/android/u/contact/business_new/ProcesssImpl/FunctionLoaderImpl/DeptGroupLoader/getInstance()Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/LoaderInterface/IGroupLoader;
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/LoaderInterface/IGroupLoader/getGroupCatagory()Ljava/util/List; 0
astore 10
invokestatic com/nd/android/u/contact/business_new/ProcesssImpl/FunctionLoaderImpl/XYClassGroupLoader/getInstance()Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/LoaderInterface/IGroupLoader;
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/LoaderInterface/IGroupLoader/getGroupCatagory()Ljava/util/List; 0
astore 11
aconst_null
astore 7
aconst_null
astore 4
aconst_null
astore 3
aconst_null
astore 5
aconst_null
astore 6
aload 8
ifnull L0
aload 8
invokeinterface java/util/List/size()I 0
iconst_1
if_icmpne L0
aload 8
iconst_0
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/OapGroupCatagory
astore 1
aload 4
astore 2
L1:
aload 3
astore 4
aload 10
ifnull L2
aload 3
astore 4
aload 10
invokeinterface java/util/List/size()I 0
iconst_1
if_icmplt L2
aload 10
iconst_0
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/OapGroupCatagory
astore 4
L2:
aload 5
astore 3
aload 9
ifnull L3
aload 5
astore 3
aload 9
invokeinterface java/util/List/size()I 0
iconst_1
if_icmplt L3
aload 9
iconst_0
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/OapGroupCatagory
astore 3
L3:
aload 6
astore 5
aload 11
ifnull L4
aload 6
astore 5
aload 11
invokeinterface java/util/List/size()I 0
iconst_1
if_icmplt L4
aload 11
iconst_0
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/OapGroupCatagory
astore 5
L4:
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 6
aload 2
ifnull L5
aload 2
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/OapGroupCatagory/getGroupList()Ljava/util/Iterator;
astore 7
aload 7
ifnull L5
aload 7
invokeinterface java/util/Iterator/hasNext()Z 0
iconst_1
if_icmpne L5
aload 6
aload 2
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L5:
aload 4
ifnull L6
aload 4
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/OapGroupCatagory/getGroupList()Ljava/util/Iterator;
astore 2
aload 2
ifnull L6
aload 2
invokeinterface java/util/Iterator/hasNext()Z 0
iconst_1
if_icmpne L6
aload 6
aload 4
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L6:
aload 5
ifnull L7
aload 5
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/OapGroupCatagory/getGroupList()Ljava/util/Iterator;
astore 2
aload 2
ifnull L7
aload 2
invokeinterface java/util/Iterator/hasNext()Z 0
iconst_1
if_icmpne L7
aload 6
aload 5
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L7:
aload 1
ifnull L8
aload 1
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/OapGroupCatagory/getGroupList()Ljava/util/Iterator;
astore 2
aload 2
ifnull L8
aload 2
invokeinterface java/util/Iterator/hasNext()Z 0
iconst_1
if_icmpne L8
aload 6
aload 1
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L8:
aload 3
ifnull L9
aload 3
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/OapGroupCatagory/getGroupList()Ljava/util/Iterator;
astore 1
aload 1
ifnull L9
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
iconst_1
if_icmpne L9
aload 6
aload 3
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L9:
aload 8
invokeinterface java/util/List/clear()V 0
aload 9
invokeinterface java/util/List/clear()V 0
aload 10
invokeinterface java/util/List/clear()V 0
aload 11
invokeinterface java/util/List/clear()V 0
aload 6
areturn
L0:
aload 4
astore 2
aload 7
astore 1
aload 8
ifnull L1
aload 4
astore 2
aload 7
astore 1
aload 8
invokeinterface java/util/List/size()I 0
iconst_2
if_icmpne L1
aload 8
iconst_0
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/OapGroupCatagory
astore 1
aload 8
iconst_1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/OapGroupCatagory
astore 2
goto L1
.limit locals 12
.limit stack 2
.end method

.method public loadGroup(J)Z
.throws java/lang/InterruptedException
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
.catch all from L5 to L6 using L2
iconst_0
istore 4
aload 0
monitorenter
L0:
invokestatic com/nd/android/u/contact/business_new/ProcesssImpl/FunctionLoaderImpl/NormalGroupLoader/getInstance()Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/LoaderInterface/IGroupLoader;
lload 1
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/LoaderInterface/IGroupLoader/loadGroup(J)Z 2
istore 3
L1:
iload 3
ifne L7
iload 4
istore 3
L8:
aload 0
monitorexit
iload 3
ireturn
L7:
iload 4
istore 3
L3:
invokestatic com/nd/android/u/contact/business_new/ProcesssImpl/FunctionLoaderImpl/DiscussionGroupLoader/getInstance()Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/LoaderInterface/IGroupLoader;
lload 1
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/LoaderInterface/IGroupLoader/loadGroup(J)Z 2
ifeq L8
L4:
iload 4
istore 3
L5:
invokestatic com/nd/android/u/contact/business_new/ProcesssImpl/FunctionLoaderImpl/DeptGroupLoader/getInstance()Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/LoaderInterface/IGroupLoader;
lload 1
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/LoaderInterface/IGroupLoader/loadGroup(J)Z 2
ifeq L8
invokestatic com/nd/android/u/contact/business_new/ProcesssImpl/FunctionLoaderImpl/XYClassGroupLoader/getInstance()Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/LoaderInterface/IGroupLoader;
lload 1
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/LoaderInterface/IGroupLoader/loadGroup(J)Z 2
istore 5
L6:
iload 4
istore 3
iload 5
ifeq L8
iconst_1
istore 3
goto L8
L2:
astore 6
aload 0
monitorexit
aload 6
athrow
.limit locals 7
.limit stack 3
.end method
