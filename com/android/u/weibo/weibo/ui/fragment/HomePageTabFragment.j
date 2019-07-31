.bytecode 50.0
.class public synchronized com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment
.super android/support/v4/app/Fragment
.inner class public HomePageType inner com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment$HomePageType outer com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment

.field private 'albumView' Lcom/android/u/weibo/weibo/ui/widget/tabview/AlbumView;

.field private 'backpackView' Lcom/android/u/weibo/weibo/ui/widget/tabview/BackpackView;

.field private 'blackListView' Lcom/android/u/weibo/weibo/ui/widget/tabview/BlackListView;

.field private 'fansView' Lcom/android/u/weibo/weibo/ui/widget/tabview/FansView;

.field private 'followView' Lcom/android/u/weibo/weibo/ui/widget/tabview/FollowView;

.field private 'hiddenLoveView' Lcom/android/u/weibo/weibo/ui/widget/tabview/HiddenLoveView;

.field private 'lotHistoryView' Lcom/android/u/weibo/weibo/ui/widget/tabview/LotHistoryView;

.field private 'mContext' Landroid/app/Activity;

.field private 'mPageType' I

.field private 'mUserWeiboInfo' Lcom/android/u/weibo/weibo/business/bean/UserPageInfo;

.field private 'personalInfoView' Lcom/android/u/weibo/weibo/ui/widget/tabview/PersonalInfoView;

.field private 'personalityTagView' Lcom/android/u/weibo/weibo/ui/widget/tabview/PersonalityTagView;

.field private 'sendFlowerView' Lcom/android/u/weibo/weibo/ui/widget/tabview/SendFlowerView;

.field private 'uapid' J

.field private 'uid' J

.field private 'viewList' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Lcom/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase;>;"

.method public <init>()V
aload 0
invokespecial android/support/v4/app/Fragment/<init>()V
aload 0
iconst_0
putfield com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment/mPageType I
return
.limit locals 1
.limit stack 2
.end method

.method public static getInstance(JJILcom/android/u/weibo/weibo/business/bean/UserPageInfo;)Lcom/android/u/weibo/weibo/ui/fragment/HomePageTabFragment;
new com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment
dup
invokespecial com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment/<init>()V
astore 6
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 7
aload 7
ldc "oapid"
lload 0
invokevirtual android/os/Bundle/putLong(Ljava/lang/String;J)V
aload 7
ldc "uapid"
lload 2
invokevirtual android/os/Bundle/putLong(Ljava/lang/String;J)V
aload 7
ldc "PAGE_TYPE"
iload 4
invokevirtual android/os/Bundle/putInt(Ljava/lang/String;I)V
aload 7
ldc "user"
aload 5
invokevirtual android/os/Bundle/putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V
aload 6
aload 7
invokevirtual com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment/setArguments(Landroid/os/Bundle;)V
aload 6
areturn
.limit locals 8
.limit stack 4
.end method

.method public clearDatas()V
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment/viewList Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/iterator()Ljava/util/Iterator;
astore 1
L0:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase
astore 2
aload 2
invokevirtual com/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase/clearData()V
aload 2
aload 2
invokevirtual com/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase/getTitle()Ljava/lang/String;
invokevirtual com/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase/updateTitle(Ljava/lang/String;)V
aload 2
invokevirtual com/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase/updateView()V
goto L0
L1:
return
.limit locals 3
.limit stack 2
.end method

.method public onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial android/support/v4/app/Fragment/onCreate(Landroid/os/Bundle;)V
aload 0
invokevirtual com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment/getArguments()Landroid/os/Bundle;
astore 1
aload 1
ifnull L0
aload 0
aload 1
ldc "PAGE_TYPE"
invokevirtual android/os/Bundle/getInt(Ljava/lang/String;)I
putfield com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment/mPageType I
aload 0
aload 1
ldc "oapid"
invokevirtual android/os/Bundle/getLong(Ljava/lang/String;)J
putfield com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment/uid J
aload 0
aload 1
ldc "uapid"
invokevirtual android/os/Bundle/getLong(Ljava/lang/String;)J
putfield com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment/uapid J
aload 0
aload 1
ldc "user"
invokevirtual android/os/Bundle/getSerializable(Ljava/lang/String;)Ljava/io/Serializable;
checkcast com/android/u/weibo/weibo/business/bean/UserPageInfo
putfield com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment/mUserWeiboInfo Lcom/android/u/weibo/weibo/business/bean/UserPageInfo;
L0:
return
.limit locals 2
.limit stack 3
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.annotation invisible Landroid/annotation/SuppressLint;
value [s = "InflateParams" 
.end annotation
aload 0
aload 0
invokevirtual com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
putfield com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment/mContext Landroid/app/Activity;
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment/mContext Landroid/app/Activity;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
getstatic com/android/u/weibo/R$layout/scroll I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 1
aload 1
getstatic com/android/u/weibo/R$id/root I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
astore 2
new android/view/ViewGroup$LayoutParams
dup
bipush -2
bipush -2
invokespecial android/view/ViewGroup$LayoutParams/<init>(II)V
astore 3
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment/viewList Ljava/util/ArrayList;
aload 0
new com/android/u/weibo/weibo/ui/widget/tabview/FollowView
dup
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment/mContext Landroid/app/Activity;
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment/uid J
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment/mUserWeiboInfo Lcom/android/u/weibo/weibo/business/bean/UserPageInfo;
invokespecial com/android/u/weibo/weibo/ui/widget/tabview/FollowView/<init>(Landroid/content/Context;JLcom/android/u/weibo/weibo/business/bean/UserPageInfo;)V
putfield com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment/followView Lcom/android/u/weibo/weibo/ui/widget/tabview/FollowView;
aload 2
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment/followView Lcom/android/u/weibo/weibo/ui/widget/tabview/FollowView;
aload 3
invokevirtual android/widget/LinearLayout/addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment/viewList Ljava/util/ArrayList;
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment/followView Lcom/android/u/weibo/weibo/ui/widget/tabview/FollowView;
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
aload 0
new com/android/u/weibo/weibo/ui/widget/tabview/FansView
dup
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment/mContext Landroid/app/Activity;
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment/uid J
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment/mUserWeiboInfo Lcom/android/u/weibo/weibo/business/bean/UserPageInfo;
invokespecial com/android/u/weibo/weibo/ui/widget/tabview/FansView/<init>(Landroid/content/Context;JLcom/android/u/weibo/weibo/business/bean/UserPageInfo;)V
putfield com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment/fansView Lcom/android/u/weibo/weibo/ui/widget/tabview/FansView;
aload 2
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment/fansView Lcom/android/u/weibo/weibo/ui/widget/tabview/FansView;
aload 3
invokevirtual android/widget/LinearLayout/addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment/viewList Ljava/util/ArrayList;
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment/fansView Lcom/android/u/weibo/weibo/ui/widget/tabview/FansView;
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_91UND Lcom/product/android/business/ProductTypeDef$Product;
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
if_acmpne L0
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment/uid J
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getOapUid()J 0
lcmp
ifne L1
aload 0
new com/android/u/weibo/weibo/ui/widget/tabview/BackpackView
dup
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment/mContext Landroid/app/Activity;
invokespecial com/android/u/weibo/weibo/ui/widget/tabview/BackpackView/<init>(Landroid/content/Context;)V
putfield com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment/backpackView Lcom/android/u/weibo/weibo/ui/widget/tabview/BackpackView;
aload 2
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment/backpackView Lcom/android/u/weibo/weibo/ui/widget/tabview/BackpackView;
aload 3
invokevirtual android/widget/LinearLayout/addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment/viewList Ljava/util/ArrayList;
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment/backpackView Lcom/android/u/weibo/weibo/ui/widget/tabview/BackpackView;
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
L1:
getstatic com/android/u/weibo/weibo/controller/GlobalSetting/gIsNeedAlbum Z
ifeq L2
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getLoginType()Lcom/product/android/business/ApplicationVariable$LoginType;
getstatic com/product/android/business/ApplicationVariable$LoginType/_99_ACCOUNT_LOGIN Lcom/product/android/business/ApplicationVariable$LoginType;
if_acmpne L2
aload 0
new com/android/u/weibo/weibo/ui/widget/tabview/AlbumView
dup
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment/mContext Landroid/app/Activity;
aload 0
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment/uid J
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment/uapid J
invokespecial com/android/u/weibo/weibo/ui/widget/tabview/AlbumView/<init>(Landroid/content/Context;Landroid/support/v4/app/Fragment;JJ)V
putfield com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment/albumView Lcom/android/u/weibo/weibo/ui/widget/tabview/AlbumView;
aload 2
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment/albumView Lcom/android/u/weibo/weibo/ui/widget/tabview/AlbumView;
aload 3
invokevirtual android/widget/LinearLayout/addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment/viewList Ljava/util/ArrayList;
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment/albumView Lcom/android/u/weibo/weibo/ui/widget/tabview/AlbumView;
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
L2:
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment/mPageType I
ifeq L3
getstatic com/android/u/weibo/weibo/controller/GlobalSetting/gIsNeedContactInfo Z
ifeq L4
L3:
aload 0
new com/android/u/weibo/weibo/ui/widget/tabview/PersonalInfoView
dup
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment/mContext Landroid/app/Activity;
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment/mPageType I
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment/uid J
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment/mUserWeiboInfo Lcom/android/u/weibo/weibo/business/bean/UserPageInfo;
invokespecial com/android/u/weibo/weibo/ui/widget/tabview/PersonalInfoView/<init>(Landroid/content/Context;IJLcom/android/u/weibo/weibo/business/bean/UserPageInfo;)V
putfield com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment/personalInfoView Lcom/android/u/weibo/weibo/ui/widget/tabview/PersonalInfoView;
aload 2
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment/personalInfoView Lcom/android/u/weibo/weibo/ui/widget/tabview/PersonalInfoView;
aload 3
invokevirtual android/widget/LinearLayout/addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment/viewList Ljava/util/ArrayList;
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment/personalInfoView Lcom/android/u/weibo/weibo/ui/widget/tabview/PersonalInfoView;
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
L4:
aload 0
new com/android/u/weibo/weibo/ui/widget/tabview/PersonalityTagView
dup
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment/mContext Landroid/app/Activity;
aload 0
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment/uid J
invokespecial com/android/u/weibo/weibo/ui/widget/tabview/PersonalityTagView/<init>(Landroid/content/Context;Landroid/support/v4/app/Fragment;J)V
putfield com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment/personalityTagView Lcom/android/u/weibo/weibo/ui/widget/tabview/PersonalityTagView;
aload 2
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment/personalityTagView Lcom/android/u/weibo/weibo/ui/widget/tabview/PersonalityTagView;
aload 3
invokevirtual android/widget/LinearLayout/addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment/viewList Ljava/util/ArrayList;
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment/personalityTagView Lcom/android/u/weibo/weibo/ui/widget/tabview/PersonalityTagView;
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment/mPageType I
ifne L5
aload 0
new com/android/u/weibo/weibo/ui/widget/tabview/BlackListView
dup
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment/mContext Landroid/app/Activity;
aload 0
invokespecial com/android/u/weibo/weibo/ui/widget/tabview/BlackListView/<init>(Landroid/content/Context;Landroid/support/v4/app/Fragment;)V
putfield com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment/blackListView Lcom/android/u/weibo/weibo/ui/widget/tabview/BlackListView;
aload 2
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment/blackListView Lcom/android/u/weibo/weibo/ui/widget/tabview/BlackListView;
aload 3
invokevirtual android/widget/LinearLayout/addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment/viewList Ljava/util/ArrayList;
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment/blackListView Lcom/android/u/weibo/weibo/ui/widget/tabview/BlackListView;
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
aload 0
new com/android/u/weibo/weibo/ui/widget/tabview/SendFlowerView
dup
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment/mContext Landroid/app/Activity;
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment/mPageType I
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment/uid J
invokespecial com/android/u/weibo/weibo/ui/widget/tabview/SendFlowerView/<init>(Landroid/content/Context;IJ)V
putfield com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment/sendFlowerView Lcom/android/u/weibo/weibo/ui/widget/tabview/SendFlowerView;
aload 2
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment/sendFlowerView Lcom/android/u/weibo/weibo/ui/widget/tabview/SendFlowerView;
aload 3
invokevirtual android/widget/LinearLayout/addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment/viewList Ljava/util/ArrayList;
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment/sendFlowerView Lcom/android/u/weibo/weibo/ui/widget/tabview/SendFlowerView;
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
aload 0
new com/android/u/weibo/weibo/ui/widget/tabview/HiddenLoveView
dup
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment/mContext Landroid/app/Activity;
invokespecial com/android/u/weibo/weibo/ui/widget/tabview/HiddenLoveView/<init>(Landroid/content/Context;)V
putfield com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment/hiddenLoveView Lcom/android/u/weibo/weibo/ui/widget/tabview/HiddenLoveView;
aload 2
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment/hiddenLoveView Lcom/android/u/weibo/weibo/ui/widget/tabview/HiddenLoveView;
aload 3
invokevirtual android/widget/LinearLayout/addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment/viewList Ljava/util/ArrayList;
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment/hiddenLoveView Lcom/android/u/weibo/weibo/ui/widget/tabview/HiddenLoveView;
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
getstatic com/android/u/weibo/weibo/controller/GlobalSetting/gIsNeedLottery Z
ifeq L5
aload 0
new com/android/u/weibo/weibo/ui/widget/tabview/LotHistoryView
dup
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment/mContext Landroid/app/Activity;
invokespecial com/android/u/weibo/weibo/ui/widget/tabview/LotHistoryView/<init>(Landroid/content/Context;)V
putfield com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment/lotHistoryView Lcom/android/u/weibo/weibo/ui/widget/tabview/LotHistoryView;
aload 2
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment/lotHistoryView Lcom/android/u/weibo/weibo/ui/widget/tabview/LotHistoryView;
aload 3
invokevirtual android/widget/LinearLayout/addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment/viewList Ljava/util/ArrayList;
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment/lotHistoryView Lcom/android/u/weibo/weibo/ui/widget/tabview/LotHistoryView;
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
L5:
aload 1
areturn
L0:
getstatic com/android/u/weibo/weibo/controller/GlobalSetting/gIsNeedAlbum Z
ifeq L6
aload 0
new com/android/u/weibo/weibo/ui/widget/tabview/AlbumView
dup
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment/mContext Landroid/app/Activity;
aload 0
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment/uid J
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment/uapid J
invokespecial com/android/u/weibo/weibo/ui/widget/tabview/AlbumView/<init>(Landroid/content/Context;Landroid/support/v4/app/Fragment;JJ)V
putfield com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment/albumView Lcom/android/u/weibo/weibo/ui/widget/tabview/AlbumView;
aload 2
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment/albumView Lcom/android/u/weibo/weibo/ui/widget/tabview/AlbumView;
aload 3
invokevirtual android/widget/LinearLayout/addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment/viewList Ljava/util/ArrayList;
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment/albumView Lcom/android/u/weibo/weibo/ui/widget/tabview/AlbumView;
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
L6:
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment/uid J
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getOapUid()J 0
lcmp
ifne L7
aload 0
new com/android/u/weibo/weibo/ui/widget/tabview/BackpackView
dup
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment/mContext Landroid/app/Activity;
invokespecial com/android/u/weibo/weibo/ui/widget/tabview/BackpackView/<init>(Landroid/content/Context;)V
putfield com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment/backpackView Lcom/android/u/weibo/weibo/ui/widget/tabview/BackpackView;
aload 2
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment/backpackView Lcom/android/u/weibo/weibo/ui/widget/tabview/BackpackView;
aload 3
invokevirtual android/widget/LinearLayout/addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment/viewList Ljava/util/ArrayList;
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment/backpackView Lcom/android/u/weibo/weibo/ui/widget/tabview/BackpackView;
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
L7:
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment/mPageType I
ifne L8
aload 0
new com/android/u/weibo/weibo/ui/widget/tabview/SendFlowerView
dup
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment/mContext Landroid/app/Activity;
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment/mPageType I
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment/uid J
invokespecial com/android/u/weibo/weibo/ui/widget/tabview/SendFlowerView/<init>(Landroid/content/Context;IJ)V
putfield com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment/sendFlowerView Lcom/android/u/weibo/weibo/ui/widget/tabview/SendFlowerView;
aload 2
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment/sendFlowerView Lcom/android/u/weibo/weibo/ui/widget/tabview/SendFlowerView;
aload 3
invokevirtual android/widget/LinearLayout/addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment/viewList Ljava/util/ArrayList;
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment/sendFlowerView Lcom/android/u/weibo/weibo/ui/widget/tabview/SendFlowerView;
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
L8:
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment/mPageType I
ifeq L9
getstatic com/android/u/weibo/weibo/controller/GlobalSetting/gIsNeedContactInfo Z
ifeq L10
L9:
aload 0
new com/android/u/weibo/weibo/ui/widget/tabview/PersonalInfoView
dup
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment/mContext Landroid/app/Activity;
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment/mPageType I
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment/uid J
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment/mUserWeiboInfo Lcom/android/u/weibo/weibo/business/bean/UserPageInfo;
invokespecial com/android/u/weibo/weibo/ui/widget/tabview/PersonalInfoView/<init>(Landroid/content/Context;IJLcom/android/u/weibo/weibo/business/bean/UserPageInfo;)V
putfield com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment/personalInfoView Lcom/android/u/weibo/weibo/ui/widget/tabview/PersonalInfoView;
aload 2
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment/personalInfoView Lcom/android/u/weibo/weibo/ui/widget/tabview/PersonalInfoView;
aload 3
invokevirtual android/widget/LinearLayout/addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment/viewList Ljava/util/ArrayList;
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment/personalInfoView Lcom/android/u/weibo/weibo/ui/widget/tabview/PersonalInfoView;
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
L10:
aload 0
new com/android/u/weibo/weibo/ui/widget/tabview/PersonalityTagView
dup
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment/mContext Landroid/app/Activity;
aload 0
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment/uid J
invokespecial com/android/u/weibo/weibo/ui/widget/tabview/PersonalityTagView/<init>(Landroid/content/Context;Landroid/support/v4/app/Fragment;J)V
putfield com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment/personalityTagView Lcom/android/u/weibo/weibo/ui/widget/tabview/PersonalityTagView;
aload 2
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment/personalityTagView Lcom/android/u/weibo/weibo/ui/widget/tabview/PersonalityTagView;
aload 3
invokevirtual android/widget/LinearLayout/addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment/viewList Ljava/util/ArrayList;
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment/personalityTagView Lcom/android/u/weibo/weibo/ui/widget/tabview/PersonalityTagView;
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment/mPageType I
ifne L5
getstatic com/android/u/weibo/weibo/controller/GlobalSetting/gIsNeedSecretLove Z
ifeq L11
aload 0
new com/android/u/weibo/weibo/ui/widget/tabview/HiddenLoveView
dup
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment/mContext Landroid/app/Activity;
invokespecial com/android/u/weibo/weibo/ui/widget/tabview/HiddenLoveView/<init>(Landroid/content/Context;)V
putfield com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment/hiddenLoveView Lcom/android/u/weibo/weibo/ui/widget/tabview/HiddenLoveView;
aload 2
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment/hiddenLoveView Lcom/android/u/weibo/weibo/ui/widget/tabview/HiddenLoveView;
aload 3
invokevirtual android/widget/LinearLayout/addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment/viewList Ljava/util/ArrayList;
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment/hiddenLoveView Lcom/android/u/weibo/weibo/ui/widget/tabview/HiddenLoveView;
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
L11:
aload 0
new com/android/u/weibo/weibo/ui/widget/tabview/BlackListView
dup
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment/mContext Landroid/app/Activity;
aload 0
invokespecial com/android/u/weibo/weibo/ui/widget/tabview/BlackListView/<init>(Landroid/content/Context;Landroid/support/v4/app/Fragment;)V
putfield com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment/blackListView Lcom/android/u/weibo/weibo/ui/widget/tabview/BlackListView;
aload 2
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment/blackListView Lcom/android/u/weibo/weibo/ui/widget/tabview/BlackListView;
aload 3
invokevirtual android/widget/LinearLayout/addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment/viewList Ljava/util/ArrayList;
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment/blackListView Lcom/android/u/weibo/weibo/ui/widget/tabview/BlackListView;
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
getstatic com/android/u/weibo/weibo/controller/GlobalSetting/gIsNeedLottery Z
ifeq L5
aload 0
new com/android/u/weibo/weibo/ui/widget/tabview/LotHistoryView
dup
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment/mContext Landroid/app/Activity;
invokespecial com/android/u/weibo/weibo/ui/widget/tabview/LotHistoryView/<init>(Landroid/content/Context;)V
putfield com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment/lotHistoryView Lcom/android/u/weibo/weibo/ui/widget/tabview/LotHistoryView;
aload 2
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment/lotHistoryView Lcom/android/u/weibo/weibo/ui/widget/tabview/LotHistoryView;
aload 3
invokevirtual android/widget/LinearLayout/addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment/viewList Ljava/util/ArrayList;
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment/lotHistoryView Lcom/android/u/weibo/weibo/ui/widget/tabview/LotHistoryView;
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
aload 1
areturn
.limit locals 4
.limit stack 9
.end method

.method public onDestroy()V
aload 0
invokespecial android/support/v4/app/Fragment/onDestroy()V
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment/viewList Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/iterator()Ljava/util/Iterator;
astore 1
L0:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase
astore 2
aload 2
ifnull L0
aload 2
invokevirtual com/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase/onDestory()V
goto L0
L1:
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment/viewList Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/clear()V
return
.limit locals 3
.limit stack 1
.end method

.method public updateBalckList(Ljava/util/ArrayList;)V
.signature "(Ljava/util/ArrayList<Lcom/product/android/commonInterface/contact/BlackListPerson;>;)V"
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment/blackListView Lcom/android/u/weibo/weibo/ui/widget/tabview/BlackListView;
ifnull L0
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment/blackListView Lcom/android/u/weibo/weibo/ui/widget/tabview/BlackListView;
aload 1
invokevirtual com/android/u/weibo/weibo/ui/widget/tabview/BlackListView/updateData(Ljava/lang/Object;)V
L0:
return
.limit locals 2
.limit stack 2
.end method

.method public updateFollower(II)V
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment/fansView Lcom/android/u/weibo/weibo/ui/widget/tabview/FansView;
ifnull L0
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment/fansView Lcom/android/u/weibo/weibo/ui/widget/tabview/FansView;
iload 1
iload 2
invokevirtual com/android/u/weibo/weibo/ui/widget/tabview/FansView/updateFans(II)V
L0:
return
.limit locals 3
.limit stack 3
.end method

.method public updateImageList(Ljava/util/ArrayList;)V
.signature "(Ljava/util/ArrayList<Lcom/product/android/commonInterface/album/Image;>;)V"
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment/albumView Lcom/android/u/weibo/weibo/ui/widget/tabview/AlbumView;
ifnull L0
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment/albumView Lcom/android/u/weibo/weibo/ui/widget/tabview/AlbumView;
aload 1
invokevirtual com/android/u/weibo/weibo/ui/widget/tabview/AlbumView/updateData(Ljava/lang/Object;)V
L0:
return
.limit locals 2
.limit stack 2
.end method

.method public updatePersonalInfo()V
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment/personalInfoView Lcom/android/u/weibo/weibo/ui/widget/tabview/PersonalInfoView;
ifnull L0
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment/personalInfoView Lcom/android/u/weibo/weibo/ui/widget/tabview/PersonalInfoView;
aconst_null
invokevirtual com/android/u/weibo/weibo/ui/widget/tabview/PersonalInfoView/updateData(Ljava/lang/Object;)V
L0:
return
.limit locals 1
.limit stack 2
.end method

.method public updateTagList(Ljava/util/ArrayList;)V
.signature "(Ljava/util/ArrayList<Lcom/product/android/commonInterface/contact/TagInfo;>;)V"
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment/personalityTagView Lcom/android/u/weibo/weibo/ui/widget/tabview/PersonalityTagView;
ifnull L0
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/HomePageTabFragment/personalityTagView Lcom/android/u/weibo/weibo/ui/widget/tabview/PersonalityTagView;
aload 1
invokevirtual com/android/u/weibo/weibo/ui/widget/tabview/PersonalityTagView/updateData(Ljava/lang/Object;)V
L0:
return
.limit locals 2
.limit stack 2
.end method
