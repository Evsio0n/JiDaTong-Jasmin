.bytecode 50.0
.class public synchronized com/nd/android/u/contact/activity/XYGroupListActivity
.super com/product/android/ui/activity/BaseReceiverFragmentActivity
.implements com/product/android/ui/widget/XYSearchBarWidget$OnStateListener
.implements android/view/View$OnClickListener
.implements com/product/android/ui/widget/SearchBarWidget$OnSearchListener
.implements android/widget/PopupWindow$OnDismissListener
.implements com/product/android/ui/widget/XYSearchBarWidget$OnSearchListener
.implements com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupDataObserver
.inner class inner com/nd/android/u/contact/activity/XYGroupListActivity$1
.inner class inner com/nd/android/u/contact/activity/XYGroupListActivity$2
.inner class inner com/nd/android/u/contact/activity/XYGroupListActivity$3
.inner class inner com/nd/android/u/contact/activity/XYGroupListActivity$4
.inner class inner com/nd/android/u/contact/activity/XYGroupListActivity$5
.inner class private MoreActionPopupWindow inner com/nd/android/u/contact/activity/XYGroupListActivity$MoreActionPopupWindow outer com/nd/android/u/contact/activity/XYGroupListActivity
.inner class protected SearchGroupTask inner com/nd/android/u/contact/activity/XYGroupListActivity$SearchGroupTask outer com/nd/android/u/contact/activity/XYGroupListActivity

.field public static final 'FEEDBACK_WAITTIME' I = 15000


.field public static final 'MESSAGE_MENULAYOUT' I = 1002


.field private static final 'MESSAGE_OPTGROUP' I = 1001


.field public static 'fm' Landroid/support/v4/app/FragmentManager;

.field private 'TAG' Ljava/lang/String;

.field protected 'adapter' Lcom/nd/android/u/contact/adapter/XYSearchLocalGroupAdapter;

.field protected 'filter' Ljava/lang/String;

.field private 'fragment' Lcom/nd/android/u/contact/fragment/XYGroupListFragment;

.field private 'group' Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;

.field protected 'handler' Landroid/os/Handler;

.field protected 'imm' Landroid/view/inputmethod/InputMethodManager;

.field private 'key' Ljava/lang/String;

.field protected 'listView' Landroid/widget/ListView;

.field private 'mBack' Landroid/widget/ImageView;

.field private 'mBundle' Landroid/os/Bundle;

.field private 'mCancelBtn' Landroid/widget/Button;

.field private 'mDissolutionBtn' Landroid/widget/Button;

.field private 'mExitBtn' Landroid/widget/Button;

.field public 'mGenKey' Ljava/lang/String;

.field protected 'mGroupList' Ljava/util/List; signature "Ljava/util/List<Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;>;"

.field public 'mGroupOpdialog' Landroid/app/ProgressDialog;

.field public 'mGroupOpmessage' Ljava/lang/String;

.field private 'mMaskLayer' Lcom/common/android/ui/widget/MaskLayer;

.field private 'mMenuLayout' Landroid/widget/LinearLayout;

.field private 'mMoreMenu' Landroid/widget/ImageView;

.field private 'mOpenBtn' Landroid/widget/Button;

.field private 'mOperator' Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/IGroupOperator;

.field private 'mOptType' I

.field private 'mReFreshHandler' Landroid/os/Handler;

.field private 'mReviewBtn' Landroid/widget/Button;

.field private 'mRoot' Landroid/widget/FrameLayout;

.field protected 'mSearchBarWidget' Lcom/product/android/ui/widget/XYSearchBarWidget;

.field protected 'mSearchGroupTask' Lcom/common/android/utils/task/genericTask/GenericTask;

.field private 'mShieldBtn' Landroid/widget/Button;

.field private 'mTitleText' Landroid/widget/TextView;

.field private 'mTransferBtn' Landroid/widget/Button;

.field private 'middleContent' Landroid/widget/RelativeLayout;

.field private 'noResult' Landroid/widget/TextView;

.field protected 'no_data_list_foot_layout' Landroid/widget/LinearLayout;

.method public <init>()V
aload 0
invokespecial com/product/android/ui/activity/BaseReceiverFragmentActivity/<init>()V
aload 0
ldc "XYGroupListActivity"
putfield com/nd/android/u/contact/activity/XYGroupListActivity/TAG Ljava/lang/String;
aload 0
aconst_null
putfield com/nd/android/u/contact/activity/XYGroupListActivity/mMaskLayer Lcom/common/android/ui/widget/MaskLayer;
aload 0
ldc ""
putfield com/nd/android/u/contact/activity/XYGroupListActivity/filter Ljava/lang/String;
aload 0
aconst_null
putfield com/nd/android/u/contact/activity/XYGroupListActivity/fragment Lcom/nd/android/u/contact/fragment/XYGroupListFragment;
aload 0
ldc ""
putfield com/nd/android/u/contact/activity/XYGroupListActivity/mGenKey Ljava/lang/String;
aload 0
new com/nd/android/u/contact/activity/XYGroupListActivity$1
dup
aload 0
invokespecial com/nd/android/u/contact/activity/XYGroupListActivity$1/<init>(Lcom/nd/android/u/contact/activity/XYGroupListActivity;)V
putfield com/nd/android/u/contact/activity/XYGroupListActivity/mReFreshHandler Landroid/os/Handler;
aload 0
new com/nd/android/u/contact/activity/XYGroupListActivity$3
dup
aload 0
invokespecial com/nd/android/u/contact/activity/XYGroupListActivity$3/<init>(Lcom/nd/android/u/contact/activity/XYGroupListActivity;)V
putfield com/nd/android/u/contact/activity/XYGroupListActivity/handler Landroid/os/Handler;
return
.limit locals 1
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/android/u/contact/activity/XYGroupListActivity;)V
aload 0
invokespecial com/nd/android/u/contact/activity/XYGroupListActivity/groupOpMsgSuccess()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/android/u/contact/activity/XYGroupListActivity;)V
aload 0
invokespecial com/nd/android/u/contact/activity/XYGroupListActivity/groupOpMsgFail()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1000(Lcom/nd/android/u/contact/activity/XYGroupListActivity;)Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/IGroupOperator;
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity/mOperator Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/IGroupOperator;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1102(Lcom/nd/android/u/contact/activity/XYGroupListActivity;Ljava/lang/String;)Ljava/lang/String;
aload 0
aload 1
putfield com/nd/android/u/contact/activity/XYGroupListActivity/key Ljava/lang/String;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$1200(Lcom/nd/android/u/contact/activity/XYGroupListActivity;)Landroid/widget/ImageView;
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity/mMoreMenu Landroid/widget/ImageView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/nd/android/u/contact/activity/XYGroupListActivity;)Lcom/nd/android/u/contact/fragment/XYGroupListFragment;
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity/fragment Lcom/nd/android/u/contact/fragment/XYGroupListFragment;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/nd/android/u/contact/activity/XYGroupListActivity;)Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$302(Lcom/nd/android/u/contact/activity/XYGroupListActivity;Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;)Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
aload 0
aload 1
putfield com/nd/android/u/contact/activity/XYGroupListActivity/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$400(Lcom/nd/android/u/contact/activity/XYGroupListActivity;)Landroid/widget/LinearLayout;
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity/mMenuLayout Landroid/widget/LinearLayout;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$500(Lcom/nd/android/u/contact/activity/XYGroupListActivity;)Landroid/os/Bundle;
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity/mBundle Landroid/os/Bundle;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$502(Lcom/nd/android/u/contact/activity/XYGroupListActivity;Landroid/os/Bundle;)Landroid/os/Bundle;
aload 0
aload 1
putfield com/nd/android/u/contact/activity/XYGroupListActivity/mBundle Landroid/os/Bundle;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$600(Lcom/nd/android/u/contact/activity/XYGroupListActivity;)Landroid/widget/Button;
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity/mExitBtn Landroid/widget/Button;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$700(Lcom/nd/android/u/contact/activity/XYGroupListActivity;)Landroid/widget/Button;
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity/mTransferBtn Landroid/widget/Button;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$800(Lcom/nd/android/u/contact/activity/XYGroupListActivity;)Landroid/widget/Button;
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity/mDissolutionBtn Landroid/widget/Button;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$900(Lcom/nd/android/u/contact/activity/XYGroupListActivity;)Landroid/widget/Button;
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity/mShieldBtn Landroid/widget/Button;
areturn
.limit locals 1
.limit stack 1
.end method

.method private final groupOpMsgFail()V
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity/mOptType I
ifne L0
getstatic com/nd/android/u/contact/R$string/dismiss_group_fail I
istore 1
L1:
aload 0
iload 1
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
return
L0:
getstatic com/nd/android/u/contact/R$string/exit_group_fail I
istore 1
goto L1
.limit locals 2
.limit stack 2
.end method

.method private final groupOpMsgSuccess()V
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity/mOptType I
ifne L0
getstatic com/nd/android/u/contact/R$string/dismiss_group_success I
istore 1
L1:
aload 0
iload 1
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
return
L0:
getstatic com/nd/android/u/contact/R$string/exit_group_success I
istore 1
goto L1
.limit locals 2
.limit stack 2
.end method

.method private initProgressDialog(Ljava/lang/String;)V
aload 0
new android/app/ProgressDialog
dup
aload 0
invokespecial android/app/ProgressDialog/<init>(Landroid/content/Context;)V
putfield com/nd/android/u/contact/activity/XYGroupListActivity/mGroupOpdialog Landroid/app/ProgressDialog;
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity/mGroupOpdialog Landroid/app/ProgressDialog;
aload 1
invokevirtual android/app/ProgressDialog/setMessage(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity/mGroupOpdialog Landroid/app/ProgressDialog;
iconst_1
invokevirtual android/app/ProgressDialog/setIndeterminate(Z)V
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity/mGroupOpdialog Landroid/app/ProgressDialog;
iconst_0
invokevirtual android/app/ProgressDialog/setCancelable(Z)V
return
.limit locals 2
.limit stack 4
.end method

.method public OnCancel()V
return
.limit locals 1
.limit stack 0
.end method

.method public OnEditClick()V
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity/mMaskLayer Lcom/common/android/ui/widget/MaskLayer;
invokevirtual com/common/android/ui/widget/MaskLayer/isLayerShowing()Z
ifne L0
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity/mMaskLayer Lcom/common/android/ui/widget/MaskLayer;
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity/mSearchBarWidget Lcom/product/android/ui/widget/XYSearchBarWidget;
bipush 10
invokevirtual com/common/android/ui/widget/MaskLayer/maskLayoutBelow(Landroid/view/View;I)V
L0:
return
.limit locals 1
.limit stack 3
.end method

.method protected final dismissDialog()V
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity/mGroupOpdialog Landroid/app/ProgressDialog;
ifnull L0
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity/mGroupOpdialog Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/isShowing()Z
ifeq L0
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity/mGroupOpdialog Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/dismiss()V
L0:
return
.limit locals 1
.limit stack 1
.end method

.method protected exitOrDissolutionGroup(I)V
aload 0
invokestatic com/common/android/utils/NetWorkUtils/JudgeNetWorkStatus(Landroid/content/Context;)Z
ifne L0
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
getstatic com/nd/android/u/contact/R$string/network_error_to_set_network I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
return
L0:
invokestatic com/nd/android/u/contact/util/ContactStatusUtils/isOnLineIM()Z
ifne L1
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
getstatic com/nd/android/u/contact/R$string/option_fail I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
getstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
iconst_2
sipush 20061
aconst_null
invokevirtual com/product/android/commonInterface/CommonInterfaceManager/CommonInterfaceID(IILcom/product/android/commonInterface/BaseCommonStruct;)I
pop
return
L1:
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/getCreatorID()J
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
lcmp
ifne L2
iconst_0
istore 1
L3:
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_91XY Lcom/product/android/business/ProductTypeDef$Product;
if_acmpne L4
new com/nd/android/u/contact/dialog/XYDismissGroupDailog
dup
aload 0
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
iload 1
invokespecial com/nd/android/u/contact/dialog/XYDismissGroupDailog/<init>(Landroid/content/Context;Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;I)V
pop
return
L2:
iconst_1
istore 1
goto L3
L4:
new com/nd/android/u/contact/dialog/DismissGroupDailog
dup
aload 0
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
iload 1
invokespecial com/nd/android/u/contact/dialog/DismissGroupDailog/<init>(Landroid/content/Context;Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;I)V
invokevirtual android/app/AlertDialog$Builder/create()Landroid/app/AlertDialog;
invokevirtual android/app/AlertDialog/show()V
return
.limit locals 2
.limit stack 5
.end method

.method public final initComponent()V
aload 0
invokespecial com/product/android/ui/activity/BaseReceiverFragmentActivity/initComponent()V
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/fl_actvity_root I
invokevirtual com/nd/android/u/contact/activity/XYGroupListActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/FrameLayout
putfield com/nd/android/u/contact/activity/XYGroupListActivity/mRoot Landroid/widget/FrameLayout;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/main_header_btn_back I
invokevirtual com/nd/android/u/contact/activity/XYGroupListActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/contact/activity/XYGroupListActivity/mBack Landroid/widget/ImageView;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/middle_content I
invokevirtual com/nd/android/u/contact/activity/XYGroupListActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/nd/android/u/contact/activity/XYGroupListActivity/middleContent Landroid/widget/RelativeLayout;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/main_header_more I
invokevirtual com/nd/android/u/contact/activity/XYGroupListActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/contact/activity/XYGroupListActivity/mMoreMenu Landroid/widget/ImageView;
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity/mMoreMenu Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
getstatic android/os/Build$VERSION/SDK_INT I
bipush 16
if_icmplt L0
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity/mMoreMenu Landroid/widget/ImageView;
aconst_null
invokevirtual android/widget/ImageView/setBackground(Landroid/graphics/drawable/Drawable;)V
L1:
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity/mMoreMenu Landroid/widget/ImageView;
getstatic com/nd/android/u/contact/R$drawable/bt_header_more_menu_normal I
invokevirtual android/widget/ImageView/setImageResource(I)V
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/main_header_text_title I
invokevirtual com/nd/android/u/contact/activity/XYGroupListActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/activity/XYGroupListActivity/mTitleText Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity/mTitleText Landroid/widget/TextView;
getstatic com/nd/android/u/contact/R$string/group_title I
invokevirtual android/widget/TextView/setText(I)V
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/search I
invokevirtual com/nd/android/u/contact/activity/XYGroupListActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ListView
putfield com/nd/android/u/contact/activity/XYGroupListActivity/listView Landroid/widget/ListView;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/search_bar I
invokevirtual com/nd/android/u/contact/activity/XYGroupListActivity/findViewById(I)Landroid/view/View;
checkcast com/product/android/ui/widget/XYSearchBarWidget
putfield com/nd/android/u/contact/activity/XYGroupListActivity/mSearchBarWidget Lcom/product/android/ui/widget/XYSearchBarWidget;
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity/mSearchBarWidget Lcom/product/android/ui/widget/XYSearchBarWidget;
aload 0
invokevirtual com/nd/android/u/contact/activity/XYGroupListActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/search_local_group I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual com/product/android/ui/widget/XYSearchBarWidget/setHint(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity/mSearchBarWidget Lcom/product/android/ui/widget/XYSearchBarWidget;
aload 0
invokevirtual com/product/android/ui/widget/XYSearchBarWidget/setOnSearchListener(Lcom/product/android/ui/widget/XYSearchBarWidget$OnSearchListener;)V
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity/mSearchBarWidget Lcom/product/android/ui/widget/XYSearchBarWidget;
aload 0
invokevirtual com/product/android/ui/widget/XYSearchBarWidget/setOnStateListener(Lcom/product/android/ui/widget/XYSearchBarWidget$OnStateListener;)V
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/no_user_list_foot_layout I
invokevirtual com/nd/android/u/contact/activity/XYGroupListActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/android/u/contact/activity/XYGroupListActivity/no_data_list_foot_layout Landroid/widget/LinearLayout;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/no_search_result I
invokevirtual com/nd/android/u/contact/activity/XYGroupListActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/activity/XYGroupListActivity/noResult Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/btn_shield_group_msg I
invokevirtual com/nd/android/u/contact/activity/XYGroupListActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/android/u/contact/activity/XYGroupListActivity/mShieldBtn Landroid/widget/Button;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/btn_review_group_info I
invokevirtual com/nd/android/u/contact/activity/XYGroupListActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/android/u/contact/activity/XYGroupListActivity/mReviewBtn Landroid/widget/Button;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/btn_open_conversation I
invokevirtual com/nd/android/u/contact/activity/XYGroupListActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/android/u/contact/activity/XYGroupListActivity/mOpenBtn Landroid/widget/Button;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/btn_exit_group I
invokevirtual com/nd/android/u/contact/activity/XYGroupListActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/android/u/contact/activity/XYGroupListActivity/mExitBtn Landroid/widget/Button;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/btn_dissolution_group I
invokevirtual com/nd/android/u/contact/activity/XYGroupListActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/android/u/contact/activity/XYGroupListActivity/mDissolutionBtn Landroid/widget/Button;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/btn_transfer_group I
invokevirtual com/nd/android/u/contact/activity/XYGroupListActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/android/u/contact/activity/XYGroupListActivity/mTransferBtn Landroid/widget/Button;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/btn_chage_img_cancel I
invokevirtual com/nd/android/u/contact/activity/XYGroupListActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/android/u/contact/activity/XYGroupListActivity/mCancelBtn Landroid/widget/Button;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/ll_itme_click_menu I
invokevirtual com/nd/android/u/contact/activity/XYGroupListActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/android/u/contact/activity/XYGroupListActivity/mMenuLayout Landroid/widget/LinearLayout;
return
L0:
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity/mMoreMenu Landroid/widget/ImageView;
aconst_null
invokevirtual android/widget/ImageView/setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
goto L1
.limit locals 1
.limit stack 3
.end method

.method protected final initComponentValue()V
getstatic com/nd/android/u/contact/activity/XYGroupListActivity/fm Landroid/support/v4/app/FragmentManager;
invokevirtual android/support/v4/app/FragmentManager/beginTransaction()Landroid/support/v4/app/FragmentTransaction;
astore 1
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity/mTitleText Landroid/widget/TextView;
invokevirtual android/widget/TextView/getText()Ljava/lang/CharSequence;
checkcast java/lang/String
astore 2
aload 0
new com/nd/android/u/contact/fragment/XYGroupListFragment
dup
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity/handler Landroid/os/Handler;
invokespecial com/nd/android/u/contact/fragment/XYGroupListFragment/<init>(Landroid/os/Handler;)V
putfield com/nd/android/u/contact/activity/XYGroupListActivity/fragment Lcom/nd/android/u/contact/fragment/XYGroupListFragment;
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity/mMoreMenu Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 1
getstatic com/nd/android/u/contact/R$id/middle_content I
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity/fragment Lcom/nd/android/u/contact/fragment/XYGroupListFragment;
aload 2
invokevirtual android/support/v4/app/FragmentTransaction/add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;
pop
aload 1
invokevirtual android/support/v4/app/FragmentTransaction/commit()I
pop
aload 0
new com/nd/android/u/contact/adapter/XYSearchLocalGroupAdapter
dup
aload 0
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity/mGroupList Ljava/util/List;
iconst_1
invokespecial com/nd/android/u/contact/adapter/XYSearchLocalGroupAdapter/<init>(Landroid/content/Context;Ljava/util/List;I)V
putfield com/nd/android/u/contact/activity/XYGroupListActivity/adapter Lcom/nd/android/u/contact/adapter/XYSearchLocalGroupAdapter;
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity/listView Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity/adapter Lcom/nd/android/u/contact/adapter/XYSearchLocalGroupAdapter;
invokevirtual android/widget/ListView/setAdapter(Landroid/widget/ListAdapter;)V
aload 0
invokestatic com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory/getInstance()Lcom/nd/android/u/contact/business_new/Controller/ContactOperatorFactory;
invokestatic com/nd/android/u/contact/business_new/ProcesssImpl/ProductLoaderImpl/XYGroupLoader/getInstance()Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/LoaderInterface/IGroupLoader;
invokevirtual com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory/getGroupOperator(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/LoaderInterface/IGroupLoader;)Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/IGroupOperator;
putfield com/nd/android/u/contact/activity/XYGroupListActivity/mOperator Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/IGroupOperator;
aload 0
new com/common/android/ui/widget/MaskLayer
dup
aload 0
invokespecial com/common/android/ui/widget/MaskLayer/<init>(Landroid/content/Context;)V
putfield com/nd/android/u/contact/activity/XYGroupListActivity/mMaskLayer Lcom/common/android/ui/widget/MaskLayer;
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity/mMaskLayer Lcom/common/android/ui/widget/MaskLayer;
new com/nd/android/u/contact/activity/XYGroupListActivity$2
dup
aload 0
invokespecial com/nd/android/u/contact/activity/XYGroupListActivity$2/<init>(Lcom/nd/android/u/contact/activity/XYGroupListActivity;)V
invokevirtual com/common/android/ui/widget/MaskLayer/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
.limit locals 3
.limit stack 6
.end method

.method public final initEvent()V
aload 0
invokespecial com/product/android/ui/activity/BaseReceiverFragmentActivity/initEvent()V
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity/mBack Landroid/widget/ImageView;
aload 0
invokevirtual android/widget/ImageView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity/mMoreMenu Landroid/widget/ImageView;
aload 0
invokevirtual android/widget/ImageView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity/mMenuLayout Landroid/widget/LinearLayout;
aload 0
invokevirtual android/widget/LinearLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity/mShieldBtn Landroid/widget/Button;
aload 0
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity/mReviewBtn Landroid/widget/Button;
aload 0
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity/mDissolutionBtn Landroid/widget/Button;
aload 0
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity/mExitBtn Landroid/widget/Button;
aload 0
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity/mOpenBtn Landroid/widget/Button;
aload 0
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity/mTransferBtn Landroid/widget/Button;
aload 0
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity/mCancelBtn Landroid/widget/Button;
aload 0
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity/listView Landroid/widget/ListView;
iconst_1
invokevirtual android/widget/ListView/setTextFilterEnabled(Z)V
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity/listView Landroid/widget/ListView;
aconst_null
invokevirtual android/widget/ListView/setDivider(Landroid/graphics/drawable/Drawable;)V
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity/listView Landroid/widget/ListView;
new com/nd/android/u/contact/activity/XYGroupListActivity$4
dup
aload 0
invokespecial com/nd/android/u/contact/activity/XYGroupListActivity$4/<init>(Lcom/nd/android/u/contact/activity/XYGroupListActivity;)V
invokevirtual android/widget/ListView/setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity/listView Landroid/widget/ListView;
new com/nd/android/u/contact/activity/XYGroupListActivity$5
dup
aload 0
invokespecial com/nd/android/u/contact/activity/XYGroupListActivity$5/<init>(Lcom/nd/android/u/contact/activity/XYGroupListActivity;)V
invokevirtual android/widget/ListView/setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
return
.limit locals 1
.limit stack 4
.end method

.method public onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/android/u/contact/R$id/main_header_btn_back I
if_icmpne L0
aload 0
invokevirtual com/nd/android/u/contact/activity/XYGroupListActivity/finish()V
L1:
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity/mMenuLayout Landroid/widget/LinearLayout;
bipush 8
invokevirtual android/widget/LinearLayout/setVisibility(I)V
return
L0:
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/android/u/contact/R$id/main_header_more I
if_icmpne L2
new com/nd/android/u/contact/activity/XYGroupListActivity$MoreActionPopupWindow
dup
aload 0
aload 1
invokespecial com/nd/android/u/contact/activity/XYGroupListActivity$MoreActionPopupWindow/<init>(Lcom/nd/android/u/contact/activity/XYGroupListActivity;Landroid/view/View;)V
astore 1
aload 1
aload 0
invokevirtual com/nd/android/u/contact/activity/XYGroupListActivity$MoreActionPopupWindow/setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
aload 1
aload 0
ldc_w 150.0F
invokestatic com/common/android/utils/DisplayUtil/dip2px(Landroid/content/Context;F)I
invokevirtual com/nd/android/u/contact/activity/XYGroupListActivity$MoreActionPopupWindow/setWidth(I)V
aload 1
invokevirtual com/nd/android/u/contact/activity/XYGroupListActivity$MoreActionPopupWindow/showLikePopDownMenu()V
goto L1
L2:
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/android/u/contact/R$id/ll_itme_click_menu I
if_icmpeq L1
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/android/u/contact/R$id/btn_shield_group_msg I
if_icmpne L3
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/getMsgNotifyType()I
ifne L4
iconst_2
istore 2
L5:
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
ldc ""
iload 2
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/setMsgNotifyType(Ljava/lang/String;I)Z
pop
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity/mMenuLayout Landroid/widget/LinearLayout;
bipush 8
invokevirtual android/widget/LinearLayout/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity/fragment Lcom/nd/android/u/contact/fragment/XYGroupListFragment;
invokevirtual com/nd/android/u/contact/fragment/XYGroupListFragment/refresh()V
goto L1
L4:
iconst_0
istore 2
goto L5
L3:
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/android/u/contact/R$id/btn_review_group_info I
if_icmpne L6
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
astore 1
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/getType()I
tableswitch 0
L7
L7
L7
L8
L7
default : L9
L9:
return
L7:
aload 1
aload 0
ldc com/nd/android/u/contact/activity/GroupManagerActivity
invokevirtual android/content/Intent/setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
pop
L10:
aload 1
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity/mBundle Landroid/os/Bundle;
invokevirtual android/content/Intent/putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
pop
aload 0
aload 1
invokevirtual com/nd/android/u/contact/activity/XYGroupListActivity/startActivity(Landroid/content/Intent;)V
goto L1
L8:
aload 1
aload 0
ldc com/nd/android/u/contact/activity/DiscussionManagerActivity
invokevirtual android/content/Intent/setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
pop
goto L10
L6:
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/android/u/contact/R$id/btn_open_conversation I
if_icmpne L11
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/getType()I
iconst_4
if_icmpne L12
aload 0
iconst_0
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/getGID()J
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel$ChatEntry/toChatActivity(Landroid/content/Context;IJ)V
goto L1
L12:
aload 0
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/getType()I
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/getGID()J
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel$ChatEntry/toChatActivity(Landroid/content/Context;IJ)V
goto L1
L11:
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/android/u/contact/R$id/btn_exit_group I
if_icmpne L13
aload 0
aload 0
invokevirtual com/nd/android/u/contact/activity/XYGroupListActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/waiting_for_quit_group I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
putfield com/nd/android/u/contact/activity/XYGroupListActivity/mGroupOpmessage Ljava/lang/String;
aload 0
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity/mGroupOpmessage Ljava/lang/String;
invokespecial com/nd/android/u/contact/activity/XYGroupListActivity/initProgressDialog(Ljava/lang/String;)V
aload 0
iconst_1
putfield com/nd/android/u/contact/activity/XYGroupListActivity/mOptType I
aload 0
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity/mOptType I
invokevirtual com/nd/android/u/contact/activity/XYGroupListActivity/exitOrDissolutionGroup(I)V
goto L1
L13:
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/android/u/contact/R$id/btn_dissolution_group I
if_icmpne L14
aload 0
aload 0
invokevirtual com/nd/android/u/contact/activity/XYGroupListActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/waiting_for_dismiss_group I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
putfield com/nd/android/u/contact/activity/XYGroupListActivity/mGroupOpmessage Ljava/lang/String;
aload 0
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity/mGroupOpmessage Ljava/lang/String;
invokespecial com/nd/android/u/contact/activity/XYGroupListActivity/initProgressDialog(Ljava/lang/String;)V
aload 0
iconst_0
putfield com/nd/android/u/contact/activity/XYGroupListActivity/mOptType I
aload 0
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity/mOptType I
invokevirtual com/nd/android/u/contact/activity/XYGroupListActivity/exitOrDissolutionGroup(I)V
goto L1
L14:
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/android/u/contact/R$id/btn_transfer_group I
if_icmpne L15
new android/content/Intent
dup
aload 0
ldc com/nd/android/u/contact/activity/TransferGroupActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 1
aload 1
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity/mBundle Landroid/os/Bundle;
invokevirtual android/content/Intent/putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
pop
aload 0
aload 1
invokevirtual com/nd/android/u/contact/activity/XYGroupListActivity/startActivity(Landroid/content/Intent;)V
goto L1
L15:
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/android/u/contact/R$id/btn_chage_img_cancel I
if_icmpne L1
goto L1
.limit locals 3
.limit stack 4
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/product/android/ui/activity/BaseReceiverFragmentActivity/onCreate(Landroid/os/Bundle;)V
aload 0
getstatic com/nd/android/u/contact/R$layout/xy_group I
invokevirtual com/nd/android/u/contact/activity/XYGroupListActivity/setContentView(I)V
aload 0
invokevirtual com/nd/android/u/contact/activity/XYGroupListActivity/getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
putstatic com/nd/android/u/contact/activity/XYGroupListActivity/fm Landroid/support/v4/app/FragmentManager;
aload 0
invokevirtual com/nd/android/u/contact/activity/XYGroupListActivity/initComponent()V
aload 0
invokevirtual com/nd/android/u/contact/activity/XYGroupListActivity/initComponentValue()V
aload 0
invokevirtual com/nd/android/u/contact/activity/XYGroupListActivity/initEvent()V
return
.limit locals 2
.limit stack 2
.end method

.method public onDataChanged(IJ)V
iload 1
sipush 2005
if_icmpeq L0
iload 1
sipush 2004
if_icmpne L1
L0:
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity/mGroupOpdialog Landroid/app/ProgressDialog;
ifnull L2
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity/mGroupOpdialog Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/isShowing()Z
ifeq L2
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity/mGroupOpdialog Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/dismiss()V
L2:
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity/handler Landroid/os/Handler;
sipush 1001
invokevirtual android/os/Handler/removeMessages(I)V
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity/mReFreshHandler Landroid/os/Handler;
iconst_0
invokevirtual android/os/Handler/sendEmptyMessage(I)Z
pop
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
ifnull L3
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
aload 0
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/removeGroupDataObserver(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupDataObserver;)V
L3:
return
L1:
iload 1
sipush 2014
if_icmpne L3
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity/mGroupOpdialog Landroid/app/ProgressDialog;
ifnull L4
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity/mGroupOpdialog Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/isShowing()Z
ifeq L4
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity/mGroupOpdialog Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/dismiss()V
L4:
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity/handler Landroid/os/Handler;
sipush 1001
invokevirtual android/os/Handler/removeMessages(I)V
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity/mReFreshHandler Landroid/os/Handler;
iconst_1
invokevirtual android/os/Handler/sendEmptyMessage(I)Z
pop
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
ifnull L3
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
aload 0
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/removeGroupDataObserver(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupDataObserver;)V
return
.limit locals 4
.limit stack 2
.end method

.method protected final onDestroy()V
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity/mSearchGroupTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L0
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity/mSearchGroupTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L0
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity/mSearchGroupTask Lcom/common/android/utils/task/genericTask/GenericTask;
iconst_1
invokevirtual com/common/android/utils/task/genericTask/GenericTask/cancel(Z)Z
pop
L0:
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
ifnull L1
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
aload 0
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/removeGroupDataObserver(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupDataObserver;)V
L1:
aload 0
invokespecial com/product/android/ui/activity/BaseReceiverFragmentActivity/onDestroy()V
return
.limit locals 1
.limit stack 2
.end method

.method public onDismiss()V
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity/mMoreMenu Landroid/widget/ImageView;
aload 0
invokevirtual com/nd/android/u/contact/activity/XYGroupListActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$drawable/bt_header_more_menu_normal I
invokevirtual android/content/res/Resources/getDrawable(I)Landroid/graphics/drawable/Drawable;
invokevirtual android/widget/ImageView/setImageDrawable(Landroid/graphics/drawable/Drawable;)V
return
.limit locals 1
.limit stack 3
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
iload 1
iconst_4
if_icmpne L0
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity/mMenuLayout Landroid/widget/LinearLayout;
invokevirtual android/widget/LinearLayout/getVisibility()I
ifne L0
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity/mMenuLayout Landroid/widget/LinearLayout;
bipush 8
invokevirtual android/widget/LinearLayout/setVisibility(I)V
iconst_1
ireturn
L0:
aload 0
iload 1
aload 2
invokespecial com/product/android/ui/activity/BaseReceiverFragmentActivity/onKeyDown(ILandroid/view/KeyEvent;)Z
ireturn
.limit locals 3
.limit stack 3
.end method

.method public onResume()V
aload 0
invokespecial com/product/android/ui/activity/BaseReceiverFragmentActivity/onResume()V
aload 0
invokevirtual com/nd/android/u/contact/activity/XYGroupListActivity/onSearchCancel()V
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity/mSearchBarWidget Lcom/product/android/ui/widget/XYSearchBarWidget;
invokevirtual com/product/android/ui/widget/XYSearchBarWidget/stop()V
return
.limit locals 1
.limit stack 1
.end method

.method public final onSearchCancel()V
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity/mMaskLayer Lcom/common/android/ui/widget/MaskLayer;
invokevirtual com/common/android/ui/widget/MaskLayer/isLayerShowing()Z
ifeq L0
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity/mMaskLayer Lcom/common/android/ui/widget/MaskLayer;
invokevirtual com/common/android/ui/widget/MaskLayer/hideLayer()V
L0:
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity/listView Landroid/widget/ListView;
bipush 8
invokevirtual android/widget/ListView/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity/no_data_list_foot_layout Landroid/widget/LinearLayout;
bipush 8
invokevirtual android/widget/LinearLayout/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity/middleContent Landroid/widget/RelativeLayout;
iconst_0
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
return
.limit locals 1
.limit stack 2
.end method

.method public final onSearchChange(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity/mMaskLayer Lcom/common/android/ui/widget/MaskLayer;
invokevirtual com/common/android/ui/widget/MaskLayer/isLayerShowing()Z
ifeq L0
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity/mMaskLayer Lcom/common/android/ui/widget/MaskLayer;
invokevirtual com/common/android/ui/widget/MaskLayer/hideLayer()V
L0:
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L1
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity/adapter Lcom/nd/android/u/contact/adapter/XYSearchLocalGroupAdapter;
invokevirtual com/nd/android/u/contact/adapter/XYSearchLocalGroupAdapter/clear()V
return
L1:
aload 0
aload 1
putfield com/nd/android/u/contact/activity/XYGroupListActivity/filter Ljava/lang/String;
aload 0
aload 1
invokevirtual com/nd/android/u/contact/activity/XYGroupListActivity/searchGroup(Ljava/lang/String;)V
return
.limit locals 2
.limit stack 2
.end method

.method public final searchGroup(Ljava/lang/String;)V
aload 1
invokevirtual java/lang/String/trim()Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
return
L0:
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity/mSearchGroupTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L1
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity/mSearchGroupTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L1
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity/mSearchGroupTask Lcom/common/android/utils/task/genericTask/GenericTask;
iconst_1
invokevirtual com/common/android/utils/task/genericTask/GenericTask/cancel(Z)Z
pop
L1:
aload 0
new com/nd/android/u/contact/activity/XYGroupListActivity$SearchGroupTask
dup
aload 0
invokespecial com/nd/android/u/contact/activity/XYGroupListActivity$SearchGroupTask/<init>(Lcom/nd/android/u/contact/activity/XYGroupListActivity;)V
putfield com/nd/android/u/contact/activity/XYGroupListActivity/mSearchGroupTask Lcom/common/android/utils/task/genericTask/GenericTask;
new com/common/android/utils/task/genericTask/TaskParams
dup
invokespecial com/common/android/utils/task/genericTask/TaskParams/<init>()V
astore 2
aload 2
ldc "key"
aload 1
invokevirtual com/common/android/utils/task/genericTask/TaskParams/put(Ljava/lang/String;Ljava/lang/Object;)V
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity/mSearchGroupTask Lcom/common/android/utils/task/genericTask/GenericTask;
iconst_1
anewarray com/common/android/utils/task/genericTask/TaskParams
dup
iconst_0
aload 2
aastore
invokevirtual com/common/android/utils/task/genericTask/GenericTask/execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
pop
return
.limit locals 3
.limit stack 5
.end method

.method protected final setGenKey(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/XYGroupListActivity/mGenKey Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public final showListView(Z)V
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity/middleContent Landroid/widget/RelativeLayout;
bipush 8
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
iload 1
ifeq L0
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity/adapter Lcom/nd/android/u/contact/adapter/XYSearchLocalGroupAdapter;
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity/mGroupList Ljava/util/List;
invokevirtual com/nd/android/u/contact/adapter/XYSearchLocalGroupAdapter/setList(Ljava/util/List;)V
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity/adapter Lcom/nd/android/u/contact/adapter/XYSearchLocalGroupAdapter;
invokevirtual com/nd/android/u/contact/adapter/XYSearchLocalGroupAdapter/notifyDataSetChanged()V
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity/listView Landroid/widget/ListView;
iconst_0
invokevirtual android/widget/ListView/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity/no_data_list_foot_layout Landroid/widget/LinearLayout;
bipush 8
invokevirtual android/widget/LinearLayout/setVisibility(I)V
return
L0:
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity/listView Landroid/widget/ListView;
bipush 8
invokevirtual android/widget/ListView/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity/no_data_list_foot_layout Landroid/widget/LinearLayout;
iconst_0
invokevirtual android/widget/LinearLayout/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity/noResult Landroid/widget/TextView;
aload 0
invokevirtual com/nd/android/u/contact/activity/XYGroupListActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/no_aboat_group I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity/key Ljava/lang/String;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
.limit locals 2
.limit stack 6
.end method

.method protected final startGroupOp()V
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity/mGroupOpdialog Landroid/app/ProgressDialog;
ifnull L0
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity/mGroupOpdialog Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/isShowing()Z
ifne L0
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity/mGroupOpdialog Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/show()V
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity/handler Landroid/os/Handler;
sipush 1001
ldc2_w 15000L
invokevirtual android/os/Handler/sendEmptyMessageDelayed(IJ)Z
pop
L0:
return
.limit locals 1
.limit stack 4
.end method
