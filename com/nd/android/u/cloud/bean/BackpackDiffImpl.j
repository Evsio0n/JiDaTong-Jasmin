.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/bean/BackpackDiffImpl
.super java/lang/Object
.implements com/nd/android/backpacksystem/interfaces/InterfaceForDifference

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method private getClassList()Ljava/util/ArrayList;
.signature "()Ljava/util/ArrayList<Lcom/product/android/commonInterface/contact/OapUserSimple;>;"
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 1
getstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
iconst_1
sipush 10324
aload 1
invokevirtual com/product/android/commonInterface/CommonInterfaceManager/CommonInterfaceID(IILcom/product/android/commonInterface/BaseCommonStruct;)I
ifne L0
aload 1
getfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
ifnull L0
aload 1
getfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
instanceof java/util/ArrayList
ifeq L0
aload 1
getfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
checkcast java/util/ArrayList
areturn
L0:
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
areturn
.limit locals 2
.limit stack 4
.end method

.method public getCoinAndScore(Landroid/content/Context;)Lcom/nd/android/backpacksystem/data/ErpGrowUpInfo;
new com/nd/android/backpacksystem/data/ErpGrowUpInfo
dup
invokespecial com/nd/android/backpacksystem/data/ErpGrowUpInfo/<init>()V
astore 1
aload 1
iconst_0
putfield com/nd/android/backpacksystem/data/ErpGrowUpInfo/mNdCoin I
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 2
getstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
bipush 8
ldc_w 80009
aload 2
invokevirtual com/product/android/commonInterface/CommonInterfaceManager/CommonInterfaceID(IILcom/product/android/commonInterface/BaseCommonStruct;)I
ifne L0
aload 1
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
checkcast com/product/android/commonInterface/task/OapScore
invokevirtual com/product/android/commonInterface/task/OapScore/getTotalmoney()I
putfield com/nd/android/backpacksystem/data/ErpGrowUpInfo/mAvailableJF I
L0:
aload 1
areturn
.limit locals 3
.limit stack 4
.end method

.method public getCoinIcon()I
ldc_w 2130838968
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getDepartmentList()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/product/android/commonInterface/contact/OapUserSimple;>;"
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getType()I 0
invokestatic com/product/android/business/ApplicationVariable$IDENTITY/value2Enum(I)Lcom/product/android/business/ApplicationVariable$IDENTITY;
getstatic com/product/android/business/ApplicationVariable$IDENTITY/STAFF Lcom/product/android/business/ApplicationVariable$IDENTITY;
if_acmpne L0
invokestatic com/nd/android/backpacksystem/commonInterfaceImpl/BackpackCallOtherModel/getDepartmentUserSimpleList()Ljava/util/ArrayList;
areturn
L0:
aload 0
invokespecial com/nd/android/u/cloud/bean/BackpackDiffImpl/getClassList()Ljava/util/ArrayList;
areturn
.limit locals 1
.limit stack 2
.end method

.method public getSelectPersonForSendTabTitle()I
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getType()I 0
invokestatic com/product/android/business/ApplicationVariable$IDENTITY/value2Enum(I)Lcom/product/android/business/ApplicationVariable$IDENTITY;
getstatic com/product/android/business/ApplicationVariable$IDENTITY/STAFF Lcom/product/android/business/ApplicationVariable$IDENTITY;
if_acmpne L0
ldc_w 2131558457
ireturn
L0:
ldc_w 2131558456
ireturn
.limit locals 1
.limit stack 2
.end method
