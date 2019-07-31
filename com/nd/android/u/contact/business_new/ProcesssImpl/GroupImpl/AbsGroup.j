.bytecode 50.0
.class public synchronized com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup
.super java/lang/Object
.implements com/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup
.implements java/io/Serializable

.field public static final 'CATEGORY_CLUB_GROUP' I = 7


.field public static final 'CATEGORY_DEPART_GROUP' I = 4


.field public static final 'CATEGORY_ENT_GROUP' I = 3


.field public static final 'CATEGORY_PARENT_TEACHER_GROUP' I = 6


.field public static final 'CATEGORY_PERSON_GROUP' I = 2


.field public static final 'CATEGORY_STUDENT_TEACHER_GROUP' I = 5


.field public static final 'CATEGORY_WORK_GROUP' I = 1


.field public static final 'CLASSGROUP' I = 2


.field public static final 'CLUBGROUP' I = 4


.field public static final 'CONFIG_GROUPPERMISSION_DEFAULT' I = 2


.field public static final 'DEPARTGROUP' I = 1


.field public static final 'DISCUSSIONGROUP' I = 3


.field public static final 'INITGROUPSETTYPE' I = -1


.field public static final 'MASKGROUPMSG' I = 0


.field public static final 'NORMALGROUP' I = 0


.field public static final 'PERM_ALLOW' I = 1


.field public static final 'PERM_NEED_VALIDATE' I = 0


.field public static final 'PERM_NOT_ALLOW' I = 2


.field public static final 'PERSON' I = -99


.field public static final 'RECEIVENOTIFY' I = 1


.field public static final 'RECEIVESHOW' I = 2


.field public static final 'RECENTGROUP' I = -1


.field public static final 'SETGROUPPARA' I = 3


.field public static final 'UNSPECIFIC_GROUP_ID' J = -1L


.field public static final 'USERTYPE_CREATOR' I = 3


.field public static final 'USERTYPE_MANAGER' I = 2


.field public static final 'USERTYPE_MEMBER' I = 0


.field private static final 'serialVersionUID' J = -3025239556508855106L


.field protected 'announcement' Ljava/lang/String;

.field protected 'catagory' I

.field protected 'creatorID' J

.field protected 'gid' J

.field protected 'group' Lcom/product/android/commonInterface/contact/OapGroup;

.field protected 'intro' Ljava/lang/String;

.field protected 'listManager' Ljava/util/List; signature "Ljava/util/List<Lcom/product/android/commonInterface/contact/OapUser;>;"

.field protected 'listMember' Ljava/util/List; signature "Ljava/util/List<Lcom/product/android/commonInterface/contact/OapUser;>;"

.field public 'mgroupSetType' I

.field protected 'nPerm' I

.field protected 'name' Ljava/lang/String;

.field protected 'obsData' Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupDataObserver;

.field protected 'type' I

.method public <init>(J)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_m1
putfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/mgroupSetType I
aload 0
lconst_0
putfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/gid J
aload 0
iconst_0
putfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/type I
aload 0
ldc ""
putfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/name Ljava/lang/String;
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/listMember Ljava/util/List;
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/listManager Ljava/util/List;
aload 0
lconst_0
putfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/creatorID J
aload 0
iconst_1
putfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/nPerm I
aload 0
ldc ""
putfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/intro Ljava/lang/String;
aload 0
ldc ""
putfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/announcement Ljava/lang/String;
aload 0
iconst_0
putfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/catagory I
aload 0
aconst_null
putfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/group Lcom/product/android/commonInterface/contact/OapGroup;
aload 0
aconst_null
putfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/obsData Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupDataObserver;
aload 0
lload 1
putfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/gid J
aload 0
new com/product/android/commonInterface/contact/OapGroup
dup
invokespecial com/product/android/commonInterface/contact/OapGroup/<init>()V
putfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/group Lcom/product/android/commonInterface/contact/OapGroup;
return
.limit locals 3
.limit stack 3
.end method

.method public addGroupDataObserver(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupDataObserver;)V
invokestatic com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/GroupSubjectImpl/getInstance()Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/GroupSubjectImpl;
aload 1
invokevirtual com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/GroupSubjectImpl/addGroupDataObserver(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupDataObserver;)V
return
.limit locals 2
.limit stack 2
.end method

.method public addGroupStateObserver(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupStateObserver;)V
invokestatic com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/GroupSubjectImpl/getInstance()Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/GroupSubjectImpl;
aload 1
invokevirtual com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/GroupSubjectImpl/addGroupStateObserver(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupStateObserver;)V
return
.limit locals 2
.limit stack 2
.end method

.method public addMember(Ljava/lang/String;Ljava/util/Iterator;)Z
.signature "(Ljava/lang/String;Ljava/util/Iterator<Ljava/lang/Long;>;)Z"
iconst_0
ireturn
.limit locals 3
.limit stack 1
.end method

.method public addMemberByDB(Ljava/util/Iterator;)Z
.signature "(Ljava/util/Iterator<Ljava/lang/Long;>;)Z"
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/gid J
lconst_0
lcmp
ifgt L0
iconst_0
ireturn
L0:
aload 1
ifnonnull L1
iconst_0
ireturn
L1:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L2
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/lang/Long
astore 2
aload 2
invokevirtual java/lang/Long/longValue()J
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
lcmp
ifeq L1
new com/product/android/commonInterface/contact/OapGroupRelation
dup
invokespecial com/product/android/commonInterface/contact/OapGroupRelation/<init>()V
astore 3
aload 3
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/gid J
invokevirtual com/product/android/commonInterface/contact/OapGroupRelation/setGid(J)V
aload 3
aload 2
invokevirtual java/lang/Long/longValue()J
invokevirtual com/product/android/commonInterface/contact/OapGroupRelation/setFid(J)V
aload 3
iconst_0
invokevirtual com/product/android/commonInterface/contact/OapGroupRelation/setGrade(I)V
ldc com/nd/android/u/contact/dao/OapGroupRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapGroupRelationDao
aload 3
invokeinterface com/nd/android/u/contact/dao/OapGroupRelationDao/insertGroupRelation(Lcom/product/android/commonInterface/contact/OapGroupRelation;)J 1
pop2
goto L1
L2:
invokestatic com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/GroupSubjectImpl/getInstance()Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/GroupSubjectImpl;
sipush 1001
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/gid J
invokevirtual com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/GroupSubjectImpl/notifyGroupData(IJ)V
iconst_1
ireturn
.limit locals 4
.limit stack 4
.end method

.method public clearMsgNofifyType()V
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc "-"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/getGroupKey()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/common/android/utils/ConfigHelper/removeGroupSetKey(Ljava/lang/String;)V
return
.limit locals 1
.limit stack 3
.end method

.method public delMember(Ljava/lang/String;Ljava/util/Iterator;)Z
.signature "(Ljava/lang/String;Ljava/util/Iterator<Ljava/lang/Long;>;)Z"
iconst_0
ireturn
.limit locals 3
.limit stack 1
.end method

.method public delMemberByDB(Ljava/util/Iterator;)Z
.signature "(Ljava/util/Iterator<Ljava/lang/Long;>;)Z"
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/gid J
lconst_0
lcmp
ifgt L0
L1:
iconst_0
ireturn
L0:
aload 1
ifnull L1
L2:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L3
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/lang/Long
astore 2
ldc com/nd/android/u/contact/dao/OapGroupRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapGroupRelationDao
aload 2
invokevirtual java/lang/Long/longValue()J
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/gid J
invokeinterface com/nd/android/u/contact/dao/OapGroupRelationDao/deleteGroupRelation(JJ)Z 4
pop
goto L2
L3:
aload 0
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/getMemberByDB()Ljava/util/List;
astore 1
aload 1
ifnonnull L4
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/listMember Ljava/util/List;
invokeinterface java/util/List/clear()V 0
L5:
invokestatic com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/GroupSubjectImpl/getInstance()Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/GroupSubjectImpl;
sipush 1001
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/gid J
invokevirtual com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/GroupSubjectImpl/notifyGroupData(IJ)V
iconst_1
ireturn
L4:
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/listMember Ljava/util/List;
invokeinterface java/util/List/clear()V 0
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/listMember Ljava/util/List;
aload 1
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
goto L5
.limit locals 3
.limit stack 5
.end method

.method protected finalize()V
.throws java/lang/Throwable
aload 0
invokespecial java/lang/Object/finalize()V
return
.limit locals 1
.limit stack 1
.end method

.method public getCatagory()I
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/gid J
lconst_0
lcmp
ifgt L0
iconst_0
ireturn
L0:
ldc com/nd/android/u/contact/dao/OapGroupDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapGroupDao
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/gid J
invokeinterface com/nd/android/u/contact/dao/OapGroupDao/findGroupByGUid(J)Lcom/product/android/commonInterface/contact/OapGroup; 2
astore 1
aload 1
ifnull L1
aload 1
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGid()J
lconst_0
lcmp
ifgt L2
L1:
iconst_0
ireturn
L2:
aload 1
invokevirtual com/product/android/commonInterface/contact/OapGroup/getCategory()I
ireturn
.limit locals 2
.limit stack 4
.end method

.method public getChatGroupType()I
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/type I
ifne L0
invokestatic com/product/android/commonInterface/chat/ChatGroup/getNormalGroupType()I
ireturn
L0:
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/type I
iconst_3
if_icmpne L1
invokestatic com/product/android/commonInterface/chat/ChatGroup/getDiscussionGroupType()I
ireturn
L1:
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/type I
iconst_4
if_icmpne L2
invokestatic com/product/android/commonInterface/chat/ChatGroup/getNormalGroupType()I
ireturn
L2:
invokestatic com/product/android/commonInterface/chat/ChatGroup/getDepartGroupType()I
ireturn
.limit locals 1
.limit stack 2
.end method

.method public getCreatorID()J
lconst_0
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getGID()J
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/gid J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getGroupKey()Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/gid J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 1
.limit stack 3
.end method

.method public getIntroduction()Ljava/lang/String;
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/gid J
lconst_0
lcmp
ifgt L0
aconst_null
areturn
L0:
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/intro Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L1
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/intro Ljava/lang/String;
areturn
L1:
ldc com/nd/android/u/contact/dao/OapGroupDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapGroupDao
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/gid J
invokeinterface com/nd/android/u/contact/dao/OapGroupDao/findGroupByGUid(J)Lcom/product/android/commonInterface/contact/OapGroup; 2
astore 1
aload 1
ifnonnull L2
aconst_null
areturn
L2:
aload 0
aload 1
invokevirtual com/product/android/commonInterface/contact/OapGroup/getIntroduction()Ljava/lang/String;
putfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/intro Ljava/lang/String;
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/intro Ljava/lang/String;
areturn
.limit locals 2
.limit stack 4
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
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/gid J
lconst_0
lcmp
ifgt L0
L1:
aconst_null
areturn
L0:
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/listMember Ljava/util/List;
invokeinterface java/util/List/size()I 0
ifle L2
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/listMember Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
areturn
L2:
aload 0
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/getMemberByDB()Ljava/util/List;
astore 1
aload 1
ifnull L1
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/listMember Ljava/util/List;
ifnonnull L3
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/listMember Ljava/util/List;
L3:
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/listMember Ljava/util/List;
invokeinterface java/util/List/clear()V 0
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/listMember Ljava/util/List;
aload 1
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/listMember Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
areturn
.limit locals 2
.limit stack 4
.end method

.method protected getMemberByDB()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/product/android/commonInterface/contact/OapUser;>;"
aconst_null
astore 3
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/gid J
lconst_0
lcmp
ifgt L0
aload 3
astore 2
L1:
aload 2
areturn
L0:
ldc com/nd/android/u/contact/dao/OapGroupRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapGroupRelationDao
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/gid J
iconst_0
invokeinterface com/nd/android/u/contact/dao/OapGroupRelationDao/searchGroupRelations(JI)Ljava/util/List; 3
checkcast java/util/ArrayList
astore 4
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
.limit locals 5
.limit stack 4
.end method

.method public getMsgNotifyType()I
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc "-"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/getGroupKey()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
iconst_2
invokestatic com/common/android/utils/ConfigHelper/getGroupSetType(Ljava/lang/String;I)I
ireturn
.limit locals 1
.limit stack 3
.end method

.method public getName()Ljava/lang/String;
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/gid J
lconst_0
lcmp
ifgt L0
aconst_null
areturn
L0:
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/name Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L1
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/name Ljava/lang/String;
areturn
L1:
ldc com/nd/android/u/contact/dao/OapGroupDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapGroupDao
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/gid J
invokeinterface com/nd/android/u/contact/dao/OapGroupDao/findGroupByGUid(J)Lcom/product/android/commonInterface/contact/OapGroup; 2
astore 1
aload 1
ifnonnull L2
aconst_null
areturn
L2:
aload 0
aload 1
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGroupName()Ljava/lang/String;
putfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/name Ljava/lang/String;
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/name Ljava/lang/String;
areturn
.limit locals 2
.limit stack 4
.end method

.method public getNotice()Ljava/lang/String;
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/gid J
lconst_0
lcmp
ifgt L0
aconst_null
areturn
L0:
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/announcement Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L1
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/announcement Ljava/lang/String;
areturn
L1:
ldc com/nd/android/u/contact/dao/OapGroupDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapGroupDao
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/gid J
invokeinterface com/nd/android/u/contact/dao/OapGroupDao/findGroupByGUid(J)Lcom/product/android/commonInterface/contact/OapGroup; 2
astore 1
aload 1
ifnonnull L2
aconst_null
areturn
L2:
aload 0
aload 1
invokevirtual com/product/android/commonInterface/contact/OapGroup/getNotice()Ljava/lang/String;
putfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/announcement Ljava/lang/String;
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/announcement Ljava/lang/String;
areturn
.limit locals 2
.limit stack 4
.end method

.method public getPermission()I
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getPermissionDescription()Ljava/lang/String;
aload 0
aload 0
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/getPermission()I
putfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/nPerm I
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/nPerm I
ifne L0
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
getstatic com/nd/android/u/contact/R$string/need_validation_to_join_the_group I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
areturn
L0:
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/nPerm I
iconst_1
if_icmpne L1
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
getstatic com/nd/android/u/contact/R$string/allowed_to_join_group I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
areturn
L1:
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
getstatic com/nd/android/u/contact/R$string/do_not_allow_anyone_to_join_the_group I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
areturn
.limit locals 1
.limit stack 2
.end method

.method public getType()I
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/type I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public initGroup(Lorg/json/JSONObject;)V
return
.limit locals 2
.limit stack 0
.end method

.method public isManager(J)Z
iconst_0
ireturn
.limit locals 3
.limit stack 1
.end method

.method public isMember(J)Z
lload 1
lconst_0
lcmp
ifgt L0
L1:
iconst_0
ireturn
L0:
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/listMember Ljava/util/List;
invokeinterface java/util/List/size()I 0
ifgt L2
aload 0
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/getMemberByDB()Ljava/util/List;
astore 3
aload 3
ifnull L1
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/listMember Ljava/util/List;
invokeinterface java/util/List/clear()V 0
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/listMember Ljava/util/List;
aload 3
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
L2:
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/listMember Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 3
L3:
aload 3
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 3
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/contact/OapUser
invokevirtual com/product/android/commonInterface/contact/OapUser/getFid()J
lload 1
lcmp
ifne L3
iconst_1
ireturn
.limit locals 4
.limit stack 4
.end method

.method public loadGroup()Z
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public quit(Ljava/lang/String;)Z
iconst_0
ireturn
.limit locals 2
.limit stack 1
.end method

.method public removeGroupDataObserver(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupDataObserver;)V
invokestatic com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/GroupSubjectImpl/getInstance()Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/GroupSubjectImpl;
aload 1
invokevirtual com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/GroupSubjectImpl/removeGroupDataObserver(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupDataObserver;)V
return
.limit locals 2
.limit stack 2
.end method

.method public removeGroupStateObserver(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupStateObserver;)V
invokestatic com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/GroupSubjectImpl/getInstance()Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/GroupSubjectImpl;
aload 1
invokevirtual com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/GroupSubjectImpl/removeGroupStateObserver(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupStateObserver;)V
return
.limit locals 2
.limit stack 2
.end method

.method public setCatagory(I)Z
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/gid J
lconst_0
lcmp
ifgt L0
iconst_0
ireturn
L0:
ldc com/nd/android/u/contact/dao/OapGroupDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapGroupDao
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/gid J
invokeinterface com/nd/android/u/contact/dao/OapGroupDao/findGroupByGUid(J)Lcom/product/android/commonInterface/contact/OapGroup; 2
astore 2
aload 2
ifnonnull L1
iconst_0
ireturn
L1:
aload 2
iload 1
invokevirtual com/product/android/commonInterface/contact/OapGroup/setCategory(I)V
ldc com/nd/android/u/contact/dao/OapGroupDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapGroupDao
aload 2
invokeinterface com/nd/android/u/contact/dao/OapGroupDao/updateGroup(Lcom/product/android/commonInterface/contact/OapGroup;)V 1
aload 0
iload 1
putfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/catagory I
iconst_1
ireturn
.limit locals 3
.limit stack 4
.end method

.method public setIntroduction(Ljava/lang/String;Ljava/lang/String;)Z
iconst_0
ireturn
.limit locals 3
.limit stack 1
.end method

.method public setIntroductionByDB(Ljava/lang/String;)Z
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/gid J
lconst_0
lcmp
ifgt L0
iconst_0
ireturn
L0:
ldc com/nd/android/u/contact/dao/OapGroupDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapGroupDao
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/gid J
invokeinterface com/nd/android/u/contact/dao/OapGroupDao/findGroupByGUid(J)Lcom/product/android/commonInterface/contact/OapGroup; 2
astore 2
aload 2
ifnonnull L1
iconst_0
ireturn
L1:
aload 2
aload 1
invokevirtual com/product/android/commonInterface/contact/OapGroup/setIntroduction(Ljava/lang/String;)V
ldc com/nd/android/u/contact/dao/OapGroupDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapGroupDao
aload 2
invokeinterface com/nd/android/u/contact/dao/OapGroupDao/updateGroup(Lcom/product/android/commonInterface/contact/OapGroup;)V 1
invokestatic com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/GroupSubjectImpl/getInstance()Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/GroupSubjectImpl;
sipush 1005
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/gid J
invokevirtual com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/GroupSubjectImpl/notifyGroupData(IJ)V
iconst_1
ireturn
.limit locals 3
.limit stack 4
.end method

.method public setMsgNotifyType(Ljava/lang/String;I)Z
aload 0
iload 2
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/setMsgNotifyTypeByDB(I)Z
ifne L0
iconst_0
ireturn
L0:
iload 2
ifeq L1
aload 0
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/getGroupKey()Ljava/lang/String;
aload 0
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/getChatGroupType()I
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel$ChatEntry/GroupLoginManagerMASK2ReceiveLogRecGroup(Ljava/lang/String;I)V
L1:
iconst_1
ireturn
.limit locals 3
.limit stack 2
.end method

.method public setMsgNotifyTypeByDB(I)Z
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
lconst_0
lcmp
ifgt L0
iconst_0
ireturn
L0:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc "-"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/getGroupKey()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
iload 1
invokestatic com/common/android/utils/ConfigHelper/saveGroupSetType(Ljava/lang/String;I)V
iconst_1
ireturn
.limit locals 2
.limit stack 4
.end method

.method public setNameByDb(Ljava/lang/String;)Z
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/gid J
lconst_0
lcmp
ifgt L0
iconst_0
ireturn
L0:
ldc com/nd/android/u/contact/dao/OapGroupDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapGroupDao
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/gid J
invokeinterface com/nd/android/u/contact/dao/OapGroupDao/findGroupByGUid(J)Lcom/product/android/commonInterface/contact/OapGroup; 2
astore 2
aload 2
ifnonnull L1
iconst_0
ireturn
L1:
aload 2
aload 1
invokevirtual com/product/android/commonInterface/contact/OapGroup/setGroupname(Ljava/lang/String;)V
ldc com/nd/android/u/contact/dao/OapGroupDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapGroupDao
aload 2
invokeinterface com/nd/android/u/contact/dao/OapGroupDao/updateGroup(Lcom/product/android/commonInterface/contact/OapGroup;)V 1
aload 0
aload 1
putfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/name Ljava/lang/String;
invokestatic com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/GroupSubjectImpl/getInstance()Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/GroupSubjectImpl;
sipush 1009
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/gid J
invokevirtual com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/GroupSubjectImpl/notifyGroupData(IJ)V
iconst_1
ireturn
.limit locals 3
.limit stack 4
.end method

.method public setNotice(Ljava/lang/String;Ljava/lang/String;)Z
iconst_0
ireturn
.limit locals 3
.limit stack 1
.end method

.method public setNoticeByDB(Ljava/lang/String;)Z
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/gid J
lconst_0
lcmp
ifgt L0
iconst_0
ireturn
L0:
ldc com/nd/android/u/contact/dao/OapGroupDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapGroupDao
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/gid J
invokeinterface com/nd/android/u/contact/dao/OapGroupDao/findGroupByGUid(J)Lcom/product/android/commonInterface/contact/OapGroup; 2
astore 2
aload 2
ifnonnull L1
iconst_0
ireturn
L1:
aload 2
aload 1
invokevirtual com/product/android/commonInterface/contact/OapGroup/setNotice(Ljava/lang/String;)V
ldc com/nd/android/u/contact/dao/OapGroupDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapGroupDao
aload 2
invokeinterface com/nd/android/u/contact/dao/OapGroupDao/updateGroup(Lcom/product/android/commonInterface/contact/OapGroup;)V 1
invokestatic com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/GroupSubjectImpl/getInstance()Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/GroupSubjectImpl;
sipush 1006
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/gid J
invokevirtual com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/GroupSubjectImpl/notifyGroupData(IJ)V
iconst_1
ireturn
.limit locals 3
.limit stack 4
.end method

.method public setPermission(Ljava/lang/String;I)Z
iconst_0
ireturn
.limit locals 3
.limit stack 1
.end method

.method public setPermissionByDB(I)Z
iconst_0
ireturn
.limit locals 2
.limit stack 1
.end method

.method public setType(I)V
aload 0
iload 1
putfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/type I
return
.limit locals 2
.limit stack 2
.end method

.method public switchMemberRole(JI)Z
iconst_0
ireturn
.limit locals 4
.limit stack 1
.end method

.method public synGroup()Z
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public transfer(Ljava/lang/String;J)Z
iconst_0
ireturn
.limit locals 4
.limit stack 1
.end method

.method public transferByDB(J)Z
iconst_0
ireturn
.limit locals 3
.limit stack 1
.end method
