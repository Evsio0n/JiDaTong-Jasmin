.bytecode 50.0
.class public synchronized com/nd/schoollife/ui/team/adapter/CategoryList
.super java/lang/Object

.field private 'categoryInfos' Ljava/util/List; signature "Ljava/util/List<Lcom/nd/android/forumsdk/business/bean/result/CategoryInfoBean;>;"

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/schoollife/ui/team/adapter/CategoryList/categoryInfos Ljava/util/List;
return
.limit locals 1
.limit stack 3
.end method

.method public addCategoryInfo(Lcom/nd/android/forumsdk/business/bean/result/CategoryInfoBean;)I
new com/nd/android/forumsdk/business/bean/result/CategoryInfoBean
dup
invokespecial com/nd/android/forumsdk/business/bean/result/CategoryInfoBean/<init>()V
astore 2
aload 2
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/CategoryInfoBean/getName()Ljava/lang/String;
invokevirtual com/nd/android/forumsdk/business/bean/result/CategoryInfoBean/setName(Ljava/lang/String;)V
aload 2
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/CategoryInfoBean/getId()J
invokevirtual com/nd/android/forumsdk/business/bean/result/CategoryInfoBean/setId(J)V
aload 2
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/CategoryInfoBean/getIntro()Ljava/lang/String;
invokevirtual com/nd/android/forumsdk/business/bean/result/CategoryInfoBean/setIntro(Ljava/lang/String;)V
aload 2
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/CategoryInfoBean/getAvatar()Ljava/lang/String;
invokevirtual com/nd/android/forumsdk/business/bean/result/CategoryInfoBean/setAvatar(Ljava/lang/String;)V
aload 0
getfield com/nd/schoollife/ui/team/adapter/CategoryList/categoryInfos Ljava/util/List;
aload 2
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 0
getfield com/nd/schoollife/ui/team/adapter/CategoryList/categoryInfos Ljava/util/List;
invokeinterface java/util/List/size()I 0
ireturn
.limit locals 3
.limit stack 3
.end method

.method public addCategoryInfoForUnique(Lcom/nd/android/forumsdk/business/bean/result/CategoryInfoBean;)I
aload 0
aload 1
invokevirtual com/nd/schoollife/ui/team/adapter/CategoryList/findCategoryInfo(Lcom/nd/android/forumsdk/business/bean/result/CategoryInfoBean;)I
iflt L0
iconst_m1
ireturn
L0:
new com/nd/android/forumsdk/business/bean/result/CategoryInfoBean
dup
invokespecial com/nd/android/forumsdk/business/bean/result/CategoryInfoBean/<init>()V
astore 2
aload 2
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/CategoryInfoBean/getName()Ljava/lang/String;
invokevirtual com/nd/android/forumsdk/business/bean/result/CategoryInfoBean/setName(Ljava/lang/String;)V
aload 2
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/CategoryInfoBean/getId()J
invokevirtual com/nd/android/forumsdk/business/bean/result/CategoryInfoBean/setId(J)V
aload 0
getfield com/nd/schoollife/ui/team/adapter/CategoryList/categoryInfos Ljava/util/List;
aload 2
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 0
getfield com/nd/schoollife/ui/team/adapter/CategoryList/categoryInfos Ljava/util/List;
invokeinterface java/util/List/size()I 0
ireturn
.limit locals 3
.limit stack 3
.end method

.method public clear()V
aload 0
getfield com/nd/schoollife/ui/team/adapter/CategoryList/categoryInfos Ljava/util/List;
invokeinterface java/util/List/clear()V 0
return
.limit locals 1
.limit stack 1
.end method

.method public findCategoryInfo(Lcom/nd/android/forumsdk/business/bean/result/CategoryInfoBean;)I
aload 0
getfield com/nd/schoollife/ui/team/adapter/CategoryList/categoryInfos Ljava/util/List;
invokeinterface java/util/List/size()I 0
istore 3
iconst_0
istore 2
L0:
iload 2
iload 3
if_icmpge L1
aload 0
getfield com/nd/schoollife/ui/team/adapter/CategoryList/categoryInfos Ljava/util/List;
iload 2
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/forumsdk/business/bean/result/CategoryInfoBean
invokevirtual com/nd/android/forumsdk/business/bean/result/CategoryInfoBean/getId()J
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/CategoryInfoBean/getId()J
lcmp
ifne L2
aload 0
getfield com/nd/schoollife/ui/team/adapter/CategoryList/categoryInfos Ljava/util/List;
iload 2
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/forumsdk/business/bean/result/CategoryInfoBean
invokevirtual com/nd/android/forumsdk/business/bean/result/CategoryInfoBean/getName()Ljava/lang/String;
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/CategoryInfoBean/getName()Ljava/lang/String;
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
getfield com/nd/schoollife/ui/team/adapter/CategoryList/categoryInfos Ljava/util/List;
invokeinterface java/util/List/size()I 0
istore 3
iconst_0
istore 2
L0:
iload 2
iload 3
if_icmpge L1
aload 0
getfield com/nd/schoollife/ui/team/adapter/CategoryList/categoryInfos Ljava/util/List;
iload 2
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/forumsdk/business/bean/result/CategoryInfoBean
invokevirtual com/nd/android/forumsdk/business/bean/result/CategoryInfoBean/getId()J
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
getfield com/nd/schoollife/ui/team/adapter/CategoryList/categoryInfos Ljava/util/List;
invokeinterface java/util/List/size()I 0
istore 3
iconst_0
istore 2
L0:
iload 2
iload 3
if_icmpge L1
aload 0
getfield com/nd/schoollife/ui/team/adapter/CategoryList/categoryInfos Ljava/util/List;
iload 2
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/forumsdk/business/bean/result/CategoryInfoBean
invokevirtual com/nd/android/forumsdk/business/bean/result/CategoryInfoBean/getName()Ljava/lang/String;
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

.method public getCategoryInfoById(I)Lcom/nd/android/forumsdk/business/bean/result/CategoryInfoBean;
aload 0
getfield com/nd/schoollife/ui/team/adapter/CategoryList/categoryInfos Ljava/util/List;
invokeinterface java/util/List/size()I 0
istore 3
iconst_0
istore 2
L0:
iload 2
iload 3
if_icmpge L1
aload 0
getfield com/nd/schoollife/ui/team/adapter/CategoryList/categoryInfos Ljava/util/List;
iload 2
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/forumsdk/business/bean/result/CategoryInfoBean
invokevirtual com/nd/android/forumsdk/business/bean/result/CategoryInfoBean/getId()J
iload 1
i2l
lcmp
ifne L2
aload 0
getfield com/nd/schoollife/ui/team/adapter/CategoryList/categoryInfos Ljava/util/List;
iload 2
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/forumsdk/business/bean/result/CategoryInfoBean
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

.method public getCategoryInfoByIndex(I)Lcom/nd/android/forumsdk/business/bean/result/CategoryInfoBean;
iload 1
iflt L0
iload 1
aload 0
getfield com/nd/schoollife/ui/team/adapter/CategoryList/categoryInfos Ljava/util/List;
invokeinterface java/util/List/size()I 0
if_icmpgt L0
aload 0
getfield com/nd/schoollife/ui/team/adapter/CategoryList/categoryInfos Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/forumsdk/business/bean/result/CategoryInfoBean
areturn
L0:
aconst_null
areturn
.limit locals 2
.limit stack 2
.end method

.method public getCategoryInfoByName(Ljava/lang/String;)Lcom/nd/android/forumsdk/business/bean/result/CategoryInfoBean;
aload 0
getfield com/nd/schoollife/ui/team/adapter/CategoryList/categoryInfos Ljava/util/List;
invokeinterface java/util/List/size()I 0
istore 3
iconst_0
istore 2
L0:
iload 2
iload 3
if_icmpge L1
aload 0
getfield com/nd/schoollife/ui/team/adapter/CategoryList/categoryInfos Ljava/util/List;
iload 2
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/forumsdk/business/bean/result/CategoryInfoBean
invokevirtual com/nd/android/forumsdk/business/bean/result/CategoryInfoBean/getName()Ljava/lang/String;
aload 1
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L2
aload 0
getfield com/nd/schoollife/ui/team/adapter/CategoryList/categoryInfos Ljava/util/List;
iload 2
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/forumsdk/business/bean/result/CategoryInfoBean
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
getfield com/nd/schoollife/ui/team/adapter/CategoryList/categoryInfos Ljava/util/List;
areturn
.limit locals 1
.limit stack 1
.end method

.method public remove(Lcom/nd/android/forumsdk/business/bean/result/CategoryInfoBean;)Z
aload 0
aload 1
invokevirtual com/nd/schoollife/ui/team/adapter/CategoryList/findCategoryInfo(Lcom/nd/android/forumsdk/business/bean/result/CategoryInfoBean;)I
istore 2
iload 2
iflt L0
aload 0
getfield com/nd/schoollife/ui/team/adapter/CategoryList/categoryInfos Ljava/util/List;
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
invokevirtual com/nd/schoollife/ui/team/adapter/CategoryList/findCategoryInfoById(I)I
istore 1
iload 1
iflt L0
aload 0
getfield com/nd/schoollife/ui/team/adapter/CategoryList/categoryInfos Ljava/util/List;
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
getfield com/nd/schoollife/ui/team/adapter/CategoryList/categoryInfos Ljava/util/List;
invokeinterface java/util/List/size()I 0
if_icmpgt L0
aload 0
getfield com/nd/schoollife/ui/team/adapter/CategoryList/categoryInfos Ljava/util/List;
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
invokevirtual com/nd/schoollife/ui/team/adapter/CategoryList/findCategoryInfoByName(Ljava/lang/String;)I
istore 2
iload 2
iflt L0
aload 0
getfield com/nd/schoollife/ui/team/adapter/CategoryList/categoryInfos Ljava/util/List;
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
.signature "(Ljava/util/List<Lcom/nd/android/forumsdk/business/bean/result/CategoryInfoBean;>;)V"
aload 1
invokeinterface java/util/List/size()I 0
istore 3
aload 0
getfield com/nd/schoollife/ui/team/adapter/CategoryList/categoryInfos Ljava/util/List;
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
checkcast com/nd/android/forumsdk/business/bean/result/CategoryInfoBean
invokevirtual com/nd/schoollife/ui/team/adapter/CategoryList/addCategoryInfo(Lcom/nd/android/forumsdk/business/bean/result/CategoryInfoBean;)I
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
getfield com/nd/schoollife/ui/team/adapter/CategoryList/categoryInfos Ljava/util/List;
invokeinterface java/util/List/size()I 0
ireturn
.limit locals 1
.limit stack 1
.end method
