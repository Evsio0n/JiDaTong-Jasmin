.bytecode 50.0
.class public synchronized com/nd/android/u/contact/adapter/XYFriendGroupAdapter
.super android/widget/BaseExpandableListAdapter
.implements com/nd/android/u/contact/adapter/ExpandableRefreshAdapter
.inner class inner com/nd/android/u/contact/adapter/XYFriendGroupAdapter$1

.field protected 'TAG' Ljava/lang/String;

.field private 'fans' Lcom/nd/android/u/contact/dataStructure/NewFans;

.field private 'friendGroupList' Ljava/util/List; signature "Ljava/util/List<Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup;>;"

.field private 'hasNewFans' Z

.field 'headerCliclistener' Landroid/view/View$OnClickListener;

.field private 'mContext' Landroid/content/Context;

.field private 'mHasNewJunior' Z

.field private 'mNewFansFace' Landroid/widget/ImageView;

.field private 'mNewFansName' Landroid/widget/TextView;

.field private 'mNoSeniorData' Z

.field private 'mRedPoint' Landroid/widget/ImageView;

.field private 'mSelectModule' Z

.field private 'mTvNewSeniorCount' Landroid/widget/TextView;

.field private 'mUid' J

.field private 'parendHandler' Landroid/os/Handler;

.method public <init>(Landroid/content/Context;)V
aload 0
invokespecial android/widget/BaseExpandableListAdapter/<init>()V
aload 0
iconst_0
putfield com/nd/android/u/contact/adapter/XYFriendGroupAdapter/mSelectModule Z
aload 0
ldc "XYFriendGroupAdapter"
putfield com/nd/android/u/contact/adapter/XYFriendGroupAdapter/TAG Ljava/lang/String;
aload 0
iconst_0
putfield com/nd/android/u/contact/adapter/XYFriendGroupAdapter/hasNewFans Z
aload 0
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
putfield com/nd/android/u/contact/adapter/XYFriendGroupAdapter/mUid J
aload 0
iconst_0
putfield com/nd/android/u/contact/adapter/XYFriendGroupAdapter/mHasNewJunior Z
aload 0
iconst_1
putfield com/nd/android/u/contact/adapter/XYFriendGroupAdapter/mNoSeniorData Z
aload 0
new com/nd/android/u/contact/adapter/XYFriendGroupAdapter$1
dup
aload 0
invokespecial com/nd/android/u/contact/adapter/XYFriendGroupAdapter$1/<init>(Lcom/nd/android/u/contact/adapter/XYFriendGroupAdapter;)V
putfield com/nd/android/u/contact/adapter/XYFriendGroupAdapter/headerCliclistener Landroid/view/View$OnClickListener;
aload 0
getfield com/nd/android/u/contact/adapter/XYFriendGroupAdapter/friendGroupList Ljava/util/List;
ifnull L0
aload 0
getfield com/nd/android/u/contact/adapter/XYFriendGroupAdapter/friendGroupList Ljava/util/List;
invokeinterface java/util/List/clear()V 0
L1:
aload 0
aload 1
putfield com/nd/android/u/contact/adapter/XYFriendGroupAdapter/mContext Landroid/content/Context;
aload 0
ldc com/nd/android/u/contact/dao/NewFansDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/NewFansDao
invokeinterface com/nd/android/u/contact/dao/NewFansDao/queryNewestFans()Lcom/nd/android/u/contact/dataStructure/NewFans; 0
putfield com/nd/android/u/contact/adapter/XYFriendGroupAdapter/fans Lcom/nd/android/u/contact/dataStructure/NewFans;
aload 0
getfield com/nd/android/u/contact/adapter/XYFriendGroupAdapter/fans Lcom/nd/android/u/contact/dataStructure/NewFans;
ifnull L2
aload 0
iconst_1
putfield com/nd/android/u/contact/adapter/XYFriendGroupAdapter/hasNewFans Z
L2:
return
L0:
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/contact/adapter/XYFriendGroupAdapter/friendGroupList Ljava/util/List;
goto L1
.limit locals 2
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/android/u/contact/adapter/XYFriendGroupAdapter;)Landroid/content/Context;
aload 0
getfield com/nd/android/u/contact/adapter/XYFriendGroupAdapter/mContext Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/android/u/contact/adapter/XYFriendGroupAdapter;)Z
aload 0
getfield com/nd/android/u/contact/adapter/XYFriendGroupAdapter/hasNewFans Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$102(Lcom/nd/android/u/contact/adapter/XYFriendGroupAdapter;Z)Z
aload 0
iload 1
putfield com/nd/android/u/contact/adapter/XYFriendGroupAdapter/hasNewFans Z
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$200(Lcom/nd/android/u/contact/adapter/XYFriendGroupAdapter;)Landroid/widget/ImageView;
aload 0
getfield com/nd/android/u/contact/adapter/XYFriendGroupAdapter/mRedPoint Landroid/widget/ImageView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/nd/android/u/contact/adapter/XYFriendGroupAdapter;)Landroid/widget/ImageView;
aload 0
getfield com/nd/android/u/contact/adapter/XYFriendGroupAdapter/mNewFansFace Landroid/widget/ImageView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$400(Lcom/nd/android/u/contact/adapter/XYFriendGroupAdapter;)Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/contact/adapter/XYFriendGroupAdapter/mNewFansName Landroid/widget/TextView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$500(Lcom/nd/android/u/contact/adapter/XYFriendGroupAdapter;)J
aload 0
getfield com/nd/android/u/contact/adapter/XYFriendGroupAdapter/mUid J
lreturn
.limit locals 1
.limit stack 2
.end method

.method static synthetic access$600(Lcom/nd/android/u/contact/adapter/XYFriendGroupAdapter;)Z
aload 0
getfield com/nd/android/u/contact/adapter/XYFriendGroupAdapter/mHasNewJunior Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$700(Lcom/nd/android/u/contact/adapter/XYFriendGroupAdapter;)Z
aload 0
getfield com/nd/android/u/contact/adapter/XYFriendGroupAdapter/mNoSeniorData Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public areAllItemsEnabled()Z
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public final get(I)Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup;
aload 0
getfield com/nd/android/u/contact/adapter/XYFriendGroupAdapter/friendGroupList Ljava/util/List;
ifnonnull L0
L1:
aconst_null
areturn
L0:
aload 0
getfield com/nd/android/u/contact/adapter/XYFriendGroupAdapter/friendGroupList Ljava/util/List;
invokeinterface java/util/List/size()I 0
iload 1
if_icmple L1
aload 0
getfield com/nd/android/u/contact/adapter/XYFriendGroupAdapter/friendGroupList Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup
areturn
.limit locals 2
.limit stack 2
.end method

.method public final getChild(II)Ljava/lang/Object;
aload 0
getfield com/nd/android/u/contact/adapter/XYFriendGroupAdapter/friendGroupList Ljava/util/List;
ifnull L0
iload 2
iconst_1
isub
aload 0
getfield com/nd/android/u/contact/adapter/XYFriendGroupAdapter/friendGroupList Ljava/util/List;
invokeinterface java/util/List/size()I 0
if_icmplt L1
L0:
aconst_null
areturn
L1:
aload 0
getfield com/nd/android/u/contact/adapter/XYFriendGroupAdapter/friendGroupList Ljava/util/List;
iload 2
iconst_1
isub
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
ifnonnull L2
aconst_null
areturn
L2:
aload 0
getfield com/nd/android/u/contact/adapter/XYFriendGroupAdapter/friendGroupList Ljava/util/List;
iload 2
iconst_1
isub
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup/getOapFriendGroup()Lcom/nd/android/u/contact/dataStructure/OapFriendGroup; 0
invokevirtual com/nd/android/u/contact/dataStructure/OapFriendGroup/getFidList()Ljava/util/List;
invokeinterface java/util/List/size()I 0
iload 1
if_icmpgt L3
aconst_null
areturn
L3:
aload 0
getfield com/nd/android/u/contact/adapter/XYFriendGroupAdapter/friendGroupList Ljava/util/List;
iload 2
iconst_1
isub
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup/getOapFriendGroup()Lcom/nd/android/u/contact/dataStructure/OapFriendGroup; 0
invokevirtual com/nd/android/u/contact/dataStructure/OapFriendGroup/getFidList()Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
areturn
.limit locals 3
.limit stack 3
.end method

.method public final getChildId(II)J
iload 2
i2l
lreturn
.limit locals 3
.limit stack 2
.end method

.method public final getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
aload 4
astore 5
aload 4
ifnonnull L0
new com/nd/android/u/contact/view/XYFriendView
dup
aload 0
getfield com/nd/android/u/contact/adapter/XYFriendGroupAdapter/mContext Landroid/content/Context;
aconst_null
aload 0
getfield com/nd/android/u/contact/adapter/XYFriendGroupAdapter/mSelectModule Z
aload 0
getfield com/nd/android/u/contact/adapter/XYFriendGroupAdapter/parendHandler Landroid/os/Handler;
invokespecial com/nd/android/u/contact/view/XYFriendView/<init>(Landroid/content/Context;Lcom/product/android/business/headImage/ProfileHeadImageCacheCallback;ZLandroid/os/Handler;)V
astore 5
L0:
aload 0
getfield com/nd/android/u/contact/adapter/XYFriendGroupAdapter/friendGroupList Ljava/util/List;
iload 1
iconst_1
isub
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup/getOapFriendGroup()Lcom/nd/android/u/contact/dataStructure/OapFriendGroup; 0
invokevirtual com/nd/android/u/contact/dataStructure/OapFriendGroup/getFidList()Ljava/util/List;
invokeinterface java/util/List/size()I 0
iload 2
if_icmpgt L1
aload 5
areturn
L1:
aload 0
getfield com/nd/android/u/contact/adapter/XYFriendGroupAdapter/friendGroupList Ljava/util/List;
iload 1
iconst_1
isub
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup/getOapFriendGroup()Lcom/nd/android/u/contact/dataStructure/OapFriendGroup; 0
invokevirtual com/nd/android/u/contact/dataStructure/OapFriendGroup/getFidList()Ljava/util/List;
iload 2
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast java/lang/Long
invokevirtual java/lang/Long/longValue()J
lstore 6
aload 0
getfield com/nd/android/u/contact/adapter/XYFriendGroupAdapter/friendGroupList Ljava/util/List;
iload 1
iconst_1
isub
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup/getOapFriendGroup()Lcom/nd/android/u/contact/dataStructure/OapFriendGroup; 0
invokevirtual com/nd/android/u/contact/dataStructure/OapFriendGroup/getFgid()I
istore 1
aload 5
checkcast com/nd/android/u/contact/view/XYFriendView
astore 4
aload 5
lload 6
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/view/View/setTag(Ljava/lang/Object;)V
aload 4
lload 6
iload 1
iconst_1
invokevirtual com/nd/android/u/contact/view/XYFriendView/initComponentValue(JIZ)V
aload 5
areturn
.limit locals 8
.limit stack 6
.end method

.method public final getChildrenCount(I)I
aload 0
getfield com/nd/android/u/contact/adapter/XYFriendGroupAdapter/friendGroupList Ljava/util/List;
ifnull L0
iload 1
ifgt L1
L0:
iconst_0
ireturn
L1:
aload 0
getfield com/nd/android/u/contact/adapter/XYFriendGroupAdapter/friendGroupList Ljava/util/List;
iload 1
iconst_1
isub
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup/getOapFriendGroup()Lcom/nd/android/u/contact/dataStructure/OapFriendGroup; 0
invokevirtual com/nd/android/u/contact/dataStructure/OapFriendGroup/getFidList()Ljava/util/List;
ifnonnull L2
iconst_0
ireturn
L2:
aload 0
getfield com/nd/android/u/contact/adapter/XYFriendGroupAdapter/friendGroupList Ljava/util/List;
iload 1
iconst_1
isub
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup/getOapFriendGroup()Lcom/nd/android/u/contact/dataStructure/OapFriendGroup; 0
invokevirtual com/nd/android/u/contact/dataStructure/OapFriendGroup/getFidList()Ljava/util/List;
invokeinterface java/util/List/size()I 0
ireturn
.limit locals 2
.limit stack 3
.end method

.method public final getGroup(I)Ljava/lang/Object;
aload 0
getfield com/nd/android/u/contact/adapter/XYFriendGroupAdapter/friendGroupList Ljava/util/List;
ifnonnull L0
L1:
aconst_null
areturn
L0:
aload 0
getfield com/nd/android/u/contact/adapter/XYFriendGroupAdapter/friendGroupList Ljava/util/List;
invokeinterface java/util/List/size()I 0
iload 1
iconst_1
isub
if_icmpge L1
aload 0
getfield com/nd/android/u/contact/adapter/XYFriendGroupAdapter/friendGroupList Ljava/util/List;
iload 1
iconst_1
isub
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
areturn
.limit locals 2
.limit stack 3
.end method

.method public final getGroupCount()I
aload 0
getfield com/nd/android/u/contact/adapter/XYFriendGroupAdapter/friendGroupList Ljava/util/List;
ifnonnull L0
iconst_0
ireturn
L0:
aload 0
getfield com/nd/android/u/contact/adapter/XYFriendGroupAdapter/friendGroupList Ljava/util/List;
invokeinterface java/util/List/size()I 0
iconst_1
iadd
ireturn
.limit locals 1
.limit stack 2
.end method

.method public final getGroupId(I)J
iload 1
i2l
lreturn
.limit locals 2
.limit stack 2
.end method

.method public final getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
iload 1
ifne L0
aload 0
getfield com/nd/android/u/contact/adapter/XYFriendGroupAdapter/mContext Landroid/content/Context;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
getstatic com/nd/android/u/contact/R$layout/contact_main_list_head I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 3
aload 3
iconst_1
invokevirtual android/view/View/setFocusableInTouchMode(Z)V
aload 3
getstatic com/nd/android/u/contact/R$id/rl_group_itme_layout I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
astore 4
aload 3
getstatic com/nd/android/u/contact/R$id/rl_psp_itme_layout I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
astore 5
aload 3
getstatic com/nd/android/u/contact/R$id/rl_myfans_itme_layout I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
astore 6
aload 3
getstatic com/nd/android/u/contact/R$id/rl_school_itme_layout I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
astore 7
aload 3
getstatic com/nd/android/u/contact/R$id/rl_senior_itme_layout I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
astore 8
aload 3
getstatic com/nd/android/u/contact/R$id/tvMySenior I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
astore 9
aload 3
getstatic com/nd/android/u/contact/R$id/ivMySeniorIcon I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
astore 10
aload 0
aload 3
getstatic com/nd/android/u/contact/R$id/im_my_new_fans_face I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/contact/adapter/XYFriendGroupAdapter/mNewFansFace Landroid/widget/ImageView;
aload 0
aload 3
getstatic com/nd/android/u/contact/R$id/tv_my_new_fans_name I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/adapter/XYFriendGroupAdapter/mNewFansName Landroid/widget/TextView;
aload 0
aload 3
getstatic com/nd/android/u/contact/R$id/new_fans_red_point I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/contact/adapter/XYFriendGroupAdapter/mRedPoint Landroid/widget/ImageView;
aload 0
aload 3
getstatic com/nd/android/u/contact/R$id/tv_new_senior_count I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/adapter/XYFriendGroupAdapter/mTvNewSeniorCount Landroid/widget/TextView;
aload 4
aload 0
getfield com/nd/android/u/contact/adapter/XYFriendGroupAdapter/headerCliclistener Landroid/view/View$OnClickListener;
invokevirtual android/widget/RelativeLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 5
aload 0
getfield com/nd/android/u/contact/adapter/XYFriendGroupAdapter/headerCliclistener Landroid/view/View$OnClickListener;
invokevirtual android/widget/RelativeLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 6
aload 0
getfield com/nd/android/u/contact/adapter/XYFriendGroupAdapter/headerCliclistener Landroid/view/View$OnClickListener;
invokevirtual android/widget/RelativeLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 7
aload 0
getfield com/nd/android/u/contact/adapter/XYFriendGroupAdapter/headerCliclistener Landroid/view/View$OnClickListener;
invokevirtual android/widget/RelativeLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
getstatic com/product/android/business/config/Configuration/CONTACT_NEED_NEW_JUNIOR Z
ifeq L1
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getCurrentUserInfo()Lcom/product/android/business/bean/UserInfo;
invokevirtual com/product/android/business/bean/UserInfo/getIdentity()I
invokestatic com/product/android/business/ApplicationVariable$IDENTITY/value2Enum(I)Lcom/product/android/business/ApplicationVariable$IDENTITY;
getstatic com/product/android/business/ApplicationVariable$IDENTITY/STUDENT Lcom/product/android/business/ApplicationVariable$IDENTITY;
if_acmpne L2
aload 8
iconst_0
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
aload 8
aload 0
getfield com/nd/android/u/contact/adapter/XYFriendGroupAdapter/headerCliclistener Landroid/view/View$OnClickListener;
invokevirtual android/widget/RelativeLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
getstatic com/nd/android/u/contact/business/ContactGlobalVariable/gIsSenior Z
ifeq L3
aload 10
getstatic com/nd/android/u/contact/R$drawable/contact_main_list_senior I
invokevirtual android/widget/ImageView/setImageResource(I)V
aload 9
getstatic com/nd/android/u/contact/R$string/yx_my_junior I
invokevirtual android/widget/TextView/setText(I)V
L4:
aload 0
getfield com/nd/android/u/contact/adapter/XYFriendGroupAdapter/mHasNewJunior Z
ifeq L5
aload 0
getfield com/nd/android/u/contact/adapter/XYFriendGroupAdapter/mTvNewSeniorCount Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
L6:
aload 0
getfield com/nd/android/u/contact/adapter/XYFriendGroupAdapter/hasNewFans Z
ifne L7
aload 0
getfield com/nd/android/u/contact/adapter/XYFriendGroupAdapter/mNewFansFace Landroid/widget/ImageView;
bipush 8
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/adapter/XYFriendGroupAdapter/mRedPoint Landroid/widget/ImageView;
bipush 8
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/adapter/XYFriendGroupAdapter/mNewFansName Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
aload 3
areturn
L3:
aload 10
getstatic com/nd/android/u/contact/R$drawable/contact_main_list_junior I
invokevirtual android/widget/ImageView/setImageResource(I)V
aload 9
getstatic com/nd/android/u/contact/R$string/yx_my_senior I
invokevirtual android/widget/TextView/setText(I)V
goto L4
L5:
aload 0
getfield com/nd/android/u/contact/adapter/XYFriendGroupAdapter/mTvNewSeniorCount Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
goto L6
L2:
aload 8
bipush 8
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
goto L6
L1:
aload 8
bipush 8
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
goto L6
L7:
invokestatic com/nd/android/u/contact/cache/UserCacheManager/getInstance()Lcom/nd/android/u/contact/cache/UserCacheManager;
aload 0
getfield com/nd/android/u/contact/adapter/XYFriendGroupAdapter/fans Lcom/nd/android/u/contact/dataStructure/NewFans;
invokevirtual com/nd/android/u/contact/dataStructure/NewFans/getFid()J
invokevirtual com/nd/android/u/contact/cache/UserCacheManager/getUser(J)Lcom/product/android/commonInterface/contact/OapUser;
astore 4
aload 0
getfield com/nd/android/u/contact/adapter/XYFriendGroupAdapter/mNewFansFace Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/adapter/XYFriendGroupAdapter/mNewFansName Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/adapter/XYFriendGroupAdapter/mNewFansName Landroid/widget/TextView;
aload 4
invokevirtual com/product/android/commonInterface/contact/OapUser/getUserName()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/contact/adapter/XYFriendGroupAdapter/fans Lcom/nd/android/u/contact/dataStructure/NewFans;
invokevirtual com/nd/android/u/contact/dataStructure/NewFans/getFid()J
iconst_3
aload 0
getfield com/nd/android/u/contact/adapter/XYFriendGroupAdapter/mNewFansFace Landroid/widget/ImageView;
getstatic com/product/android/business/headImage/HeadImageLoader/mFaceCircleDisplayOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
invokestatic com/product/android/business/headImage/HeadImageLoader/displayCircleImage(JBLandroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V
aload 3
areturn
L0:
aload 0
getfield com/nd/android/u/contact/adapter/XYFriendGroupAdapter/friendGroupList Ljava/util/List;
iload 1
iconst_1
isub
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup
astore 5
aload 3
ifnull L8
aload 3
astore 4
aload 3
instanceof android/widget/LinearLayout
ifeq L9
L8:
new com/nd/android/u/contact/view/XYFriendGroupView
dup
aload 0
getfield com/nd/android/u/contact/adapter/XYFriendGroupAdapter/mContext Landroid/content/Context;
invokespecial com/nd/android/u/contact/view/XYFriendGroupView/<init>(Landroid/content/Context;)V
astore 4
L9:
aload 4
checkcast com/nd/android/u/contact/view/XYFriendGroupView
astore 3
aload 3
aload 5
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup/getOapFriendGroup()Lcom/nd/android/u/contact/dataStructure/OapFriendGroup; 0
invokevirtual com/nd/android/u/contact/view/XYFriendGroupView/initComponentValue(Lcom/nd/android/u/contact/dataStructure/OapFriendGroup;)V
aload 3
iload 2
invokestatic java/lang/Boolean/valueOf(Z)Ljava/lang/Boolean;
invokevirtual com/nd/android/u/contact/view/XYFriendGroupView/setArrowBackground(Ljava/lang/Boolean;)V
aload 4
aload 5
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup/getOapFriendGroup()Lcom/nd/android/u/contact/dataStructure/OapFriendGroup; 0
invokevirtual android/view/View/setTag(Ljava/lang/Object;)V
aload 4
areturn
.limit locals 11
.limit stack 5
.end method

.method public final getTextView(Landroid/content/Context;)Landroid/widget/TextView;
new android/widget/TextView
dup
aload 1
invokespecial android/widget/TextView/<init>(Landroid/content/Context;)V
astore 1
aload 1
bipush 19
invokevirtual android/widget/TextView/setGravity(I)V
aload 1
areturn
.limit locals 2
.limit stack 3
.end method

.method public final hasStableIds()Z
iconst_1
ireturn
.limit locals 1
.limit stack 1
.end method

.method public final isChildSelectable(II)Z
iconst_1
ireturn
.limit locals 3
.limit stack 1
.end method

.method public final isSelectModule()Z
aload 0
getfield com/nd/android/u/contact/adapter/XYFriendGroupAdapter/mSelectModule Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public final refresh()V
aload 0
invokevirtual com/nd/android/u/contact/adapter/XYFriendGroupAdapter/notifyDataSetChanged()V
return
.limit locals 1
.limit stack 1
.end method

.method public final refresh(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup;>;)V"
aload 0
aload 1
invokevirtual com/nd/android/u/contact/adapter/XYFriendGroupAdapter/setFriendGroupList(Ljava/util/List;)V
aload 0
invokevirtual com/nd/android/u/contact/adapter/XYFriendGroupAdapter/notifyDataSetChanged()V
return
.limit locals 2
.limit stack 2
.end method

.method public final setFriendGroupList(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup;>;)V"
aload 0
getfield com/nd/android/u/contact/adapter/XYFriendGroupAdapter/friendGroupList Ljava/util/List;
ifnull L0
aload 0
getfield com/nd/android/u/contact/adapter/XYFriendGroupAdapter/friendGroupList Ljava/util/List;
invokeinterface java/util/List/clear()V 0
aload 0
getfield com/nd/android/u/contact/adapter/XYFriendGroupAdapter/friendGroupList Ljava/util/List;
aload 1
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
return
L0:
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/contact/adapter/XYFriendGroupAdapter/friendGroupList Ljava/util/List;
return
.limit locals 2
.limit stack 3
.end method

.method public final setHandler(Landroid/os/Handler;)V
aload 0
aload 1
putfield com/nd/android/u/contact/adapter/XYFriendGroupAdapter/parendHandler Landroid/os/Handler;
return
.limit locals 2
.limit stack 2
.end method

.method public setNewJuniorApply(Z)V
aload 0
iload 1
putfield com/nd/android/u/contact/adapter/XYFriendGroupAdapter/mHasNewJunior Z
aload 0
invokevirtual com/nd/android/u/contact/adapter/XYFriendGroupAdapter/notifyDataSetChanged()V
return
.limit locals 2
.limit stack 2
.end method

.method public setNoSeniorData(Z)V
aload 0
iload 1
putfield com/nd/android/u/contact/adapter/XYFriendGroupAdapter/mNoSeniorData Z
return
.limit locals 2
.limit stack 2
.end method

.method public final setSelectModule(Z)V
aload 0
iload 1
putfield com/nd/android/u/contact/adapter/XYFriendGroupAdapter/mSelectModule Z
return
.limit locals 2
.limit stack 2
.end method

.method public showNewFansFace()V
aload 0
ldc com/nd/android/u/contact/dao/NewFansDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/NewFansDao
invokeinterface com/nd/android/u/contact/dao/NewFansDao/queryNewestFans()Lcom/nd/android/u/contact/dataStructure/NewFans; 0
putfield com/nd/android/u/contact/adapter/XYFriendGroupAdapter/fans Lcom/nd/android/u/contact/dataStructure/NewFans;
aload 0
getfield com/nd/android/u/contact/adapter/XYFriendGroupAdapter/fans Lcom/nd/android/u/contact/dataStructure/NewFans;
ifnull L0
aload 0
iconst_1
putfield com/nd/android/u/contact/adapter/XYFriendGroupAdapter/hasNewFans Z
L1:
aload 0
invokevirtual com/nd/android/u/contact/adapter/XYFriendGroupAdapter/notifyDataSetChanged()V
return
L0:
aload 0
iconst_0
putfield com/nd/android/u/contact/adapter/XYFriendGroupAdapter/hasNewFans Z
goto L1
.limit locals 1
.limit stack 2
.end method
