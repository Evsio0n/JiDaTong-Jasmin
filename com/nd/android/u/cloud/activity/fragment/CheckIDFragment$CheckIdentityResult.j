.bytecode 50.0
.class synchronized com/nd/android/u/cloud/activity/fragment/CheckIDFragment$CheckIdentityResult
.super java/lang/Object
.implements com/nd/rj/common/interfaces/VerifyObject
.inner class private static CheckIdentityResult inner com/nd/android/u/cloud/activity/fragment/CheckIDFragment$CheckIdentityResult outer com/nd/android/u/cloud/activity/fragment/CheckIDFragment

.field 'mOtherInfo' Ljava/lang/Object;

.field 'mType' Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$CheckIdentityResultType;

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
getstatic com/nd/android/u/cloud/activity/fragment/CheckIDFragment$CheckIdentityResultType/INVALID Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$CheckIdentityResultType;
putfield com/nd/android/u/cloud/activity/fragment/CheckIDFragment$CheckIdentityResult/mType Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$CheckIdentityResultType;
return
.limit locals 1
.limit stack 2
.end method

.method synthetic <init>(Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$1;)V
aload 0
invokespecial com/nd/android/u/cloud/activity/fragment/CheckIDFragment$CheckIdentityResult/<init>()V
return
.limit locals 2
.limit stack 1
.end method

.method private isObjectValidHelper()Z
aload 0
getfield com/nd/android/u/cloud/activity/fragment/CheckIDFragment$CheckIdentityResult/mOtherInfo Ljava/lang/Object;
checkcast com/nd/rj/common/interfaces/VerifyObject
invokeinterface com/nd/rj/common/interfaces/VerifyObject/isObjectValid()Z 0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public isObjectValid()Z
getstatic com/nd/android/u/cloud/activity/fragment/CheckIDFragment$1/$SwitchMap$com$nd$android$u$cloud$activity$fragment$CheckIDFragment$CheckIdentityResultType [I
aload 0
getfield com/nd/android/u/cloud/activity/fragment/CheckIDFragment$CheckIdentityResult/mType Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$CheckIdentityResultType;
invokevirtual com/nd/android/u/cloud/activity/fragment/CheckIDFragment$CheckIdentityResultType/ordinal()I
iaload
tableswitch 1
L0
L1
L2
L3
default : L4
L4:
iconst_0
ireturn
L0:
aload 0
getfield com/nd/android/u/cloud/activity/fragment/CheckIDFragment$CheckIdentityResult/mOtherInfo Ljava/lang/Object;
instanceof com/nd/android/u/cloud/activity/fragment/CheckIDFragment$SingleUnitInfo
ifeq L4
aload 0
invokespecial com/nd/android/u/cloud/activity/fragment/CheckIDFragment$CheckIdentityResult/isObjectValidHelper()Z
ireturn
L1:
aload 0
getfield com/nd/android/u/cloud/activity/fragment/CheckIDFragment$CheckIdentityResult/mOtherInfo Ljava/lang/Object;
instanceof com/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonUnitsInfo
ifeq L4
aload 0
invokespecial com/nd/android/u/cloud/activity/fragment/CheckIDFragment$CheckIdentityResult/isObjectValidHelper()Z
ireturn
L2:
aload 0
getfield com/nd/android/u/cloud/activity/fragment/CheckIDFragment$CheckIdentityResult/mOtherInfo Ljava/lang/Object;
instanceof com/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonInfo
ifeq L4
aload 0
invokespecial com/nd/android/u/cloud/activity/fragment/CheckIDFragment$CheckIdentityResult/isObjectValidHelper()Z
ireturn
L3:
aload 0
getfield com/nd/android/u/cloud/activity/fragment/CheckIDFragment$CheckIdentityResult/mOtherInfo Ljava/lang/Object;
instanceof com/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonInfo
ifeq L4
aload 0
invokespecial com/nd/android/u/cloud/activity/fragment/CheckIDFragment$CheckIdentityResult/isObjectValidHelper()Z
ireturn
.limit locals 1
.limit stack 2
.end method
