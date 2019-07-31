.bytecode 50.0
.class public synchronized com/nd/android/u/contact/activity/PersonalityTagActivity
.super com/product/android/ui/activity/BaseActivity
.implements android/view/View$OnClickListener
.implements com/product/android/ui/widget/PagingLoadListView$IListViewNextPageListener
.inner class inner com/nd/android/u/contact/activity/PersonalityTagActivity$1
.inner class public GetNextPageTask inner com/nd/android/u/contact/activity/PersonalityTagActivity$GetNextPageTask outer com/nd/android/u/contact/activity/PersonalityTagActivity

.field public 'mGetNextPageListener' Lcom/common/android/utils/task/genericTask/TaskListener;

.field protected 'mGetNextPageTask' Lcom/common/android/utils/task/genericTask/GenericTask;

.field private 'mHeaderBackBtn' Landroid/widget/ImageView;

.field private 'mTagListAdapter' Lcom/nd/android/u/contact/adapter/PersonalityTagListAdapter;

.field private 'mTagListView' Lcom/product/android/ui/widget/PagingLoadListView;

.field private 'tag' Lcom/product/android/commonInterface/contact/TagInfo;

.field private 'tagNameTv' Landroid/widget/TextView;

.field private 'tid' I

.method public <init>()V
aload 0
invokespecial com/product/android/ui/activity/BaseActivity/<init>()V
aload 0
aconst_null
putfield com/nd/android/u/contact/activity/PersonalityTagActivity/mTagListView Lcom/product/android/ui/widget/PagingLoadListView;
aload 0
aconst_null
putfield com/nd/android/u/contact/activity/PersonalityTagActivity/mTagListAdapter Lcom/nd/android/u/contact/adapter/PersonalityTagListAdapter;
aload 0
bipush 101
putfield com/nd/android/u/contact/activity/PersonalityTagActivity/tid I
aload 0
new com/nd/android/u/contact/activity/PersonalityTagActivity$1
dup
aload 0
invokespecial com/nd/android/u/contact/activity/PersonalityTagActivity$1/<init>(Lcom/nd/android/u/contact/activity/PersonalityTagActivity;)V
putfield com/nd/android/u/contact/activity/PersonalityTagActivity/mGetNextPageListener Lcom/common/android/utils/task/genericTask/TaskListener;
return
.limit locals 1
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/android/u/contact/activity/PersonalityTagActivity;)Lcom/product/android/ui/widget/PagingLoadListView;
aload 0
getfield com/nd/android/u/contact/activity/PersonalityTagActivity/mTagListView Lcom/product/android/ui/widget/PagingLoadListView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/android/u/contact/activity/PersonalityTagActivity;)I
aload 0
getfield com/nd/android/u/contact/activity/PersonalityTagActivity/tid I
ireturn
.limit locals 1
.limit stack 1
.end method

.method private resetPhotoWallViewParams()V
aload 0
getfield com/nd/android/u/contact/activity/PersonalityTagActivity/mTagListView Lcom/product/android/ui/widget/PagingLoadListView;
invokevirtual com/product/android/ui/widget/PagingLoadListView/resetParams()V
return
.limit locals 1
.limit stack 1
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
getfield com/nd/android/u/contact/activity/PersonalityTagActivity/mGetNextPageTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L0
aload 0
getfield com/nd/android/u/contact/activity/PersonalityTagActivity/mGetNextPageTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L0
return
L0:
aload 0
new com/nd/android/u/contact/activity/PersonalityTagActivity$GetNextPageTask
dup
aload 0
invokespecial com/nd/android/u/contact/activity/PersonalityTagActivity$GetNextPageTask/<init>(Lcom/nd/android/u/contact/activity/PersonalityTagActivity;)V
putfield com/nd/android/u/contact/activity/PersonalityTagActivity/mGetNextPageTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/contact/activity/PersonalityTagActivity/mGetNextPageTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/contact/activity/PersonalityTagActivity/mGetNextPageListener Lcom/common/android/utils/task/genericTask/TaskListener;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/setListener(Lcom/common/android/utils/task/genericTask/TaskListener;)V
new com/common/android/utils/task/genericTask/TaskParams
dup
invokespecial com/common/android/utils/task/genericTask/TaskParams/<init>()V
astore 1
aload 0
getfield com/nd/android/u/contact/activity/PersonalityTagActivity/mGetNextPageTask Lcom/common/android/utils/task/genericTask/GenericTask;
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
getstatic com/nd/android/u/contact/R$id/personality_tag_list I
invokevirtual com/nd/android/u/contact/activity/PersonalityTagActivity/findViewById(I)Landroid/view/View;
checkcast com/product/android/ui/widget/PagingLoadListView
putfield com/nd/android/u/contact/activity/PersonalityTagActivity/mTagListView Lcom/product/android/ui/widget/PagingLoadListView;
aload 0
new com/nd/android/u/contact/adapter/PersonalityTagListAdapter
dup
aload 0
invokespecial com/nd/android/u/contact/adapter/PersonalityTagListAdapter/<init>(Landroid/content/Context;)V
putfield com/nd/android/u/contact/activity/PersonalityTagActivity/mTagListAdapter Lcom/nd/android/u/contact/adapter/PersonalityTagListAdapter;
aload 0
getfield com/nd/android/u/contact/activity/PersonalityTagActivity/mTagListView Lcom/product/android/ui/widget/PagingLoadListView;
aload 0
getfield com/nd/android/u/contact/activity/PersonalityTagActivity/mTagListAdapter Lcom/nd/android/u/contact/adapter/PersonalityTagListAdapter;
invokevirtual com/product/android/ui/widget/PagingLoadListView/setAdapter(Landroid/widget/ListAdapter;)V
aload 0
getfield com/nd/android/u/contact/activity/PersonalityTagActivity/mTagListView Lcom/product/android/ui/widget/PagingLoadListView;
invokestatic com/nostra13/universalimageloader/core/ImageLoader/getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;
aload 0
aload 0
getfield com/nd/android/u/contact/activity/PersonalityTagActivity/mTagListAdapter Lcom/nd/android/u/contact/adapter/PersonalityTagListAdapter;
invokevirtual com/product/android/ui/widget/PagingLoadListView/setPauseOnScrollListener(Lcom/nostra13/universalimageloader/core/ImageLoader;Lcom/product/android/ui/widget/PagingLoadListView$IListViewNextPageListener;Lcom/product/android/ui/adapter/BaseListViewAdapter;)V
aload 0
getfield com/nd/android/u/contact/activity/PersonalityTagActivity/mTagListView Lcom/product/android/ui/widget/PagingLoadListView;
aload 0
getfield com/nd/android/u/contact/activity/PersonalityTagActivity/mTagListAdapter Lcom/nd/android/u/contact/adapter/PersonalityTagListAdapter;
invokevirtual com/product/android/ui/widget/PagingLoadListView/setOnItemClickListener(Lcom/huewu/pla/lib/internal/PLA_AdapterView$OnItemClickListener;)V
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/header_btn_left I
invokevirtual com/nd/android/u/contact/activity/PersonalityTagActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/contact/activity/PersonalityTagActivity/mHeaderBackBtn Landroid/widget/ImageView;
aload 0
getfield com/nd/android/u/contact/activity/PersonalityTagActivity/mHeaderBackBtn Landroid/widget/ImageView;
aload 0
invokevirtual android/widget/ImageView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/header_text_title I
invokevirtual com/nd/android/u/contact/activity/PersonalityTagActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/activity/PersonalityTagActivity/tagNameTv Landroid/widget/TextView;
return
.limit locals 1
.limit stack 4
.end method

.method public initTagData()V
aload 0
invokevirtual com/nd/android/u/contact/activity/PersonalityTagActivity/getIntent()Landroid/content/Intent;
astore 1
aload 1
ifnull L0
aload 1
invokevirtual android/content/Intent/getExtras()Landroid/os/Bundle;
ifnull L0
aload 1
invokevirtual android/content/Intent/getExtras()Landroid/os/Bundle;
ldc "tag"
invokevirtual android/os/Bundle/containsKey(Ljava/lang/String;)Z
ifeq L0
aload 0
aload 1
invokevirtual android/content/Intent/getExtras()Landroid/os/Bundle;
ldc "tag"
invokevirtual android/os/Bundle/get(Ljava/lang/String;)Ljava/lang/Object;
checkcast com/product/android/commonInterface/contact/TagInfo
putfield com/nd/android/u/contact/activity/PersonalityTagActivity/tag Lcom/product/android/commonInterface/contact/TagInfo;
aload 0
getfield com/nd/android/u/contact/activity/PersonalityTagActivity/tag Lcom/product/android/commonInterface/contact/TagInfo;
ifnull L1
aload 0
aload 0
getfield com/nd/android/u/contact/activity/PersonalityTagActivity/tag Lcom/product/android/commonInterface/contact/TagInfo;
invokevirtual com/product/android/commonInterface/contact/TagInfo/getTagid()I
putfield com/nd/android/u/contact/activity/PersonalityTagActivity/tid I
aload 0
getfield com/nd/android/u/contact/activity/PersonalityTagActivity/tagNameTv Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/contact/activity/PersonalityTagActivity/tag Lcom/product/android/commonInterface/contact/TagInfo;
invokevirtual com/product/android/commonInterface/contact/TagInfo/getTagname()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L2:
aload 0
invokespecial com/nd/android/u/contact/activity/PersonalityTagActivity/resetPhotoWallViewParams()V
aload 0
invokevirtual com/nd/android/u/contact/activity/PersonalityTagActivity/getNextPageData()V
return
L1:
aload 0
bipush 101
putfield com/nd/android/u/contact/activity/PersonalityTagActivity/tid I
goto L2
L0:
aload 0
invokevirtual com/nd/android/u/contact/activity/PersonalityTagActivity/finish()V
return
.limit locals 2
.limit stack 3
.end method

.method public onClick(Landroid/view/View;)V
aload 0
invokevirtual com/nd/android/u/contact/activity/PersonalityTagActivity/finish()V
return
.limit locals 2
.limit stack 1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/product/android/ui/activity/BaseActivity/onCreate(Landroid/os/Bundle;)V
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_91XY Lcom/product/android/business/ProductTypeDef$Product;
if_acmpne L0
aload 0
getstatic com/nd/android/u/contact/R$layout/xy_personality_tags I
invokevirtual com/nd/android/u/contact/activity/PersonalityTagActivity/setContentView(I)V
L1:
aload 0
invokevirtual com/nd/android/u/contact/activity/PersonalityTagActivity/initComponent()V
aload 0
invokevirtual com/nd/android/u/contact/activity/PersonalityTagActivity/initTagData()V
return
L0:
aload 0
getstatic com/nd/android/u/contact/R$layout/personality_tags I
invokevirtual com/nd/android/u/contact/activity/PersonalityTagActivity/setContentView(I)V
goto L1
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
invokevirtual com/nd/android/u/contact/activity/PersonalityTagActivity/getNextPageData()V
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
