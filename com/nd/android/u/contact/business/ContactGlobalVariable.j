.bytecode 50.0
.class public synchronized com/nd/android/u/contact/business/ContactGlobalVariable
.super java/lang/Object

.field private static final 'SHOW_STATE' Ljava/lang/String; = "SHOW_STATE"

.field public static 'gHasBeanSenior' Z

.field public static 'gIsNeedSercetLove' Z

.field public static 'gIsSenior' Z

.field private static 'instance' Lcom/nd/android/u/contact/business/ContactGlobalVariable;

.field private 'app_type_List' Ljava/util/Vector; signature "Ljava/util/Vector<Lcom/product/android/commonInterface/contact/OapApp;>;"

.field private 'bind_users_list' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Lcom/product/android/business/login/BindUser;>;"

.field public 'classVerifyFlag' Z

.field private 'currentUserType' I

.field private 'fileNameMap' Ljava/util/Map; signature "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"

.field private 'friendGroups' Lcom/nd/android/u/contact/dataStructure/FriendGroups;

.field private 'isTrans' Z

.field public 'loginStopFlag' Z

.field private 'mBackPackMap' Ljava/util/Map; signature "Ljava/util/Map<Ljava/lang/Long;Lcom/product/android/commonInterface/backpack/BackPackItem;>;"

.field public 'mFlowerNum' I

.field private 'mFriendListShowState' I

.field private 'mIndex' I

.field public 'mItemid' J

.field public 'packagename' Ljava/lang/String;

.field private 'reLoginCnt' I

.field public 'sectionVerifyFlag' Z

.field private 'smspermissFlag' I

.field private 'timeMillis' J

.field private 'unitAppList' Ljava/util/Vector; signature "Ljava/util/Vector<Lcom/product/android/commonInterface/contact/OapApp;>;"

.field private 'updateFlag' Z

.method static <clinit>()V
new com/nd/android/u/contact/business/ContactGlobalVariable
dup
invokespecial com/nd/android/u/contact/business/ContactGlobalVariable/<init>()V
putstatic com/nd/android/u/contact/business/ContactGlobalVariable/instance Lcom/nd/android/u/contact/business/ContactGlobalVariable;
iconst_1
putstatic com/nd/android/u/contact/business/ContactGlobalVariable/gIsNeedSercetLove Z
iconst_0
putstatic com/nd/android/u/contact/business/ContactGlobalVariable/gIsSenior Z
iconst_0
putstatic com/nd/android/u/contact/business/ContactGlobalVariable/gHasBeanSenior Z
return
.limit locals 0
.limit stack 2
.end method

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_0
putfield com/nd/android/u/contact/business/ContactGlobalVariable/updateFlag Z
aload 0
iconst_0
putfield com/nd/android/u/contact/business/ContactGlobalVariable/sectionVerifyFlag Z
aload 0
iconst_0
putfield com/nd/android/u/contact/business/ContactGlobalVariable/classVerifyFlag Z
aload 0
iconst_0
putfield com/nd/android/u/contact/business/ContactGlobalVariable/smspermissFlag I
aload 0
aconst_null
putfield com/nd/android/u/contact/business/ContactGlobalVariable/packagename Ljava/lang/String;
aload 0
iconst_0
putfield com/nd/android/u/contact/business/ContactGlobalVariable/loginStopFlag Z
aload 0
iconst_m1
putfield com/nd/android/u/contact/business/ContactGlobalVariable/mFriendListShowState I
aload 0
lconst_0
putfield com/nd/android/u/contact/business/ContactGlobalVariable/mItemid J
aload 0
iconst_0
putfield com/nd/android/u/contact/business/ContactGlobalVariable/mFlowerNum I
aload 0
lconst_0
putfield com/nd/android/u/contact/business/ContactGlobalVariable/timeMillis J
aload 0
iconst_0
putfield com/nd/android/u/contact/business/ContactGlobalVariable/reLoginCnt I
return
.limit locals 1
.limit stack 3
.end method

.method public static getInstance()Lcom/nd/android/u/contact/business/ContactGlobalVariable;
getstatic com/nd/android/u/contact/business/ContactGlobalVariable/instance Lcom/nd/android/u/contact/business/ContactGlobalVariable;
areturn
.limit locals 0
.limit stack 1
.end method

.method public checkCanRelogin()Z
invokestatic java/lang/System/currentTimeMillis()J
lstore 2
aload 0
getfield com/nd/android/u/contact/business/ContactGlobalVariable/timeMillis J
lconst_0
lcmp
ifne L0
aload 0
lload 2
putfield com/nd/android/u/contact/business/ContactGlobalVariable/timeMillis J
L0:
lload 2
aload 0
getfield com/nd/android/u/contact/business/ContactGlobalVariable/timeMillis J
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
getfield com/nd/android/u/contact/business/ContactGlobalVariable/reLoginCnt I
iconst_3
if_icmpge L2
aload 0
aload 0
getfield com/nd/android/u/contact/business/ContactGlobalVariable/reLoginCnt I
iconst_1
iadd
putfield com/nd/android/u/contact/business/ContactGlobalVariable/reLoginCnt I
iconst_1
ireturn
L2:
iconst_0
ireturn
L1:
aload 0
iconst_0
putfield com/nd/android/u/contact/business/ContactGlobalVariable/reLoginCnt I
aload 0
lload 2
putfield com/nd/android/u/contact/business/ContactGlobalVariable/timeMillis J
iconst_1
ireturn
.limit locals 4
.limit stack 4
.end method

.method public clearAppList()V
aload 0
getfield com/nd/android/u/contact/business/ContactGlobalVariable/unitAppList Ljava/util/Vector;
ifnull L0
aload 0
getfield com/nd/android/u/contact/business/ContactGlobalVariable/unitAppList Ljava/util/Vector;
invokevirtual java/util/Vector/clear()V
L0:
aload 0
getfield com/nd/android/u/contact/business/ContactGlobalVariable/app_type_List Ljava/util/Vector;
ifnull L1
aload 0
getfield com/nd/android/u/contact/business/ContactGlobalVariable/app_type_List Ljava/util/Vector;
invokevirtual java/util/Vector/clear()V
L1:
return
.limit locals 1
.limit stack 1
.end method

.method public clearFlowerBackPackMap()V
aload 0
getfield com/nd/android/u/contact/business/ContactGlobalVariable/mBackPackMap Ljava/util/Map;
ifnull L0
aload 0
getfield com/nd/android/u/contact/business/ContactGlobalVariable/mBackPackMap Ljava/util/Map;
invokeinterface java/util/Map/clear()V 0
L0:
return
.limit locals 1
.limit stack 1
.end method

.method public clearUnitVariable()V
aload 0
getfield com/nd/android/u/contact/business/ContactGlobalVariable/friendGroups Lcom/nd/android/u/contact/dataStructure/FriendGroups;
ifnull L0
aload 0
aconst_null
putfield com/nd/android/u/contact/business/ContactGlobalVariable/friendGroups Lcom/nd/android/u/contact/dataStructure/FriendGroups;
L0:
aload 0
getfield com/nd/android/u/contact/business/ContactGlobalVariable/fileNameMap Ljava/util/Map;
ifnull L1
aload 0
getfield com/nd/android/u/contact/business/ContactGlobalVariable/fileNameMap Ljava/util/Map;
invokeinterface java/util/Map/clear()V 0
L1:
return
.limit locals 1
.limit stack 2
.end method

.method public getAppAndTypeList()Ljava/util/Vector;
.signature "()Ljava/util/Vector<Lcom/product/android/commonInterface/contact/OapApp;>;"
aload 0
getfield com/nd/android/u/contact/business/ContactGlobalVariable/app_type_List Ljava/util/Vector;
ifnonnull L0
aload 0
new java/util/Vector
dup
invokespecial java/util/Vector/<init>()V
putfield com/nd/android/u/contact/business/ContactGlobalVariable/app_type_List Ljava/util/Vector;
L0:
aload 0
getfield com/nd/android/u/contact/business/ContactGlobalVariable/app_type_List Ljava/util/Vector;
areturn
.limit locals 1
.limit stack 3
.end method

.method public getAppList()Ljava/util/Vector;
.signature "()Ljava/util/Vector<Lcom/product/android/commonInterface/contact/OapApp;>;"
aload 0
getfield com/nd/android/u/contact/business/ContactGlobalVariable/unitAppList Ljava/util/Vector;
ifnonnull L0
aload 0
new java/util/Vector
dup
invokespecial java/util/Vector/<init>()V
putfield com/nd/android/u/contact/business/ContactGlobalVariable/unitAppList Ljava/util/Vector;
L0:
iconst_0
istore 1
L1:
iload 1
aload 0
getfield com/nd/android/u/contact/business/ContactGlobalVariable/unitAppList Ljava/util/Vector;
invokevirtual java/util/Vector/size()I
if_icmpge L2
aload 0
getfield com/nd/android/u/contact/business/ContactGlobalVariable/unitAppList Ljava/util/Vector;
iload 1
invokevirtual java/util/Vector/get(I)Ljava/lang/Object;
checkcast com/product/android/commonInterface/contact/OapApp
astore 3
aload 3
invokevirtual com/product/android/commonInterface/contact/OapApp/getOpen_url()Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L3
aload 3
invokevirtual com/product/android/commonInterface/contact/OapApp/getPacket_name()Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L3
aload 0
getfield com/nd/android/u/contact/business/ContactGlobalVariable/unitAppList Ljava/util/Vector;
iload 1
invokevirtual java/util/Vector/remove(I)Ljava/lang/Object;
pop
iload 1
iconst_1
isub
istore 2
L4:
iload 2
iconst_1
iadd
istore 1
goto L1
L3:
iload 1
istore 2
aload 3
invokevirtual com/product/android/commonInterface/contact/OapApp/getOpen_url()Ljava/lang/String;
ldc "null"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L4
aload 0
getfield com/nd/android/u/contact/business/ContactGlobalVariable/unitAppList Ljava/util/Vector;
iload 1
invokevirtual java/util/Vector/remove(I)Ljava/lang/Object;
pop
iload 1
iconst_1
isub
istore 2
goto L4
L2:
aload 0
getfield com/nd/android/u/contact/business/ContactGlobalVariable/unitAppList Ljava/util/Vector;
areturn
.limit locals 4
.limit stack 3
.end method

.method public getBind_users_list()Ljava/util/ArrayList;
.signature "()Ljava/util/ArrayList<Lcom/product/android/business/login/BindUser;>;"
aload 0
getfield com/nd/android/u/contact/business/ContactGlobalVariable/bind_users_list Ljava/util/ArrayList;
ifnonnull L0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
areturn
L0:
aload 0
getfield com/nd/android/u/contact/business/ContactGlobalVariable/bind_users_list Ljava/util/ArrayList;
areturn
.limit locals 1
.limit stack 2
.end method

.method public getCurrentUserName()Ljava/lang/String;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
ifnull L0
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getBindUser()Lcom/product/android/business/login/BindUser; 0
invokevirtual com/product/android/business/login/BindUser/getUsername()Ljava/lang/String;
areturn
L0:
ldc ""
areturn
.limit locals 1
.limit stack 1
.end method

.method public getCurrentUserType()I
aload 0
getfield com/nd/android/u/contact/business/ContactGlobalVariable/currentUserType I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getDuty()Ljava/lang/String;
ldc ""
astore 1
aload 1
astore 2
aload 0
invokevirtual com/nd/android/u/contact/business/ContactGlobalVariable/getBind_users_list()Ljava/util/ArrayList;
ifnull L0
aload 0
invokevirtual com/nd/android/u/contact/business/ContactGlobalVariable/getBind_users_list()Ljava/util/ArrayList;
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
getfield com/nd/android/u/contact/business/ContactGlobalVariable/fileNameMap Ljava/util/Map;
ifnonnull L0
aload 0
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
putfield com/nd/android/u/contact/business/ContactGlobalVariable/fileNameMap Ljava/util/Map;
L0:
aload 0
getfield com/nd/android/u/contact/business/ContactGlobalVariable/fileNameMap Ljava/util/Map;
areturn
.limit locals 1
.limit stack 3
.end method

.method public getFlowerBackPackMap()Ljava/util/Map;
.signature "()Ljava/util/Map<Ljava/lang/Long;Lcom/product/android/commonInterface/backpack/BackPackItem;>;"
aload 0
getfield com/nd/android/u/contact/business/ContactGlobalVariable/mBackPackMap Ljava/util/Map;
ifnonnull L0
aload 0
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
putfield com/nd/android/u/contact/business/ContactGlobalVariable/mBackPackMap Ljava/util/Map;
L0:
aload 0
getfield com/nd/android/u/contact/business/ContactGlobalVariable/mBackPackMap Ljava/util/Map;
areturn
.limit locals 1
.limit stack 3
.end method

.method public getFriendGroupList()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup;>;"
aload 0
invokevirtual com/nd/android/u/contact/business/ContactGlobalVariable/getFriendGroups()Lcom/nd/android/u/contact/dataStructure/FriendGroups;
pop
aload 0
getfield com/nd/android/u/contact/business/ContactGlobalVariable/friendGroups Lcom/nd/android/u/contact/dataStructure/FriendGroups;
ifnull L0
aload 0
getfield com/nd/android/u/contact/business/ContactGlobalVariable/friendGroups Lcom/nd/android/u/contact/dataStructure/FriendGroups;
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
getfield com/nd/android/u/contact/business/ContactGlobalVariable/friendGroups Lcom/nd/android/u/contact/dataStructure/FriendGroups;
ifnull L0
aload 0
getfield com/nd/android/u/contact/business/ContactGlobalVariable/friendGroups Lcom/nd/android/u/contact/dataStructure/FriendGroups;
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
putfield com/nd/android/u/contact/business/ContactGlobalVariable/friendGroups Lcom/nd/android/u/contact/dataStructure/FriendGroups;
L1:
aload 0
getfield com/nd/android/u/contact/business/ContactGlobalVariable/friendGroups Lcom/nd/android/u/contact/dataStructure/FriendGroups;
areturn
.limit locals 1
.limit stack 5
.end method

.method public getFriendListShowState(Landroid/content/Context;)I
aload 0
getfield com/nd/android/u/contact/business/ContactGlobalVariable/mFriendListShowState I
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
putfield com/nd/android/u/contact/business/ContactGlobalVariable/mFriendListShowState I
L0:
aload 0
getfield com/nd/android/u/contact/business/ContactGlobalVariable/mFriendListShowState I
iconst_m1
if_icmpge L1
aload 0
iconst_0
putfield com/nd/android/u/contact/business/ContactGlobalVariable/mFriendListShowState I
L2:
aload 0
getfield com/nd/android/u/contact/business/ContactGlobalVariable/mFriendListShowState I
ireturn
L1:
aload 0
getfield com/nd/android/u/contact/business/ContactGlobalVariable/mFriendListShowState I
iconst_1
if_icmple L2
aload 0
iconst_1
putfield com/nd/android/u/contact/business/ContactGlobalVariable/mFriendListShowState I
goto L2
.limit locals 2
.limit stack 5
.end method

.method public getIstrans()Z
aload 0
getfield com/nd/android/u/contact/business/ContactGlobalVariable/isTrans Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getSmspermissFlag()I
aload 0
getfield com/nd/android/u/contact/business/ContactGlobalVariable/smspermissFlag I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getmIndex()I
aload 0
getfield com/nd/android/u/contact/business/ContactGlobalVariable/mIndex I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public initFriendGroups()V
invokestatic com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory/getInstance()Lcom/nd/android/u/contact/business_new/Controller/ContactOperatorFactory;
invokevirtual com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory/getFriendGroupOperator()Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/IFriendGroupOperator;
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/IFriendGroupOperator/getFriendGroupList()Ljava/util/List; 0
astore 1
aload 0
getfield com/nd/android/u/contact/business/ContactGlobalVariable/friendGroups Lcom/nd/android/u/contact/dataStructure/FriendGroups;
ifnonnull L0
aload 0
new com/nd/android/u/contact/dataStructure/FriendGroups
dup
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
aload 1
invokespecial com/nd/android/u/contact/dataStructure/FriendGroups/<init>(JLjava/util/List;)V
putfield com/nd/android/u/contact/business/ContactGlobalVariable/friendGroups Lcom/nd/android/u/contact/dataStructure/FriendGroups;
return
L0:
aload 0
getfield com/nd/android/u/contact/business/ContactGlobalVariable/friendGroups Lcom/nd/android/u/contact/dataStructure/FriendGroups;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokevirtual com/nd/android/u/contact/dataStructure/FriendGroups/setUid(J)V
aload 0
getfield com/nd/android/u/contact/business/ContactGlobalVariable/friendGroups Lcom/nd/android/u/contact/dataStructure/FriendGroups;
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
invokevirtual com/nd/android/u/contact/business/ContactGlobalVariable/initFriendGroups()V
L1:
return
L2:
astore 2
aload 0
getfield com/nd/android/u/contact/business/ContactGlobalVariable/friendGroups Lcom/nd/android/u/contact/dataStructure/FriendGroups;
ifnonnull L3
aload 0
invokevirtual com/nd/android/u/contact/business/ContactGlobalVariable/initFriendGroups()V
L3:
aload 2
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
aload 2
athrow
.limit locals 3
.limit stack 3
.end method

.method public isClassVerifyFlag()Z
aload 0
getfield com/nd/android/u/contact/business/ContactGlobalVariable/classVerifyFlag Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public isLoginStopFlag()Z
aload 0
getfield com/nd/android/u/contact/business/ContactGlobalVariable/loginStopFlag Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public isSectionVerifyFlag()Z
aload 0
getfield com/nd/android/u/contact/business/ContactGlobalVariable/sectionVerifyFlag Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public isUpdateFlag()Z
aload 0
getfield com/nd/android/u/contact/business/ContactGlobalVariable/updateFlag Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public setAppAndTypeList(Ljava/util/Vector;)V
.signature "(Ljava/util/Vector<Lcom/product/android/commonInterface/contact/OapApp;>;)V"
.catch all from L0 to L1 using L2
.catch all from L1 to L3 using L2
.catch all from L4 to L5 using L2
.catch all from L6 to L7 using L2
.catch all from L8 to L9 using L2
.catch all from L10 to L11 using L2
.catch all from L12 to L13 using L2
aload 1
ifnull L14
aload 1
invokevirtual java/util/Vector/size()I
ifle L14
new java/util/Vector
dup
invokespecial java/util/Vector/<init>()V
astore 2
new java/util/HashSet
dup
invokespecial java/util/HashSet/<init>()V
astore 3
aload 1
monitorenter
L0:
aload 1
invokevirtual java/util/Vector/iterator()Ljava/util/Iterator;
astore 4
L1:
aload 4
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L12
aload 4
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/contact/OapApp
astore 5
aload 5
invokevirtual com/product/android/commonInterface/contact/OapApp/getMenutype()Ljava/lang/String;
astore 6
aload 6
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L6
aload 2
aload 5
invokevirtual java/util/Vector/add(Ljava/lang/Object;)Z
pop
L3:
goto L1
L2:
astore 2
L4:
aload 1
monitorexit
L5:
aload 2
athrow
L6:
ldc com/nd/android/u/contact/dao/OapAppTypeDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapAppTypeDao
aload 6
invokeinterface com/nd/android/u/contact/dao/OapAppTypeDao/isExists(Ljava/lang/String;)Z 1
ifne L8
aload 2
aload 5
invokevirtual java/util/Vector/add(Ljava/lang/Object;)Z
pop
L7:
goto L1
L8:
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_91UND Lcom/product/android/business/ProductTypeDef$Product;
if_acmpeq L10
aload 5
iconst_1
putfield com/product/android/commonInterface/contact/OapApp/displayType Z
aload 5
aload 6
putfield com/product/android/commonInterface/contact/OapApp/menutype Ljava/lang/String;
aload 5
ldc com/nd/android/u/contact/dao/OapAppTypeDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapAppTypeDao
aload 6
invokeinterface com/nd/android/u/contact/dao/OapAppTypeDao/getTypenameByTypecode(Ljava/lang/String;)Ljava/lang/String; 1
putfield com/product/android/commonInterface/contact/OapApp/typename Ljava/lang/String;
aload 2
aload 5
invokevirtual java/util/Vector/add(Ljava/lang/Object;)Z
pop
L9:
goto L1
L10:
aload 3
aload 6
invokeinterface java/util/Set/add(Ljava/lang/Object;)Z 1
pop
L11:
goto L1
L12:
aload 1
monitorexit
L13:
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_91UND Lcom/product/android/business/ProductTypeDef$Product;
if_acmpne L15
aload 3
invokeinterface java/util/Set/size()I 0
ifle L15
aload 3
invokeinterface java/util/Set/iterator()Ljava/util/Iterator; 0
astore 1
L16:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L15
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/lang/String
astore 3
new com/product/android/commonInterface/contact/OapApp
dup
invokespecial com/product/android/commonInterface/contact/OapApp/<init>()V
astore 4
aload 4
iconst_1
putfield com/product/android/commonInterface/contact/OapApp/displayType Z
aload 4
aload 3
putfield com/product/android/commonInterface/contact/OapApp/menutype Ljava/lang/String;
aload 4
ldc com/nd/android/u/contact/dao/OapAppTypeDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapAppTypeDao
aload 3
invokeinterface com/nd/android/u/contact/dao/OapAppTypeDao/getTypenameByTypecode(Ljava/lang/String;)Ljava/lang/String; 1
putfield com/product/android/commonInterface/contact/OapApp/typename Ljava/lang/String;
aload 2
aload 4
invokevirtual java/util/Vector/add(Ljava/lang/Object;)Z
pop
goto L16
L15:
aload 0
aload 2
putfield com/nd/android/u/contact/business/ContactGlobalVariable/app_type_List Ljava/util/Vector;
L14:
return
.limit locals 7
.limit stack 3
.end method

.method public setAppList(Ljava/util/Vector;)V
.signature "(Ljava/util/Vector<Lcom/product/android/commonInterface/contact/OapApp;>;)V"
new com/product/android/commonInterface/contact/OapApp
dup
invokespecial com/product/android/commonInterface/contact/OapApp/<init>()V
astore 2
aload 2
ldc_w 100001
putfield com/product/android/commonInterface/contact/OapApp/appid I
aload 2
ldc "\u4e8c\u624b\u5e02\u573a"
putfield com/product/android/commonInterface/contact/OapApp/name Ljava/lang/String;
aload 2
ldc "2shoumarket"
putfield com/product/android/commonInterface/contact/OapApp/code Ljava/lang/String;
aload 2
iconst_0
putfield com/product/android/commonInterface/contact/OapApp/display I
aload 1
iconst_0
aload 2
invokevirtual java/util/Vector/add(ILjava/lang/Object;)V
new com/product/android/commonInterface/contact/OapApp
dup
invokespecial com/product/android/commonInterface/contact/OapApp/<init>()V
astore 2
aload 2
ldc_w 100002
putfield com/product/android/commonInterface/contact/OapApp/appid I
aload 2
ldc "\u7167\u7247\u8bc6\u4eba"
putfield com/product/android/commonInterface/contact/OapApp/name Ljava/lang/String;
aload 2
ldc "HRRecognize"
putfield com/product/android/commonInterface/contact/OapApp/code Ljava/lang/String;
aload 2
iconst_0
putfield com/product/android/commonInterface/contact/OapApp/display I
aload 1
iconst_1
aload 2
invokevirtual java/util/Vector/add(ILjava/lang/Object;)V
new com/product/android/commonInterface/contact/OapApp
dup
invokespecial com/product/android/commonInterface/contact/OapApp/<init>()V
astore 2
aload 2
ldc_w 100003
putfield com/product/android/commonInterface/contact/OapApp/appid I
aload 2
ldc "\u4e2d\u56fd\u5408\u4f19\u4eba"
putfield com/product/android/commonInterface/contact/OapApp/name Ljava/lang/String;
aload 2
ldc "chinesePartner"
putfield com/product/android/commonInterface/contact/OapApp/code Ljava/lang/String;
aload 2
iconst_0
putfield com/product/android/commonInterface/contact/OapApp/display I
aload 1
iconst_2
aload 2
invokevirtual java/util/Vector/add(ILjava/lang/Object;)V
aload 0
aload 1
putfield com/nd/android/u/contact/business/ContactGlobalVariable/unitAppList Ljava/util/Vector;
return
.limit locals 3
.limit stack 3
.end method

.method public setBind_users_list(Ljava/util/ArrayList;)V
.signature "(Ljava/util/ArrayList<Lcom/product/android/business/login/BindUser;>;)V"
aload 0
aload 1
putfield com/nd/android/u/contact/business/ContactGlobalVariable/bind_users_list Ljava/util/ArrayList;
return
.limit locals 2
.limit stack 2
.end method

.method public setClassVerifyFlag(Z)V
aload 0
iload 1
putfield com/nd/android/u/contact/business/ContactGlobalVariable/classVerifyFlag Z
return
.limit locals 2
.limit stack 2
.end method

.method public setCommonAppList(Ljava/util/Vector;)V
.signature "(Ljava/util/Vector<Lcom/product/android/commonInterface/contact/OapApp;>;)V"
aload 0
aload 1
putfield com/nd/android/u/contact/business/ContactGlobalVariable/unitAppList Ljava/util/Vector;
return
.limit locals 2
.limit stack 2
.end method

.method public setCurrentUserType(I)V
aload 0
iload 1
putfield com/nd/android/u/contact/business/ContactGlobalVariable/currentUserType I
return
.limit locals 2
.limit stack 2
.end method

.method public setFlowerBackPackList(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/product/android/commonInterface/backpack/BackPackItem;>;)V"
aload 0
getfield com/nd/android/u/contact/business/ContactGlobalVariable/mBackPackMap Ljava/util/Map;
ifnonnull L0
aload 0
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
putfield com/nd/android/u/contact/business/ContactGlobalVariable/mBackPackMap Ljava/util/Map;
L0:
aload 1
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 1
L1:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L2
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/backpack/BackPackItem
astore 2
aload 0
getfield com/nd/android/u/contact/business/ContactGlobalVariable/mBackPackMap Ljava/util/Map;
aload 2
getfield com/product/android/commonInterface/backpack/BackPackItem/itemid J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokeinterface java/util/Map/containsKey(Ljava/lang/Object;)Z 1
ifne L3
aload 0
getfield com/nd/android/u/contact/business/ContactGlobalVariable/mBackPackMap Ljava/util/Map;
aload 2
getfield com/product/android/commonInterface/backpack/BackPackItem/itemid J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
aload 2
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
goto L1
L3:
aload 0
getfield com/nd/android/u/contact/business/ContactGlobalVariable/mBackPackMap Ljava/util/Map;
aload 2
getfield com/product/android/commonInterface/backpack/BackPackItem/itemid J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast com/product/android/commonInterface/backpack/BackPackItem
astore 3
aload 3
aload 2
getfield com/product/android/commonInterface/backpack/BackPackItem/del_time J
putfield com/product/android/commonInterface/backpack/BackPackItem/del_time J
aload 3
aload 2
getfield com/product/android/commonInterface/backpack/BackPackItem/amount I
putfield com/product/android/commonInterface/backpack/BackPackItem/amount I
aload 3
aload 2
getfield com/product/android/commonInterface/backpack/BackPackItem/itemtype I
putfield com/product/android/commonInterface/backpack/BackPackItem/itemtype I
goto L1
L2:
return
.limit locals 4
.limit stack 3
.end method

.method public setFriendGroups(Lcom/nd/android/u/contact/dataStructure/FriendGroups;)V
aload 0
aload 1
putfield com/nd/android/u/contact/business/ContactGlobalVariable/friendGroups Lcom/nd/android/u/contact/dataStructure/FriendGroups;
return
.limit locals 2
.limit stack 2
.end method

.method public setFriendListShowState(Landroid/content/Context;I)V
aload 0
iload 2
putfield com/nd/android/u/contact/business/ContactGlobalVariable/mFriendListShowState I
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
putfield com/nd/android/u/contact/business/ContactGlobalVariable/isTrans Z
return
.limit locals 2
.limit stack 2
.end method

.method public setLoginStopFlag(Z)V
aload 0
iload 1
putfield com/nd/android/u/contact/business/ContactGlobalVariable/loginStopFlag Z
return
.limit locals 2
.limit stack 2
.end method

.method public setSectionVerifyFlag(Z)V
aload 0
iload 1
putfield com/nd/android/u/contact/business/ContactGlobalVariable/sectionVerifyFlag Z
return
.limit locals 2
.limit stack 2
.end method

.method public setSmspermissFlag(I)V
aload 0
iload 1
putfield com/nd/android/u/contact/business/ContactGlobalVariable/smspermissFlag I
return
.limit locals 2
.limit stack 2
.end method

.method public setUpdateFlag(Z)V
aload 0
iload 1
putfield com/nd/android/u/contact/business/ContactGlobalVariable/updateFlag Z
return
.limit locals 2
.limit stack 2
.end method

.method public setmIndex(I)V
aload 0
iload 1
putfield com/nd/android/u/contact/business/ContactGlobalVariable/mIndex I
return
.limit locals 2
.limit stack 2
.end method
