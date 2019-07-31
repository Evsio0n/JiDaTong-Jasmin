.bytecode 50.0
.class public synchronized com/nd/android/backpacksystem/fragment/BackpackMainFragment
.super com/nd/android/backpacksystem/fragment/BackpackBaseFragment
.inner class inner com/nd/android/backpacksystem/fragment/BackpackMainFragment$1
.inner class inner com/nd/android/backpacksystem/fragment/BackpackMainFragment$2
.inner class private FetchData inner com/nd/android/backpacksystem/fragment/BackpackMainFragment$FetchData outer com/nd/android/backpacksystem/fragment/BackpackMainFragment

.field public static final 'FRAGMENT_TYPE' Ljava/lang/String; = "fragment_type"

.field public static final 'RECEIVE_NEW_GIFT' Ljava/lang/String; = "receive_new_gift"

.field private 'mIvNewTipIcon' Landroid/widget/ImageView;

.field private 'mPageChangeListener' Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private 'mSlTab' Lcom/nd/android/backpacksystem/widget/SwitchLayout;

.field private 'mTabContentAdapter' Lcom/nd/android/backpacksystem/adapter/MainTabContentAdapter;

.field private 'mTabSelectCallBack' Lcom/nd/android/backpacksystem/widget/SwitchLayout$TabSelectCallBack;

.method public <init>()V
aload 0
invokespecial com/nd/android/backpacksystem/fragment/BackpackBaseFragment/<init>()V
aload 0
new com/nd/android/backpacksystem/fragment/BackpackMainFragment$2
dup
aload 0
invokespecial com/nd/android/backpacksystem/fragment/BackpackMainFragment$2/<init>(Lcom/nd/android/backpacksystem/fragment/BackpackMainFragment;)V
putfield com/nd/android/backpacksystem/fragment/BackpackMainFragment/mTabSelectCallBack Lcom/nd/android/backpacksystem/widget/SwitchLayout$TabSelectCallBack;
return
.limit locals 1
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/android/backpacksystem/fragment/BackpackMainFragment;)Lcom/nd/android/backpacksystem/widget/SwitchLayout;
aload 0
getfield com/nd/android/backpacksystem/fragment/BackpackMainFragment/mSlTab Lcom/nd/android/backpacksystem/widget/SwitchLayout;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/android/backpacksystem/fragment/BackpackMainFragment;)Landroid/widget/ImageView;
aload 0
getfield com/nd/android/backpacksystem/fragment/BackpackMainFragment/mIvNewTipIcon Landroid/widget/ImageView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/nd/android/backpacksystem/fragment/BackpackMainFragment;)Lcom/nd/android/backpacksystem/adapter/MainTabContentAdapter;
aload 0
getfield com/nd/android/backpacksystem/fragment/BackpackMainFragment/mTabContentAdapter Lcom/nd/android/backpacksystem/adapter/MainTabContentAdapter;
areturn
.limit locals 1
.limit stack 1
.end method

.method private initMainHeader()V
aload 0
invokevirtual com/nd/android/backpacksystem/fragment/BackpackMainFragment/initHeader()V
aload 0
aload 0
getfield com/nd/android/backpacksystem/fragment/BackpackMainFragment/mRootView Landroid/view/View;
getstatic com/nd/android/backpacksystem/R$id/pbLoading I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ProgressBar
putfield com/nd/android/backpacksystem/fragment/BackpackMainFragment/mPbLoading Landroid/widget/ProgressBar;
aload 0
getfield com/nd/android/backpacksystem/fragment/BackpackMainFragment/mTvHeaderTitle Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
invokevirtual com/nd/android/backpacksystem/fragment/BackpackMainFragment/isMainState()Z
ifeq L0
aload 0
aload 0
getfield com/nd/android/backpacksystem/fragment/BackpackMainFragment/mRootView Landroid/view/View;
getstatic com/nd/android/backpacksystem/R$id/slTab I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast com/nd/android/backpacksystem/widget/SwitchLayout
putfield com/nd/android/backpacksystem/fragment/BackpackMainFragment/mSlTab Lcom/nd/android/backpacksystem/widget/SwitchLayout;
aload 0
getfield com/nd/android/backpacksystem/fragment/BackpackMainFragment/mSlTab Lcom/nd/android/backpacksystem/widget/SwitchLayout;
iconst_0
invokevirtual com/nd/android/backpacksystem/widget/SwitchLayout/setVisibility(I)V
aload 0
getfield com/nd/android/backpacksystem/fragment/BackpackMainFragment/mSlTab Lcom/nd/android/backpacksystem/widget/SwitchLayout;
aload 0
invokevirtual com/nd/android/backpacksystem/fragment/BackpackMainFragment/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/backpacksystem/R$string/header_tab_my_gift I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual com/nd/android/backpacksystem/widget/SwitchLayout/setLeftTabText(Ljava/lang/String;)V
aload 0
getfield com/nd/android/backpacksystem/fragment/BackpackMainFragment/mSlTab Lcom/nd/android/backpacksystem/widget/SwitchLayout;
aload 0
invokevirtual com/nd/android/backpacksystem/fragment/BackpackMainFragment/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/backpacksystem/R$string/header_tab_backpack I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual com/nd/android/backpacksystem/widget/SwitchLayout/setRightTabText(Ljava/lang/String;)V
aload 0
getfield com/nd/android/backpacksystem/fragment/BackpackMainFragment/mSlTab Lcom/nd/android/backpacksystem/widget/SwitchLayout;
aload 0
getfield com/nd/android/backpacksystem/fragment/BackpackMainFragment/mTabSelectCallBack Lcom/nd/android/backpacksystem/widget/SwitchLayout$TabSelectCallBack;
invokevirtual com/nd/android/backpacksystem/widget/SwitchLayout/setTabSelectCallBack(Lcom/nd/android/backpacksystem/widget/SwitchLayout$TabSelectCallBack;)V
aload 0
aload 0
getfield com/nd/android/backpacksystem/fragment/BackpackMainFragment/mRootView Landroid/view/View;
getstatic com/nd/android/backpacksystem/R$id/ivNewTipIcon I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/backpacksystem/fragment/BackpackMainFragment/mIvNewTipIcon Landroid/widget/ImageView;
aload 0
getfield com/nd/android/backpacksystem/fragment/BackpackMainFragment/mRootView Landroid/view/View;
getstatic com/nd/android/backpacksystem/R$id/rlHeaderTab I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
iconst_0
invokevirtual android/view/View/setVisibility(I)V
L0:
return
.limit locals 1
.limit stack 3
.end method

.method private initMainTabContent()V
aload 0
aload 0
getfield com/nd/android/backpacksystem/fragment/BackpackMainFragment/mRootView Landroid/view/View;
getstatic com/nd/android/backpacksystem/R$id/vpContent I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/support/v4/view/ViewPager
putfield com/nd/android/backpacksystem/fragment/BackpackMainFragment/mVpContent Landroid/support/v4/view/ViewPager;
aload 0
getfield com/nd/android/backpacksystem/fragment/BackpackMainFragment/mVpContent Landroid/support/v4/view/ViewPager;
aload 0
getfield com/nd/android/backpacksystem/fragment/BackpackMainFragment/mTabContentAdapter Lcom/nd/android/backpacksystem/adapter/MainTabContentAdapter;
invokevirtual android/support/v4/view/ViewPager/setAdapter(Landroid/support/v4/view/PagerAdapter;)V
aload 0
invokevirtual com/nd/android/backpacksystem/fragment/BackpackMainFragment/isMainState()Z
ifeq L0
aload 0
invokespecial com/nd/android/backpacksystem/fragment/BackpackMainFragment/initPageChangeListener()V
aload 0
getfield com/nd/android/backpacksystem/fragment/BackpackMainFragment/mVpContent Landroid/support/v4/view/ViewPager;
aload 0
getfield com/nd/android/backpacksystem/fragment/BackpackMainFragment/mPageChangeListener Landroid/support/v4/view/ViewPager$OnPageChangeListener;
invokevirtual android/support/v4/view/ViewPager/setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
L0:
return
.limit locals 1
.limit stack 3
.end method

.method private initPageChangeListener()V
aload 0
new com/nd/android/backpacksystem/fragment/BackpackMainFragment$1
dup
aload 0
invokespecial com/nd/android/backpacksystem/fragment/BackpackMainFragment$1/<init>(Lcom/nd/android/backpacksystem/fragment/BackpackMainFragment;)V
putfield com/nd/android/backpacksystem/fragment/BackpackMainFragment/mPageChangeListener Landroid/support/v4/view/ViewPager$OnPageChangeListener;
return
.limit locals 1
.limit stack 4
.end method

.method public fetchDataFromServer(ZZIZ)V
new com/nd/android/backpacksystem/fragment/BackpackMainFragment$FetchData
dup
aload 0
iload 2
iload 3
invokespecial com/nd/android/backpacksystem/fragment/BackpackMainFragment$FetchData/<init>(Lcom/nd/android/backpacksystem/fragment/BackpackMainFragment;ZI)V
iconst_1
anewarray java/lang/Boolean
dup
iconst_0
iload 1
invokestatic java/lang/Boolean/valueOf(Z)Ljava/lang/Boolean;
aastore
invokevirtual com/nd/android/backpacksystem/fragment/BackpackMainFragment$FetchData/execute([Ljava/lang/Object;)Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;
pop
return
.limit locals 5
.limit stack 5
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/nd/android/backpacksystem/fragment/BackpackBaseFragment/onActivityCreated(Landroid/os/Bundle;)V
aload 0
getfield com/nd/android/backpacksystem/fragment/BackpackMainFragment/mActivity Landroid/app/Activity;
invokevirtual android/app/Activity/getIntent()Landroid/content/Intent;
astore 1
aload 1
ifnull L0
aload 0
aload 1
ldc "fragment_type"
sipush 260
invokevirtual android/content/Intent/getIntExtra(Ljava/lang/String;I)I
putfield com/nd/android/backpacksystem/fragment/BackpackMainFragment/mFragmentType I
L0:
aload 0
invokevirtual com/nd/android/backpacksystem/fragment/BackpackMainFragment/isMainState()Z
istore 2
aload 0
invokevirtual com/nd/android/backpacksystem/fragment/BackpackMainFragment/isMyGiftState()Z
istore 3
lconst_0
lstore 6
iload 2
ifne L1
lload 6
lstore 4
iload 3
ifeq L2
L1:
lload 6
lstore 4
iload 3
ifeq L2
lload 6
lstore 4
aload 1
ifnull L2
aload 1
ldc "user_id"
lconst_0
invokevirtual android/content/Intent/getLongExtra(Ljava/lang/String;J)J
lstore 4
L2:
aload 0
getfield com/nd/android/backpacksystem/fragment/BackpackMainFragment/mTabContentAdapter Lcom/nd/android/backpacksystem/adapter/MainTabContentAdapter;
ifnonnull L3
aload 0
new com/nd/android/backpacksystem/adapter/MainTabContentAdapter
dup
aload 0
invokevirtual com/nd/android/backpacksystem/fragment/BackpackMainFragment/getFragmentManager()Landroid/support/v4/app/FragmentManager;
aload 0
getfield com/nd/android/backpacksystem/fragment/BackpackMainFragment/mFragmentType I
lload 4
invokespecial com/nd/android/backpacksystem/adapter/MainTabContentAdapter/<init>(Landroid/support/v4/app/FragmentManager;IJ)V
putfield com/nd/android/backpacksystem/fragment/BackpackMainFragment/mTabContentAdapter Lcom/nd/android/backpacksystem/adapter/MainTabContentAdapter;
L3:
aload 0
invokespecial com/nd/android/backpacksystem/fragment/BackpackMainFragment/initMainHeader()V
aload 0
invokespecial com/nd/android/backpacksystem/fragment/BackpackMainFragment/initMainTabContent()V
aload 0
iconst_1
iconst_0
iconst_0
iconst_1
invokevirtual com/nd/android/backpacksystem/fragment/BackpackMainFragment/fetchDataFromServer(ZZIZ)V
return
.limit locals 8
.limit stack 7
.end method

.method public onCreate(Landroid/os/Bundle;)V
invokestatic de/greenrobot/event/EventBus/getDefault()Lde/greenrobot/event/EventBus;
aload 0
ldc java/lang/String
iconst_0
anewarray java/lang/Class
invokevirtual de/greenrobot/event/EventBus/register(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)V
aload 0
aload 1
invokespecial com/nd/android/backpacksystem/fragment/BackpackBaseFragment/onCreate(Landroid/os/Bundle;)V
return
.limit locals 2
.limit stack 4
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
aload 0
aload 1
getstatic com/nd/android/backpacksystem/R$layout/fragment_backpack_main I
aload 2
iconst_0
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
putfield com/nd/android/backpacksystem/fragment/BackpackMainFragment/mRootView Landroid/view/View;
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_91XY Lcom/product/android/business/ProductTypeDef$Product;
if_acmpne L0
aload 0
getfield com/nd/android/backpacksystem/fragment/BackpackMainFragment/mRootView Landroid/view/View;
getstatic com/nd/android/backpacksystem/R$id/btnHeaderLeft I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
getstatic com/nd/android/backpacksystem/R$drawable/xy_btn_header_back_bg I
invokevirtual android/widget/Button/setBackgroundResource(I)V
L0:
aload 0
getfield com/nd/android/backpacksystem/fragment/BackpackMainFragment/mRootView Landroid/view/View;
areturn
.limit locals 4
.limit stack 5
.end method

.method public onDestroy()V
invokestatic de/greenrobot/event/EventBus/getDefault()Lde/greenrobot/event/EventBus;
aload 0
invokevirtual de/greenrobot/event/EventBus/unregister(Ljava/lang/Object;)V
aload 0
invokespecial com/nd/android/backpacksystem/fragment/BackpackBaseFragment/onDestroy()V
return
.limit locals 1
.limit stack 2
.end method

.method public onEventMainThread(Ljava/lang/String;)V
.catch org/json/JSONException from L0 to L1 using L2
.catch org/json/JSONException from L3 to L4 using L2
.catch org/json/JSONException from L5 to L6 using L2
.catch org/json/JSONException from L7 to L8 using L2
.catch org/json/JSONException from L8 to L9 using L2
.catch org/json/JSONException from L10 to L11 using L2
.catch org/json/JSONException from L12 to L13 using L2
.catch org/json/JSONException from L14 to L15 using L2
.catch org/json/JSONException from L16 to L17 using L2
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L18
L19:
return
L18:
aload 0
getfield com/nd/android/backpacksystem/fragment/BackpackMainFragment/mTabContentAdapter Lcom/nd/android/backpacksystem/adapter/MainTabContentAdapter;
invokevirtual com/nd/android/backpacksystem/adapter/MainTabContentAdapter/getMyGiftFragment()Lcom/nd/android/backpacksystem/fragment/MyGiftFragment;
astore 4
aload 0
getfield com/nd/android/backpacksystem/fragment/BackpackMainFragment/mTabContentAdapter Lcom/nd/android/backpacksystem/adapter/MainTabContentAdapter;
invokevirtual com/nd/android/backpacksystem/adapter/MainTabContentAdapter/getGiftBoxFragment()Lcom/nd/android/backpacksystem/fragment/GiftBoxFragment;
astore 5
aload 1
ldc "receive_new_gift"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L0
aload 4
ifnull L19
aload 5
ifnull L19
aload 0
getfield com/nd/android/backpacksystem/fragment/BackpackMainFragment/mVpContent Landroid/support/v4/view/ViewPager;
invokevirtual android/support/v4/view/ViewPager/getCurrentItem()I
ifne L20
aload 0
getfield com/nd/android/backpacksystem/fragment/BackpackMainFragment/mIvNewTipIcon Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
L21:
aload 4
invokevirtual com/nd/android/backpacksystem/fragment/MyGiftFragment/notifyListData()V
aload 5
invokevirtual com/nd/android/backpacksystem/fragment/GiftBoxFragment/notifyListData()V
return
L20:
invokestatic com/nd/android/backpacksystem/fragment/GiftBoxFragment/clearUnreadGiftMsg()V
goto L21
L0:
new org/json/JSONObject
dup
aload 1
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
astore 5
aload 5
ldc "string_backpack_event_type"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
astore 1
aload 1
ldc "string_backpack_sendflower_return"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L16
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 1
aload 5
ldc "string_backpack_event_item_ids"
invokevirtual org/json/JSONObject/optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
astore 5
L1:
aload 5
ifnull L14
L3:
aload 5
invokevirtual org/json/JSONArray/length()I
istore 3
L4:
iconst_0
istore 2
L22:
iload 2
iload 3
if_icmpge L7
L5:
aload 5
iload 2
invokevirtual org/json/JSONArray/getJSONObject(I)Lorg/json/JSONObject;
astore 6
new com/nd/android/backpacksystem/data/MyItems
dup
invokespecial com/nd/android/backpacksystem/data/MyItems/<init>()V
astore 7
aload 7
aload 6
ldc "string_backpack_event_item_type"
iconst_m1
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;I)I
invokevirtual com/nd/android/backpacksystem/data/MyItems/setItemTypeId(I)V
aload 7
aload 6
ldc "string_backpack_event_item_id"
ldc2_w -1L
invokevirtual org/json/JSONObject/optLong(Ljava/lang/String;J)J
invokevirtual com/nd/android/backpacksystem/data/MyItems/setItemId(J)V
aload 7
aload 6
ldc "string_backpack_event_amount"
iconst_m1
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;I)I
invokevirtual com/nd/android/backpacksystem/data/MyItems/setAmount(I)V
aload 7
aload 6
ldc "string_backpack_event_del_time"
ldc2_w -1L
invokevirtual org/json/JSONObject/optLong(Ljava/lang/String;J)J
invokevirtual com/nd/android/backpacksystem/data/MyItems/setDelTime(J)V
aload 7
aload 6
ldc "string_backpack_event_server_time"
ldc2_w -1L
invokevirtual org/json/JSONObject/optLong(Ljava/lang/String;J)J
invokevirtual com/nd/android/backpacksystem/data/MyItems/setServerTime(J)V
aload 7
invokevirtual com/nd/android/backpacksystem/data/MyItems/isObjectValid()Z
ifeq L23
aload 1
aload 7
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L6:
goto L23
L7:
aload 1
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 1
L8:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L14
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/backpacksystem/data/MyItems
astore 5
getstatic com/nd/android/backpacksystem/data/BackpackSystemData/INSTANCE Lcom/nd/android/backpacksystem/data/BackpackSystemData;
aload 5
invokevirtual com/nd/android/backpacksystem/data/MyItems/getItemId()J
invokevirtual com/nd/android/backpacksystem/data/BackpackSystemData/getMyItem(J)Lcom/nd/android/backpacksystem/data/MyItems;
astore 6
L9:
aload 6
ifnonnull L12
L10:
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 6
aload 6
aload 5
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
getstatic com/nd/android/backpacksystem/data/BackpackSystemData/INSTANCE Lcom/nd/android/backpacksystem/data/BackpackSystemData;
aload 6
invokevirtual com/nd/android/backpacksystem/data/BackpackSystemData/appendMyItems(Ljava/util/List;)V
L11:
goto L8
L2:
astore 1
aload 1
invokevirtual org/json/JSONException/printStackTrace()V
return
L12:
aload 6
aload 5
invokevirtual com/nd/android/backpacksystem/data/MyItems/getAmount()I
invokevirtual com/nd/android/backpacksystem/data/MyItems/setAmount(I)V
aload 6
aload 5
invokevirtual com/nd/android/backpacksystem/data/MyItems/getServerTime()J
invokevirtual com/nd/android/backpacksystem/data/MyItems/setServerTime(J)V
L13:
goto L8
L14:
aload 4
invokevirtual com/nd/android/backpacksystem/fragment/MyGiftFragment/notifyListData()V
L15:
return
L16:
aload 1
ldc "string_backpack_lotter_return"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L19
aload 0
iconst_1
iconst_0
iconst_0
iconst_0
invokevirtual com/nd/android/backpacksystem/fragment/BackpackMainFragment/fetchDataFromServer(ZZIZ)V
L17:
return
L23:
iload 2
iconst_1
iadd
istore 2
goto L22
.limit locals 8
.limit stack 5
.end method

.method public onResume()V
aload 0
getfield com/nd/android/backpacksystem/fragment/BackpackMainFragment/mIvNewTipIcon Landroid/widget/ImageView;
ifnull L0
invokestatic com/nd/android/backpacksystem/commonInterfaceImpl/BackpackCallOtherModel/getUnreadGiftMsgAmount()I
ifle L1
aload 0
getfield com/nd/android/backpacksystem/fragment/BackpackMainFragment/mIvNewTipIcon Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
L0:
aload 0
invokespecial com/nd/android/backpacksystem/fragment/BackpackBaseFragment/onResume()V
return
L1:
aload 0
getfield com/nd/android/backpacksystem/fragment/BackpackMainFragment/mIvNewTipIcon Landroid/widget/ImageView;
bipush 8
invokevirtual android/widget/ImageView/setVisibility(I)V
goto L0
.limit locals 1
.limit stack 2
.end method
