.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/data/GlobalVariable
.super java/lang/Object

.field private static final 'SHOW_STATE' Ljava/lang/String; = "SHOW_STATE"

.field private static 'instance' Lcom/nd/android/u/cloud/data/GlobalVariable;

.field public 'bind91CurrUserPwd' Ljava/lang/String;

.field private 'bind_users_list' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Lcom/product/android/business/login/BindUser;>;"

.field private 'classList' Ljava/util/List; signature "Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/OapClass;>;"

.field public 'classVerifyFlag' Z

.field public 'commonconfig' Lcom/nd/android/u/controller/bean/CommonSettingConfig;

.field private 'currentUser' Lcom/product/android/business/login/BindUser;

.field private 'fileNameMap' Ljava/util/Map; signature "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"

.field private 'friendGroups' Lcom/nd/android/u/contact/dataStructure/FriendGroups;

.field private 'isBlockNetAvailreconnetFlag' Z

.field public 'isOAChecked' Z

.field private 'isTrans' Z

.field public 'loginStopFlag' Z

.field private 'mBNdCommplatformInit' Z

.field public 'mClientInfo' Lcom/nd/rj/common/login/entity/ClientInfo;

.field private 'mFriendListShowState' I

.field public 'mOapScore' Lcom/product/android/commonInterface/task/OapScore;

.field private 'mWlSid' Ljava/lang/String;

.field public 'packagename' Ljava/lang/String;

.field private 'reLoginCnt' I

.field public 'resetInitUnit' Z

.field private 'sectionList' Ljava/util/List; signature "Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/OapGrade;>;"

.field public 'sectionVerifyFlag' Z

.field private 'smspermissFlag' I

.field private 'timeMillis' J

.field private 'updateFlag' Z

.method static <clinit>()V
new com/nd/android/u/cloud/data/GlobalVariable
dup
invokespecial com/nd/android/u/cloud/data/GlobalVariable/<init>()V
putstatic com/nd/android/u/cloud/data/GlobalVariable/instance Lcom/nd/android/u/cloud/data/GlobalVariable;
return
.limit locals 0
.limit stack 2
.end method

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aconst_null
putfield com/nd/android/u/cloud/data/GlobalVariable/currentUser Lcom/product/android/business/login/BindUser;
aload 0
iconst_0
putfield com/nd/android/u/cloud/data/GlobalVariable/updateFlag Z
aload 0
iconst_0
putfield com/nd/android/u/cloud/data/GlobalVariable/resetInitUnit Z
aload 0
iconst_0
putfield com/nd/android/u/cloud/data/GlobalVariable/sectionVerifyFlag Z
aload 0
iconst_0
putfield com/nd/android/u/cloud/data/GlobalVariable/classVerifyFlag Z
aload 0
iconst_0
putfield com/nd/android/u/cloud/data/GlobalVariable/smspermissFlag I
aload 0
aconst_null
putfield com/nd/android/u/cloud/data/GlobalVariable/packagename Ljava/lang/String;
aload 0
iconst_0
putfield com/nd/android/u/cloud/data/GlobalVariable/loginStopFlag Z
aload 0
iconst_0
putfield com/nd/android/u/cloud/data/GlobalVariable/isBlockNetAvailreconnetFlag Z
aload 0
iconst_0
putfield com/nd/android/u/cloud/data/GlobalVariable/isOAChecked Z
aload 0
new com/product/android/commonInterface/task/OapScore
dup
invokespecial com/product/android/commonInterface/task/OapScore/<init>()V
putfield com/nd/android/u/cloud/data/GlobalVariable/mOapScore Lcom/product/android/commonInterface/task/OapScore;
aload 0
ldc ""
putfield com/nd/android/u/cloud/data/GlobalVariable/bind91CurrUserPwd Ljava/lang/String;
aload 0
iconst_m1
putfield com/nd/android/u/cloud/data/GlobalVariable/mFriendListShowState I
aload 0
new com/nd/rj/common/login/entity/ClientInfo
dup
invokespecial com/nd/rj/common/login/entity/ClientInfo/<init>()V
putfield com/nd/android/u/cloud/data/GlobalVariable/mClientInfo Lcom/nd/rj/common/login/entity/ClientInfo;
aload 0
iconst_0
putfield com/nd/android/u/cloud/data/GlobalVariable/mBNdCommplatformInit Z
aload 0
ldc ""
putfield com/nd/android/u/cloud/data/GlobalVariable/mWlSid Ljava/lang/String;
aload 0
lconst_0
putfield com/nd/android/u/cloud/data/GlobalVariable/timeMillis J
aload 0
iconst_0
putfield com/nd/android/u/cloud/data/GlobalVariable/reLoginCnt I
return
.limit locals 1
.limit stack 3
.end method

.method public static getInstance()Lcom/nd/android/u/cloud/data/GlobalVariable;
getstatic com/nd/android/u/cloud/data/GlobalVariable/instance Lcom/nd/android/u/cloud/data/GlobalVariable;
ifnonnull L0
new com/nd/android/u/cloud/data/GlobalVariable
dup
invokespecial com/nd/android/u/cloud/data/GlobalVariable/<init>()V
putstatic com/nd/android/u/cloud/data/GlobalVariable/instance Lcom/nd/android/u/cloud/data/GlobalVariable;
L0:
getstatic com/nd/android/u/cloud/data/GlobalVariable/instance Lcom/nd/android/u/cloud/data/GlobalVariable;
areturn
.limit locals 0
.limit stack 2
.end method

.method public checkCanRelogin()Z
invokestatic java/lang/System/currentTimeMillis()J
lstore 2
aload 0
getfield com/nd/android/u/cloud/data/GlobalVariable/timeMillis J
lconst_0
lcmp
ifne L0
aload 0
lload 2
putfield com/nd/android/u/cloud/data/GlobalVariable/timeMillis J
L0:
lload 2
aload 0
getfield com/nd/android/u/cloud/data/GlobalVariable/timeMillis J
lsub
ldc2_w 1000L
ldiv
l2i
istore 1
iload 1
ifle L1
iload 1
bipush 60
if_icmpge L1
aload 0
getfield com/nd/android/u/cloud/data/GlobalVariable/reLoginCnt I
iconst_3
if_icmpge L2
aload 0
aload 0
getfield com/nd/android/u/cloud/data/GlobalVariable/reLoginCnt I
iconst_1
iadd
putfield com/nd/android/u/cloud/data/GlobalVariable/reLoginCnt I
iconst_1
ireturn
L2:
iconst_0
ireturn
L1:
aload 0
iconst_0
putfield com/nd/android/u/cloud/data/GlobalVariable/reLoginCnt I
aload 0
lload 2
putfield com/nd/android/u/cloud/data/GlobalVariable/timeMillis J
iconst_1
ireturn
.limit locals 4
.limit stack 4
.end method

.method public clearAppVariable()V
return
.limit locals 1
.limit stack 0
.end method

.method public clearCommonVariable()V
aload 0
iconst_0
putfield com/nd/android/u/cloud/data/GlobalVariable/sectionVerifyFlag Z
aload 0
iconst_0
putfield com/nd/android/u/cloud/data/GlobalVariable/classVerifyFlag Z
aload 0
iconst_0
putfield com/nd/android/u/cloud/data/GlobalVariable/smspermissFlag I
aload 0
getfield com/nd/android/u/cloud/data/GlobalVariable/classList Ljava/util/List;
ifnull L0
aload 0
getfield com/nd/android/u/cloud/data/GlobalVariable/classList Ljava/util/List;
invokeinterface java/util/List/clear()V 0
L0:
aload 0
getfield com/nd/android/u/cloud/data/GlobalVariable/sectionList Ljava/util/List;
ifnull L1
aload 0
getfield com/nd/android/u/cloud/data/GlobalVariable/sectionList Ljava/util/List;
invokeinterface java/util/List/clear()V 0
L1:
aload 0
ldc ""
invokevirtual com/nd/android/u/cloud/data/GlobalVariable/setWlSid(Ljava/lang/String;)V
return
.limit locals 1
.limit stack 2
.end method

.method public clearUnitVariable()V
aload 0
getfield com/nd/android/u/cloud/data/GlobalVariable/friendGroups Lcom/nd/android/u/contact/dataStructure/FriendGroups;
ifnull L0
aload 0
aconst_null
putfield com/nd/android/u/cloud/data/GlobalVariable/friendGroups Lcom/nd/android/u/contact/dataStructure/FriendGroups;
L0:
aload 0
getfield com/nd/android/u/cloud/data/GlobalVariable/fileNameMap Ljava/util/Map;
ifnull L1
aload 0
getfield com/nd/android/u/cloud/data/GlobalVariable/fileNameMap Ljava/util/Map;
invokeinterface java/util/Map/clear()V 0
L1:
return
.limit locals 1
.limit stack 2
.end method

.method public getBNdCommplatformInit()Z
aload 0
getfield com/nd/android/u/cloud/data/GlobalVariable/mBNdCommplatformInit Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getBind_users_list()Ljava/util/ArrayList;
.signature "()Ljava/util/ArrayList<Lcom/product/android/business/login/BindUser;>;"
aload 0
getfield com/nd/android/u/cloud/data/GlobalVariable/bind_users_list Ljava/util/ArrayList;
ifnonnull L0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
areturn
L0:
aload 0
getfield com/nd/android/u/cloud/data/GlobalVariable/bind_users_list Ljava/util/ArrayList;
areturn
.limit locals 1
.limit stack 2
.end method

.method public getClassList()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/OapClass;>;"
aload 0
getfield com/nd/android/u/cloud/data/GlobalVariable/classList Ljava/util/List;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getCurrentUserName()Ljava/lang/String;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getUserName()Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getDuty()Ljava/lang/String;
ldc ""
astore 1
aload 1
astore 2
aload 0
invokevirtual com/nd/android/u/cloud/data/GlobalVariable/getBind_users_list()Ljava/util/ArrayList;
ifnull L0
aload 0
invokevirtual com/nd/android/u/cloud/data/GlobalVariable/getBind_users_list()Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/iterator()Ljava/util/Iterator;
astore 3
L1:
aload 1
astore 2
aload 3
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L0
aload 3
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/business/login/BindUser
astore 2
aload 2
invokevirtual com/product/android/business/login/BindUser/getUid()J
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
lcmp
ifne L1
aload 2
invokevirtual com/product/android/business/login/BindUser/getType()I
iconst_1
if_icmpne L1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "["
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual com/product/android/business/login/BindUser/getType()I
invokestatic com/nd/android/u/contact/util/ContactDatailUtils/getNameFormType(I)Ljava/lang/String;
invokevirtual java/lang/String/trim()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "]"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 1
goto L1
L0:
aload 2
areturn
.limit locals 4
.limit stack 4
.end method

.method public getFileNameMap()Ljava/util/Map;
.signature "()Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
aload 0
getfield com/nd/android/u/cloud/data/GlobalVariable/fileNameMap Ljava/util/Map;
ifnonnull L0
aload 0
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
putfield com/nd/android/u/cloud/data/GlobalVariable/fileNameMap Ljava/util/Map;
L0:
aload 0
getfield com/nd/android/u/cloud/data/GlobalVariable/fileNameMap Ljava/util/Map;
areturn
.limit locals 1
.limit stack 3
.end method

.method public getFriendGroupList()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup;>;"
aload 0
invokevirtual com/nd/android/u/cloud/data/GlobalVariable/getFriendGroups()Lcom/nd/android/u/contact/dataStructure/FriendGroups;
pop
aload 0
getfield com/nd/android/u/cloud/data/GlobalVariable/friendGroups Lcom/nd/android/u/contact/dataStructure/FriendGroups;
ifnull L0
aload 0
getfield com/nd/android/u/cloud/data/GlobalVariable/friendGroups Lcom/nd/android/u/contact/dataStructure/FriendGroups;
invokevirtual com/nd/android/u/contact/dataStructure/FriendGroups/getFriendGroupList()Ljava/util/List;
areturn
L0:
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
areturn
.limit locals 1
.limit stack 2
.end method

.method public getFriendGroups()Lcom/nd/android/u/contact/dataStructure/FriendGroups;
aload 0
getfield com/nd/android/u/cloud/data/GlobalVariable/friendGroups Lcom/nd/android/u/contact/dataStructure/FriendGroups;
ifnull L0
aload 0
getfield com/nd/android/u/cloud/data/GlobalVariable/friendGroups Lcom/nd/android/u/contact/dataStructure/FriendGroups;
invokevirtual com/nd/android/u/contact/dataStructure/FriendGroups/getUid()J
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
lcmp
ifeq L1
L0:
aload 0
new com/nd/android/u/contact/dataStructure/FriendGroups
dup
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokespecial com/nd/android/u/contact/dataStructure/FriendGroups/<init>(J)V
putfield com/nd/android/u/cloud/data/GlobalVariable/friendGroups Lcom/nd/android/u/contact/dataStructure/FriendGroups;
L1:
aload 0
getfield com/nd/android/u/cloud/data/GlobalVariable/friendGroups Lcom/nd/android/u/contact/dataStructure/FriendGroups;
areturn
.limit locals 1
.limit stack 5
.end method

.method public getFriendListShowState(Landroid/content/Context;)I
aload 0
getfield com/nd/android/u/cloud/data/GlobalVariable/mFriendListShowState I
iconst_m1
if_icmpne L0
aload 0
aload 1
invokestatic android/preference/PreferenceManager/getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc "SHOW_STATE"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
iconst_0
invokeinterface android/content/SharedPreferences/getInt(Ljava/lang/String;I)I 2
putfield com/nd/android/u/cloud/data/GlobalVariable/mFriendListShowState I
L0:
aload 0
getfield com/nd/android/u/cloud/data/GlobalVariable/mFriendListShowState I
iconst_m1
if_icmpge L1
aload 0
iconst_0
putfield com/nd/android/u/cloud/data/GlobalVariable/mFriendListShowState I
L2:
aload 0
getfield com/nd/android/u/cloud/data/GlobalVariable/mFriendListShowState I
ireturn
L1:
aload 0
getfield com/nd/android/u/cloud/data/GlobalVariable/mFriendListShowState I
iconst_1
if_icmple L2
aload 0
iconst_1
putfield com/nd/android/u/cloud/data/GlobalVariable/mFriendListShowState I
goto L2
.limit locals 2
.limit stack 5
.end method

.method public getIstrans()Z
aload 0
getfield com/nd/android/u/cloud/data/GlobalVariable/isTrans Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getPackagename()Ljava/lang/String;
aload 0
getfield com/nd/android/u/cloud/data/GlobalVariable/packagename Ljava/lang/String;
ifnonnull L0
aload 0
invokestatic com/nd/android/u/cloud/OapApplication/getInstance()Lcom/nd/android/u/cloud/OapApplication;
invokevirtual com/nd/android/u/cloud/OapApplication/getPackageName()Ljava/lang/String;
putfield com/nd/android/u/cloud/data/GlobalVariable/packagename Ljava/lang/String;
L0:
aload 0
getfield com/nd/android/u/cloud/data/GlobalVariable/packagename Ljava/lang/String;
areturn
.limit locals 1
.limit stack 2
.end method

.method public getSectionList()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/OapGrade;>;"
aload 0
getfield com/nd/android/u/cloud/data/GlobalVariable/sectionList Ljava/util/List;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getSmspermissFlag()I
aload 0
getfield com/nd/android/u/cloud/data/GlobalVariable/smspermissFlag I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getStatusId()I
invokestatic ims/manager/IMSStateManager/getInstance()Lims/manager/IMSStateManager;
invokevirtual ims/manager/IMSStateManager/getConnectState()I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getWlSid()Ljava/lang/String;
aload 0
getfield com/nd/android/u/cloud/data/GlobalVariable/mWlSid Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public initFriendGroups()V
invokestatic com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory/getInstance()Lcom/nd/android/u/contact/business_new/Controller/ContactOperatorFactory;
invokevirtual com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory/getFriendGroupOperator()Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/IFriendGroupOperator;
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/IFriendGroupOperator/getFriendGroupList()Ljava/util/List; 0
astore 1
aload 0
getfield com/nd/android/u/cloud/data/GlobalVariable/friendGroups Lcom/nd/android/u/contact/dataStructure/FriendGroups;
ifnonnull L0
aload 0
new com/nd/android/u/contact/dataStructure/FriendGroups
dup
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
aload 1
invokespecial com/nd/android/u/contact/dataStructure/FriendGroups/<init>(JLjava/util/List;)V
putfield com/nd/android/u/cloud/data/GlobalVariable/friendGroups Lcom/nd/android/u/contact/dataStructure/FriendGroups;
return
L0:
aload 0
getfield com/nd/android/u/cloud/data/GlobalVariable/friendGroups Lcom/nd/android/u/contact/dataStructure/FriendGroups;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokevirtual com/nd/android/u/contact/dataStructure/FriendGroups/setUid(J)V
aload 0
getfield com/nd/android/u/cloud/data/GlobalVariable/friendGroups Lcom/nd/android/u/contact/dataStructure/FriendGroups;
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/FriendGroups/setFriendGroupList(Ljava/util/List;)V
return
.limit locals 2
.limit stack 6
.end method

.method public initFriendValue(Z)V
.throws com/common/android/utils/http/HttpException
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
iload 1
ifeq L1
L0:
invokestatic com/nd/android/u/contact/business/SynOapFriendGroupPro/getInstance()Lcom/nd/android/u/contact/business/SynOapFriendGroupPro;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokevirtual com/nd/android/u/contact/business/SynOapFriendGroupPro/loadOapFriendGroups(J)V
aload 0
invokevirtual com/nd/android/u/cloud/data/GlobalVariable/initFriendGroups()V
L1:
return
L2:
astore 2
aload 0
getfield com/nd/android/u/cloud/data/GlobalVariable/friendGroups Lcom/nd/android/u/contact/dataStructure/FriendGroups;
ifnonnull L3
aload 0
invokevirtual com/nd/android/u/cloud/data/GlobalVariable/initFriendGroups()V
L3:
aload 2
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
aload 2
athrow
.limit locals 3
.limit stack 3
.end method

.method public isBlockNetAvailreconnetFlag()Z
aload 0
getfield com/nd/android/u/cloud/data/GlobalVariable/isBlockNetAvailreconnetFlag Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public isClassVerifyFlag()Z
aload 0
getfield com/nd/android/u/cloud/data/GlobalVariable/classVerifyFlag Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public isLoginStopFlag()Z
aload 0
getfield com/nd/android/u/cloud/data/GlobalVariable/loginStopFlag Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public isOnline()Z
invokestatic ims/manager/IMSStateManager/getInstance()Lims/manager/IMSStateManager;
invokevirtual ims/manager/IMSStateManager/isOnline()Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public isResetInitUnit()Z
aload 0
getfield com/nd/android/u/cloud/data/GlobalVariable/resetInitUnit Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public isSectionVerifyFlag()Z
aload 0
getfield com/nd/android/u/cloud/data/GlobalVariable/sectionVerifyFlag Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public isUpdateFlag()Z
aload 0
getfield com/nd/android/u/cloud/data/GlobalVariable/updateFlag Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public setBNdCommplatformInit(Z)V
aload 0
iload 1
putfield com/nd/android/u/cloud/data/GlobalVariable/mBNdCommplatformInit Z
return
.limit locals 2
.limit stack 2
.end method

.method public setBind_users_list(Ljava/util/ArrayList;)V
.signature "(Ljava/util/ArrayList<Lcom/product/android/business/login/BindUser;>;)V"
aload 0
aload 1
putfield com/nd/android/u/cloud/data/GlobalVariable/bind_users_list Ljava/util/ArrayList;
return
.limit locals 2
.limit stack 2
.end method

.method public setBlockNetAvailreconnetFlag(Z)V
aload 0
iload 1
putfield com/nd/android/u/cloud/data/GlobalVariable/isBlockNetAvailreconnetFlag Z
return
.limit locals 2
.limit stack 2
.end method

.method public setClassList(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/OapClass;>;)V"
aload 0
aload 1
putfield com/nd/android/u/cloud/data/GlobalVariable/classList Ljava/util/List;
return
.limit locals 2
.limit stack 2
.end method

.method public setClassVerifyFlag(Z)V
aload 0
iload 1
putfield com/nd/android/u/cloud/data/GlobalVariable/classVerifyFlag Z
return
.limit locals 2
.limit stack 2
.end method

.method public setFriendGroups(Lcom/nd/android/u/contact/dataStructure/FriendGroups;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/data/GlobalVariable/friendGroups Lcom/nd/android/u/contact/dataStructure/FriendGroups;
return
.limit locals 2
.limit stack 2
.end method

.method public setFriendListShowState(Landroid/content/Context;I)V
aload 0
iload 2
putfield com/nd/android/u/cloud/data/GlobalVariable/mFriendListShowState I
aload 1
invokestatic android/preference/PreferenceManager/getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
invokeinterface android/content/SharedPreferences/edit()Landroid/content/SharedPreferences$Editor; 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc "SHOW_STATE"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
iload 2
invokeinterface android/content/SharedPreferences$Editor/putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor; 2
invokeinterface android/content/SharedPreferences$Editor/commit()Z 0
pop
return
.limit locals 3
.limit stack 4
.end method

.method public setIstrans(Z)V
aload 0
iload 1
putfield com/nd/android/u/cloud/data/GlobalVariable/isTrans Z
return
.limit locals 2
.limit stack 2
.end method

.method public setLoginStopFlag(Z)V
aload 0
iload 1
putfield com/nd/android/u/cloud/data/GlobalVariable/loginStopFlag Z
return
.limit locals 2
.limit stack 2
.end method

.method public setResetInitUnit(Z)V
aload 0
iload 1
putfield com/nd/android/u/cloud/data/GlobalVariable/resetInitUnit Z
return
.limit locals 2
.limit stack 2
.end method

.method public setSectionList(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/OapGrade;>;)V"
aload 0
aload 1
putfield com/nd/android/u/cloud/data/GlobalVariable/sectionList Ljava/util/List;
return
.limit locals 2
.limit stack 2
.end method

.method public setSectionVerifyFlag(Z)V
aload 0
iload 1
putfield com/nd/android/u/cloud/data/GlobalVariable/sectionVerifyFlag Z
return
.limit locals 2
.limit stack 2
.end method

.method public setSmspermissFlag(I)V
aload 0
iload 1
putfield com/nd/android/u/cloud/data/GlobalVariable/smspermissFlag I
return
.limit locals 2
.limit stack 2
.end method

.method public setUpdateFlag(Z)V
aload 0
iload 1
putfield com/nd/android/u/cloud/data/GlobalVariable/updateFlag Z
return
.limit locals 2
.limit stack 2
.end method

.method public setWlSid(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/data/GlobalVariable/mWlSid Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method
