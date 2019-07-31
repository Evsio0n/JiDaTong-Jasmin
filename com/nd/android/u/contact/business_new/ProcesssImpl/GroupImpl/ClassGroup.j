.bytecode 50.0
.class public synchronized com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/ClassGroup
.super com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup

.field private static final 'serialVersionUID' J = 3618719127748762256L


.method public <init>(J)V
aload 0
lload 1
invokespecial com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/<init>(J)V
aload 0
iconst_2
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/ClassGroup/setType(I)V
return
.limit locals 3
.limit stack 3
.end method

.method public addMember(Ljava/lang/String;Ljava/util/Iterator;)Z
.signature "(Ljava/lang/String;Ljava/util/Iterator<Ljava/lang/Long;>;)Z"
new java/lang/ClassCastException
dup
invokespecial java/lang/ClassCastException/<init>()V
athrow
.limit locals 3
.limit stack 2
.end method

.method public getManagerList()Ljava/util/Iterator;
.signature "()Ljava/util/Iterator<Lcom/product/android/commonInterface/contact/OapUser;>;"
aconst_null
areturn
.limit locals 1
.limit stack 1
.end method

.method public getMember()Ljava/util/Iterator;
.signature "()Ljava/util/Iterator<Lcom/product/android/commonInterface/contact/OapUser;>;"
aload 0
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/ClassGroup/getMemberByDB()Ljava/util/List;
astore 1
aload 1
ifnonnull L0
aconst_null
areturn
L0:
aload 1
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
areturn
.limit locals 2
.limit stack 1
.end method

.method protected getMemberByDB()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/product/android/commonInterface/contact/OapUser;>;"
aconst_null
astore 3
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/ClassGroup/gid J
lconst_0
lcmp
ifgt L0
aload 3
astore 2
L1:
aload 2
areturn
L0:
ldc com/nd/android/u/contact/dao/OapJMClassDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapJMClassDao
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/ClassGroup/gid J
invokeinterface com/nd/android/u/contact/dao/OapJMClassDao/getClassByGid(J)Lcom/nd/android/u/contact/dataStructure/OapJMClass; 2
astore 5
aload 3
astore 2
aload 5
ifnull L1
aload 3
astore 2
aload 5
invokevirtual com/nd/android/u/contact/dataStructure/OapJMClass/getGid()I
i2l
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/ClassGroup/gid J
lcmp
ifne L1
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 4
invokestatic com/nd/android/u/contact/business/DepartGroupPro/getInstance()Lcom/nd/android/u/contact/business/DepartGroupPro;
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/ClassGroup/gid J
aload 5
invokevirtual com/nd/android/u/contact/dataStructure/OapJMClass/getClassid()I
aload 4
invokevirtual com/nd/android/u/contact/business/DepartGroupPro/getXYClassGroupMember(JILjava/util/List;)V
aload 3
astore 2
aload 4
ifnull L1
aload 3
astore 2
aload 4
invokevirtual java/util/ArrayList/size()I
ifle L1
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 3
iconst_0
istore 1
L2:
aload 3
astore 2
iload 1
aload 4
invokevirtual java/util/ArrayList/size()I
if_icmpge L1
aload 4
iload 1
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast com/product/android/commonInterface/contact/OapGroupRelation
astore 2
invokestatic com/nd/android/u/contact/cache/UserCacheManager/getInstance()Lcom/nd/android/u/contact/cache/UserCacheManager;
aload 2
invokevirtual com/product/android/commonInterface/contact/OapGroupRelation/getFid()J
invokevirtual com/nd/android/u/contact/cache/UserCacheManager/getUser(J)Lcom/product/android/commonInterface/contact/OapUser;
astore 2
aload 2
ifnull L3
aload 3
aload 2
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
L3:
iload 1
iconst_1
iadd
istore 1
goto L2
.limit locals 6
.limit stack 5
.end method

.method public getPermission()I
new java/lang/ClassCastException
dup
invokespecial java/lang/ClassCastException/<init>()V
athrow
.limit locals 1
.limit stack 2
.end method

.method public isManager(J)Z
iconst_0
ireturn
.limit locals 3
.limit stack 1
.end method

.method public loadGroup()Z
new java/lang/ClassCastException
dup
invokespecial java/lang/ClassCastException/<init>()V
athrow
.limit locals 1
.limit stack 2
.end method

.method public quit(Ljava/lang/String;)Z
new java/lang/ClassCastException
dup
invokespecial java/lang/ClassCastException/<init>()V
athrow
.limit locals 2
.limit stack 2
.end method

.method public setIntroduction(Ljava/lang/String;Ljava/lang/String;)Z
new java/lang/ClassCastException
dup
invokespecial java/lang/ClassCastException/<init>()V
athrow
.limit locals 3
.limit stack 2
.end method

.method public setIntroductionByDB(Ljava/lang/String;)Z
new java/lang/ClassCastException
dup
invokespecial java/lang/ClassCastException/<init>()V
athrow
.limit locals 2
.limit stack 2
.end method

.method public setNotice(Ljava/lang/String;Ljava/lang/String;)Z
new java/lang/ClassCastException
dup
invokespecial java/lang/ClassCastException/<init>()V
athrow
.limit locals 3
.limit stack 2
.end method

.method public setNoticeByDB(Ljava/lang/String;)Z
new java/lang/ClassCastException
dup
invokespecial java/lang/ClassCastException/<init>()V
athrow
.limit locals 2
.limit stack 2
.end method

.method public setPermission(Ljava/lang/String;I)Z
new java/lang/ClassCastException
dup
invokespecial java/lang/ClassCastException/<init>()V
athrow
.limit locals 3
.limit stack 2
.end method

.method public setPermissionByDB(I)Z
new java/lang/ClassCastException
dup
invokespecial java/lang/ClassCastException/<init>()V
athrow
.limit locals 2
.limit stack 2
.end method

.method public synGroup()Z
new java/lang/ClassCastException
dup
invokespecial java/lang/ClassCastException/<init>()V
athrow
.limit locals 1
.limit stack 2
.end method

.method public transfer(Ljava/lang/String;J)Z
new java/lang/ClassCastException
dup
invokespecial java/lang/ClassCastException/<init>()V
athrow
.limit locals 4
.limit stack 2
.end method
