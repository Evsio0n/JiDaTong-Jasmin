.bytecode 50.0
.class public synchronized com/product/android/commonInterface/contact/OapGroup
.super java/lang/Object
.implements java/io/Serializable

.field public static final 'CATEGORY_CLUB_GROUP' I = 7


.field public static final 'CATEGORY_DEPART_GROUP' I = 4


.field public static final 'CATEGORY_PARENT_TEACHER_GROUP' I = 6


.field public static final 'CATEGORY_STUDENT_TEACHER_GROUP' I = 5


.field public static final 'CLASSGROUP' I = 2


.field public static final 'CLUBGROUP' I = 4


.field public static final 'CONFIG_GROUPPERMISSION_DEFAULT' I = 2


.field public static final 'DEPARTGROUP' I = 1


.field public static final 'DISCUSSIONGROUP' I = 3


.field public static final 'INITGROUPSETTYPE' I = -1


.field public static final 'MASKGROUPMSG' I = 0


.field public static final 'NORMALGROUP' I = 0


.field public static final 'PERSON' I = -99


.field public static final 'RECEIVENOTIFY' I = 1


.field public static final 'RECEIVESHOW' I = 2


.field public static final 'RECENTGROUP' I = -1


.field public static final 'SETGROUPPARA' I = 3


.field private static final 'serialVersionUID' J = 1L


.field private '_id' I

.field private 'avatar' I

.field private 'category' I

.field private 'classid' I

.field private 'club' I

.field private 'creatorid' J

.field private 'falg' I

.field private 'gid' J

.field 'groupKey' Ljava/lang/String;

.field private 'groupMemberList' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Lcom/product/android/commonInterface/contact/OapGroupRelation;>;"

.field private 'groupName' Ljava/lang/String;

.field private 'groupType' I

.field private 'imageUrl' Ljava/lang/String;

.field private 'introduction' Ljava/lang/String;

.field private 'joinperm' I

.field private 'level' I

.field private 'manager' Lcom/product/android/commonInterface/contact/OapGroupRelation;

.field private 'membernum' I

.field public 'mgroupSetType' I

.field private 'notice' Ljava/lang/String;

.field private 'oapDeptId' I

.field private 'spell1' Ljava/lang/String;

.field private 'spell2' Ljava/lang/String;

.field public 'type' I

.field private 'uid' J

.field private 'updatetime' Ljava/lang/String;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_m1
putfield com/product/android/commonInterface/contact/OapGroup/mgroupSetType I
aload 0
ldc ""
putfield com/product/android/commonInterface/contact/OapGroup/groupName Ljava/lang/String;
aload 0
ldc ""
putfield com/product/android/commonInterface/contact/OapGroup/introduction Ljava/lang/String;
aload 0
ldc ""
putfield com/product/android/commonInterface/contact/OapGroup/notice Ljava/lang/String;
aload 0
ldc ""
putfield com/product/android/commonInterface/contact/OapGroup/imageUrl Ljava/lang/String;
aload 0
aconst_null
putfield com/product/android/commonInterface/contact/OapGroup/manager Lcom/product/android/commonInterface/contact/OapGroupRelation;
aload 0
ldc ""
putfield com/product/android/commonInterface/contact/OapGroup/updatetime Ljava/lang/String;
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/product/android/commonInterface/contact/OapGroup/groupMemberList Ljava/util/ArrayList;
aload 0
ldc ""
putfield com/product/android/commonInterface/contact/OapGroup/spell1 Ljava/lang/String;
aload 0
ldc ""
putfield com/product/android/commonInterface/contact/OapGroup/spell2 Ljava/lang/String;
aload 0
ldc ""
putfield com/product/android/commonInterface/contact/OapGroup/groupKey Ljava/lang/String;
return
.limit locals 1
.limit stack 3
.end method

.method public <init>(Lorg/json/JSONObject;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_m1
putfield com/product/android/commonInterface/contact/OapGroup/mgroupSetType I
aload 0
ldc ""
putfield com/product/android/commonInterface/contact/OapGroup/groupName Ljava/lang/String;
aload 0
ldc ""
putfield com/product/android/commonInterface/contact/OapGroup/introduction Ljava/lang/String;
aload 0
ldc ""
putfield com/product/android/commonInterface/contact/OapGroup/notice Ljava/lang/String;
aload 0
ldc ""
putfield com/product/android/commonInterface/contact/OapGroup/imageUrl Ljava/lang/String;
aload 0
aconst_null
putfield com/product/android/commonInterface/contact/OapGroup/manager Lcom/product/android/commonInterface/contact/OapGroupRelation;
aload 0
ldc ""
putfield com/product/android/commonInterface/contact/OapGroup/updatetime Ljava/lang/String;
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/product/android/commonInterface/contact/OapGroup/groupMemberList Ljava/util/ArrayList;
aload 0
ldc ""
putfield com/product/android/commonInterface/contact/OapGroup/spell1 Ljava/lang/String;
aload 0
ldc ""
putfield com/product/android/commonInterface/contact/OapGroup/spell2 Ljava/lang/String;
aload 0
ldc ""
putfield com/product/android/commonInterface/contact/OapGroup/groupKey Ljava/lang/String;
aload 0
aload 1
invokevirtual com/product/android/commonInterface/contact/OapGroup/initGroup(Lorg/json/JSONObject;)V
return
.limit locals 2
.limit stack 3
.end method

.method public copyByOtherGroup(Lcom/product/android/commonInterface/contact/OapGroup;)V
aload 1
ifnull L0
aload 0
aload 1
invokevirtual com/product/android/commonInterface/contact/OapGroup/getUid()J
putfield com/product/android/commonInterface/contact/OapGroup/uid J
aload 0
aload 1
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGid()J
putfield com/product/android/commonInterface/contact/OapGroup/gid J
aload 0
aload 1
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGroupName()Ljava/lang/String;
putfield com/product/android/commonInterface/contact/OapGroup/groupName Ljava/lang/String;
aload 0
aload 1
invokevirtual com/product/android/commonInterface/contact/OapGroup/getCategory()I
putfield com/product/android/commonInterface/contact/OapGroup/category I
aload 0
aload 1
invokevirtual com/product/android/commonInterface/contact/OapGroup/getAvatar()I
putfield com/product/android/commonInterface/contact/OapGroup/avatar I
aload 0
aload 1
invokevirtual com/product/android/commonInterface/contact/OapGroup/getLevel()I
putfield com/product/android/commonInterface/contact/OapGroup/level I
aload 0
aload 1
invokevirtual com/product/android/commonInterface/contact/OapGroup/getIntroduction()Ljava/lang/String;
putfield com/product/android/commonInterface/contact/OapGroup/introduction Ljava/lang/String;
aload 0
aload 1
invokevirtual com/product/android/commonInterface/contact/OapGroup/getMembernum()I
putfield com/product/android/commonInterface/contact/OapGroup/membernum I
aload 0
aload 1
invokevirtual com/product/android/commonInterface/contact/OapGroup/getNotice()Ljava/lang/String;
putfield com/product/android/commonInterface/contact/OapGroup/notice Ljava/lang/String;
aload 0
aload 1
invokevirtual com/product/android/commonInterface/contact/OapGroup/getUpdatetime()Ljava/lang/String;
putfield com/product/android/commonInterface/contact/OapGroup/updatetime Ljava/lang/String;
aload 0
aload 1
invokevirtual com/product/android/commonInterface/contact/OapGroup/getCreatorid()J
putfield com/product/android/commonInterface/contact/OapGroup/creatorid J
aload 0
aload 1
invokevirtual com/product/android/commonInterface/contact/OapGroup/getJoinperm()I
putfield com/product/android/commonInterface/contact/OapGroup/joinperm I
aload 0
iconst_0
putfield com/product/android/commonInterface/contact/OapGroup/falg I
L0:
return
.limit locals 2
.limit stack 3
.end method

.method public equals(Ljava/lang/Object;)Z
aload 1
instanceof com/product/android/commonInterface/contact/OapGroup
ifeq L0
aload 1
checkcast com/product/android/commonInterface/contact/OapGroup
astore 1
aload 1
invokevirtual com/product/android/commonInterface/contact/OapGroup/getUid()J
aload 0
invokevirtual com/product/android/commonInterface/contact/OapGroup/getUid()J
lcmp
ifne L0
aload 1
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGid()J
aload 0
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGid()J
lcmp
ifne L0
aload 1
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGroupType()I
aload 0
getfield com/product/android/commonInterface/contact/OapGroup/groupType I
if_icmpne L0
aload 1
invokevirtual com/product/android/commonInterface/contact/OapGroup/getDeptId()I
aload 0
getfield com/product/android/commonInterface/contact/OapGroup/oapDeptId I
if_icmpne L0
aload 1
invokevirtual com/product/android/commonInterface/contact/OapGroup/getClassid()I
aload 0
getfield com/product/android/commonInterface/contact/OapGroup/classid I
if_icmpne L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 2
.limit stack 4
.end method

.method public getAvatar()I
aload 0
getfield com/product/android/commonInterface/contact/OapGroup/avatar I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getCategory()I
aload 0
getfield com/product/android/commonInterface/contact/OapGroup/category I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getChatGroupType()I
aload 0
getfield com/product/android/commonInterface/contact/OapGroup/groupType I
ifne L0
invokestatic com/product/android/commonInterface/chat/ChatGroup/getNormalGroupType()I
ireturn
L0:
aload 0
getfield com/product/android/commonInterface/contact/OapGroup/groupType I
iconst_3
if_icmpne L1
invokestatic com/product/android/commonInterface/chat/ChatGroup/getDiscussionGroupType()I
ireturn
L1:
invokestatic com/product/android/commonInterface/chat/ChatGroup/getDepartGroupType()I
ireturn
.limit locals 1
.limit stack 2
.end method

.method public getClassid()I
aload 0
getfield com/product/android/commonInterface/contact/OapGroup/classid I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getClub()I
aload 0
getfield com/product/android/commonInterface/contact/OapGroup/club I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getCreatorid()J
aload 0
getfield com/product/android/commonInterface/contact/OapGroup/creatorid J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getDeptId()I
aload 0
getfield com/product/android/commonInterface/contact/OapGroup/oapDeptId I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getFalg()I
aload 0
getfield com/product/android/commonInterface/contact/OapGroup/falg I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getGMemberList()Ljava/util/ArrayList;
.signature "()Ljava/util/ArrayList<Lcom/product/android/commonInterface/contact/OapGroupRelation;>;"
aload 0
getfield com/product/android/commonInterface/contact/OapGroup/groupMemberList Ljava/util/ArrayList;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getGid()J
aload 0
getfield com/product/android/commonInterface/contact/OapGroup/gid J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getGroupKey()Ljava/lang/String;
aload 0
getfield com/product/android/commonInterface/contact/OapGroup/groupType I
ifeq L0
aload 0
getfield com/product/android/commonInterface/contact/OapGroup/groupType I
iconst_3
if_icmpne L1
L0:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getfield com/product/android/commonInterface/contact/OapGroup/gid J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
L1:
aload 0
getfield com/product/android/commonInterface/contact/OapGroup/groupType I
iconst_1
if_icmpne L2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getfield com/product/android/commonInterface/contact/OapGroup/gid J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
L2:
aload 0
getfield com/product/android/commonInterface/contact/OapGroup/groupType I
iconst_2
if_icmpne L3
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getfield com/product/android/commonInterface/contact/OapGroup/gid J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
L3:
aload 0
getfield com/product/android/commonInterface/contact/OapGroup/groupKey Ljava/lang/String;
areturn
.limit locals 1
.limit stack 3
.end method

.method public getGroupName()Ljava/lang/String;
aload 0
getfield com/product/android/commonInterface/contact/OapGroup/groupName Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L0
aload 0
getfield com/product/android/commonInterface/contact/OapGroup/groupName Ljava/lang/String;
areturn
L0:
aload 0
aload 0
invokestatic com/product/android/commonInterface/allCommonInterfaceImpl/AllCommonCallOtherModel$ContactModel/getGroupName(Lcom/product/android/commonInterface/contact/OapGroup;)Ljava/lang/String;
putfield com/product/android/commonInterface/contact/OapGroup/groupName Ljava/lang/String;
aload 0
getfield com/product/android/commonInterface/contact/OapGroup/groupName Ljava/lang/String;
areturn
.limit locals 1
.limit stack 2
.end method

.method public getGroupServerType()I
aload 0
getfield com/product/android/commonInterface/contact/OapGroup/groupType I
tableswitch -1
L0
L1
L2
L2
L3
L1
default : L1
L1:
iconst_0
ireturn
L2:
bipush 10
ireturn
L0:
iconst_m1
ireturn
L3:
iconst_2
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getGroupType()I
aload 0
getfield com/product/android/commonInterface/contact/OapGroup/groupType I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getImageUrl()Ljava/lang/String;
aload 0
getfield com/product/android/commonInterface/contact/OapGroup/imageUrl Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getIntroduction()Ljava/lang/String;
aload 0
getfield com/product/android/commonInterface/contact/OapGroup/introduction Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getJoinperm()I
aload 0
getfield com/product/android/commonInterface/contact/OapGroup/joinperm I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getJoinpermPostion()I
aload 0
getfield com/product/android/commonInterface/contact/OapGroup/joinperm I
ifne L0
iconst_1
ireturn
L0:
aload 0
getfield com/product/android/commonInterface/contact/OapGroup/joinperm I
iconst_1
if_icmpne L1
iconst_0
ireturn
L1:
iconst_2
ireturn
.limit locals 1
.limit stack 2
.end method

.method public getJoinpermStr()Ljava/lang/String;
aload 0
getfield com/product/android/commonInterface/contact/OapGroup/joinperm I
ifne L0
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
getstatic com/nd/android/u/allcommon/R$string/need_validation_to_join_the_group I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
areturn
L0:
aload 0
getfield com/product/android/commonInterface/contact/OapGroup/joinperm I
iconst_1
if_icmpne L1
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
getstatic com/nd/android/u/allcommon/R$string/allowed_to_join_group I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
areturn
L1:
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
getstatic com/nd/android/u/allcommon/R$string/do_not_allow_anyone_to_join_the_group I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
areturn
.limit locals 1
.limit stack 2
.end method

.method public getLevel()I
aload 0
getfield com/product/android/commonInterface/contact/OapGroup/level I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getManager()Lcom/product/android/commonInterface/contact/OapGroupRelation;
aload 0
getfield com/product/android/commonInterface/contact/OapGroup/manager Lcom/product/android/commonInterface/contact/OapGroupRelation;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getMembernum()I
aload 0
getfield com/product/android/commonInterface/contact/OapGroup/membernum I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getNotice()Ljava/lang/String;
aload 0
getfield com/product/android/commonInterface/contact/OapGroup/notice Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getSpell1()Ljava/lang/String;
aload 0
getfield com/product/android/commonInterface/contact/OapGroup/spell1 Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getSpell2()Ljava/lang/String;
aload 0
getfield com/product/android/commonInterface/contact/OapGroup/spell2 Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getUid()J
aload 0
getfield com/product/android/commonInterface/contact/OapGroup/uid J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getUpdatetime()Ljava/lang/String;
aload 0
getfield com/product/android/commonInterface/contact/OapGroup/updatetime Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public get_id()I
aload 0
getfield com/product/android/commonInterface/contact/OapGroup/_id I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public hashCode()I
aload 0
getfield com/product/android/commonInterface/contact/OapGroup/gid J
l2i
ireturn
.limit locals 1
.limit stack 2
.end method

.method public initDiscussionGroup(Lorg/json/JSONObject;)V
aload 1
ifnull L0
aload 0
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getBindUser()Lcom/product/android/business/login/BindUser; 0
invokevirtual com/product/android/business/login/BindUser/getUid()J
putfield com/product/android/commonInterface/contact/OapGroup/uid J
aload 0
aload 1
ldc "gname"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/product/android/commonInterface/contact/OapGroup/groupName Ljava/lang/String;
aload 0
aload 1
ldc "gid"
invokestatic com/common/android/utils/JSONUtils/getLong(Lorg/json/JSONObject;Ljava/lang/String;)J
putfield com/product/android/commonInterface/contact/OapGroup/gid J
aload 0
aload 1
ldc "notice"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/product/android/commonInterface/contact/OapGroup/notice Ljava/lang/String;
aload 0
iconst_3
putfield com/product/android/commonInterface/contact/OapGroup/groupType I
aload 0
iconst_0
putfield com/product/android/commonInterface/contact/OapGroup/falg I
aload 0
aload 1
ldc "spell1"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/product/android/commonInterface/contact/OapGroup/spell1 Ljava/lang/String;
aload 0
aload 1
ldc "spell2"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/product/android/commonInterface/contact/OapGroup/spell2 Ljava/lang/String;
L0:
return
.limit locals 2
.limit stack 3
.end method

.method public initGroup(Lorg/json/JSONObject;)V
aload 0
aload 1
ldc "gid"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
i2l
putfield com/product/android/commonInterface/contact/OapGroup/gid J
aload 0
aload 1
ldc "gname"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/product/android/commonInterface/contact/OapGroup/groupName Ljava/lang/String;
aload 0
aload 1
ldc "category"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
putfield com/product/android/commonInterface/contact/OapGroup/category I
aload 0
aload 1
ldc "avatar"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
putfield com/product/android/commonInterface/contact/OapGroup/avatar I
aload 0
aload 1
ldc "level"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
putfield com/product/android/commonInterface/contact/OapGroup/level I
aload 0
aload 1
ldc "introduction"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/product/android/commonInterface/contact/OapGroup/introduction Ljava/lang/String;
aload 0
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getBindUser()Lcom/product/android/business/login/BindUser; 0
invokevirtual com/product/android/business/login/BindUser/getUid()J
putfield com/product/android/commonInterface/contact/OapGroup/uid J
aload 0
aload 1
ldc "membernum"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
putfield com/product/android/commonInterface/contact/OapGroup/membernum I
aload 0
aload 1
ldc "notice"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/product/android/commonInterface/contact/OapGroup/notice Ljava/lang/String;
aload 0
aload 1
ldc "updatetime"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/product/android/commonInterface/contact/OapGroup/updatetime Ljava/lang/String;
aload 0
aload 1
ldc "creatorid"
invokestatic com/common/android/utils/JSONUtils/getLong(Lorg/json/JSONObject;Ljava/lang/String;)J
putfield com/product/android/commonInterface/contact/OapGroup/creatorid J
aload 0
aload 1
ldc "joinperm"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
putfield com/product/android/commonInterface/contact/OapGroup/joinperm I
aload 0
aload 1
ldc "club"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
putfield com/product/android/commonInterface/contact/OapGroup/club I
aload 0
getfield com/product/android/commonInterface/contact/OapGroup/club I
ifne L0
aload 0
iconst_0
putfield com/product/android/commonInterface/contact/OapGroup/groupType I
L1:
aload 0
aload 1
ldc "spell1"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/product/android/commonInterface/contact/OapGroup/spell1 Ljava/lang/String;
aload 0
aload 1
ldc "spell2"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/product/android/commonInterface/contact/OapGroup/spell2 Ljava/lang/String;
aload 0
aload 1
ldc "classid"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
putfield com/product/android/commonInterface/contact/OapGroup/classid I
aload 0
iconst_0
putfield com/product/android/commonInterface/contact/OapGroup/falg I
return
L0:
aload 0
getfield com/product/android/commonInterface/contact/OapGroup/club I
iconst_1
if_icmpne L1
aload 0
iconst_4
putfield com/product/android/commonInterface/contact/OapGroup/groupType I
goto L1
.limit locals 2
.limit stack 3
.end method

.method public isCreater(J)Z
aload 0
getfield com/product/android/commonInterface/contact/OapGroup/creatorid J
lload 1
lcmp
ifne L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 3
.limit stack 4
.end method

.method public setAvatar(I)V
aload 0
iload 1
putfield com/product/android/commonInterface/contact/OapGroup/avatar I
return
.limit locals 2
.limit stack 2
.end method

.method public setCategory(I)V
aload 0
iload 1
putfield com/product/android/commonInterface/contact/OapGroup/category I
return
.limit locals 2
.limit stack 2
.end method

.method public setClassid(I)V
aload 0
iload 1
putfield com/product/android/commonInterface/contact/OapGroup/classid I
return
.limit locals 2
.limit stack 2
.end method

.method public setClub(I)V
aload 0
iload 1
putfield com/product/android/commonInterface/contact/OapGroup/club I
return
.limit locals 2
.limit stack 2
.end method

.method public setCreatorid(J)V
aload 0
lload 1
putfield com/product/android/commonInterface/contact/OapGroup/creatorid J
return
.limit locals 3
.limit stack 3
.end method

.method public setFalg(I)V
aload 0
iload 1
putfield com/product/android/commonInterface/contact/OapGroup/falg I
return
.limit locals 2
.limit stack 2
.end method

.method public setGMemberList(Ljava/util/ArrayList;)V
.signature "(Ljava/util/ArrayList<Lcom/product/android/commonInterface/contact/OapGroupRelation;>;)V"
aload 0
aload 1
putfield com/product/android/commonInterface/contact/OapGroup/groupMemberList Ljava/util/ArrayList;
return
.limit locals 2
.limit stack 2
.end method

.method public setGid(J)V
aload 0
lload 1
putfield com/product/android/commonInterface/contact/OapGroup/gid J
return
.limit locals 3
.limit stack 3
.end method

.method public setGroupType(I)V
aload 0
iload 1
putfield com/product/android/commonInterface/contact/OapGroup/groupType I
return
.limit locals 2
.limit stack 2
.end method

.method public setGroupname(Ljava/lang/String;)V
aload 0
aload 1
putfield com/product/android/commonInterface/contact/OapGroup/groupName Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setImageUrl(Ljava/lang/String;)V
aload 0
aload 1
putfield com/product/android/commonInterface/contact/OapGroup/imageUrl Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setIntroduction(Ljava/lang/String;)V
aload 0
aload 1
putfield com/product/android/commonInterface/contact/OapGroup/introduction Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setJoinperm(I)V
aload 0
iload 1
putfield com/product/android/commonInterface/contact/OapGroup/joinperm I
return
.limit locals 2
.limit stack 2
.end method

.method public setLevel(I)V
aload 0
iload 1
putfield com/product/android/commonInterface/contact/OapGroup/level I
return
.limit locals 2
.limit stack 2
.end method

.method public setManager(Lcom/product/android/commonInterface/contact/OapGroupRelation;)V
aload 0
aload 1
putfield com/product/android/commonInterface/contact/OapGroup/manager Lcom/product/android/commonInterface/contact/OapGroupRelation;
return
.limit locals 2
.limit stack 2
.end method

.method public setMembernum(I)V
aload 0
iload 1
putfield com/product/android/commonInterface/contact/OapGroup/membernum I
return
.limit locals 2
.limit stack 2
.end method

.method public setNotice(Ljava/lang/String;)V
aload 0
aload 1
putfield com/product/android/commonInterface/contact/OapGroup/notice Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setOapDeptId(I)V
aload 0
iload 1
putfield com/product/android/commonInterface/contact/OapGroup/oapDeptId I
return
.limit locals 2
.limit stack 2
.end method

.method public setSpell1(Ljava/lang/String;)V
aload 0
aload 1
putfield com/product/android/commonInterface/contact/OapGroup/spell1 Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setSpell2(Ljava/lang/String;)V
aload 0
aload 1
putfield com/product/android/commonInterface/contact/OapGroup/spell2 Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setUid(J)V
aload 0
lload 1
putfield com/product/android/commonInterface/contact/OapGroup/uid J
return
.limit locals 3
.limit stack 3
.end method

.method public setUpdatetime(Ljava/lang/String;)V
aload 0
aload 1
putfield com/product/android/commonInterface/contact/OapGroup/updatetime Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public set_id(I)V
aload 0
iload 1
putfield com/product/android/commonInterface/contact/OapGroup/_id I
return
.limit locals 2
.limit stack 2
.end method
