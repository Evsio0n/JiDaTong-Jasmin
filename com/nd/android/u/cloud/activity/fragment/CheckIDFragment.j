.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/activity/fragment/CheckIDFragment
.super com/nd/android/u/cloud/activity/fragment/BaseFragment
.implements android/view/View$OnClickListener
.inner class static synthetic inner com/nd/android/u/cloud/activity/fragment/CheckIDFragment$1
.inner class private static CheckIdentityResult inner com/nd/android/u/cloud/activity/fragment/CheckIDFragment$CheckIdentityResult outer com/nd/android/u/cloud/activity/fragment/CheckIDFragment
.inner class private static final enum CheckIdentityResultType inner com/nd/android/u/cloud/activity/fragment/CheckIDFragment$CheckIdentityResultType outer com/nd/android/u/cloud/activity/fragment/CheckIDFragment
.inner class public static CheckIdentityTask inner com/nd/android/u/cloud/activity/fragment/CheckIDFragment$CheckIdentityTask outer com/nd/android/u/cloud/activity/fragment/CheckIDFragment
.inner class public static MultiUnitInfo inner com/nd/android/u/cloud/activity/fragment/CheckIDFragment$MultiUnitInfo outer com/nd/android/u/cloud/activity/fragment/CheckIDFragment
.inner class static final inner com/nd/android/u/cloud/activity/fragment/CheckIDFragment$MultiUnitInfo$1
.inner class public static PersonInfo inner com/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonInfo outer com/nd/android/u/cloud/activity/fragment/CheckIDFragment
.inner class static final inner com/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonInfo$1
.inner class public static PersonUnitsInfo inner com/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonUnitsInfo outer com/nd/android/u/cloud/activity/fragment/CheckIDFragment
.inner class static final inner com/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonUnitsInfo$1
.inner class public static SingleUnitInfo inner com/nd/android/u/cloud/activity/fragment/CheckIDFragment$SingleUnitInfo outer com/nd/android/u/cloud/activity/fragment/CheckIDFragment
.inner class static final inner com/nd/android/u/cloud/activity/fragment/CheckIDFragment$SingleUnitInfo$1

.field private 'mNameItem' Lcom/nd/android/u/cloud/view/widge/Item_Input;

.field private 'mPhoneItem' Lcom/nd/android/u/cloud/view/widge/Item_Input;

.method public <init>()V
aload 0
invokespecial com/nd/android/u/cloud/activity/fragment/BaseFragment/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static newInstance()Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment;
new com/nd/android/u/cloud/activity/fragment/CheckIDFragment
dup
invokespecial com/nd/android/u/cloud/activity/fragment/CheckIDFragment/<init>()V
areturn
.limit locals 0
.limit stack 2
.end method

.method private onClickNext()V
aload 0
invokevirtual com/nd/android/u/cloud/activity/fragment/CheckIDFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
astore 1
aload 0
getfield com/nd/android/u/cloud/activity/fragment/CheckIDFragment/mNameItem Lcom/nd/android/u/cloud/view/widge/Item_Input;
invokevirtual com/nd/android/u/cloud/view/widge/Item_Input/getValue()Ljava/lang/String;
astore 2
aload 2
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
aload 1
ldc_w 2131493997
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
return
L0:
aload 0
getfield com/nd/android/u/cloud/activity/fragment/CheckIDFragment/mPhoneItem Lcom/nd/android/u/cloud/view/widge/Item_Input;
invokevirtual com/nd/android/u/cloud/view/widge/Item_Input/getValue()Ljava/lang/String;
astore 3
aload 3
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L1
aload 1
ldc_w 2131493991
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
return
L1:
aload 3
invokestatic ims/utils/CommUtil/isMobile(Ljava/lang/String;)Z
ifne L2
aload 1
ldc_w 2131494008
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
return
L2:
new com/nd/android/u/cloud/activity/fragment/CheckIDFragment$CheckIdentityTask
dup
aload 1
invokespecial com/nd/android/u/cloud/activity/fragment/CheckIDFragment$CheckIdentityTask/<init>(Landroid/app/Activity;)V
iconst_3
anewarray java/lang/String
dup
iconst_0
aload 2
aastore
dup
iconst_1
aload 3
aastore
dup
iconst_2
ldc ""
aastore
invokevirtual com/nd/android/u/cloud/activity/fragment/CheckIDFragment$CheckIdentityTask/execute([Ljava/lang/Object;)Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;
pop
return
.limit locals 4
.limit stack 5
.end method

.method public static updateUserInfo(Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$SingleUnitInfo;)V
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
astore 1
aload 1
invokestatic com/nd/rj/common/login/LoginInterfaceManager/getOapLastLoginUser(Landroid/content/Context;)Lcom/nd/rj/common/login/entity/OapUser;
astore 2
aload 2
ifnull L0
aload 2
aload 0
invokevirtual com/nd/android/u/cloud/activity/fragment/CheckIDFragment$SingleUnitInfo/getUid()J
putfield com/nd/rj/common/login/entity/OapUser/oapUid J
aload 2
aload 0
invokevirtual com/nd/android/u/cloud/activity/fragment/CheckIDFragment$SingleUnitInfo/getUnitId()I
putfield com/nd/rj/common/login/entity/OapUser/oapUnitId I
aload 1
aload 2
invokestatic com/nd/rj/common/login/LoginInterfaceManager/saveOapUser(Landroid/content/Context;Lcom/nd/rj/common/login/entity/OapUser;)Z
pop
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
aload 1
invokestatic com/nd/rj/common/login/LoginInterfaceManager/getIUser(Landroid/content/Context;)Lcom/product/android/business/login/IGetUserInfo;
invokevirtual com/product/android/business/ApplicationVariable/setIUser(Lcom/product/android/business/login/IGetUserInfo;)V
L0:
return
.limit locals 3
.limit stack 3
.end method

.method protected initComponent(Landroid/view/View;)V
aload 0
aload 1
invokespecial com/nd/android/u/cloud/activity/fragment/BaseFragment/initComponent(Landroid/view/View;)V
aload 1
ldc_w 2131625332
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
astore 2
aload 0
aload 0
ldc_w 2131493982
aload 2
invokevirtual com/nd/android/u/cloud/activity/fragment/CheckIDFragment/getItemInput(ILandroid/widget/LinearLayout;)Lcom/nd/android/u/cloud/view/widge/Item_Input;
putfield com/nd/android/u/cloud/activity/fragment/CheckIDFragment/mNameItem Lcom/nd/android/u/cloud/view/widge/Item_Input;
aload 0
aload 0
ldc_w 2131493983
aload 2
invokevirtual com/nd/android/u/cloud/activity/fragment/CheckIDFragment/getItemInput(ILandroid/widget/LinearLayout;)Lcom/nd/android/u/cloud/view/widge/Item_Input;
putfield com/nd/android/u/cloud/activity/fragment/CheckIDFragment/mPhoneItem Lcom/nd/android/u/cloud/view/widge/Item_Input;
aload 1
ldc_w 2131625336
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
aload 0
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/cloud/activity/fragment/CheckIDFragment/mHeaderTitleTextView Landroid/widget/TextView;
aload 0
invokevirtual com/nd/android/u/cloud/activity/fragment/CheckIDFragment/getResources()Landroid/content/res/Resources;
ldc_w 2131493954
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
.limit locals 3
.limit stack 4
.end method

.method protected initEvent()V
aload 0
invokespecial com/nd/android/u/cloud/activity/fragment/BaseFragment/initEvent()V
aload 0
getfield com/nd/android/u/cloud/activity/fragment/CheckIDFragment/mHeaderLeftButton Landroid/widget/Button;
aload 0
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
.limit locals 1
.limit stack 2
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/nd/android/u/cloud/activity/fragment/BaseFragment/onActivityCreated(Landroid/os/Bundle;)V
aload 0
aload 0
invokevirtual com/nd/android/u/cloud/activity/fragment/CheckIDFragment/getView()Landroid/view/View;
invokevirtual com/nd/android/u/cloud/activity/fragment/CheckIDFragment/initComponent(Landroid/view/View;)V
aload 0
invokevirtual com/nd/android/u/cloud/activity/fragment/CheckIDFragment/initEvent()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
lookupswitch
2131624281 : L0
2131625336 : L1
default : L2
L2:
return
L1:
aload 0
invokespecial com/nd/android/u/cloud/activity/fragment/CheckIDFragment/onClickNext()V
return
L0:
aload 0
invokevirtual com/nd/android/u/cloud/activity/fragment/CheckIDFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
invokevirtual android/support/v4/app/FragmentActivity/finish()V
return
.limit locals 2
.limit stack 1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
aload 1
ldc_w 2130903333
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
areturn
.limit locals 4
.limit stack 3
.end method
