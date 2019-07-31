.bytecode 50.0
.class public synchronized com/nd/schoollife/ui/community/adapter/CommunityTagList
.super java/lang/Object

.field private 'tagInfos' Ljava/util/List; signature "Ljava/util/List<Lcom/nd/schoollife/common/bean/structure/CommunityTagInfoBean;>;"

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/schoollife/ui/community/adapter/CommunityTagList/tagInfos Ljava/util/List;
return
.limit locals 1
.limit stack 3
.end method

.method public addTagInfo(Lcom/nd/schoollife/common/bean/structure/CommunityTagInfoBean;)I
new com/nd/schoollife/common/bean/structure/CommunityTagInfoBean
dup
invokespecial com/nd/schoollife/common/bean/structure/CommunityTagInfoBean/<init>()V
astore 2
aload 2
aload 1
invokevirtual com/nd/schoollife/common/bean/structure/CommunityTagInfoBean/getName()Ljava/lang/String;
invokevirtual com/nd/schoollife/common/bean/structure/CommunityTagInfoBean/setName(Ljava/lang/String;)V
aload 2
aload 1
invokevirtual com/nd/schoollife/common/bean/structure/CommunityTagInfoBean/getId()J
invokevirtual com/nd/schoollife/common/bean/structure/CommunityTagInfoBean/setId(J)V
aload 0
getfield com/nd/schoollife/ui/community/adapter/CommunityTagList/tagInfos Ljava/util/List;
aload 2
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 0
getfield com/nd/schoollife/ui/community/adapter/CommunityTagList/tagInfos Ljava/util/List;
invokeinterface java/util/List/size()I 0
ireturn
.limit locals 3
.limit stack 3
.end method

.method public addTagInfoForUnique(Lcom/nd/schoollife/common/bean/structure/CommunityTagInfoBean;)I
aload 0
aload 1
invokevirtual com/nd/schoollife/ui/community/adapter/CommunityTagList/findTagInfo(Lcom/nd/schoollife/common/bean/structure/CommunityTagInfoBean;)I
iflt L0
iconst_m1
ireturn
L0:
new com/nd/schoollife/common/bean/structure/CommunityTagInfoBean
dup
invokespecial com/nd/schoollife/common/bean/structure/CommunityTagInfoBean/<init>()V
astore 2
aload 2
aload 1
invokevirtual com/nd/schoollife/common/bean/structure/CommunityTagInfoBean/getName()Ljava/lang/String;
invokevirtual com/nd/schoollife/common/bean/structure/CommunityTagInfoBean/setName(Ljava/lang/String;)V
aload 2
aload 1
invokevirtual com/nd/schoollife/common/bean/structure/CommunityTagInfoBean/getId()J
invokevirtual com/nd/schoollife/common/bean/structure/CommunityTagInfoBean/setId(J)V
aload 0
getfield com/nd/schoollife/ui/community/adapter/CommunityTagList/tagInfos Ljava/util/List;
aload 2
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 0
getfield com/nd/schoollife/ui/community/adapter/CommunityTagList/tagInfos Ljava/util/List;
invokeinterface java/util/List/size()I 0
ireturn
.limit locals 3
.limit stack 3
.end method

.method public clear()V
aload 0
getfield com/nd/schoollife/ui/community/adapter/CommunityTagList/tagInfos Ljava/util/List;
invokeinterface java/util/List/clear()V 0
return
.limit locals 1
.limit stack 1
.end method

.method public findTagInfo(Lcom/nd/schoollife/common/bean/structure/CommunityTagInfoBean;)I
aload 0
getfield com/nd/schoollife/ui/community/adapter/CommunityTagList/tagInfos Ljava/util/List;
invokeinterface java/util/List/size()I 0
istore 3
iconst_0
istore 2
L0:
iload 2
iload 3
if_icmpge L1
aload 0
getfield com/nd/schoollife/ui/community/adapter/CommunityTagList/tagInfos Ljava/util/List;
iload 2
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/schoollife/common/bean/structure/CommunityTagInfoBean
invokevirtual com/nd/schoollife/common/bean/structure/CommunityTagInfoBean/getId()J
aload 1
invokevirtual com/nd/schoollife/common/bean/structure/CommunityTagInfoBean/getId()J
lcmp
ifne L2
aload 0
getfield com/nd/schoollife/ui/community/adapter/CommunityTagList/tagInfos Ljava/util/List;
iload 2
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/schoollife/common/bean/structure/CommunityTagInfoBean
invokevirtual com/nd/schoollife/common/bean/structure/CommunityTagInfoBean/getName()Ljava/lang/String;
aload 1
invokevirtual com/nd/schoollife/common/bean/structure/CommunityTagInfoBean/getName()Ljava/lang/String;
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

.method public findTagInfoById(I)I
aload 0
getfield com/nd/schoollife/ui/community/adapter/CommunityTagList/tagInfos Ljava/util/List;
invokeinterface java/util/List/size()I 0
istore 3
iconst_0
istore 2
L0:
iload 2
iload 3
if_icmpge L1
aload 0
getfield com/nd/schoollife/ui/community/adapter/CommunityTagList/tagInfos Ljava/util/List;
iload 2
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/schoollife/common/bean/structure/CommunityTagInfoBean
invokevirtual com/nd/schoollife/common/bean/structure/CommunityTagInfoBean/getId()J
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

.method public findTagInfoByName(Ljava/lang/String;)I
aload 0
getfield com/nd/schoollife/ui/community/adapter/CommunityTagList/tagInfos Ljava/util/List;
invokeinterface java/util/List/size()I 0
istore 3
iconst_0
istore 2
L0:
iload 2
iload 3
if_icmpge L1
aload 0
getfield com/nd/schoollife/ui/community/adapter/CommunityTagList/tagInfos Ljava/util/List;
iload 2
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/schoollife/common/bean/structure/CommunityTagInfoBean
invokevirtual com/nd/schoollife/common/bean/structure/CommunityTagInfoBean/getName()Ljava/lang/String;
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

.method public getTagInfoById(I)Lcom/nd/schoollife/common/bean/structure/CommunityTagInfoBean;
aload 0
getfield com/nd/schoollife/ui/community/adapter/CommunityTagList/tagInfos Ljava/util/List;
invokeinterface java/util/List/size()I 0
istore 3
iconst_0
istore 2
L0:
iload 2
iload 3
if_icmpge L1
aload 0
getfield com/nd/schoollife/ui/community/adapter/CommunityTagList/tagInfos Ljava/util/List;
iload 2
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/schoollife/common/bean/structure/CommunityTagInfoBean
invokevirtual com/nd/schoollife/common/bean/structure/CommunityTagInfoBean/getId()J
iload 1
i2l
lcmp
ifne L2
aload 0
getfield com/nd/schoollife/ui/community/adapter/CommunityTagList/tagInfos Ljava/util/List;
iload 2
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/schoollife/common/bean/structure/CommunityTagInfoBean
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

.method public getTagInfoByIndex(I)Lcom/nd/schoollife/common/bean/structure/CommunityTagInfoBean;
iload 1
iflt L0
iload 1
aload 0
getfield com/nd/schoollife/ui/community/adapter/CommunityTagList/tagInfos Ljava/util/List;
invokeinterface java/util/List/size()I 0
if_icmpgt L0
aload 0
getfield com/nd/schoollife/ui/community/adapter/CommunityTagList/tagInfos Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/schoollife/common/bean/structure/CommunityTagInfoBean
areturn
L0:
aconst_null
areturn
.limit locals 2
.limit stack 2
.end method

.method public getTagInfoByName(Ljava/lang/String;)Lcom/nd/schoollife/common/bean/structure/CommunityTagInfoBean;
aload 0
getfield com/nd/schoollife/ui/community/adapter/CommunityTagList/tagInfos Ljava/util/List;
invokeinterface java/util/List/size()I 0
istore 3
iconst_0
istore 2
L0:
iload 2
iload 3
if_icmpge L1
aload 0
getfield com/nd/schoollife/ui/community/adapter/CommunityTagList/tagInfos Ljava/util/List;
iload 2
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/schoollife/common/bean/structure/CommunityTagInfoBean
invokevirtual com/nd/schoollife/common/bean/structure/CommunityTagInfoBean/getName()Ljava/lang/String;
aload 1
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L2
aload 0
getfield com/nd/schoollife/ui/community/adapter/CommunityTagList/tagInfos Ljava/util/List;
iload 2
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/schoollife/common/bean/structure/CommunityTagInfoBean
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

.method public getTagInfos()Ljava/util/List;
aload 0
getfield com/nd/schoollife/ui/community/adapter/CommunityTagList/tagInfos Ljava/util/List;
areturn
.limit locals 1
.limit stack 1
.end method

.method public remove(Lcom/nd/schoollife/common/bean/structure/CommunityTagInfoBean;)Z
aload 0
aload 1
invokevirtual com/nd/schoollife/ui/community/adapter/CommunityTagList/findTagInfo(Lcom/nd/schoollife/common/bean/structure/CommunityTagInfoBean;)I
istore 2
iload 2
iflt L0
aload 0
getfield com/nd/schoollife/ui/community/adapter/CommunityTagList/tagInfos Ljava/util/List;
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
invokevirtual com/nd/schoollife/ui/community/adapter/CommunityTagList/findTagInfoById(I)I
istore 1
iload 1
iflt L0
aload 0
getfield com/nd/schoollife/ui/community/adapter/CommunityTagList/tagInfos Ljava/util/List;
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
getfield com/nd/schoollife/ui/community/adapter/CommunityTagList/tagInfos Ljava/util/List;
invokeinterface java/util/List/size()I 0
if_icmpgt L0
aload 0
getfield com/nd/schoollife/ui/community/adapter/CommunityTagList/tagInfos Ljava/util/List;
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
invokevirtual com/nd/schoollife/ui/community/adapter/CommunityTagList/findTagInfoByName(Ljava/lang/String;)I
istore 2
iload 2
iflt L0
aload 0
getfield com/nd/schoollife/ui/community/adapter/CommunityTagList/tagInfos Ljava/util/List;
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

.method public setTagInfo(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/nd/schoollife/common/bean/structure/CommunityTagInfoBean;>;)V"
aload 1
invokeinterface java/util/List/size()I 0
istore 3
aload 0
getfield com/nd/schoollife/ui/community/adapter/CommunityTagList/tagInfos Ljava/util/List;
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
checkcast com/nd/schoollife/common/bean/structure/CommunityTagInfoBean
invokevirtual com/nd/schoollife/ui/community/adapter/CommunityTagList/addTagInfo(Lcom/nd/schoollife/common/bean/structure/CommunityTagInfoBean;)I
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
getfield com/nd/schoollife/ui/community/adapter/CommunityTagList/tagInfos Ljava/util/List;
invokeinterface java/util/List/size()I 0
ireturn
.limit locals 1
.limit stack 1
.end method
