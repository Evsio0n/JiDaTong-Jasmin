.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/activity/SendFlowerTaskActivity
.super com/product/android/ui/activity/BaseActivity
.implements android/view/View$OnClickListener
.implements com/product/android/ui/widget/PagingLoadListView$IListViewNextPageListener
.inner class inner com/nd/android/u/cloud/activity/SendFlowerTaskActivity$1
.inner class inner com/nd/android/u/cloud/activity/SendFlowerTaskActivity$2
.inner class inner com/nd/android/u/cloud/activity/SendFlowerTaskActivity$3
.inner class inner com/nd/android/u/cloud/activity/SendFlowerTaskActivity$4
.inner class inner com/nd/android/u/cloud/activity/SendFlowerTaskActivity$5
.inner class inner com/nd/android/u/cloud/activity/SendFlowerTaskActivity$6
.inner class public GetNextPageTask inner com/nd/android/u/cloud/activity/SendFlowerTaskActivity$GetNextPageTask outer com/nd/android/u/cloud/activity/SendFlowerTaskActivity
.inner class public InitTask inner com/nd/android/u/cloud/activity/SendFlowerTaskActivity$InitTask outer com/nd/android/u/cloud/activity/SendFlowerTaskActivity
.inner class protected SearchUserTask inner com/nd/android/u/cloud/activity/SendFlowerTaskActivity$SearchUserTask outer com/nd/android/u/cloud/activity/SendFlowerTaskActivity

.field public static final 'PARAM_NAME_PRE' Ljava/lang/String; = "strNamePre"

.field private 'autoCompleteAdapter' Lcom/nd/android/u/contact/adapter/AutoTextAdapter;

.field private 'bolSearchFlag' Z

.field private 'clearInputBtn' Landroid/widget/Button;

.field 'handler' Landroid/os/Handler;

.field private 'mAllUidList' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Ljava/lang/Long;>;"

.field protected 'mBuilder' Lcom/nd/android/u/contact/dialog/PhotoScreenDialog;

.field protected 'mDialog' Landroid/app/Dialog;

.field private 'mFilterBtn' Landroid/widget/Button;

.field private 'mFilterSelectIv' Landroid/widget/ImageView;

.field public 'mGetNextPageListener' Lcom/common/android/utils/task/genericTask/TaskListener;

.field protected 'mGetNextPageTask' Lcom/common/android/utils/task/genericTask/GenericTask;

.field private 'mHeaderBackBtn' Landroid/widget/ImageView;

.field private 'mHeaderLayout' Landroid/widget/RelativeLayout;

.field protected 'mInitTask' Lcom/common/android/utils/task/genericTask/GenericTask;

.field public 'mInitTaskListener' Lcom/common/android/utils/task/genericTask/TaskListener;

.field private 'mInputSearchNameTv' Landroid/widget/AutoCompleteTextView;

.field private 'mRankNum' I

.field private 'mSearchBtn' Landroid/widget/Button;

.field private 'mSearchLayout' Landroid/widget/RelativeLayout;

.field private 'mSearchUidList' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Ljava/lang/Long;>;"

.field protected 'mSearchUserTask' Lcom/common/android/utils/task/genericTask/GenericTask;

.field protected 'mSearchUserTaskListener' Lcom/common/android/utils/task/genericTask/TaskListener;

.field private 'mSendFlowerListAdapter' Lcom/nd/android/u/cloud/ui/adapter/SendFlowerListAdapter;

.field private 'mSendFlowerListView' Lcom/product/android/ui/widget/PagingLoadListView;

.field private 'searchCtlBtn' Landroid/widget/Button;

.field private 'textWatcher' Landroid/text/TextWatcher;

.method public <init>()V
aload 0
invokespecial com/product/android/ui/activity/BaseActivity/<init>()V
aload 0
aconst_null
putfield com/nd/android/u/cloud/activity/SendFlowerTaskActivity/mSendFlowerListView Lcom/product/android/ui/widget/PagingLoadListView;
aload 0
aconst_null
putfield com/nd/android/u/cloud/activity/SendFlowerTaskActivity/mSendFlowerListAdapter Lcom/nd/android/u/cloud/ui/adapter/SendFlowerListAdapter;
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/cloud/activity/SendFlowerTaskActivity/mAllUidList Ljava/util/ArrayList;
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/cloud/activity/SendFlowerTaskActivity/mSearchUidList Ljava/util/ArrayList;
aload 0
iconst_1
putfield com/nd/android/u/cloud/activity/SendFlowerTaskActivity/mRankNum I
aload 0
new com/nd/android/u/cloud/activity/SendFlowerTaskActivity$2
dup
aload 0
invokespecial com/nd/android/u/cloud/activity/SendFlowerTaskActivity$2/<init>(Lcom/nd/android/u/cloud/activity/SendFlowerTaskActivity;)V
putfield com/nd/android/u/cloud/activity/SendFlowerTaskActivity/mInitTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
aload 0
new com/nd/android/u/cloud/activity/SendFlowerTaskActivity$3
dup
aload 0
invokespecial com/nd/android/u/cloud/activity/SendFlowerTaskActivity$3/<init>(Lcom/nd/android/u/cloud/activity/SendFlowerTaskActivity;)V
putfield com/nd/android/u/cloud/activity/SendFlowerTaskActivity/handler Landroid/os/Handler;
aload 0
new com/nd/android/u/cloud/activity/SendFlowerTaskActivity$4
dup
aload 0
invokespecial com/nd/android/u/cloud/activity/SendFlowerTaskActivity$4/<init>(Lcom/nd/android/u/cloud/activity/SendFlowerTaskActivity;)V
putfield com/nd/android/u/cloud/activity/SendFlowerTaskActivity/mGetNextPageListener Lcom/common/android/utils/task/genericTask/TaskListener;
aload 0
new com/nd/android/u/cloud/activity/SendFlowerTaskActivity$5
dup
aload 0
invokespecial com/nd/android/u/cloud/activity/SendFlowerTaskActivity$5/<init>(Lcom/nd/android/u/cloud/activity/SendFlowerTaskActivity;)V
putfield com/nd/android/u/cloud/activity/SendFlowerTaskActivity/textWatcher Landroid/text/TextWatcher;
aload 0
new com/nd/android/u/cloud/activity/SendFlowerTaskActivity$6
dup
aload 0
invokespecial com/nd/android/u/cloud/activity/SendFlowerTaskActivity$6/<init>(Lcom/nd/android/u/cloud/activity/SendFlowerTaskActivity;)V
putfield com/nd/android/u/cloud/activity/SendFlowerTaskActivity/mSearchUserTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
return
.limit locals 1
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/android/u/cloud/activity/SendFlowerTaskActivity;)Ljava/util/ArrayList;
aload 0
getfield com/nd/android/u/cloud/activity/SendFlowerTaskActivity/mSearchUidList Ljava/util/ArrayList;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$002(Lcom/nd/android/u/cloud/activity/SendFlowerTaskActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/SendFlowerTaskActivity/mSearchUidList Ljava/util/ArrayList;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$100(Lcom/nd/android/u/cloud/activity/SendFlowerTaskActivity;Ljava/lang/String;)V
aload 0
aload 1
invokespecial com/nd/android/u/cloud/activity/SendFlowerTaskActivity/doSearch(Ljava/lang/String;)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$200(Lcom/nd/android/u/cloud/activity/SendFlowerTaskActivity;)Lcom/product/android/ui/widget/PagingLoadListView;
aload 0
getfield com/nd/android/u/cloud/activity/SendFlowerTaskActivity/mSendFlowerListView Lcom/product/android/ui/widget/PagingLoadListView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/nd/android/u/cloud/activity/SendFlowerTaskActivity;)V
aload 0
invokespecial com/nd/android/u/cloud/activity/SendFlowerTaskActivity/resetPhotoWallViewParams()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$400(Lcom/nd/android/u/cloud/activity/SendFlowerTaskActivity;)Ljava/util/ArrayList;
aload 0
getfield com/nd/android/u/cloud/activity/SendFlowerTaskActivity/mAllUidList Ljava/util/ArrayList;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$402(Lcom/nd/android/u/cloud/activity/SendFlowerTaskActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/SendFlowerTaskActivity/mAllUidList Ljava/util/ArrayList;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$500(Lcom/nd/android/u/cloud/activity/SendFlowerTaskActivity;)V
aload 0
invokespecial com/nd/android/u/cloud/activity/SendFlowerTaskActivity/controlHeaderShown()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$600(Lcom/nd/android/u/cloud/activity/SendFlowerTaskActivity;)I
aload 0
getfield com/nd/android/u/cloud/activity/SendFlowerTaskActivity/mRankNum I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$602(Lcom/nd/android/u/cloud/activity/SendFlowerTaskActivity;I)I
aload 0
iload 1
putfield com/nd/android/u/cloud/activity/SendFlowerTaskActivity/mRankNum I
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$700(Lcom/nd/android/u/cloud/activity/SendFlowerTaskActivity;)Landroid/widget/AutoCompleteTextView;
aload 0
getfield com/nd/android/u/cloud/activity/SendFlowerTaskActivity/mInputSearchNameTv Landroid/widget/AutoCompleteTextView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$800(Lcom/nd/android/u/cloud/activity/SendFlowerTaskActivity;)Landroid/widget/Button;
aload 0
getfield com/nd/android/u/cloud/activity/SendFlowerTaskActivity/searchCtlBtn Landroid/widget/Button;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$900(Lcom/nd/android/u/cloud/activity/SendFlowerTaskActivity;)Lcom/nd/android/u/contact/adapter/AutoTextAdapter;
aload 0
getfield com/nd/android/u/cloud/activity/SendFlowerTaskActivity/autoCompleteAdapter Lcom/nd/android/u/contact/adapter/AutoTextAdapter;
areturn
.limit locals 1
.limit stack 1
.end method

.method private controlHeaderShown()V
invokestatic com/nd/android/u/contact/dataStructure/PhotoScreenCondition/getInstance()Lcom/nd/android/u/contact/dataStructure/PhotoScreenCondition;
invokevirtual com/nd/android/u/contact/dataStructure/PhotoScreenCondition/isDefaultCondition()Z
ifeq L0
aload 0
getfield com/nd/android/u/cloud/activity/SendFlowerTaskActivity/mSearchBtn Landroid/widget/Button;
iconst_0
invokevirtual android/widget/Button/setVisibility(I)V
aload 0
getfield com/nd/android/u/cloud/activity/SendFlowerTaskActivity/mFilterSelectIv Landroid/widget/ImageView;
bipush 8
invokevirtual android/widget/ImageView/setVisibility(I)V
return
L0:
aload 0
getfield com/nd/android/u/cloud/activity/SendFlowerTaskActivity/mSearchBtn Landroid/widget/Button;
bipush 8
invokevirtual android/widget/Button/setVisibility(I)V
aload 0
getfield com/nd/android/u/cloud/activity/SendFlowerTaskActivity/mFilterSelectIv Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
return
.limit locals 1
.limit stack 2
.end method

.method private doSearch(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/cloud/activity/SendFlowerTaskActivity/mSearchUserTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L0
aload 0
getfield com/nd/android/u/cloud/activity/SendFlowerTaskActivity/mSearchUserTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L0
aload 0
getfield com/nd/android/u/cloud/activity/SendFlowerTaskActivity/mSearchUserTask Lcom/common/android/utils/task/genericTask/GenericTask;
iconst_1
invokevirtual com/common/android/utils/task/genericTask/GenericTask/cancel(Z)Z
pop
L0:
aload 0
new com/nd/android/u/cloud/activity/SendFlowerTaskActivity$SearchUserTask
dup
aload 0
invokespecial com/nd/android/u/cloud/activity/SendFlowerTaskActivity$SearchUserTask/<init>(Lcom/nd/android/u/cloud/activity/SendFlowerTaskActivity;)V
putfield com/nd/android/u/cloud/activity/SendFlowerTaskActivity/mSearchUserTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/cloud/activity/SendFlowerTaskActivity/mSearchUserTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/cloud/activity/SendFlowerTaskActivity/mSearchUserTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/setListener(Lcom/common/android/utils/task/genericTask/TaskListener;)V
new com/common/android/utils/task/genericTask/TaskParams
dup
invokespecial com/common/android/utils/task/genericTask/TaskParams/<init>()V
astore 1
aload 1
ldc "strNamePre"
aload 0
getfield com/nd/android/u/cloud/activity/SendFlowerTaskActivity/mInputSearchNameTv Landroid/widget/AutoCompleteTextView;
invokevirtual android/widget/AutoCompleteTextView/getText()Landroid/text/Editable;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokevirtual com/common/android/utils/task/genericTask/TaskParams/put(Ljava/lang/String;Ljava/lang/Object;)V
aload 0
getfield com/nd/android/u/cloud/activity/SendFlowerTaskActivity/mSearchUserTask Lcom/common/android/utils/task/genericTask/GenericTask;
iconst_1
anewarray com/common/android/utils/task/genericTask/TaskParams
dup
iconst_0
aload 1
aastore
invokevirtual com/common/android/utils/task/genericTask/GenericTask/execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
pop
return
.limit locals 2
.limit stack 5
.end method

.method private resetPhotoWallViewParams()V
aload 0
getfield com/nd/android/u/cloud/activity/SendFlowerTaskActivity/mSendFlowerListView Lcom/product/android/ui/widget/PagingLoadListView;
invokevirtual com/product/android/ui/widget/PagingLoadListView/resetParams()V
return
.limit locals 1
.limit stack 1
.end method

.method private showSearchHeader()V
aload 0
getfield com/nd/android/u/cloud/activity/SendFlowerTaskActivity/mHeaderLayout Landroid/widget/RelativeLayout;
ifnull L0
aload 0
getfield com/nd/android/u/cloud/activity/SendFlowerTaskActivity/mSearchLayout Landroid/widget/RelativeLayout;
ifnull L0
aload 0
getfield com/nd/android/u/cloud/activity/SendFlowerTaskActivity/mHeaderLayout Landroid/widget/RelativeLayout;
bipush 8
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
aload 0
getfield com/nd/android/u/cloud/activity/SendFlowerTaskActivity/mInputSearchNameTv Landroid/widget/AutoCompleteTextView;
ldc ""
invokevirtual android/widget/AutoCompleteTextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/cloud/activity/SendFlowerTaskActivity/mSearchLayout Landroid/widget/RelativeLayout;
iconst_0
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
L0:
aload 0
getfield com/nd/android/u/cloud/activity/SendFlowerTaskActivity/mInputSearchNameTv Landroid/widget/AutoCompleteTextView;
invokevirtual android/widget/AutoCompleteTextView/requestFocusFromTouch()Z
pop
aload 0
ldc "input_method"
invokevirtual com/nd/android/u/cloud/activity/SendFlowerTaskActivity/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/view/inputmethod/InputMethodManager
iconst_0
iconst_2
invokevirtual android/view/inputmethod/InputMethodManager/toggleSoftInput(II)V
return
.limit locals 1
.limit stack 3
.end method

.method private showTitleHeader()V
aload 0
invokevirtual com/nd/android/u/cloud/activity/SendFlowerTaskActivity/getCurrentFocus()Landroid/view/View;
ifnull L0
aload 0
invokevirtual com/nd/android/u/cloud/activity/SendFlowerTaskActivity/getCurrentFocus()Landroid/view/View;
invokevirtual android/view/View/getWindowToken()Landroid/os/IBinder;
ifnull L0
aload 0
ldc "input_method"
invokevirtual com/nd/android/u/cloud/activity/SendFlowerTaskActivity/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/view/inputmethod/InputMethodManager
aload 0
invokevirtual com/nd/android/u/cloud/activity/SendFlowerTaskActivity/getCurrentFocus()Landroid/view/View;
invokevirtual android/view/View/getWindowToken()Landroid/os/IBinder;
iconst_2
invokevirtual android/view/inputmethod/InputMethodManager/hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
pop
L0:
aload 0
getfield com/nd/android/u/cloud/activity/SendFlowerTaskActivity/mHeaderLayout Landroid/widget/RelativeLayout;
ifnull L1
aload 0
getfield com/nd/android/u/cloud/activity/SendFlowerTaskActivity/mSearchLayout Landroid/widget/RelativeLayout;
ifnull L1
aload 0
getfield com/nd/android/u/cloud/activity/SendFlowerTaskActivity/mHeaderLayout Landroid/widget/RelativeLayout;
iconst_0
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
aload 0
getfield com/nd/android/u/cloud/activity/SendFlowerTaskActivity/mInputSearchNameTv Landroid/widget/AutoCompleteTextView;
ldc ""
invokevirtual android/widget/AutoCompleteTextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/cloud/activity/SendFlowerTaskActivity/mSearchLayout Landroid/widget/RelativeLayout;
bipush 8
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
L1:
return
.limit locals 1
.limit stack 3
.end method

.method public createPhotoWallItem(J)Lcom/nd/android/u/contact/view/PhotoWallItem;
new com/nd/android/u/contact/view/PhotoWallItem
dup
invokespecial com/nd/android/u/contact/view/PhotoWallItem/<init>()V
astore 4
aload 4
lload 1
putfield com/nd/android/u/contact/view/PhotoWallItem/uid J
invokestatic com/nd/android/u/contact/cache/UserCacheManager/getInstance()Lcom/nd/android/u/contact/cache/UserCacheManager;
lload 1
invokevirtual com/nd/android/u/contact/cache/UserCacheManager/synGetUser(J)Lcom/product/android/commonInterface/contact/OapUser;
astore 5
aload 4
aload 5
invokevirtual com/product/android/commonInterface/contact/OapUser/getComment()Ljava/lang/String;
putfield com/nd/android/u/contact/view/PhotoWallItem/userNameStr Ljava/lang/String;
aload 4
aload 5
invokevirtual com/product/android/commonInterface/contact/OapUser/getSignature()Ljava/lang/String;
putfield com/nd/android/u/contact/view/PhotoWallItem/signStr Ljava/lang/String;
aload 4
aload 5
invokevirtual com/product/android/commonInterface/contact/OapUser/getSysavatar()I
putfield com/nd/android/u/contact/view/PhotoWallItem/sysAvatarId I
ldc com/nd/android/u/contact/dao/OapUnitRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapUnitRelationDao
lload 1
invokeinterface com/nd/android/u/contact/dao/OapUnitRelationDao/isExists(J)Z 2
ifeq L0
invokestatic com/nd/android/u/contact/business/OapDepartManager/getInstance()Lcom/nd/android/u/contact/business/OapDepartManager;
lload 1
invokevirtual com/nd/android/u/contact/business/OapDepartManager/getDeptid(J)I
istore 3
invokestatic com/nd/android/u/contact/business/OapDepartManager/getInstance()Lcom/nd/android/u/contact/business/OapDepartManager;
iload 3
invokevirtual com/nd/android/u/contact/business/OapDepartManager/getDepartNameByDeptId(I)Ljava/lang/String;
astore 5
aload 5
ldc ""
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L1
aload 4
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getBindUser()Lcom/product/android/business/login/BindUser; 0
invokevirtual com/product/android/business/login/BindUser/getUnitname()Ljava/lang/String;
putfield com/nd/android/u/contact/view/PhotoWallItem/depNameStr Ljava/lang/String;
aload 4
areturn
L1:
aload 4
aload 5
putfield com/nd/android/u/contact/view/PhotoWallItem/depNameStr Ljava/lang/String;
aload 4
areturn
L0:
ldc com/nd/android/u/contact/dao/OapJMClassRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapJMClassRelationDao
lload 1
invokeinterface com/nd/android/u/contact/dao/OapJMClassRelationDao/isExists(J)Z 2
ifeq L2
ldc com/nd/android/u/contact/dao/OapJMClassRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapJMClassRelationDao
lload 1
invokeinterface com/nd/android/u/contact/dao/OapJMClassRelationDao/searchClassRelation(J)Ljava/util/List; 2
astore 5
aload 5
ifnull L3
aload 5
invokeinterface java/util/List/size()I 0
ifgt L4
L3:
aload 4
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getBindUser()Lcom/product/android/business/login/BindUser; 0
invokevirtual com/product/android/business/login/BindUser/getUnitname()Ljava/lang/String;
putfield com/nd/android/u/contact/view/PhotoWallItem/depNameStr Ljava/lang/String;
aload 4
areturn
L4:
aload 5
iconst_0
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/contact/dataStructure/OapJMClassRelation
astore 5
ldc com/nd/android/u/contact/dao/OapJMClassDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapJMClassDao
aload 5
invokevirtual com/nd/android/u/contact/dataStructure/OapJMClassRelation/getClassid()I
invokeinterface com/nd/android/u/contact/dao/OapJMClassDao/searchOapClasss(I)Lcom/nd/android/u/contact/dataStructure/OapJMClass; 1
astore 5
aload 5
ifnonnull L5
aload 4
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getBindUser()Lcom/product/android/business/login/BindUser; 0
invokevirtual com/product/android/business/login/BindUser/getUnitname()Ljava/lang/String;
putfield com/nd/android/u/contact/view/PhotoWallItem/depNameStr Ljava/lang/String;
aload 4
areturn
L5:
aload 4
aload 5
invokevirtual com/nd/android/u/contact/dataStructure/OapJMClass/getClassname()Ljava/lang/String;
putfield com/nd/android/u/contact/view/PhotoWallItem/depNameStr Ljava/lang/String;
aload 4
areturn
L2:
aload 4
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getBindUser()Lcom/product/android/business/login/BindUser; 0
invokevirtual com/product/android/business/login/BindUser/getUnitname()Ljava/lang/String;
putfield com/nd/android/u/contact/view/PhotoWallItem/depNameStr Ljava/lang/String;
aload 4
areturn
.limit locals 6
.limit stack 3
.end method

.method public getNextPageData()V
aload 0
getfield com/nd/android/u/cloud/activity/SendFlowerTaskActivity/mGetNextPageTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L0
aload 0
getfield com/nd/android/u/cloud/activity/SendFlowerTaskActivity/mGetNextPageTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L0
return
L0:
aload 0
new com/nd/android/u/cloud/activity/SendFlowerTaskActivity$GetNextPageTask
dup
aload 0
invokespecial com/nd/android/u/cloud/activity/SendFlowerTaskActivity$GetNextPageTask/<init>(Lcom/nd/android/u/cloud/activity/SendFlowerTaskActivity;)V
putfield com/nd/android/u/cloud/activity/SendFlowerTaskActivity/mGetNextPageTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/cloud/activity/SendFlowerTaskActivity/mGetNextPageTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/cloud/activity/SendFlowerTaskActivity/mGetNextPageListener Lcom/common/android/utils/task/genericTask/TaskListener;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/setListener(Lcom/common/android/utils/task/genericTask/TaskListener;)V
new com/common/android/utils/task/genericTask/TaskParams
dup
invokespecial com/common/android/utils/task/genericTask/TaskParams/<init>()V
astore 1
aload 0
getfield com/nd/android/u/cloud/activity/SendFlowerTaskActivity/mGetNextPageTask Lcom/common/android/utils/task/genericTask/GenericTask;
iconst_1
anewarray com/common/android/utils/task/genericTask/TaskParams
dup
iconst_0
aload 1
aastore
invokevirtual com/common/android/utils/task/genericTask/GenericTask/execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
pop
return
.limit locals 2
.limit stack 5
.end method

.method protected initComponent()V
aload 0
aload 0
ldc_w 2131626302
invokevirtual com/nd/android/u/cloud/activity/SendFlowerTaskActivity/findViewById(I)Landroid/view/View;
checkcast com/product/android/ui/widget/PagingLoadListView
putfield com/nd/android/u/cloud/activity/SendFlowerTaskActivity/mSendFlowerListView Lcom/product/android/ui/widget/PagingLoadListView;
aload 0
new com/nd/android/u/cloud/ui/adapter/SendFlowerListAdapter
dup
aload 0
invokespecial com/nd/android/u/cloud/ui/adapter/SendFlowerListAdapter/<init>(Landroid/content/Context;)V
putfield com/nd/android/u/cloud/activity/SendFlowerTaskActivity/mSendFlowerListAdapter Lcom/nd/android/u/cloud/ui/adapter/SendFlowerListAdapter;
aload 0
getfield com/nd/android/u/cloud/activity/SendFlowerTaskActivity/mSendFlowerListView Lcom/product/android/ui/widget/PagingLoadListView;
aload 0
getfield com/nd/android/u/cloud/activity/SendFlowerTaskActivity/mSendFlowerListAdapter Lcom/nd/android/u/cloud/ui/adapter/SendFlowerListAdapter;
invokevirtual com/product/android/ui/widget/PagingLoadListView/setAdapter(Landroid/widget/ListAdapter;)V
aload 0
getfield com/nd/android/u/cloud/activity/SendFlowerTaskActivity/mSendFlowerListView Lcom/product/android/ui/widget/PagingLoadListView;
invokestatic com/nostra13/universalimageloader/core/ImageLoader/getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;
aload 0
aload 0
getfield com/nd/android/u/cloud/activity/SendFlowerTaskActivity/mSendFlowerListAdapter Lcom/nd/android/u/cloud/ui/adapter/SendFlowerListAdapter;
invokevirtual com/product/android/ui/widget/PagingLoadListView/setPauseOnScrollListener(Lcom/nostra13/universalimageloader/core/ImageLoader;Lcom/product/android/ui/widget/PagingLoadListView$IListViewNextPageListener;Lcom/product/android/ui/adapter/BaseListViewAdapter;)V
aload 0
getfield com/nd/android/u/cloud/activity/SendFlowerTaskActivity/mSendFlowerListView Lcom/product/android/ui/widget/PagingLoadListView;
aload 0
getfield com/nd/android/u/cloud/activity/SendFlowerTaskActivity/mSendFlowerListAdapter Lcom/nd/android/u/cloud/ui/adapter/SendFlowerListAdapter;
invokevirtual com/product/android/ui/widget/PagingLoadListView/setOnItemClickListener(Lcom/huewu/pla/lib/internal/PLA_AdapterView$OnItemClickListener;)V
aload 0
aload 0
ldc_w 2131626303
invokevirtual com/nd/android/u/cloud/activity/SendFlowerTaskActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/nd/android/u/cloud/activity/SendFlowerTaskActivity/mHeaderLayout Landroid/widget/RelativeLayout;
aload 0
aload 0
ldc_w 2131624281
invokevirtual com/nd/android/u/cloud/activity/SendFlowerTaskActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/cloud/activity/SendFlowerTaskActivity/mHeaderBackBtn Landroid/widget/ImageView;
aload 0
aload 0
ldc_w 2131626304
invokevirtual com/nd/android/u/cloud/activity/SendFlowerTaskActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/android/u/cloud/activity/SendFlowerTaskActivity/mSearchBtn Landroid/widget/Button;
aload 0
aload 0
ldc_w 2131626305
invokevirtual com/nd/android/u/cloud/activity/SendFlowerTaskActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/android/u/cloud/activity/SendFlowerTaskActivity/mFilterBtn Landroid/widget/Button;
aload 0
aload 0
ldc_w 2131626306
invokevirtual com/nd/android/u/cloud/activity/SendFlowerTaskActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/cloud/activity/SendFlowerTaskActivity/mFilterSelectIv Landroid/widget/ImageView;
aload 0
aload 0
ldc_w 2131626307
invokevirtual com/nd/android/u/cloud/activity/SendFlowerTaskActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/nd/android/u/cloud/activity/SendFlowerTaskActivity/mSearchLayout Landroid/widget/RelativeLayout;
aload 0
aload 0
ldc_w 2131626310
invokevirtual com/nd/android/u/cloud/activity/SendFlowerTaskActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/AutoCompleteTextView
putfield com/nd/android/u/cloud/activity/SendFlowerTaskActivity/mInputSearchNameTv Landroid/widget/AutoCompleteTextView;
aload 0
aload 0
ldc_w 2131626311
invokevirtual com/nd/android/u/cloud/activity/SendFlowerTaskActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/android/u/cloud/activity/SendFlowerTaskActivity/clearInputBtn Landroid/widget/Button;
aload 0
aload 0
ldc_w 2131626309
invokevirtual com/nd/android/u/cloud/activity/SendFlowerTaskActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/android/u/cloud/activity/SendFlowerTaskActivity/searchCtlBtn Landroid/widget/Button;
aload 0
new com/nd/android/u/contact/adapter/AutoTextAdapter
dup
aload 0
invokespecial com/nd/android/u/contact/adapter/AutoTextAdapter/<init>(Landroid/content/Context;)V
putfield com/nd/android/u/cloud/activity/SendFlowerTaskActivity/autoCompleteAdapter Lcom/nd/android/u/contact/adapter/AutoTextAdapter;
aload 0
getfield com/nd/android/u/cloud/activity/SendFlowerTaskActivity/mInputSearchNameTv Landroid/widget/AutoCompleteTextView;
aload 0
getfield com/nd/android/u/cloud/activity/SendFlowerTaskActivity/autoCompleteAdapter Lcom/nd/android/u/contact/adapter/AutoTextAdapter;
invokevirtual android/widget/AutoCompleteTextView/setAdapter(Landroid/widget/ListAdapter;)V
aload 0
invokespecial com/nd/android/u/cloud/activity/SendFlowerTaskActivity/showTitleHeader()V
aload 0
getfield com/nd/android/u/cloud/activity/SendFlowerTaskActivity/mHeaderBackBtn Landroid/widget/ImageView;
aload 0
invokevirtual android/widget/ImageView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/cloud/activity/SendFlowerTaskActivity/mSearchBtn Landroid/widget/Button;
aload 0
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/cloud/activity/SendFlowerTaskActivity/mFilterBtn Landroid/widget/Button;
aload 0
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/cloud/activity/SendFlowerTaskActivity/mInputSearchNameTv Landroid/widget/AutoCompleteTextView;
aload 0
getfield com/nd/android/u/cloud/activity/SendFlowerTaskActivity/textWatcher Landroid/text/TextWatcher;
invokevirtual android/widget/AutoCompleteTextView/addTextChangedListener(Landroid/text/TextWatcher;)V
aload 0
getfield com/nd/android/u/cloud/activity/SendFlowerTaskActivity/mInputSearchNameTv Landroid/widget/AutoCompleteTextView;
new com/nd/android/u/cloud/activity/SendFlowerTaskActivity$1
dup
aload 0
invokespecial com/nd/android/u/cloud/activity/SendFlowerTaskActivity$1/<init>(Lcom/nd/android/u/cloud/activity/SendFlowerTaskActivity;)V
invokevirtual android/widget/AutoCompleteTextView/setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
aload 0
getfield com/nd/android/u/cloud/activity/SendFlowerTaskActivity/clearInputBtn Landroid/widget/Button;
aload 0
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/cloud/activity/SendFlowerTaskActivity/searchCtlBtn Landroid/widget/Button;
aload 0
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
ldc_w 2131624282
invokevirtual com/nd/android/u/cloud/activity/SendFlowerTaskActivity/findViewById(I)Landroid/view/View;
aload 0
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
.limit locals 1
.limit stack 4
.end method

.method public initPhotoWallData()V
aload 0
getfield com/nd/android/u/cloud/activity/SendFlowerTaskActivity/mInitTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L0
aload 0
getfield com/nd/android/u/cloud/activity/SendFlowerTaskActivity/mInitTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L0
return
L0:
aload 0
iconst_1
putfield com/nd/android/u/cloud/activity/SendFlowerTaskActivity/mRankNum I
aload 0
new com/nd/android/u/cloud/activity/SendFlowerTaskActivity$InitTask
dup
aload 0
invokespecial com/nd/android/u/cloud/activity/SendFlowerTaskActivity$InitTask/<init>(Lcom/nd/android/u/cloud/activity/SendFlowerTaskActivity;)V
putfield com/nd/android/u/cloud/activity/SendFlowerTaskActivity/mInitTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/cloud/activity/SendFlowerTaskActivity/mInitTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/cloud/activity/SendFlowerTaskActivity/mInitTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/setListener(Lcom/common/android/utils/task/genericTask/TaskListener;)V
new com/common/android/utils/task/genericTask/TaskParams
dup
invokespecial com/common/android/utils/task/genericTask/TaskParams/<init>()V
astore 1
aload 0
getfield com/nd/android/u/cloud/activity/SendFlowerTaskActivity/mInitTask Lcom/common/android/utils/task/genericTask/GenericTask;
iconst_1
anewarray com/common/android/utils/task/genericTask/TaskParams
dup
iconst_0
aload 1
aastore
invokevirtual com/common/android/utils/task/genericTask/GenericTask/execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
pop
return
.limit locals 2
.limit stack 5
.end method

.method public onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
ldc_w 2131626304
if_icmpne L0
aload 0
invokespecial com/nd/android/u/cloud/activity/SendFlowerTaskActivity/showSearchHeader()V
L1:
return
L0:
aload 1
invokevirtual android/view/View/getId()I
ldc_w 2131626304
if_icmpeq L2
aload 1
invokevirtual android/view/View/getId()I
ldc_w 2131626311
if_icmpne L3
L2:
aload 0
getfield com/nd/android/u/cloud/activity/SendFlowerTaskActivity/mInputSearchNameTv Landroid/widget/AutoCompleteTextView;
ldc ""
invokevirtual android/widget/AutoCompleteTextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/cloud/activity/SendFlowerTaskActivity/searchCtlBtn Landroid/widget/Button;
aload 0
ldc_w 2131494922
invokevirtual com/nd/android/u/cloud/activity/SendFlowerTaskActivity/getString(I)Ljava/lang/String;
invokevirtual android/widget/Button/setText(Ljava/lang/CharSequence;)V
return
L3:
aload 1
invokevirtual android/view/View/getId()I
ldc_w 2131626309
if_icmpne L4
aload 0
getfield com/nd/android/u/cloud/activity/SendFlowerTaskActivity/mInputSearchNameTv Landroid/widget/AutoCompleteTextView;
invokevirtual android/widget/AutoCompleteTextView/getText()Landroid/text/Editable;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
astore 1
aload 1
ifnull L5
aload 1
invokevirtual java/lang/String/length()I
ifeq L5
aload 0
ldc "input_method"
invokevirtual com/nd/android/u/cloud/activity/SendFlowerTaskActivity/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/view/inputmethod/InputMethodManager
aload 0
getfield com/nd/android/u/cloud/activity/SendFlowerTaskActivity/mInputSearchNameTv Landroid/widget/AutoCompleteTextView;
invokevirtual android/widget/AutoCompleteTextView/getWindowToken()Landroid/os/IBinder;
iconst_0
invokevirtual android/view/inputmethod/InputMethodManager/hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
pop
aload 0
invokespecial com/nd/android/u/cloud/activity/SendFlowerTaskActivity/resetPhotoWallViewParams()V
aload 0
iconst_1
putfield com/nd/android/u/cloud/activity/SendFlowerTaskActivity/bolSearchFlag Z
aload 0
getfield com/nd/android/u/cloud/activity/SendFlowerTaskActivity/mSearchUidList Ljava/util/ArrayList;
ifnull L6
aload 0
getfield com/nd/android/u/cloud/activity/SendFlowerTaskActivity/mSearchUidList Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
ifeq L6
aload 0
aload 0
getfield com/nd/android/u/cloud/activity/SendFlowerTaskActivity/mSearchUidList Ljava/util/ArrayList;
putfield com/nd/android/u/cloud/activity/SendFlowerTaskActivity/mAllUidList Ljava/util/ArrayList;
aload 0
invokevirtual com/nd/android/u/cloud/activity/SendFlowerTaskActivity/getNextPageData()V
return
L6:
aload 0
getfield com/nd/android/u/cloud/activity/SendFlowerTaskActivity/mAllUidList Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/clear()V
aload 0
ldc_w 2131494562
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
return
L5:
aload 0
invokespecial com/nd/android/u/cloud/activity/SendFlowerTaskActivity/showTitleHeader()V
aload 0
getfield com/nd/android/u/cloud/activity/SendFlowerTaskActivity/bolSearchFlag Z
ifeq L1
aload 0
getfield com/nd/android/u/cloud/activity/SendFlowerTaskActivity/mSearchUidList Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/clear()V
aload 0
iconst_0
putfield com/nd/android/u/cloud/activity/SendFlowerTaskActivity/bolSearchFlag Z
aload 0
invokevirtual com/nd/android/u/cloud/activity/SendFlowerTaskActivity/initPhotoWallData()V
return
L4:
aload 1
invokevirtual android/view/View/getId()I
ldc_w 2131626305
if_icmpne L7
aload 0
new com/nd/android/u/contact/dialog/PhotoScreenDialog
dup
aload 0
aload 0
getfield com/nd/android/u/cloud/activity/SendFlowerTaskActivity/handler Landroid/os/Handler;
invokespecial com/nd/android/u/contact/dialog/PhotoScreenDialog/<init>(Landroid/content/Context;Landroid/os/Handler;)V
putfield com/nd/android/u/cloud/activity/SendFlowerTaskActivity/mBuilder Lcom/nd/android/u/contact/dialog/PhotoScreenDialog;
aload 0
aload 0
getfield com/nd/android/u/cloud/activity/SendFlowerTaskActivity/mBuilder Lcom/nd/android/u/contact/dialog/PhotoScreenDialog;
invokevirtual com/nd/android/u/contact/dialog/PhotoScreenDialog/create()Landroid/app/AlertDialog;
putfield com/nd/android/u/cloud/activity/SendFlowerTaskActivity/mDialog Landroid/app/Dialog;
aload 0
getfield com/nd/android/u/cloud/activity/SendFlowerTaskActivity/mDialog Landroid/app/Dialog;
invokevirtual android/app/Dialog/show()V
return
L7:
aload 1
invokevirtual android/view/View/getId()I
ldc_w 2131624281
if_icmpne L1
aload 0
invokevirtual com/nd/android/u/cloud/activity/SendFlowerTaskActivity/finish()V
return
.limit locals 2
.limit stack 5
.end method

.method protected onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/product/android/ui/activity/BaseActivity/onCreate(Landroid/os/Bundle;)V
aload 0
ldc_w 2130903703
invokevirtual com/nd/android/u/cloud/activity/SendFlowerTaskActivity/setContentView(I)V
invokestatic com/nd/android/u/contact/dataStructure/PhotoScreenCondition/getInstance()Lcom/nd/android/u/contact/dataStructure/PhotoScreenCondition;
invokevirtual com/nd/android/u/contact/dataStructure/PhotoScreenCondition/init()V
aload 0
invokevirtual com/nd/android/u/cloud/activity/SendFlowerTaskActivity/initComponent()V
aload 0
invokevirtual com/nd/android/u/cloud/activity/SendFlowerTaskActivity/initEvent()V
aload 0
invokevirtual com/nd/android/u/cloud/activity/SendFlowerTaskActivity/initPhotoWallData()V
return
.limit locals 2
.limit stack 2
.end method

.method protected onDestroy()V
aload 0
invokespecial com/product/android/ui/activity/BaseActivity/onDestroy()V
return
.limit locals 1
.limit stack 1
.end method

.method public onNextPage(I)V
aload 0
invokevirtual com/nd/android/u/cloud/activity/SendFlowerTaskActivity/getNextPageData()V
return
.limit locals 2
.limit stack 1
.end method

.method protected onPause()V
aload 0
invokespecial com/product/android/ui/activity/BaseActivity/onPause()V
invokestatic com/nostra13/universalimageloader/core/ImageLoader/getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/resume()V
return
.limit locals 1
.limit stack 1
.end method

.method public onResume()V
aload 0
invokespecial com/product/android/ui/activity/BaseActivity/onResume()V
return
.limit locals 1
.limit stack 1
.end method
