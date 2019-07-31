.bytecode 50.0
.class public synchronized com/android/u/weibo/sina/business/bean/SinaGroupList
.super java/lang/Object
.implements com/common/android/utils/parser/BaseType

.field public static 'INSTANCE' Lcom/android/u/weibo/sina/business/bean/SinaGroupList;

.field public static final 'MAX_GROUP' I = 20


.field public 'mDefaultGroup' Lcom/android/u/weibo/sina/business/bean/SinaGroup;

.field public 'mDefaultGroupMemberIds' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Ljava/lang/Long;>;"

.field public 'mDefaultGroupName' Ljava/lang/String;

.field public 'mGroups' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Lcom/android/u/weibo/sina/business/bean/SinaGroup;>;"

.field public 'mID' J

.field public 'mMemberCount' I

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_0
putfield com/android/u/weibo/sina/business/bean/SinaGroupList/mMemberCount I
aload 0
ldc ""
putfield com/android/u/weibo/sina/business/bean/SinaGroupList/mDefaultGroupName Ljava/lang/String;
return
.limit locals 1
.limit stack 2
.end method

.method public static clearInstance()V
aconst_null
putstatic com/android/u/weibo/sina/business/bean/SinaGroupList/INSTANCE Lcom/android/u/weibo/sina/business/bean/SinaGroupList;
return
.limit locals 0
.limit stack 1
.end method

.method public static getInstance()Lcom/android/u/weibo/sina/business/bean/SinaGroupList;
getstatic com/android/u/weibo/sina/business/bean/SinaGroupList/INSTANCE Lcom/android/u/weibo/sina/business/bean/SinaGroupList;
ifnonnull L0
new com/android/u/weibo/sina/business/bean/SinaGroupList
dup
invokespecial com/android/u/weibo/sina/business/bean/SinaGroupList/<init>()V
putstatic com/android/u/weibo/sina/business/bean/SinaGroupList/INSTANCE Lcom/android/u/weibo/sina/business/bean/SinaGroupList;
L0:
getstatic com/android/u/weibo/sina/business/bean/SinaGroupList/INSTANCE Lcom/android/u/weibo/sina/business/bean/SinaGroupList;
areturn
.limit locals 0
.limit stack 2
.end method

.method public addDefaultGroup(Lcom/android/u/weibo/sina/business/bean/SinaGroup;)V
aload 1
ifnonnull L0
return
L0:
aload 0
aload 1
putfield com/android/u/weibo/sina/business/bean/SinaGroupList/mDefaultGroup Lcom/android/u/weibo/sina/business/bean/SinaGroup;
aload 0
aload 0
getfield com/android/u/weibo/sina/business/bean/SinaGroupList/mDefaultGroup Lcom/android/u/weibo/sina/business/bean/SinaGroup;
getfield com/android/u/weibo/sina/business/bean/SinaGroup/mMemberCount I
putfield com/android/u/weibo/sina/business/bean/SinaGroupList/mMemberCount I
aload 0
aload 0
getfield com/android/u/weibo/sina/business/bean/SinaGroupList/mDefaultGroup Lcom/android/u/weibo/sina/business/bean/SinaGroup;
getfield com/android/u/weibo/sina/business/bean/SinaGroup/mId J
putfield com/android/u/weibo/sina/business/bean/SinaGroupList/mID J
aload 0
getfield com/android/u/weibo/sina/business/bean/SinaGroupList/mGroups Ljava/util/ArrayList;
ifnonnull L1
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/android/u/weibo/sina/business/bean/SinaGroupList/mGroups Ljava/util/ArrayList;
L1:
aload 0
getfield com/android/u/weibo/sina/business/bean/SinaGroupList/mGroups Ljava/util/ArrayList;
aload 0
getfield com/android/u/weibo/sina/business/bean/SinaGroupList/mDefaultGroup Lcom/android/u/weibo/sina/business/bean/SinaGroup;
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
return
.limit locals 2
.limit stack 3
.end method

.method public getDefaultGroup()Lcom/android/u/weibo/sina/business/bean/SinaGroup;
aload 0
getfield com/android/u/weibo/sina/business/bean/SinaGroupList/mDefaultGroup Lcom/android/u/weibo/sina/business/bean/SinaGroup;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getDefaultGroupMemberIds()Ljava/util/ArrayList;
.signature "()Ljava/util/ArrayList<Ljava/lang/Long;>;"
aload 0
getfield com/android/u/weibo/sina/business/bean/SinaGroupList/mDefaultGroupMemberIds Ljava/util/ArrayList;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getId()J
aload 0
getfield com/android/u/weibo/sina/business/bean/SinaGroupList/mID J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getMemberCount()I
aload 0
getfield com/android/u/weibo/sina/business/bean/SinaGroupList/mMemberCount I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public hasDefault()Z
aload 0
getfield com/android/u/weibo/sina/business/bean/SinaGroupList/mDefaultGroup Lcom/android/u/weibo/sina/business/bean/SinaGroup;
ifnull L0
iconst_1
ireturn
L0:
aload 0
getfield com/android/u/weibo/sina/business/bean/SinaGroupList/mGroups Ljava/util/ArrayList;
ifnull L1
aload 0
getfield com/android/u/weibo/sina/business/bean/SinaGroupList/mGroups Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
ifne L2
L1:
iconst_0
ireturn
L2:
aload 0
getstatic com/android/u/weibo/weibo/controller/GlobalSetting/defaultGroupName Ljava/lang/String;
putfield com/android/u/weibo/sina/business/bean/SinaGroupList/mDefaultGroupName Ljava/lang/String;
aload 0
getfield com/android/u/weibo/sina/business/bean/SinaGroupList/mDefaultGroupName Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L3
iconst_0
ireturn
L3:
aload 0
getfield com/android/u/weibo/sina/business/bean/SinaGroupList/mGroups Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/iterator()Ljava/util/Iterator;
astore 1
L4:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L5
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/android/u/weibo/sina/business/bean/SinaGroup
astore 2
aload 2
getfield com/android/u/weibo/sina/business/bean/SinaGroup/mName Ljava/lang/String;
aload 0
getfield com/android/u/weibo/sina/business/bean/SinaGroupList/mDefaultGroupName Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L4
aload 0
aload 2
putfield com/android/u/weibo/sina/business/bean/SinaGroupList/mDefaultGroup Lcom/android/u/weibo/sina/business/bean/SinaGroup;
aload 0
aload 0
getfield com/android/u/weibo/sina/business/bean/SinaGroupList/mDefaultGroup Lcom/android/u/weibo/sina/business/bean/SinaGroup;
getfield com/android/u/weibo/sina/business/bean/SinaGroup/mMemberCount I
putfield com/android/u/weibo/sina/business/bean/SinaGroupList/mMemberCount I
aload 0
aload 0
getfield com/android/u/weibo/sina/business/bean/SinaGroupList/mDefaultGroup Lcom/android/u/weibo/sina/business/bean/SinaGroup;
getfield com/android/u/weibo/sina/business/bean/SinaGroup/mId J
putfield com/android/u/weibo/sina/business/bean/SinaGroupList/mID J
iconst_1
ireturn
L5:
iconst_0
ireturn
.limit locals 3
.limit stack 3
.end method

.method public hasMenber()Z
aload 0
getfield com/android/u/weibo/sina/business/bean/SinaGroupList/mDefaultGroupMemberIds Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
ifle L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public isExceeded()Z
aload 0
getfield com/android/u/weibo/sina/business/bean/SinaGroupList/mGroups Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
bipush 20
if_icmplt L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 2
.end method

.method public isMember(J)Z
aload 0
getfield com/android/u/weibo/sina/business/bean/SinaGroupList/mDefaultGroupMemberIds Ljava/util/ArrayList;
ifnonnull L0
iconst_0
ireturn
L0:
aload 0
getfield com/android/u/weibo/sina/business/bean/SinaGroupList/mDefaultGroupMemberIds Ljava/util/ArrayList;
lload 1
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual java/util/ArrayList/contains(Ljava/lang/Object;)Z
ireturn
.limit locals 3
.limit stack 3
.end method

.method public setDefaultGroupMemberIds(Ljava/util/ArrayList;)V
.signature "(Ljava/util/ArrayList<Ljava/lang/Long;>;)V"
aload 0
aload 1
putfield com/android/u/weibo/sina/business/bean/SinaGroupList/mDefaultGroupMemberIds Ljava/util/ArrayList;
return
.limit locals 2
.limit stack 2
.end method

.method public setGroups(Ljava/util/ArrayList;)V
.signature "(Ljava/util/ArrayList<Lcom/android/u/weibo/sina/business/bean/SinaGroup;>;)V"
aload 1
ifnull L0
aload 0
aload 1
putfield com/android/u/weibo/sina/business/bean/SinaGroupList/mGroups Ljava/util/ArrayList;
L0:
return
.limit locals 2
.limit stack 2
.end method
