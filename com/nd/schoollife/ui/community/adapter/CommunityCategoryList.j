.bytecode 50.0
.class public synchronized com/nd/schoollife/ui/community/adapter/CommunityCategoryList
.super java/lang/Object

.field private 'categoryInfos' Ljava/util/List; signature "Ljava/util/List<Lcom/nd/schoollife/common/bean/structure/CommunityCategoryInfoBean;>;"

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/schoollife/ui/community/adapter/CommunityCategoryList/categoryInfos Ljava/util/List;
return
.limit locals 1
.limit stack 3
.end method

.method public addCategoryInfo(Lcom/nd/schoollife/common/bean/structure/CommunityCategoryInfoBean;)I
new com/nd/schoollife/common/bean/structure/CommunityCategoryInfoBean
dup
invokespecial com/nd/schoollife/common/bean/structure/CommunityCategoryInfoBean/<init>()V
astore 2
aload 2
aload 1
invokevirtual com/nd/schoollife/common/bean/structure/CommunityCategoryInfoBean/getName()Ljava/lang/String;
invokevirtual com/nd/schoollife/common/bean/structure/CommunityCategoryInfoBean/setName(Ljava/lang/String;)V
aload 2
aload 1
invokevirtual com/nd/schoollife/common/bean/structure/CommunityCategoryInfoBean/getId()J
invokevirtual com/nd/schoollife/common/bean/structure/CommunityCategoryInfoBean/setId(J)V
aload 2
aload 1
invokevirtual com/nd/schoollife/common/bean/structure/CommunityCategoryInfoBean/getIntro()Ljava/lang/String;
invokevirtual com/nd/schoollife/common/bean/structure/CommunityCategoryInfoBean/setIntro(Ljava/lang/String;)V
aload 2
aload 1
invokevirtual com/nd/schoollife/common/bean/structure/CommunityCategoryInfoBean/getAvatar()Ljava/lang/String;
invokevirtual com/nd/schoollife/common/bean/structure/CommunityCategoryInfoBean/setAvatar(Ljava/lang/String;)V
aload 0
getfield com/nd/schoollife/ui/community/adapter/CommunityCategoryList/categoryInfos Ljava/util/List;
aload 2
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 0
getfield com/nd/schoollife/ui/community/adapter/CommunityCategoryList/categoryInfos Ljava/util/List;
invokeinterface java/util/List/size()I 0
ireturn
.limit locals 3
.limit stack 3
.end method

.method public addCategoryInfoForUnique(Lcom/nd/schoollife/common/bean/structure/CommunityCategoryInfoBean;)I
aload 0
aload 1
invokevirtual com/nd/schoollife/ui/community/adapter/CommunityCategoryList/findCategoryInfo(Lcom/nd/schoollife/common/bean/structure/CommunityCategoryInfoBean;)I
iflt L0
iconst_m1
ireturn
L0:
new com/nd/schoollife/common/bean/structure/CommunityCategoryInfoBean
dup
invokespecial com/nd/schoollife/common/bean/structure/CommunityCategoryInfoBean/<init>()V
astore 2
aload 2
aload 1
invokevirtual com/nd/schoollife/common/bean/structure/CommunityCategoryInfoBean/getName()Ljava/lang/String;
invokevirtual com/nd/schoollife/common/bean/structure/CommunityCategoryInfoBean/setName(Ljava/lang/String;)V
aload 2
aload 1
invokevirtual com/nd/schoollife/common/bean/structure/CommunityCategoryInfoBean/getId()J
invokevirtual com/nd/schoollife/common/bean/structure/CommunityCategoryInfoBean/setId(J)V
aload 0
getfield com/nd/schoollife/ui/community/adapter/CommunityCategoryList/categoryInfos Ljava/util/List;
aload 2
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 0
getfield com/nd/schoollife/ui/community/adapter/CommunityCategoryList/categoryInfos Ljava/util/List;
invokeinterface java/util/List/size()I 0
ireturn
.limit locals 3
.limit stack 3
.end method

.method public clear()V
aload 0
getfield com/nd/schoollife/ui/community/adapter/CommunityCategoryList/categoryInfos Ljava/util/List;
invokeinterface java/util/List/clear()V 0
return
.limit locals 1
.limit stack 1
.end method

.method public findCategoryInfo(Lcom/nd/schoollife/common/bean/structure/CommunityCategoryInfoBean;)I
aload 0
getfield com/nd/schoollife/ui/community/adapter/CommunityCategoryList/categoryInfos Ljava/util/List;
invokeinterface java/util/List/size()I 0
istore 3
iconst_0
istore 2
L0:
iload 2
iload 3
if_icmpge L1
aload 0
getfield com/nd/schoollife/ui/community/adapter/CommunityCategoryList/categoryInfos Ljava/util/List;
iload 2
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/schoollife/common/bean/structure/CommunityCategoryInfoBean
invokevirtual com/nd/schoollife/common/bean/structure/CommunityCategoryInfoBean/getId()J
aload 1
invokevirtual com/nd/schoollife/common/bean/structure/CommunityCategoryInfoBean/getId()J
lcmp
ifne L2
aload 0
getfield com/nd/schoollife/ui/community/adapter/CommunityCategoryList/categoryInfos Ljava/util/List;
iload 2
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/schoollife/common/bean/structure/CommunityCategoryInfoBean
invokevirtual com/nd/schoollife/common/bean/structure/CommunityCategoryInfoBean/getName()Ljava/lang/String;
aload 1
invokevirtual com/nd/schoollife/common/bean/structure/CommunityCategoryInfoBean/getName()Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L2
iload 2
ireturn
L2:
iload 2
iconst_1
iadd
istore 2
goto L0
L1:
iconst_m1
ireturn
.limit locals 4
.limit stack 4
.end method

.method public findCategoryInfoById(I)I
aload 0
getfield com/nd/schoollife/ui/community/adapter/CommunityCategoryList/categoryInfos Ljava/util/List;
invokeinterface java/util/List/size()I 0
istore 3
iconst_0
istore 2
L0:
iload 2
iload 3
if_icmpge L1
aload 0
getfield com/nd/schoollife/ui/community/adapter/CommunityCategoryList/categoryInfos Ljava/util/List;
iload 2
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/schoollife/common/bean/structure/CommunityCategoryInfoBean
invokevirtual com/nd/schoollife/common/bean/structure/CommunityCategoryInfoBean/getId()J
iload 1
i2l
lcmp
ifne L2
iload 2
ireturn
L2:
iload 2
iconst_1
iadd
istore 2
goto L0
L1:
iconst_m1
ireturn
.limit locals 4
.limit stack 4
.end method

.method public findCategoryInfoByName(Ljava/lang/String;)I
aload 0
getfield com/nd/schoollife/ui/community/adapter/CommunityCategoryList/categoryInfos Ljava/util/List;
invokeinterface java/util/List/size()I 0
istore 3
iconst_0
istore 2
L0:
iload 2
iload 3
if_icmpge L1
aload 0
getfield com/nd/schoollife/ui/community/adapter/CommunityCategoryList/categoryInfos Ljava/util/List;
iload 2
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/schoollife/common/bean/structure/CommunityCategoryInfoBean
invokevirtual com/nd/schoollife/common/bean/structure/CommunityCategoryInfoBean/getName()Ljava/lang/String;
aload 1
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L2
iload 2
ireturn
L2:
iload 2
iconst_1
iadd
istore 2
goto L0
L1:
iconst_m1
ireturn
.limit locals 4
.limit stack 2
.end method

.method public getCategoryInfoById(I)Lcom/nd/schoollife/common/bean/structure/CommunityCategoryInfoBean;
aload 0
getfield com/nd/schoollife/ui/community/adapter/CommunityCategoryList/categoryInfos Ljava/util/List;
invokeinterface java/util/List/size()I 0
istore 3
iconst_0
istore 2
L0:
iload 2
iload 3
if_icmpge L1
aload 0
getfield com/nd/schoollife/ui/community/adapter/CommunityCategoryList/categoryInfos Ljava/util/List;
iload 2
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/schoollife/common/bean/structure/CommunityCategoryInfoBean
invokevirtual com/nd/schoollife/common/bean/structure/CommunityCategoryInfoBean/getId()J
iload 1
i2l
lcmp
ifne L2
aload 0
getfield com/nd/schoollife/ui/community/adapter/CommunityCategoryList/categoryInfos Ljava/util/List;
iload 2
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/schoollife/common/bean/structure/CommunityCategoryInfoBean
areturn
L2:
iload 2
iconst_1
iadd
istore 2
goto L0
L1:
aconst_null
areturn
.limit locals 4
.limit stack 4
.end method

.method public getCategoryInfoByIndex(I)Lcom/nd/schoollife/common/bean/structure/CommunityCategoryInfoBean;
iload 1
iflt L0
iload 1
aload 0
getfield com/nd/schoollife/ui/community/adapter/CommunityCategoryList/categoryInfos Ljava/util/List;
invokeinterface java/util/List/size()I 0
if_icmpgt L0
aload 0
getfield com/nd/schoollife/ui/community/adapter/CommunityCategoryList/categoryInfos Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/schoollife/common/bean/structure/CommunityCategoryInfoBean
areturn
L0:
aconst_null
areturn
.limit locals 2
.limit stack 2
.end method

.method public getCategoryInfoByName(Ljava/lang/String;)Lcom/nd/schoollife/common/bean/structure/CommunityCategoryInfoBean;
aload 0
getfield com/nd/schoollife/ui/community/adapter/CommunityCategoryList/categoryInfos Ljava/util/List;
invokeinterface java/util/List/size()I 0
istore 3
iconst_0
istore 2
L0:
iload 2
iload 3
if_icmpge L1
aload 0
getfield com/nd/schoollife/ui/community/adapter/CommunityCategoryList/categoryInfos Ljava/util/List;
iload 2
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/schoollife/common/bean/structure/CommunityCategoryInfoBean
invokevirtual com/nd/schoollife/common/bean/structure/CommunityCategoryInfoBean/getName()Ljava/lang/String;
aload 1
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L2
aload 0
getfield com/nd/schoollife/ui/community/adapter/CommunityCategoryList/categoryInfos Ljava/util/List;
iload 2
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/schoollife/common/bean/structure/CommunityCategoryInfoBean
areturn
L2:
iload 2
iconst_1
iadd
istore 2
goto L0
L1:
aconst_null
areturn
.limit locals 4
.limit stack 2
.end method

.method public getCategoryInfos()Ljava/util/List;
aload 0
getfield com/nd/schoollife/ui/community/adapter/CommunityCategoryList/categoryInfos Ljava/util/List;
areturn
.limit locals 1
.limit stack 1
.end method

.method public remove(Lcom/nd/schoollife/common/bean/structure/CommunityCategoryInfoBean;)Z
aload 0
aload 1
invokevirtual com/nd/schoollife/ui/community/adapter/CommunityCategoryList/findCategoryInfo(Lcom/nd/schoollife/common/bean/structure/CommunityCategoryInfoBean;)I
istore 2
iload 2
iflt L0
aload 0
getfield com/nd/schoollife/ui/community/adapter/CommunityCategoryList/categoryInfos Ljava/util/List;
iload 2
invokeinterface java/util/List/remove(I)Ljava/lang/Object; 1
pop
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 3
.limit stack 2
.end method

.method public removeById(I)Z
aload 0
iload 1
invokevirtual com/nd/schoollife/ui/community/adapter/CommunityCategoryList/findCategoryInfoById(I)I
istore 1
iload 1
iflt L0
aload 0
getfield com/nd/schoollife/ui/community/adapter/CommunityCategoryList/categoryInfos Ljava/util/List;
iload 1
invokeinterface java/util/List/remove(I)Ljava/lang/Object; 1
pop
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 2
.limit stack 2
.end method

.method public removeByIndex(I)Z
iload 1
iflt L0
iload 1
aload 0
getfield com/nd/schoollife/ui/community/adapter/CommunityCategoryList/categoryInfos Ljava/util/List;
invokeinterface java/util/List/size()I 0
if_icmpgt L0
aload 0
getfield com/nd/schoollife/ui/community/adapter/CommunityCategoryList/categoryInfos Ljava/util/List;
iload 1
invokeinterface java/util/List/remove(I)Ljava/lang/Object; 1
pop
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 2
.limit stack 2
.end method

.method public removeByName(Ljava/lang/String;)Z
aload 0
aload 1
invokevirtual com/nd/schoollife/ui/community/adapter/CommunityCategoryList/findCategoryInfoByName(Ljava/lang/String;)I
istore 2
iload 2
iflt L0
aload 0
getfield com/nd/schoollife/ui/community/adapter/CommunityCategoryList/categoryInfos Ljava/util/List;
iload 2
invokeinterface java/util/List/remove(I)Ljava/lang/Object; 1
pop
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 3
.limit stack 2
.end method

.method public setCategoryInfo(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/nd/schoollife/common/bean/structure/CommunityCategoryInfoBean;>;)V"
aload 1
invokeinterface java/util/List/size()I 0
istore 3
aload 0
getfield com/nd/schoollife/ui/community/adapter/CommunityCategoryList/categoryInfos Ljava/util/List;
invokeinterface java/util/List/clear()V 0
iconst_0
istore 2
L0:
iload 2
iload 3
if_icmpge L1
aload 0
aload 1
iload 2
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/schoollife/common/bean/structure/CommunityCategoryInfoBean
invokevirtual com/nd/schoollife/ui/community/adapter/CommunityCategoryList/addCategoryInfo(Lcom/nd/schoollife/common/bean/structure/CommunityCategoryInfoBean;)I
pop
iload 2
iconst_1
iadd
istore 2
goto L0
L1:
return
.limit locals 4
.limit stack 3
.end method

.method public size()I
aload 0
getfield com/nd/schoollife/ui/community/adapter/CommunityCategoryList/categoryInfos Ljava/util/List;
invokeinterface java/util/List/size()I 0
ireturn
.limit locals 1
.limit stack 1
.end method
