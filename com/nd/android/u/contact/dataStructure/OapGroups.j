.bytecode 50.0
.class public synchronized com/nd/android/u/contact/dataStructure/OapGroups
.super java/lang/Object

.field public static final 'CLASSGROUPINDEX' I = 3


.field public static final 'CLUBGROUPINDEX' I = 4


.field public static final 'DEPARTGROUPINDEX' I = 1


.field public static final 'DISCUSSIONINDEX' I = 2


.field public static final 'NORMALGROUPINDEX' I = 0


.field private 'groupsName' Ljava/lang/String;

.field private 'oapGroupList' Ljava/util/List; signature "Ljava/util/List<Lcom/product/android/commonInterface/contact/OapGroup;>;"

.field private 'type' I

.method public <init>(ILjava/lang/String;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iload 1
putfield com/nd/android/u/contact/dataStructure/OapGroups/type I
aload 0
aload 2
putfield com/nd/android/u/contact/dataStructure/OapGroups/groupsName Ljava/lang/String;
return
.limit locals 3
.limit stack 2
.end method

.method public addOapGroups(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/product/android/commonInterface/contact/OapGroup;>;)V"
aload 1
ifnonnull L0
L1:
return
L0:
aload 0
getfield com/nd/android/u/contact/dataStructure/OapGroups/oapGroupList Ljava/util/List;
ifnonnull L2
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/contact/dataStructure/OapGroups/oapGroupList Ljava/util/List;
L3:
aload 1
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 1
L4:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/contact/OapGroup
astore 2
aload 0
getfield com/nd/android/u/contact/dataStructure/OapGroups/oapGroupList Ljava/util/List;
aload 2
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
goto L4
L2:
aload 0
getfield com/nd/android/u/contact/dataStructure/OapGroups/oapGroupList Ljava/util/List;
invokeinterface java/util/List/clear()V 0
goto L3
.limit locals 3
.limit stack 3
.end method

.method public equals(Ljava/lang/Object;)Z
aload 1
instanceof com/nd/android/u/contact/dataStructure/OapGroups
ifeq L0
aload 1
checkcast com/nd/android/u/contact/dataStructure/OapGroups
astore 1
aload 0
getfield com/nd/android/u/contact/dataStructure/OapGroups/type I
aload 1
getfield com/nd/android/u/contact/dataStructure/OapGroups/type I
if_icmpne L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 2
.limit stack 2
.end method

.method public getChildOapGroup(I)Lcom/product/android/commonInterface/contact/OapGroup;
aload 0
getfield com/nd/android/u/contact/dataStructure/OapGroups/type I
iconst_m1
if_icmpne L0
L1:
aconst_null
areturn
L0:
aload 0
getfield com/nd/android/u/contact/dataStructure/OapGroups/oapGroupList Ljava/util/List;
ifnull L1
aload 0
getfield com/nd/android/u/contact/dataStructure/OapGroups/oapGroupList Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/product/android/commonInterface/contact/OapGroup
areturn
.limit locals 2
.limit stack 2
.end method

.method public getGroup(I)Lcom/product/android/commonInterface/contact/OapGroup;
aload 0
getfield com/nd/android/u/contact/dataStructure/OapGroups/type I
iconst_m1
if_icmpne L0
L1:
aconst_null
areturn
L0:
aload 0
getfield com/nd/android/u/contact/dataStructure/OapGroups/oapGroupList Ljava/util/List;
ifnull L1
aload 0
getfield com/nd/android/u/contact/dataStructure/OapGroups/oapGroupList Ljava/util/List;
invokeinterface java/util/List/size()I 0
iload 1
if_icmple L1
aload 0
getfield com/nd/android/u/contact/dataStructure/OapGroups/oapGroupList Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/product/android/commonInterface/contact/OapGroup
areturn
.limit locals 2
.limit stack 2
.end method

.method public getGroupListSize()I
aload 0
getfield com/nd/android/u/contact/dataStructure/OapGroups/type I
iconst_m1
if_icmpne L0
L1:
iconst_0
ireturn
L0:
aload 0
getfield com/nd/android/u/contact/dataStructure/OapGroups/oapGroupList Ljava/util/List;
ifnull L1
aload 0
getfield com/nd/android/u/contact/dataStructure/OapGroups/oapGroupList Ljava/util/List;
invokeinterface java/util/List/size()I 0
ireturn
.limit locals 1
.limit stack 2
.end method

.method public getGroupsName()Ljava/lang/String;
aload 0
getfield com/nd/android/u/contact/dataStructure/OapGroups/groupsName Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getOapGroupList()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/product/android/commonInterface/contact/OapGroup;>;"
aload 0
getfield com/nd/android/u/contact/dataStructure/OapGroups/type I
iconst_m1
if_icmpne L0
aconst_null
areturn
L0:
aload 0
getfield com/nd/android/u/contact/dataStructure/OapGroups/oapGroupList Ljava/util/List;
ifnonnull L1
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/contact/dataStructure/OapGroups/oapGroupList Ljava/util/List;
L1:
aload 0
getfield com/nd/android/u/contact/dataStructure/OapGroups/oapGroupList Ljava/util/List;
areturn
.limit locals 1
.limit stack 3
.end method

.method public hashCode()I
aload 0
getfield com/nd/android/u/contact/dataStructure/OapGroups/type I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public initClubGroup(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/product/android/commonInterface/contact/OapGroup;>;)V"
aload 1
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 2
L0:
aload 2
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 2
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/contact/OapGroup
iconst_4
invokevirtual com/product/android/commonInterface/contact/OapGroup/setGroupType(I)V
goto L0
L1:
aload 0
aload 1
putfield com/nd/android/u/contact/dataStructure/OapGroups/oapGroupList Ljava/util/List;
aload 0
iconst_4
putfield com/nd/android/u/contact/dataStructure/OapGroups/type I
return
.limit locals 3
.limit stack 2
.end method

.method public initDepartGroup(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/product/android/commonInterface/contact/OapGroup;>;)V"
aload 0
aload 1
putfield com/nd/android/u/contact/dataStructure/OapGroups/oapGroupList Ljava/util/List;
aload 0
iconst_1
putfield com/nd/android/u/contact/dataStructure/OapGroups/type I
return
.limit locals 2
.limit stack 2
.end method

.method public initDiscussionGroup(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/product/android/commonInterface/contact/OapGroup;>;)V"
aload 1
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 2
L0:
aload 2
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 2
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/contact/OapGroup
iconst_3
invokevirtual com/product/android/commonInterface/contact/OapGroup/setGroupType(I)V
goto L0
L1:
aload 0
aload 1
putfield com/nd/android/u/contact/dataStructure/OapGroups/oapGroupList Ljava/util/List;
aload 0
iconst_3
putfield com/nd/android/u/contact/dataStructure/OapGroups/type I
return
.limit locals 3
.limit stack 2
.end method

.method public initNormalGroup(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/product/android/commonInterface/contact/OapGroup;>;)V"
aload 1
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 2
L0:
aload 2
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 2
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/contact/OapGroup
iconst_0
invokevirtual com/product/android/commonInterface/contact/OapGroup/setGroupType(I)V
goto L0
L1:
aload 0
aload 1
putfield com/nd/android/u/contact/dataStructure/OapGroups/oapGroupList Ljava/util/List;
aload 0
iconst_0
putfield com/nd/android/u/contact/dataStructure/OapGroups/type I
return
.limit locals 3
.limit stack 2
.end method

.method public setGroupsName(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/contact/dataStructure/OapGroups/groupsName Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setOapGroupList(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/product/android/commonInterface/contact/OapGroup;>;)V"
aload 0
aload 1
putfield com/nd/android/u/contact/dataStructure/OapGroups/oapGroupList Ljava/util/List;
return
.limit locals 2
.limit stack 2
.end method
