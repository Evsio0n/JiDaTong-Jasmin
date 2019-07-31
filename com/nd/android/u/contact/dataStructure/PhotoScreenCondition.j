.bytecode 50.0
.class public synchronized com/nd/android/u/contact/dataStructure/PhotoScreenCondition
.super java/lang/Object

.field public static 'instance' Lcom/nd/android/u/contact/dataStructure/PhotoScreenCondition;

.field private 'genderChange' Z

.field private 'm_bOrderChanged' Z

.field private 'm_iNewOrder' I

.field private 'm_iSavedOrder' I

.field private 'newGender' I

.field private 'newStatus' Lcom/nd/android/u/contact/dataStructure/PhotoScreenStatus;

.field private 'reset' Z

.field private 'saveGender' I

.field private 'saveStatus' Lcom/nd/android/u/contact/dataStructure/PhotoScreenStatus;

.field private 'unitConditionChanage' Z

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_0
putfield com/nd/android/u/contact/dataStructure/PhotoScreenCondition/m_iSavedOrder I
aload 0
iconst_0
putfield com/nd/android/u/contact/dataStructure/PhotoScreenCondition/m_iNewOrder I
aload 0
iconst_0
putfield com/nd/android/u/contact/dataStructure/PhotoScreenCondition/m_bOrderChanged Z
aload 0
iconst_0
putfield com/nd/android/u/contact/dataStructure/PhotoScreenCondition/saveGender I
aload 0
iconst_0
putfield com/nd/android/u/contact/dataStructure/PhotoScreenCondition/newGender I
aload 0
iconst_0
putfield com/nd/android/u/contact/dataStructure/PhotoScreenCondition/genderChange Z
aload 0
iconst_0
putfield com/nd/android/u/contact/dataStructure/PhotoScreenCondition/unitConditionChanage Z
aload 0
iconst_0
putfield com/nd/android/u/contact/dataStructure/PhotoScreenCondition/reset Z
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
ifnull L0
aload 0
new com/nd/android/u/contact/dataStructure/PhotoScreenStatus
dup
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getBindUser()Lcom/product/android/business/login/BindUser; 0
invokevirtual com/product/android/business/login/BindUser/getUnitid()I
iconst_0
aconst_null
invokespecial com/nd/android/u/contact/dataStructure/PhotoScreenStatus/<init>(IILjava/lang/String;)V
putfield com/nd/android/u/contact/dataStructure/PhotoScreenCondition/saveStatus Lcom/nd/android/u/contact/dataStructure/PhotoScreenStatus;
L0:
return
.limit locals 1
.limit stack 6
.end method

.method public static getInstance()Lcom/nd/android/u/contact/dataStructure/PhotoScreenCondition;
getstatic com/nd/android/u/contact/dataStructure/PhotoScreenCondition/instance Lcom/nd/android/u/contact/dataStructure/PhotoScreenCondition;
ifnonnull L0
new com/nd/android/u/contact/dataStructure/PhotoScreenCondition
dup
invokespecial com/nd/android/u/contact/dataStructure/PhotoScreenCondition/<init>()V
putstatic com/nd/android/u/contact/dataStructure/PhotoScreenCondition/instance Lcom/nd/android/u/contact/dataStructure/PhotoScreenCondition;
L0:
getstatic com/nd/android/u/contact/dataStructure/PhotoScreenCondition/instance Lcom/nd/android/u/contact/dataStructure/PhotoScreenCondition;
areturn
.limit locals 0
.limit stack 2
.end method

.method public copyNewValue()V
aload 0
aload 0
getfield com/nd/android/u/contact/dataStructure/PhotoScreenCondition/m_iSavedOrder I
putfield com/nd/android/u/contact/dataStructure/PhotoScreenCondition/m_iNewOrder I
aload 0
iconst_0
putfield com/nd/android/u/contact/dataStructure/PhotoScreenCondition/m_bOrderChanged Z
aload 0
aload 0
getfield com/nd/android/u/contact/dataStructure/PhotoScreenCondition/saveGender I
putfield com/nd/android/u/contact/dataStructure/PhotoScreenCondition/newGender I
aload 0
iconst_1
putfield com/nd/android/u/contact/dataStructure/PhotoScreenCondition/genderChange Z
aload 0
aload 0
getfield com/nd/android/u/contact/dataStructure/PhotoScreenCondition/saveStatus Lcom/nd/android/u/contact/dataStructure/PhotoScreenStatus;
putfield com/nd/android/u/contact/dataStructure/PhotoScreenCondition/newStatus Lcom/nd/android/u/contact/dataStructure/PhotoScreenStatus;
aload 0
iconst_0
putfield com/nd/android/u/contact/dataStructure/PhotoScreenCondition/unitConditionChanage Z
return
.limit locals 1
.limit stack 2
.end method

.method public getDeptid()I
aload 0
getfield com/nd/android/u/contact/dataStructure/PhotoScreenCondition/saveStatus Lcom/nd/android/u/contact/dataStructure/PhotoScreenStatus;
ifnull L0
aload 0
getfield com/nd/android/u/contact/dataStructure/PhotoScreenCondition/saveStatus Lcom/nd/android/u/contact/dataStructure/PhotoScreenStatus;
getfield com/nd/android/u/contact/dataStructure/PhotoScreenStatus/deptid I
ifge L1
L0:
iconst_0
ireturn
L1:
aload 0
getfield com/nd/android/u/contact/dataStructure/PhotoScreenCondition/saveStatus Lcom/nd/android/u/contact/dataStructure/PhotoScreenStatus;
getfield com/nd/android/u/contact/dataStructure/PhotoScreenStatus/deptid I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getGender()I
aload 0
getfield com/nd/android/u/contact/dataStructure/PhotoScreenCondition/saveGender I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getNewGender()I
aload 0
getfield com/nd/android/u/contact/dataStructure/PhotoScreenCondition/newGender I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getNewOrder()I
aload 0
getfield com/nd/android/u/contact/dataStructure/PhotoScreenCondition/m_iNewOrder I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getNewStatus()Lcom/nd/android/u/contact/dataStructure/PhotoScreenStatus;
aload 0
getfield com/nd/android/u/contact/dataStructure/PhotoScreenCondition/newStatus Lcom/nd/android/u/contact/dataStructure/PhotoScreenStatus;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getNewStatusDeitid()I
aload 0
getfield com/nd/android/u/contact/dataStructure/PhotoScreenCondition/newStatus Lcom/nd/android/u/contact/dataStructure/PhotoScreenStatus;
ifnull L0
aload 0
getfield com/nd/android/u/contact/dataStructure/PhotoScreenCondition/newStatus Lcom/nd/android/u/contact/dataStructure/PhotoScreenStatus;
getfield com/nd/android/u/contact/dataStructure/PhotoScreenStatus/deptid I
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getNewStatusSelectedNodeName()Ljava/lang/CharSequence;
aload 0
getfield com/nd/android/u/contact/dataStructure/PhotoScreenCondition/newStatus Lcom/nd/android/u/contact/dataStructure/PhotoScreenStatus;
ifnull L0
aload 0
getfield com/nd/android/u/contact/dataStructure/PhotoScreenCondition/newStatus Lcom/nd/android/u/contact/dataStructure/PhotoScreenStatus;
getfield com/nd/android/u/contact/dataStructure/PhotoScreenStatus/selectedNodeName Ljava/lang/String;
areturn
L0:
ldc ""
areturn
.limit locals 1
.limit stack 1
.end method

.method public getNewStatusUnitid()I
aload 0
getfield com/nd/android/u/contact/dataStructure/PhotoScreenCondition/newStatus Lcom/nd/android/u/contact/dataStructure/PhotoScreenStatus;
ifnull L0
aload 0
getfield com/nd/android/u/contact/dataStructure/PhotoScreenCondition/newStatus Lcom/nd/android/u/contact/dataStructure/PhotoScreenStatus;
getfield com/nd/android/u/contact/dataStructure/PhotoScreenStatus/unitid I
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getOrder()I
aload 0
getfield com/nd/android/u/contact/dataStructure/PhotoScreenCondition/m_iSavedOrder I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getSelectedNodeName()Ljava/lang/String;
aload 0
getfield com/nd/android/u/contact/dataStructure/PhotoScreenCondition/saveStatus Lcom/nd/android/u/contact/dataStructure/PhotoScreenStatus;
ifnull L0
aload 0
getfield com/nd/android/u/contact/dataStructure/PhotoScreenCondition/saveStatus Lcom/nd/android/u/contact/dataStructure/PhotoScreenStatus;
getfield com/nd/android/u/contact/dataStructure/PhotoScreenStatus/selectedNodeName Ljava/lang/String;
ifnull L0
aload 0
getfield com/nd/android/u/contact/dataStructure/PhotoScreenCondition/saveStatus Lcom/nd/android/u/contact/dataStructure/PhotoScreenStatus;
getfield com/nd/android/u/contact/dataStructure/PhotoScreenStatus/selectedNodeName Ljava/lang/String;
areturn
L0:
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getBindUser()Lcom/product/android/business/login/BindUser; 0
invokevirtual com/product/android/business/login/BindUser/getUnitname()Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getUnitid()I
aload 0
getfield com/nd/android/u/contact/dataStructure/PhotoScreenCondition/saveStatus Lcom/nd/android/u/contact/dataStructure/PhotoScreenStatus;
ifnull L0
aload 0
getfield com/nd/android/u/contact/dataStructure/PhotoScreenCondition/saveStatus Lcom/nd/android/u/contact/dataStructure/PhotoScreenStatus;
getfield com/nd/android/u/contact/dataStructure/PhotoScreenStatus/unitid I
ireturn
L0:
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getBindUser()Lcom/product/android/business/login/BindUser; 0
astore 1
aload 1
ifnull L1
aload 1
invokevirtual com/product/android/business/login/BindUser/getUnitid()I
ireturn
L1:
iconst_0
ireturn
.limit locals 2
.limit stack 1
.end method

.method public init()V
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
ifnull L0
aload 0
getfield com/nd/android/u/contact/dataStructure/PhotoScreenCondition/saveStatus Lcom/nd/android/u/contact/dataStructure/PhotoScreenStatus;
ifnull L0
aload 0
getfield com/nd/android/u/contact/dataStructure/PhotoScreenCondition/saveStatus Lcom/nd/android/u/contact/dataStructure/PhotoScreenStatus;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getBindUser()Lcom/product/android/business/login/BindUser; 0
invokevirtual com/product/android/business/login/BindUser/getUnitid()I
putfield com/nd/android/u/contact/dataStructure/PhotoScreenStatus/unitid I
aload 0
getfield com/nd/android/u/contact/dataStructure/PhotoScreenCondition/saveStatus Lcom/nd/android/u/contact/dataStructure/PhotoScreenStatus;
iconst_0
putfield com/nd/android/u/contact/dataStructure/PhotoScreenStatus/deptid I
aload 0
getfield com/nd/android/u/contact/dataStructure/PhotoScreenCondition/saveStatus Lcom/nd/android/u/contact/dataStructure/PhotoScreenStatus;
aconst_null
putfield com/nd/android/u/contact/dataStructure/PhotoScreenStatus/selectedNodeName Ljava/lang/String;
L0:
aload 0
iconst_0
putfield com/nd/android/u/contact/dataStructure/PhotoScreenCondition/m_iSavedOrder I
aload 0
iconst_0
putfield com/nd/android/u/contact/dataStructure/PhotoScreenCondition/saveGender I
return
.limit locals 1
.limit stack 2
.end method

.method public initNewValue()V
aload 0
iconst_0
putfield com/nd/android/u/contact/dataStructure/PhotoScreenCondition/m_iNewOrder I
aload 0
iconst_m1
putfield com/nd/android/u/contact/dataStructure/PhotoScreenCondition/newGender I
aload 0
new com/nd/android/u/contact/dataStructure/PhotoScreenStatus
dup
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getBindUser()Lcom/product/android/business/login/BindUser; 0
invokevirtual com/product/android/business/login/BindUser/getUnitid()I
iconst_0
aconst_null
invokespecial com/nd/android/u/contact/dataStructure/PhotoScreenStatus/<init>(IILjava/lang/String;)V
putfield com/nd/android/u/contact/dataStructure/PhotoScreenCondition/saveStatus Lcom/nd/android/u/contact/dataStructure/PhotoScreenStatus;
aload 0
new com/nd/android/u/contact/dataStructure/PhotoScreenStatus
dup
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getBindUser()Lcom/product/android/business/login/BindUser; 0
invokevirtual com/product/android/business/login/BindUser/getUnitid()I
iconst_0
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getBindUser()Lcom/product/android/business/login/BindUser; 0
invokevirtual com/product/android/business/login/BindUser/getUnitname()Ljava/lang/String;
invokespecial com/nd/android/u/contact/dataStructure/PhotoScreenStatus/<init>(IILjava/lang/String;)V
putfield com/nd/android/u/contact/dataStructure/PhotoScreenCondition/newStatus Lcom/nd/android/u/contact/dataStructure/PhotoScreenStatus;
return
.limit locals 1
.limit stack 6
.end method

.method public isAnyConditionChanged()Z
aload 0
getfield com/nd/android/u/contact/dataStructure/PhotoScreenCondition/m_bOrderChanged Z
ifne L0
aload 0
getfield com/nd/android/u/contact/dataStructure/PhotoScreenCondition/genderChange Z
ifne L0
aload 0
getfield com/nd/android/u/contact/dataStructure/PhotoScreenCondition/unitConditionChanage Z
ifeq L1
L0:
iconst_1
ireturn
L1:
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public isDefaultCondition()Z
aload 0
getfield com/nd/android/u/contact/dataStructure/PhotoScreenCondition/m_iSavedOrder I
ifne L0
aload 0
getfield com/nd/android/u/contact/dataStructure/PhotoScreenCondition/saveGender I
ifne L0
aload 0
getfield com/nd/android/u/contact/dataStructure/PhotoScreenCondition/saveStatus Lcom/nd/android/u/contact/dataStructure/PhotoScreenStatus;
ifnull L1
aload 0
getfield com/nd/android/u/contact/dataStructure/PhotoScreenCondition/saveStatus Lcom/nd/android/u/contact/dataStructure/PhotoScreenStatus;
getfield com/nd/android/u/contact/dataStructure/PhotoScreenStatus/deptid I
ifne L0
L1:
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public isGenderChange()Z
aload 0
getfield com/nd/android/u/contact/dataStructure/PhotoScreenCondition/genderChange Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public isOrderChange()Z
aload 0
getfield com/nd/android/u/contact/dataStructure/PhotoScreenCondition/m_bOrderChanged Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public isReset()Z
aload 0
getfield com/nd/android/u/contact/dataStructure/PhotoScreenCondition/reset Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public isUnitConditionChanage()Z
aload 0
getfield com/nd/android/u/contact/dataStructure/PhotoScreenCondition/unitConditionChanage Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public reInitValue()V
aload 0
iconst_0
putfield com/nd/android/u/contact/dataStructure/PhotoScreenCondition/m_iSavedOrder I
aload 0
iconst_0
putfield com/nd/android/u/contact/dataStructure/PhotoScreenCondition/m_iNewOrder I
aload 0
iconst_0
putfield com/nd/android/u/contact/dataStructure/PhotoScreenCondition/m_bOrderChanged Z
aload 0
iconst_0
putfield com/nd/android/u/contact/dataStructure/PhotoScreenCondition/saveGender I
aload 0
iconst_0
putfield com/nd/android/u/contact/dataStructure/PhotoScreenCondition/newGender I
aload 0
iconst_0
putfield com/nd/android/u/contact/dataStructure/PhotoScreenCondition/genderChange Z
aload 0
iconst_0
putfield com/nd/android/u/contact/dataStructure/PhotoScreenCondition/unitConditionChanage Z
aload 0
aconst_null
putfield com/nd/android/u/contact/dataStructure/PhotoScreenCondition/saveStatus Lcom/nd/android/u/contact/dataStructure/PhotoScreenStatus;
aload 0
aconst_null
putfield com/nd/android/u/contact/dataStructure/PhotoScreenCondition/newStatus Lcom/nd/android/u/contact/dataStructure/PhotoScreenStatus;
aload 0
iconst_1
putfield com/nd/android/u/contact/dataStructure/PhotoScreenCondition/reset Z
return
.limit locals 1
.limit stack 2
.end method

.method public setGenderChange(Z)V
aload 0
iload 1
putfield com/nd/android/u/contact/dataStructure/PhotoScreenCondition/genderChange Z
return
.limit locals 2
.limit stack 2
.end method

.method public setNewGender(I)V
aload 0
iload 1
putfield com/nd/android/u/contact/dataStructure/PhotoScreenCondition/newGender I
return
.limit locals 2
.limit stack 2
.end method

.method public setNewOrder(I)V
aload 0
iload 1
putfield com/nd/android/u/contact/dataStructure/PhotoScreenCondition/m_iNewOrder I
return
.limit locals 2
.limit stack 2
.end method

.method public setNewStatus(Lcom/nd/android/u/contact/dataStructure/PhotoScreenStatus;)V
aload 0
aload 1
putfield com/nd/android/u/contact/dataStructure/PhotoScreenCondition/newStatus Lcom/nd/android/u/contact/dataStructure/PhotoScreenStatus;
return
.limit locals 2
.limit stack 2
.end method

.method public setOrderChanged(Z)V
aload 0
iload 1
putfield com/nd/android/u/contact/dataStructure/PhotoScreenCondition/m_bOrderChanged Z
return
.limit locals 2
.limit stack 2
.end method

.method public setReset(Z)V
aload 0
iload 1
putfield com/nd/android/u/contact/dataStructure/PhotoScreenCondition/reset Z
return
.limit locals 2
.limit stack 2
.end method

.method public setUnitConditionChanage(Z)V
aload 0
iload 1
putfield com/nd/android/u/contact/dataStructure/PhotoScreenCondition/unitConditionChanage Z
return
.limit locals 2
.limit stack 2
.end method

.method public setUnitParam(IILjava/lang/String;)V
aload 0
new com/nd/android/u/contact/dataStructure/PhotoScreenStatus
dup
iload 1
iload 2
aload 3
invokespecial com/nd/android/u/contact/dataStructure/PhotoScreenStatus/<init>(IILjava/lang/String;)V
putfield com/nd/android/u/contact/dataStructure/PhotoScreenCondition/newStatus Lcom/nd/android/u/contact/dataStructure/PhotoScreenStatus;
return
.limit locals 4
.limit stack 6
.end method

.method public validateionChanage()V
aload 0
getfield com/nd/android/u/contact/dataStructure/PhotoScreenCondition/m_iNewOrder I
aload 0
getfield com/nd/android/u/contact/dataStructure/PhotoScreenCondition/m_iSavedOrder I
if_icmpeq L0
aload 0
aload 0
getfield com/nd/android/u/contact/dataStructure/PhotoScreenCondition/m_iNewOrder I
putfield com/nd/android/u/contact/dataStructure/PhotoScreenCondition/m_iSavedOrder I
aload 0
iconst_1
putfield com/nd/android/u/contact/dataStructure/PhotoScreenCondition/m_bOrderChanged Z
L0:
aload 0
getfield com/nd/android/u/contact/dataStructure/PhotoScreenCondition/newGender I
aload 0
getfield com/nd/android/u/contact/dataStructure/PhotoScreenCondition/saveGender I
if_icmpeq L1
aload 0
aload 0
getfield com/nd/android/u/contact/dataStructure/PhotoScreenCondition/newGender I
putfield com/nd/android/u/contact/dataStructure/PhotoScreenCondition/saveGender I
aload 0
iconst_1
putfield com/nd/android/u/contact/dataStructure/PhotoScreenCondition/genderChange Z
L1:
aload 0
getfield com/nd/android/u/contact/dataStructure/PhotoScreenCondition/saveStatus Lcom/nd/android/u/contact/dataStructure/PhotoScreenStatus;
ifnull L2
aload 0
getfield com/nd/android/u/contact/dataStructure/PhotoScreenCondition/newStatus Lcom/nd/android/u/contact/dataStructure/PhotoScreenStatus;
ifnull L2
aload 0
getfield com/nd/android/u/contact/dataStructure/PhotoScreenCondition/saveStatus Lcom/nd/android/u/contact/dataStructure/PhotoScreenStatus;
getfield com/nd/android/u/contact/dataStructure/PhotoScreenStatus/deptid I
aload 0
getfield com/nd/android/u/contact/dataStructure/PhotoScreenCondition/newStatus Lcom/nd/android/u/contact/dataStructure/PhotoScreenStatus;
getfield com/nd/android/u/contact/dataStructure/PhotoScreenStatus/deptid I
if_icmpne L3
aload 0
getfield com/nd/android/u/contact/dataStructure/PhotoScreenCondition/saveStatus Lcom/nd/android/u/contact/dataStructure/PhotoScreenStatus;
getfield com/nd/android/u/contact/dataStructure/PhotoScreenStatus/unitid I
aload 0
getfield com/nd/android/u/contact/dataStructure/PhotoScreenCondition/newStatus Lcom/nd/android/u/contact/dataStructure/PhotoScreenStatus;
getfield com/nd/android/u/contact/dataStructure/PhotoScreenStatus/unitid I
if_icmpeq L2
L3:
aload 0
aload 0
getfield com/nd/android/u/contact/dataStructure/PhotoScreenCondition/newStatus Lcom/nd/android/u/contact/dataStructure/PhotoScreenStatus;
putfield com/nd/android/u/contact/dataStructure/PhotoScreenCondition/saveStatus Lcom/nd/android/u/contact/dataStructure/PhotoScreenStatus;
aload 0
iconst_1
putfield com/nd/android/u/contact/dataStructure/PhotoScreenCondition/unitConditionChanage Z
L4:
return
L2:
aload 0
getfield com/nd/android/u/contact/dataStructure/PhotoScreenCondition/saveStatus Lcom/nd/android/u/contact/dataStructure/PhotoScreenStatus;
ifnonnull L4
aload 0
getfield com/nd/android/u/contact/dataStructure/PhotoScreenCondition/newStatus Lcom/nd/android/u/contact/dataStructure/PhotoScreenStatus;
ifnull L4
aload 0
aload 0
getfield com/nd/android/u/contact/dataStructure/PhotoScreenCondition/newStatus Lcom/nd/android/u/contact/dataStructure/PhotoScreenStatus;
putfield com/nd/android/u/contact/dataStructure/PhotoScreenCondition/saveStatus Lcom/nd/android/u/contact/dataStructure/PhotoScreenStatus;
aload 0
iconst_1
putfield com/nd/android/u/contact/dataStructure/PhotoScreenCondition/unitConditionChanage Z
return
.limit locals 1
.limit stack 2
.end method
