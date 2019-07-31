.bytecode 50.0
.class public synchronized com/nd/android/u/contact/activity/MainActivity
.super com/product/android/ui/activity/BaseReceiverFragmentActivity
.implements android/view/View$OnClickListener
.implements com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl$onTabShowNewListener
.inner class inner com/nd/android/u/contact/activity/MainActivity$1

.field public static final 'FIRST_VIEW' I = 0


.field public static final 'SECOND_VIEW' I = 1


.field public static final 'THIRD_VIEW' I = 2


.field public static 'fm' Landroid/support/v4/app/FragmentManager;

.field private 'adapter' Lcom/nd/android/u/contact/adapter/ContactFragmentAdapter;

.field 'handler' Landroid/os/Handler;

.field private 'isShowPhotoWall' Z

.field private 'mAddBtn' Landroid/widget/ImageView;

.field private 'mCurrentTabId' I

.field private 'mLeftBtn' Landroid/widget/ImageView;

.field private 'mSearchBtn' Landroid/widget/ImageView;

.field private 'mTitleText' Landroid/widget/TextView;

.field private 'mWallBtn' Landroid/widget/ImageView;

.method public <init>()V
aload 0
invokespecial com/product/android/ui/activity/BaseReceiverFragmentActivity/<init>()V
aload 0
iconst_1
putfield com/nd/android/u/contact/activity/MainActivity/isShowPhotoWall Z
aload 0
new com/nd/android/u/contact/activity/MainActivity$1
dup
aload 0
invokespecial com/nd/android/u/contact/activity/MainActivity$1/<init>(Lcom/nd/android/u/contact/activity/MainActivity;)V
putfield com/nd/android/u/contact/activity/MainActivity/handler Landroid/os/Handler;
return
.limit locals 1
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/android/u/contact/activity/MainActivity;)I
aload 0
getfield com/nd/android/u/contact/activity/MainActivity/mCurrentTabId I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$002(Lcom/nd/android/u/contact/activity/MainActivity;I)I
aload 0
iload 1
putfield com/nd/android/u/contact/activity/MainActivity/mCurrentTabId I
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$100(Lcom/nd/android/u/contact/activity/MainActivity;)Lcom/nd/android/u/contact/adapter/ContactFragmentAdapter;
aload 0
getfield com/nd/android/u/contact/activity/MainActivity/adapter Lcom/nd/android/u/contact/adapter/ContactFragmentAdapter;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/nd/android/u/contact/activity/MainActivity;)Landroid/widget/ImageView;
aload 0
getfield com/nd/android/u/contact/activity/MainActivity/mAddBtn Landroid/widget/ImageView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/nd/android/u/contact/activity/MainActivity;)Z
aload 0
getfield com/nd/android/u/contact/activity/MainActivity/isShowPhotoWall Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$400(Lcom/nd/android/u/contact/activity/MainActivity;)Landroid/widget/ImageView;
aload 0
getfield com/nd/android/u/contact/activity/MainActivity/mWallBtn Landroid/widget/ImageView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$500(Lcom/nd/android/u/contact/activity/MainActivity;)Landroid/widget/ImageView;
aload 0
getfield com/nd/android/u/contact/activity/MainActivity/mSearchBtn Landroid/widget/ImageView;
areturn
.limit locals 1
.limit stack 1
.end method

.method protected final goToActivity(Ljava/lang/Class;)V
.signature "(Ljava/lang/Class<*>;)V"
aload 0
new android/content/Intent
dup
aload 0
aload 1
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
invokevirtual com/nd/android/u/contact/activity/MainActivity/startActivity(Landroid/content/Intent;)V
return
.limit locals 2
.limit stack 5
.end method

.method public final handler_CMD_31()V
aload 0
getfield com/nd/android/u/contact/activity/MainActivity/adapter Lcom/nd/android/u/contact/adapter/ContactFragmentAdapter;
aload 0
getfield com/nd/android/u/contact/activity/MainActivity/mCurrentTabId I
invokevirtual com/nd/android/u/contact/adapter/ContactFragmentAdapter/refresh(I)V
return
.limit locals 1
.limit stack 2
.end method

.method public final handler_CMD_89()V
aload 0
getfield com/nd/android/u/contact/activity/MainActivity/adapter Lcom/nd/android/u/contact/adapter/ContactFragmentAdapter;
iconst_0
invokevirtual com/nd/android/u/contact/adapter/ContactFragmentAdapter/refresh(I)V
return
.limit locals 1
.limit stack 2
.end method

.method public final handler_CMD_GROUP_SYSMSG_TYPE_GROUP_INFO_CHANGED()V
aload 0
getfield com/nd/android/u/contact/activity/MainActivity/adapter Lcom/nd/android/u/contact/adapter/ContactFragmentAdapter;
invokevirtual com/nd/android/u/contact/adapter/ContactFragmentAdapter/refreshGroupList()V
return
.limit locals 1
.limit stack 1
.end method

.method public final handler_CMD_RemoveGroup(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/product/android/ui/activity/BaseReceiverFragmentActivity/handler_CMD_RemoveGroup(Landroid/os/Bundle;)V
aload 0
getfield com/nd/android/u/contact/activity/MainActivity/adapter Lcom/nd/android/u/contact/adapter/ContactFragmentAdapter;
invokevirtual com/nd/android/u/contact/adapter/ContactFragmentAdapter/refreshGroupList()V
return
.limit locals 2
.limit stack 2
.end method

.method public final handler_CMD_x20000()V
aload 0
getfield com/nd/android/u/contact/activity/MainActivity/adapter Lcom/nd/android/u/contact/adapter/ContactFragmentAdapter;
iconst_0
invokevirtual com/nd/android/u/contact/adapter/ContactFragmentAdapter/refresh(I)V
return
.limit locals 1
.limit stack 2
.end method

.method public final handler_CMD_x20003()V
aload 0
getfield com/nd/android/u/contact/activity/MainActivity/adapter Lcom/nd/android/u/contact/adapter/ContactFragmentAdapter;
iconst_0
invokevirtual com/nd/android/u/contact/adapter/ContactFragmentAdapter/refresh(I)V
return
.limit locals 1
.limit stack 2
.end method

.method public final handler_CMD_x20004()V
aload 0
getfield com/nd/android/u/contact/activity/MainActivity/adapter Lcom/nd/android/u/contact/adapter/ContactFragmentAdapter;
iconst_2
invokevirtual com/nd/android/u/contact/adapter/ContactFragmentAdapter/refresh(I)V
return
.limit locals 1
.limit stack 2
.end method

.method public final handler_CMD_x20005()V
aload 0
invokespecial com/product/android/ui/activity/BaseReceiverFragmentActivity/handler_CMD_x20005()V
return
.limit locals 1
.limit stack 1
.end method

.method protected final initComponent()V
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/main_header_btn_left I
invokevirtual com/nd/android/u/contact/activity/MainActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/contact/activity/MainActivity/mLeftBtn Landroid/widget/ImageView;
aload 0
getfield com/nd/android/u/contact/activity/MainActivity/mLeftBtn Landroid/widget/ImageView;
iconst_4
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/main_header_btn_add I
invokevirtual com/nd/android/u/contact/activity/MainActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/contact/activity/MainActivity/mAddBtn Landroid/widget/ImageView;
aload 0
getfield com/nd/android/u/contact/activity/MainActivity/mAddBtn Landroid/widget/ImageView;
bipush 8
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/main_header_wall I
invokevirtual com/nd/android/u/contact/activity/MainActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/contact/activity/MainActivity/mWallBtn Landroid/widget/ImageView;
aload 0
getfield com/nd/android/u/contact/activity/MainActivity/isShowPhotoWall Z
ifeq L0
aload 0
getfield com/nd/android/u/contact/activity/MainActivity/mWallBtn Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
L1:
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/main_header_btn_search I
invokevirtual com/nd/android/u/contact/activity/MainActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/contact/activity/MainActivity/mSearchBtn Landroid/widget/ImageView;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/main_header_text_title I
invokevirtual com/nd/android/u/contact/activity/MainActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/activity/MainActivity/mTitleText Landroid/widget/TextView;
aload 0
new com/nd/android/u/contact/adapter/ContactFragmentAdapter
dup
getstatic com/nd/android/u/contact/activity/MainActivity/fm Landroid/support/v4/app/FragmentManager;
invokespecial com/nd/android/u/contact/adapter/ContactFragmentAdapter/<init>(Landroid/support/v4/app/FragmentManager;)V
putfield com/nd/android/u/contact/activity/MainActivity/adapter Lcom/nd/android/u/contact/adapter/ContactFragmentAdapter;
aload 0
getstatic com/nd/android/u/contact/R$id/pager I
invokevirtual com/nd/android/u/contact/activity/MainActivity/findViewById(I)Landroid/view/View;
checkcast com/common/android/ui/widget/CompatibleViewPager
astore 1
aload 1
aload 0
getfield com/nd/android/u/contact/activity/MainActivity/adapter Lcom/nd/android/u/contact/adapter/ContactFragmentAdapter;
invokevirtual com/common/android/ui/widget/CompatibleViewPager/setAdapter(Landroid/support/v4/view/PagerAdapter;)V
aload 0
getstatic com/nd/android/u/contact/R$id/indicator I
invokevirtual com/nd/android/u/contact/activity/MainActivity/findViewById(I)Landroid/view/View;
checkcast com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl
astore 2
aload 2
aload 0
invokevirtual com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/setonTabShowNewListener(Lcom/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl$onTabShowNewListener;)V
aload 2
aload 1
invokevirtual com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/setViewPager(Landroid/support/v4/view/ViewPager;)V
aload 2
getstatic com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl$IndicatorStyle/Underline Lcom/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl$IndicatorStyle;
invokevirtual com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/setFooterIndicatorStyle(Lcom/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl$IndicatorStyle;)V
aload 2
aload 0
getfield com/nd/android/u/contact/activity/MainActivity/handler Landroid/os/Handler;
invokevirtual com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/setmHandler(Landroid/os/Handler;)V
new android/widget/RelativeLayout$LayoutParams
dup
bipush -2
bipush -2
invokespecial android/widget/RelativeLayout$LayoutParams/<init>(II)V
bipush 13
iconst_m1
invokevirtual android/widget/RelativeLayout$LayoutParams/addRule(II)V
return
L0:
aload 0
getfield com/nd/android/u/contact/activity/MainActivity/mWallBtn Landroid/widget/ImageView;
bipush 8
invokevirtual android/widget/ImageView/setVisibility(I)V
goto L1
.limit locals 3
.limit stack 4
.end method

.method protected final initEvent()V
aload 0
getfield com/nd/android/u/contact/activity/MainActivity/mAddBtn Landroid/widget/ImageView;
aload 0
invokevirtual android/widget/ImageView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/contact/activity/MainActivity/mWallBtn Landroid/widget/ImageView;
aload 0
invokevirtual android/widget/ImageView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/contact/activity/MainActivity/mLeftBtn Landroid/widget/ImageView;
aload 0
invokevirtual android/widget/ImageView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/contact/activity/MainActivity/mSearchBtn Landroid/widget/ImageView;
aload 0
invokevirtual android/widget/ImageView/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
.limit locals 1
.limit stack 2
.end method

.method public final onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/android/u/contact/R$id/main_header_btn_add I
if_icmpne L0
aload 0
getfield com/nd/android/u/contact/activity/MainActivity/mCurrentTabId I
ifne L1
aload 0
ldc com/nd/android/u/contact/activity/SearchUserActivity
invokevirtual com/nd/android/u/contact/activity/MainActivity/goToActivity(Ljava/lang/Class;)V
L2:
return
L1:
aload 0
getfield com/nd/android/u/contact/activity/MainActivity/mCurrentTabId I
iconst_2
if_icmpne L2
aload 0
ldc com/nd/android/u/contact/activity/CreateGroupActivity
invokevirtual com/nd/android/u/contact/activity/MainActivity/goToActivity(Ljava/lang/Class;)V
return
L0:
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/android/u/contact/R$id/main_header_btn_left I
if_icmpne L3
aload 0
invokevirtual com/nd/android/u/contact/activity/MainActivity/finish()V
return
L3:
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/android/u/contact/R$id/main_header_btn_search I
if_icmpne L4
aload 0
getfield com/nd/android/u/contact/activity/MainActivity/mCurrentTabId I
ifne L5
aload 0
ldc com/nd/android/u/contact/activity/SearchMyFriendActivity
invokevirtual com/nd/android/u/contact/activity/MainActivity/goToActivity(Ljava/lang/Class;)V
return
L5:
aload 0
getfield com/nd/android/u/contact/activity/MainActivity/mCurrentTabId I
iconst_1
if_icmpne L6
aload 0
ldc com/nd/android/u/contact/activity/SearchUnitMemberActivity
invokevirtual com/nd/android/u/contact/activity/MainActivity/goToActivity(Ljava/lang/Class;)V
return
L6:
aload 0
getfield com/nd/android/u/contact/activity/MainActivity/mCurrentTabId I
iconst_2
if_icmpne L2
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_5IUP Lcom/product/android/business/ProductTypeDef$Product;
if_acmpne L7
aload 0
ldc com/nd/android/u/contact/activity/SearchGroupActivity
invokevirtual com/nd/android/u/contact/activity/MainActivity/goToActivity(Ljava/lang/Class;)V
return
L7:
aload 0
ldc com/nd/android/u/contact/activity/SearchLocalGroupActivity
invokevirtual com/nd/android/u/contact/activity/MainActivity/goToActivity(Ljava/lang/Class;)V
return
L4:
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/android/u/contact/R$id/main_header_wall I
if_icmpne L2
aload 0
ldc com/nd/android/u/contact/activity/PhotoWallActivity
invokevirtual com/nd/android/u/contact/activity/MainActivity/goToActivity(Ljava/lang/Class;)V
return
.limit locals 2
.limit stack 2
.end method

.method public final onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/product/android/ui/activity/BaseReceiverFragmentActivity/onCreate(Landroid/os/Bundle;)V
aload 0
getstatic com/nd/android/u/contact/R$layout/main_contact I
invokevirtual com/nd/android/u/contact/activity/MainActivity/setContentView(I)V
aload 0
invokevirtual com/nd/android/u/contact/activity/MainActivity/getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
putstatic com/nd/android/u/contact/activity/MainActivity/fm Landroid/support/v4/app/FragmentManager;
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_5IUP Lcom/product/android/business/ProductTypeDef$Product;
if_acmpne L0
aload 0
iconst_0
putfield com/nd/android/u/contact/activity/MainActivity/isShowPhotoWall Z
L0:
aload 0
invokevirtual com/nd/android/u/contact/activity/MainActivity/initComponent()V
aload 0
invokevirtual com/nd/android/u/contact/activity/MainActivity/initEvent()V
invokestatic de/greenrobot/event/EventBus/getDefault()Lde/greenrobot/event/EventBus;
aload 0
ldc java/lang/String
iconst_0
anewarray java/lang/Class
invokevirtual de/greenrobot/event/EventBus/register(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)V
return
.limit locals 2
.limit stack 4
.end method

.method protected onDestroy()V
aload 0
invokespecial com/product/android/ui/activity/BaseReceiverFragmentActivity/onDestroy()V
invokestatic de/greenrobot/event/EventBus/getDefault()Lde/greenrobot/event/EventBus;
aload 0
iconst_1
anewarray java/lang/Class
dup
iconst_0
ldc java/lang/String
aastore
invokevirtual de/greenrobot/event/EventBus/unregister(Ljava/lang/Object;[Ljava/lang/Class;)V
return
.limit locals 1
.limit stack 6
.end method

.method public onEventMainThread(Ljava/lang/String;)V
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
L1:
return
L0:
aload 1
ldc "SYNC_UNIT_SUCCESS"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L2
aload 0
getfield com/nd/android/u/contact/activity/MainActivity/adapter Lcom/nd/android/u/contact/adapter/ContactFragmentAdapter;
iconst_1
invokevirtual com/nd/android/u/contact/adapter/ContactFragmentAdapter/notifyFinish(I)V
aload 0
getfield com/nd/android/u/contact/activity/MainActivity/adapter Lcom/nd/android/u/contact/adapter/ContactFragmentAdapter;
iconst_2
invokevirtual com/nd/android/u/contact/adapter/ContactFragmentAdapter/refresh(I)V
return
L2:
aload 1
ldc "SYNC_UNIT_FAIL"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L1
aload 0
getfield com/nd/android/u/contact/activity/MainActivity/adapter Lcom/nd/android/u/contact/adapter/ContactFragmentAdapter;
iconst_1
invokevirtual com/nd/android/u/contact/adapter/ContactFragmentAdapter/notifyError(I)V
aload 0
getstatic com/nd/android/u/contact/R$string/sync_unitdata_fail I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
return
.limit locals 2
.limit stack 2
.end method

.method public final onResume()V
aload 0
invokespecial com/product/android/ui/activity/BaseReceiverFragmentActivity/onResume()V
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getCurrentUserInfo()Lcom/product/android/business/bean/UserInfo;
ifnull L0
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
ifnonnull L1
L0:
return
L1:
aload 0
getfield com/nd/android/u/contact/activity/MainActivity/adapter Lcom/nd/android/u/contact/adapter/ContactFragmentAdapter;
aload 0
getfield com/nd/android/u/contact/activity/MainActivity/mCurrentTabId I
invokevirtual com/nd/android/u/contact/adapter/ContactFragmentAdapter/refresh(I)V
return
.limit locals 1
.limit stack 2
.end method

.method protected final onStart()V
aload 0
invokespecial com/product/android/ui/activity/BaseReceiverFragmentActivity/onStart()V
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getCurrentUserInfo()Lcom/product/android/business/bean/UserInfo;
ifnull L0
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
ifnonnull L1
L0:
aload 0
invokevirtual com/nd/android/u/contact/activity/MainActivity/finish()V
L2:
return
L1:
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
ifnull L2
aload 0
getfield com/nd/android/u/contact/activity/MainActivity/mTitleText Landroid/widget/TextView;
getstatic com/nd/android/u/contact/R$string/tab_contacts I
invokevirtual android/widget/TextView/setText(I)V
return
.limit locals 1
.limit stack 2
.end method

.method public showNew(I)Z
iconst_1
ireturn
.limit locals 2
.limit stack 1
.end method
