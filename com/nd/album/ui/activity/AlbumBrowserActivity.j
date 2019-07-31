.bytecode 50.0
.class public synchronized com/nd/album/ui/activity/AlbumBrowserActivity
.super com/common/android/ui/CommonLoadingActivity
.implements android/view/View$OnClickListener
.inner class inner com/nd/album/ui/activity/AlbumBrowserActivity$1
.inner class inner com/nd/album/ui/activity/AlbumBrowserActivity$2
.inner class GetImageDateTask inner com/nd/album/ui/activity/AlbumBrowserActivity$GetImageDateTask outer com/nd/album/ui/activity/AlbumBrowserActivity
.inner class private UploadImageTask inner com/nd/album/ui/activity/AlbumBrowserActivity$UploadImageTask outer com/nd/album/ui/activity/AlbumBrowserActivity

.field private static final 'PHOTO_TASK_SUCCESS' I = 2


.field private 'getDataTask' Lcom/nd/album/ui/activity/AlbumBrowserActivity$GetImageDateTask;

.field private 'gridView' Landroid/widget/GridView;

.field private 'isFullView' Z

.field private 'isMyALbum' Z

.field private 'ivPhoto' Landroid/widget/Button;

.field private 'mAlbumInfo' Lcom/nd/album/bean/AlbumInfo;

.field private 'mAlbumList' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Lcom/product/android/commonInterface/album/Image;>;"

.field private 'mBrowseAdapter' Lcom/nd/album/ui/adapter/AlbumBrowseAdapter;

.field private 'mOwnerNduap_uid' J

.field private 'mOwnerOap_id' J

.field private 'mPickOption' Lcom/nd/album/business/PickedCameraPhoto;

.field private 'mTaskView' Lcom/nd/album/ui/widget/AlbumTaskOverView;

.field private 'mUpdateAlbumImage' Lcom/common/android/utils/task/genericTask/GenericTask;

.field private 'mUploadImageTask' Lcom/common/android/utils/task/genericTask/GenericTask;

.field private 'mUploadImageTaskListener' Lcom/common/android/utils/task/genericTask/TaskListener;

.field private 'm_dialog' Landroid/app/ProgressDialog;

.method public <init>()V
aload 0
invokespecial com/common/android/ui/CommonLoadingActivity/<init>()V
aload 0
iconst_1
putfield com/nd/album/ui/activity/AlbumBrowserActivity/isMyALbum Z
aload 0
iconst_0
putfield com/nd/album/ui/activity/AlbumBrowserActivity/isFullView Z
aload 0
new com/nd/album/ui/activity/AlbumBrowserActivity$2
dup
aload 0
invokespecial com/nd/album/ui/activity/AlbumBrowserActivity$2/<init>(Lcom/nd/album/ui/activity/AlbumBrowserActivity;)V
putfield com/nd/album/ui/activity/AlbumBrowserActivity/mUploadImageTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
return
.limit locals 1
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/album/ui/activity/AlbumBrowserActivity;)Lcom/nd/album/bean/AlbumInfo;
aload 0
getfield com/nd/album/ui/activity/AlbumBrowserActivity/mAlbumInfo Lcom/nd/album/bean/AlbumInfo;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/album/ui/activity/AlbumBrowserActivity;)J
aload 0
getfield com/nd/album/ui/activity/AlbumBrowserActivity/mOwnerOap_id J
lreturn
.limit locals 1
.limit stack 2
.end method

.method static synthetic access$1000(Lcom/nd/album/ui/activity/AlbumBrowserActivity;)Lcom/nd/album/business/PickedCameraPhoto;
aload 0
getfield com/nd/album/ui/activity/AlbumBrowserActivity/mPickOption Lcom/nd/album/business/PickedCameraPhoto;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1100(Lcom/nd/album/ui/activity/AlbumBrowserActivity;)J
aload 0
getfield com/nd/album/ui/activity/AlbumBrowserActivity/mOwnerNduap_uid J
lreturn
.limit locals 1
.limit stack 2
.end method

.method static synthetic access$1200(Lcom/nd/album/ui/activity/AlbumBrowserActivity;Lcom/product/android/commonInterface/album/Image;)V
aload 0
aload 1
invokespecial com/nd/album/ui/activity/AlbumBrowserActivity/insertNewImage(Lcom/product/android/commonInterface/album/Image;)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$1300(Lcom/nd/album/ui/activity/AlbumBrowserActivity;Ljava/lang/String;)V
aload 0
aload 1
invokespecial com/nd/album/ui/activity/AlbumBrowserActivity/beginDialog(Ljava/lang/String;)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$1400(Lcom/nd/album/ui/activity/AlbumBrowserActivity;)Lcom/nd/album/ui/widget/AlbumTaskOverView;
aload 0
getfield com/nd/album/ui/activity/AlbumBrowserActivity/mTaskView Lcom/nd/album/ui/widget/AlbumTaskOverView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1500(Lcom/nd/album/ui/activity/AlbumBrowserActivity;)Landroid/app/ProgressDialog;
aload 0
getfield com/nd/album/ui/activity/AlbumBrowserActivity/m_dialog Landroid/app/ProgressDialog;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/nd/album/ui/activity/AlbumBrowserActivity;)V
aload 0
invokevirtual com/nd/album/ui/activity/AlbumBrowserActivity/showLoadingLayout()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/nd/album/ui/activity/AlbumBrowserActivity;)V
aload 0
invokevirtual com/nd/album/ui/activity/AlbumBrowserActivity/showRetryLayout()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$400(Lcom/nd/album/ui/activity/AlbumBrowserActivity;)Ljava/util/ArrayList;
aload 0
getfield com/nd/album/ui/activity/AlbumBrowserActivity/mAlbumList Ljava/util/ArrayList;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$402(Lcom/nd/album/ui/activity/AlbumBrowserActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
aload 0
aload 1
putfield com/nd/album/ui/activity/AlbumBrowserActivity/mAlbumList Ljava/util/ArrayList;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$500(Lcom/nd/album/ui/activity/AlbumBrowserActivity;)V
aload 0
invokespecial com/nd/album/ui/activity/AlbumBrowserActivity/refreshView()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$600(Lcom/nd/album/ui/activity/AlbumBrowserActivity;)Z
aload 0
getfield com/nd/album/ui/activity/AlbumBrowserActivity/isMyALbum Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$700(Lcom/nd/album/ui/activity/AlbumBrowserActivity;I)V
aload 0
iload 1
invokespecial com/nd/album/ui/activity/AlbumBrowserActivity/setRightBtbVisible(I)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$800(Lcom/nd/album/ui/activity/AlbumBrowserActivity;)Landroid/widget/Button;
aload 0
getfield com/nd/album/ui/activity/AlbumBrowserActivity/rightBtn Landroid/widget/Button;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$900(Lcom/nd/album/ui/activity/AlbumBrowserActivity;)Z
aload 0
getfield com/nd/album/ui/activity/AlbumBrowserActivity/isFullView Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method private beginDialog(Ljava/lang/String;)V
aload 0
aload 0
aload 1
aload 0
invokevirtual com/nd/album/ui/activity/AlbumBrowserActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/album/R$string/wait_for_uploading I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
iconst_1
invokestatic android/app/ProgressDialog/show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;
putfield com/nd/album/ui/activity/AlbumBrowserActivity/m_dialog Landroid/app/ProgressDialog;
return
.limit locals 2
.limit stack 5
.end method

.method private doBack()V
aload 0
getfield com/nd/album/ui/activity/AlbumBrowserActivity/mAlbumInfo Lcom/nd/album/bean/AlbumInfo;
ifnull L0
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
astore 1
aload 1
ldc "album_id"
aload 0
getfield com/nd/album/ui/activity/AlbumBrowserActivity/mAlbumInfo Lcom/nd/album/bean/AlbumInfo;
getfield com/nd/album/bean/AlbumInfo/mAlbumId J
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;J)Landroid/content/Intent;
pop
aload 1
ldc "size"
aload 0
getfield com/nd/album/ui/activity/AlbumBrowserActivity/mAlbumList Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;I)Landroid/content/Intent;
pop
aload 0
iconst_m1
aload 1
invokevirtual com/nd/album/ui/activity/AlbumBrowserActivity/setResult(ILandroid/content/Intent;)V
L1:
aload 0
invokevirtual com/nd/album/ui/activity/AlbumBrowserActivity/finish()V
return
L0:
getstatic com/product/android/business/broadcast/PersonInfoBroadHelper/INSTANCE Lcom/product/android/business/broadcast/PersonInfoBroadHelper;
aload 0
aload 0
getfield com/nd/album/ui/activity/AlbumBrowserActivity/mOwnerNduap_uid J
aload 0
getfield com/nd/album/ui/activity/AlbumBrowserActivity/mAlbumList Ljava/util/ArrayList;
invokevirtual com/product/android/business/broadcast/PersonInfoBroadHelper/sendModifyAlbumBroadCast(Landroid/content/Context;JLjava/util/ArrayList;)V
goto L1
.limit locals 2
.limit stack 5
.end method

.method private getLocalData()Ljava/util/ArrayList;
.signature "()Ljava/util/ArrayList<Lcom/product/android/commonInterface/album/Image;>;"
aload 0
getfield com/nd/album/ui/activity/AlbumBrowserActivity/mAlbumInfo Lcom/nd/album/bean/AlbumInfo;
ifnull L0
getstatic com/nd/album/db/dao/AlbumDAOImpl/INSTANCE Lcom/nd/album/db/dao/AlbumDAOImpl;
aload 0
getfield com/nd/album/ui/activity/AlbumBrowserActivity/mAlbumInfo Lcom/nd/album/bean/AlbumInfo;
getfield com/nd/album/bean/AlbumInfo/mAlbumId J
invokevirtual com/nd/album/db/dao/AlbumDAOImpl/getImageListByAlbumId(J)Ljava/util/ArrayList;
areturn
L0:
getstatic com/nd/album/db/dao/AlbumDAOImpl/INSTANCE Lcom/nd/album/db/dao/AlbumDAOImpl;
aload 0
getfield com/nd/album/ui/activity/AlbumBrowserActivity/mOwnerOap_id J
invokevirtual com/nd/album/db/dao/AlbumDAOImpl/getImageListByCreatorId(J)Ljava/util/ArrayList;
areturn
.limit locals 1
.limit stack 3
.end method

.method private initData(Landroid/os/Bundle;)V
iconst_1
istore 3
aload 1
ifnonnull L0
aload 0
invokevirtual com/nd/album/ui/activity/AlbumBrowserActivity/getIntent()Landroid/content/Intent;
astore 1
aload 0
aload 1
ldc "UAP_ID"
lconst_0
invokevirtual android/content/Intent/getLongExtra(Ljava/lang/String;J)J
putfield com/nd/album/ui/activity/AlbumBrowserActivity/mOwnerNduap_uid J
aload 0
aload 1
ldc "OAP_ID"
lconst_0
invokevirtual android/content/Intent/getLongExtra(Ljava/lang/String;J)J
putfield com/nd/album/ui/activity/AlbumBrowserActivity/mOwnerOap_id J
aload 0
getfield com/nd/album/ui/activity/AlbumBrowserActivity/mOwnerOap_id J
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getOapUid()J 0
lcmp
ifne L1
iconst_1
istore 2
L2:
aload 0
iload 2
putfield com/nd/album/ui/activity/AlbumBrowserActivity/isMyALbum Z
aload 0
aload 1
ldc "ALBUM_INFO"
invokevirtual android/content/Intent/getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;
checkcast com/nd/album/bean/AlbumInfo
putfield com/nd/album/ui/activity/AlbumBrowserActivity/mAlbumInfo Lcom/nd/album/bean/AlbumInfo;
aload 0
getfield com/nd/album/ui/activity/AlbumBrowserActivity/mAlbumInfo Lcom/nd/album/bean/AlbumInfo;
ifnull L3
aload 0
getfield com/nd/album/ui/activity/AlbumBrowserActivity/mAlbumInfo Lcom/nd/album/bean/AlbumInfo;
invokevirtual com/nd/album/bean/AlbumInfo/isFullViewAlbum()Z
ifeq L3
iload 3
istore 2
L4:
aload 0
iload 2
putfield com/nd/album/ui/activity/AlbumBrowserActivity/isFullView Z
L5:
aload 0
getfield com/nd/album/ui/activity/AlbumBrowserActivity/mAlbumInfo Lcom/nd/album/bean/AlbumInfo;
ifnull L6
aload 0
getfield com/nd/album/ui/activity/AlbumBrowserActivity/titleText Landroid/widget/TextView;
aload 0
getfield com/nd/album/ui/activity/AlbumBrowserActivity/mAlbumInfo Lcom/nd/album/bean/AlbumInfo;
getfield com/nd/album/bean/AlbumInfo/mAlbumName Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L7:
aload 0
getfield com/nd/album/ui/activity/AlbumBrowserActivity/mAlbumList Ljava/util/ArrayList;
ifnonnull L8
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/album/ui/activity/AlbumBrowserActivity/mAlbumList Ljava/util/ArrayList;
L8:
aload 0
invokestatic com/common/android/utils/NetWorkUtils/JudgeNetWorkStatus(Landroid/content/Context;)Z
ifne L9
getstatic com/nd/album/R$string/network_error_to_set_network I
invokestatic com/common/android/utils/ToastUtils/display(I)V
aload 0
invokevirtual com/nd/album/ui/activity/AlbumBrowserActivity/showRetryLayout()V
return
L1:
iconst_0
istore 2
goto L2
L3:
iconst_0
istore 2
goto L4
L0:
aload 0
aload 1
ldc "UAP_ID"
invokevirtual android/os/Bundle/getLong(Ljava/lang/String;)J
putfield com/nd/album/ui/activity/AlbumBrowserActivity/mOwnerNduap_uid J
aload 0
aload 1
ldc "AlbumList"
invokevirtual android/os/Bundle/getSerializable(Ljava/lang/String;)Ljava/io/Serializable;
checkcast java/util/ArrayList
putfield com/nd/album/ui/activity/AlbumBrowserActivity/mAlbumList Ljava/util/ArrayList;
aload 0
aload 1
ldc "OAP_ID"
invokevirtual android/os/Bundle/getLong(Ljava/lang/String;)J
putfield com/nd/album/ui/activity/AlbumBrowserActivity/mOwnerOap_id J
aload 0
aload 1
ldc "isMyALbum"
invokevirtual android/os/Bundle/getBoolean(Ljava/lang/String;)Z
putfield com/nd/album/ui/activity/AlbumBrowserActivity/isMyALbum Z
aload 0
aload 1
ldc "ALBUM_INFO"
invokevirtual android/os/Bundle/getSerializable(Ljava/lang/String;)Ljava/io/Serializable;
checkcast com/nd/album/bean/AlbumInfo
putfield com/nd/album/ui/activity/AlbumBrowserActivity/mAlbumInfo Lcom/nd/album/bean/AlbumInfo;
aload 0
aload 1
ldc "isFullView"
invokevirtual android/os/Bundle/getBoolean(Ljava/lang/String;)Z
putfield com/nd/album/ui/activity/AlbumBrowserActivity/isFullView Z
goto L5
L6:
aload 0
getfield com/nd/album/ui/activity/AlbumBrowserActivity/titleText Landroid/widget/TextView;
getstatic com/nd/album/R$string/photo I
invokevirtual android/widget/TextView/setText(I)V
goto L7
L9:
aload 0
invokevirtual com/nd/album/ui/activity/AlbumBrowserActivity/doOrRetry()V
return
.limit locals 4
.limit stack 5
.end method

.method private insertNewImage(Lcom/product/android/commonInterface/album/Image;)V
aload 1
aload 0
getfield com/nd/album/ui/activity/AlbumBrowserActivity/mOwnerOap_id J
invokevirtual com/product/android/commonInterface/album/Image/setCreateUid(J)V
getstatic com/nd/album/db/dao/AlbumDAOImpl/INSTANCE Lcom/nd/album/db/dao/AlbumDAOImpl;
aload 1
invokevirtual com/nd/album/db/dao/AlbumDAOImpl/updateImageInfo(Lcom/product/android/commonInterface/album/Image;)V
aload 0
getfield com/nd/album/ui/activity/AlbumBrowserActivity/mAlbumList Ljava/util/ArrayList;
ifnonnull L0
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/album/ui/activity/AlbumBrowserActivity/mAlbumList Ljava/util/ArrayList;
L0:
aload 0
getfield com/nd/album/ui/activity/AlbumBrowserActivity/mAlbumList Ljava/util/ArrayList;
iconst_0
aload 1
invokevirtual java/util/ArrayList/add(ILjava/lang/Object;)V
return
.limit locals 2
.limit stack 3
.end method

.method private openImageCaptureMenu()V
aload 0
getfield com/nd/album/ui/activity/AlbumBrowserActivity/mPickOption Lcom/nd/album/business/PickedCameraPhoto;
invokevirtual com/nd/album/business/PickedCameraPhoto/openImageCaptureMenu()V
return
.limit locals 1
.limit stack 1
.end method

.method private openPhotoLibraryMenu()V
aload 0
getfield com/nd/album/ui/activity/AlbumBrowserActivity/mPickOption Lcom/nd/album/business/PickedCameraPhoto;
invokevirtual com/nd/album/business/PickedCameraPhoto/openPhotoLibraryMenu()V
return
.limit locals 1
.limit stack 1
.end method

.method private refreshView()V
aload 0
getfield com/nd/album/ui/activity/AlbumBrowserActivity/mAlbumList Ljava/util/ArrayList;
ifnull L0
aload 0
getfield com/nd/album/ui/activity/AlbumBrowserActivity/mAlbumList Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
ifne L1
L0:
aload 0
getstatic com/nd/album/R$string/no_photo I
invokevirtual com/nd/album/ui/activity/AlbumBrowserActivity/showNoData(I)V
aload 0
getfield com/nd/album/ui/activity/AlbumBrowserActivity/gridView Landroid/widget/GridView;
bipush 8
invokevirtual android/widget/GridView/setVisibility(I)V
return
L1:
aload 0
getfield com/nd/album/ui/activity/AlbumBrowserActivity/mBrowseAdapter Lcom/nd/album/ui/adapter/AlbumBrowseAdapter;
ifnonnull L2
aload 0
new com/nd/album/ui/adapter/AlbumBrowseAdapter
dup
aload 0
iconst_1
invokespecial com/nd/album/ui/adapter/AlbumBrowseAdapter/<init>(Landroid/content/Context;Z)V
putfield com/nd/album/ui/activity/AlbumBrowserActivity/mBrowseAdapter Lcom/nd/album/ui/adapter/AlbumBrowseAdapter;
aload 0
getfield com/nd/album/ui/activity/AlbumBrowserActivity/mBrowseAdapter Lcom/nd/album/ui/adapter/AlbumBrowseAdapter;
aload 0
getfield com/nd/album/ui/activity/AlbumBrowserActivity/mAlbumList Ljava/util/ArrayList;
invokevirtual com/nd/album/ui/adapter/AlbumBrowseAdapter/setImageList(Ljava/util/ArrayList;)V
aload 0
getfield com/nd/album/ui/activity/AlbumBrowserActivity/gridView Landroid/widget/GridView;
aload 0
getfield com/nd/album/ui/activity/AlbumBrowserActivity/mBrowseAdapter Lcom/nd/album/ui/adapter/AlbumBrowseAdapter;
invokevirtual android/widget/GridView/setAdapter(Landroid/widget/ListAdapter;)V
L3:
aload 0
invokevirtual com/nd/album/ui/activity/AlbumBrowserActivity/hideAllCommonView()V
aload 0
getfield com/nd/album/ui/activity/AlbumBrowserActivity/gridView Landroid/widget/GridView;
iconst_0
invokevirtual android/widget/GridView/setVisibility(I)V
return
L2:
aload 0
getfield com/nd/album/ui/activity/AlbumBrowserActivity/mBrowseAdapter Lcom/nd/album/ui/adapter/AlbumBrowseAdapter;
aload 0
getfield com/nd/album/ui/activity/AlbumBrowserActivity/mAlbumList Ljava/util/ArrayList;
invokevirtual com/nd/album/ui/adapter/AlbumBrowseAdapter/setImageList(Ljava/util/ArrayList;)V
aload 0
getfield com/nd/album/ui/activity/AlbumBrowserActivity/mBrowseAdapter Lcom/nd/album/ui/adapter/AlbumBrowseAdapter;
invokevirtual com/nd/album/ui/adapter/AlbumBrowseAdapter/notifyDataSetChanged()V
goto L3
.limit locals 1
.limit stack 5
.end method

.method private setRightBtbVisible(I)V
aload 0
getfield com/nd/album/ui/activity/AlbumBrowserActivity/rightBtn Landroid/widget/Button;
iload 1
invokevirtual android/widget/Button/setVisibility(I)V
aload 0
getfield com/nd/album/ui/activity/AlbumBrowserActivity/ivPhoto Landroid/widget/Button;
iload 1
invokevirtual android/widget/Button/setVisibility(I)V
return
.limit locals 2
.limit stack 2
.end method

.method private uploadImage(ILandroid/content/Intent;)V
aload 0
getfield com/nd/album/ui/activity/AlbumBrowserActivity/mUploadImageTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L0
aload 0
getfield com/nd/album/ui/activity/AlbumBrowserActivity/mUploadImageTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L0
return
L0:
aload 0
new com/nd/album/ui/activity/AlbumBrowserActivity$UploadImageTask
dup
aload 0
iload 1
aload 2
invokespecial com/nd/album/ui/activity/AlbumBrowserActivity$UploadImageTask/<init>(Lcom/nd/album/ui/activity/AlbumBrowserActivity;ILandroid/content/Intent;)V
putfield com/nd/album/ui/activity/AlbumBrowserActivity/mUploadImageTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/album/ui/activity/AlbumBrowserActivity/mUploadImageTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/album/ui/activity/AlbumBrowserActivity/mUploadImageTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/setListener(Lcom/common/android/utils/task/genericTask/TaskListener;)V
new com/common/android/utils/task/genericTask/TaskParams
dup
invokespecial com/common/android/utils/task/genericTask/TaskParams/<init>()V
astore 2
aload 0
getfield com/nd/album/ui/activity/AlbumBrowserActivity/mUploadImageTask Lcom/common/android/utils/task/genericTask/GenericTask;
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
.limit stack 6
.end method

.method protected doOrRetry()V
aload 0
getfield com/nd/album/ui/activity/AlbumBrowserActivity/getDataTask Lcom/nd/album/ui/activity/AlbumBrowserActivity$GetImageDateTask;
ifnull L0
aload 0
getfield com/nd/album/ui/activity/AlbumBrowserActivity/getDataTask Lcom/nd/album/ui/activity/AlbumBrowserActivity$GetImageDateTask;
invokevirtual com/nd/album/ui/activity/AlbumBrowserActivity$GetImageDateTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L0
return
L0:
aload 0
new com/nd/album/ui/activity/AlbumBrowserActivity$GetImageDateTask
dup
aload 0
invokespecial com/nd/album/ui/activity/AlbumBrowserActivity$GetImageDateTask/<init>(Lcom/nd/album/ui/activity/AlbumBrowserActivity;)V
putfield com/nd/album/ui/activity/AlbumBrowserActivity/getDataTask Lcom/nd/album/ui/activity/AlbumBrowserActivity$GetImageDateTask;
aload 0
getfield com/nd/album/ui/activity/AlbumBrowserActivity/getDataTask Lcom/nd/album/ui/activity/AlbumBrowserActivity$GetImageDateTask;
iconst_0
anewarray java/lang/Void
invokevirtual com/nd/album/ui/activity/AlbumBrowserActivity$GetImageDateTask/execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
pop
return
.limit locals 1
.limit stack 4
.end method

.method public encode(Landroid/graphics/Bitmap;)[B
new java/io/ByteArrayOutputStream
dup
invokespecial java/io/ByteArrayOutputStream/<init>()V
astore 2
aload 1
getstatic android/graphics/Bitmap$CompressFormat/PNG Landroid/graphics/Bitmap$CompressFormat;
bipush 90
aload 2
invokevirtual android/graphics/Bitmap/compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
pop
aload 2
invokevirtual java/io/ByteArrayOutputStream/toByteArray()[B
areturn
.limit locals 3
.limit stack 4
.end method

.method protected initComponent()V
aload 0
invokespecial com/common/android/ui/CommonLoadingActivity/initComponent()V
aload 0
aload 0
getstatic com/nd/album/R$id/album_grid_view I
invokevirtual com/nd/album/ui/activity/AlbumBrowserActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/GridView
putfield com/nd/album/ui/activity/AlbumBrowserActivity/gridView Landroid/widget/GridView;
aload 0
new com/nd/album/business/PickedCameraPhoto
dup
aload 0
invokespecial com/nd/album/business/PickedCameraPhoto/<init>(Landroid/app/Activity;)V
putfield com/nd/album/ui/activity/AlbumBrowserActivity/mPickOption Lcom/nd/album/business/PickedCameraPhoto;
aload 0
aload 0
getstatic com/nd/album/R$id/view_taskover I
invokevirtual com/nd/album/ui/activity/AlbumBrowserActivity/findViewById(I)Landroid/view/View;
checkcast com/nd/album/ui/widget/AlbumTaskOverView
putfield com/nd/album/ui/activity/AlbumBrowserActivity/mTaskView Lcom/nd/album/ui/widget/AlbumTaskOverView;
aload 0
aload 0
getstatic com/nd/album/R$id/header_text_title I
invokevirtual com/nd/album/ui/activity/AlbumBrowserActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/album/ui/activity/AlbumBrowserActivity/titleText Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/album/R$id/header_btn_right2 I
invokevirtual com/nd/album/ui/activity/AlbumBrowserActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/album/ui/activity/AlbumBrowserActivity/ivPhoto Landroid/widget/Button;
aload 0
getfield com/nd/album/ui/activity/AlbumBrowserActivity/rightBtn Landroid/widget/Button;
getstatic com/nd/album/R$drawable/btn_xy_camera_normal_selected I
invokevirtual android/widget/Button/setBackgroundResource(I)V
aload 0
getfield com/nd/album/ui/activity/AlbumBrowserActivity/ivPhoto Landroid/widget/Button;
getstatic com/nd/album/R$drawable/btn_xy_album_normal_selected I
invokevirtual android/widget/Button/setBackgroundResource(I)V
aload 0
getfield com/nd/album/ui/activity/AlbumBrowserActivity/ivPhoto Landroid/widget/Button;
invokevirtual android/widget/Button/getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
checkcast android/widget/LinearLayout$LayoutParams
astore 1
aload 1
bipush -2
putfield android/widget/LinearLayout$LayoutParams/width I
aload 1
bipush -2
putfield android/widget/LinearLayout$LayoutParams/height I
aload 0
getfield com/nd/album/ui/activity/AlbumBrowserActivity/ivPhoto Landroid/widget/Button;
aload 1
invokevirtual android/widget/Button/setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
aload 0
getfield com/nd/album/ui/activity/AlbumBrowserActivity/rightBtn Landroid/widget/Button;
aload 1
invokevirtual android/widget/Button/setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
aload 0
bipush 8
invokespecial com/nd/album/ui/activity/AlbumBrowserActivity/setRightBtbVisible(I)V
return
.limit locals 2
.limit stack 4
.end method

.method protected initEvent()V
aload 0
getfield com/nd/album/ui/activity/AlbumBrowserActivity/leftBtn Landroid/widget/Button;
aload 0
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/album/ui/activity/AlbumBrowserActivity/ivPhoto Landroid/widget/Button;
aload 0
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/album/ui/activity/AlbumBrowserActivity/rightBtn Landroid/widget/Button;
aload 0
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/album/ui/activity/AlbumBrowserActivity/gridView Landroid/widget/GridView;
new com/nd/album/ui/activity/AlbumBrowserActivity$1
dup
aload 0
invokespecial com/nd/album/ui/activity/AlbumBrowserActivity$1/<init>(Lcom/nd/album/ui/activity/AlbumBrowserActivity;)V
invokevirtual android/widget/GridView/setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
return
.limit locals 1
.limit stack 4
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
iload 2
iconst_m1
if_icmpeq L0
return
L0:
aload 0
iload 1
aload 3
invokespecial com/nd/album/ui/activity/AlbumBrowserActivity/uploadImage(ILandroid/content/Intent;)V
return
.limit locals 4
.limit stack 3
.end method

.method public onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
istore 2
iload 2
getstatic com/nd/album/R$id/header_btn_right I
if_icmpne L0
aload 0
invokespecial com/nd/album/ui/activity/AlbumBrowserActivity/openImageCaptureMenu()V
L1:
return
L0:
iload 2
getstatic com/nd/album/R$id/header_btn_right2 I
if_icmpne L2
aload 0
invokespecial com/nd/album/ui/activity/AlbumBrowserActivity/openPhotoLibraryMenu()V
return
L2:
iload 2
getstatic com/nd/album/R$id/header_btn_left I
if_icmpne L1
aload 0
invokespecial com/nd/album/ui/activity/AlbumBrowserActivity/doBack()V
return
.limit locals 3
.limit stack 2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/common/android/ui/CommonLoadingActivity/onCreate(Landroid/os/Bundle;)V
aload 0
getstatic com/nd/album/R$layout/album_browser_activity I
invokevirtual com/nd/album/ui/activity/AlbumBrowserActivity/setContentView(I)V
aload 0
invokevirtual com/nd/album/ui/activity/AlbumBrowserActivity/initComponent()V
aload 0
invokevirtual com/nd/album/ui/activity/AlbumBrowserActivity/initEvent()V
aload 0
aload 1
invokespecial com/nd/album/ui/activity/AlbumBrowserActivity/initData(Landroid/os/Bundle;)V
return
.limit locals 2
.limit stack 2
.end method

.method protected onDestroy()V
aload 0
getfield com/nd/album/ui/activity/AlbumBrowserActivity/mUploadImageTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L0
aload 0
getfield com/nd/album/ui/activity/AlbumBrowserActivity/mUploadImageTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L0
aload 0
getfield com/nd/album/ui/activity/AlbumBrowserActivity/mUploadImageTask Lcom/common/android/utils/task/genericTask/GenericTask;
iconst_1
invokevirtual com/common/android/utils/task/genericTask/GenericTask/cancel(Z)Z
pop
L0:
aload 0
getfield com/nd/album/ui/activity/AlbumBrowserActivity/mUpdateAlbumImage Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L1
aload 0
getfield com/nd/album/ui/activity/AlbumBrowserActivity/mUpdateAlbumImage Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L1
aload 0
getfield com/nd/album/ui/activity/AlbumBrowserActivity/mUpdateAlbumImage Lcom/common/android/utils/task/genericTask/GenericTask;
iconst_1
invokevirtual com/common/android/utils/task/genericTask/GenericTask/cancel(Z)Z
pop
L1:
aload 0
getfield com/nd/album/ui/activity/AlbumBrowserActivity/mPickOption Lcom/nd/album/business/PickedCameraPhoto;
invokevirtual com/nd/album/business/PickedCameraPhoto/deleTempCameraFile()V
aload 0
getfield com/nd/album/ui/activity/AlbumBrowserActivity/isFullView Z
ifeq L2
aload 0
invokestatic com/nd/android/u/AlbumCallOtherModel/unRegisterInstallReceiver(Landroid/content/Context;)V
L2:
aload 0
invokespecial com/common/android/ui/CommonLoadingActivity/onDestroy()V
return
.limit locals 1
.limit stack 2
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
aload 2
invokevirtual android/view/KeyEvent/getKeyCode()I
iconst_4
if_icmpne L0
aload 2
invokevirtual android/view/KeyEvent/getRepeatCount()I
ifne L0
aload 0
invokespecial com/nd/album/ui/activity/AlbumBrowserActivity/doBack()V
iconst_1
ireturn
L0:
aload 0
iload 1
aload 2
invokespecial com/common/android/ui/CommonLoadingActivity/onKeyDown(ILandroid/view/KeyEvent;)Z
ireturn
.limit locals 3
.limit stack 3
.end method

.method protected onRestart()V
aload 0
invokespecial com/common/android/ui/CommonLoadingActivity/onRestart()V
aload 0
getfield com/nd/album/ui/activity/AlbumBrowserActivity/getDataTask Lcom/nd/album/ui/activity/AlbumBrowserActivity$GetImageDateTask;
ifnull L0
aload 0
getfield com/nd/album/ui/activity/AlbumBrowserActivity/getDataTask Lcom/nd/album/ui/activity/AlbumBrowserActivity$GetImageDateTask;
invokevirtual com/nd/album/ui/activity/AlbumBrowserActivity$GetImageDateTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L0
L1:
return
L0:
aload 0
getfield com/nd/album/ui/activity/AlbumBrowserActivity/mAlbumList Ljava/util/ArrayList;
ifnull L1
aload 0
aload 0
invokespecial com/nd/album/ui/activity/AlbumBrowserActivity/getLocalData()Ljava/util/ArrayList;
putfield com/nd/album/ui/activity/AlbumBrowserActivity/mAlbumList Ljava/util/ArrayList;
aload 0
invokespecial com/nd/album/ui/activity/AlbumBrowserActivity/refreshView()V
return
.limit locals 1
.limit stack 2
.end method

.method public onResume()V
aload 0
invokespecial com/common/android/ui/CommonLoadingActivity/onResume()V
aload 0
getfield com/nd/album/ui/activity/AlbumBrowserActivity/isFullView Z
ifeq L0
aload 0
invokestatic com/nd/android/u/AlbumCallOtherModel/registerInstallReceiver(Landroid/content/Context;)V
L0:
return
.limit locals 1
.limit stack 1
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/common/android/ui/CommonLoadingActivity/onSaveInstanceState(Landroid/os/Bundle;)V
aload 1
ldc "OAP_ID"
aload 0
getfield com/nd/album/ui/activity/AlbumBrowserActivity/mOwnerOap_id J
invokevirtual android/os/Bundle/putLong(Ljava/lang/String;J)V
aload 1
ldc "isMyALbum"
aload 0
getfield com/nd/album/ui/activity/AlbumBrowserActivity/isMyALbum Z
invokevirtual android/os/Bundle/putBoolean(Ljava/lang/String;Z)V
aload 1
ldc "UAP_ID"
aload 0
getfield com/nd/album/ui/activity/AlbumBrowserActivity/mOwnerNduap_uid J
invokevirtual android/os/Bundle/putLong(Ljava/lang/String;J)V
aload 1
ldc "AlbumList"
aload 0
getfield com/nd/album/ui/activity/AlbumBrowserActivity/mAlbumList Ljava/util/ArrayList;
invokevirtual android/os/Bundle/putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V
aload 1
ldc "ALBUM_INFO"
aload 0
getfield com/nd/album/ui/activity/AlbumBrowserActivity/mAlbumInfo Lcom/nd/album/bean/AlbumInfo;
invokevirtual android/os/Bundle/putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V
aload 1
ldc "isFullView"
aload 0
getfield com/nd/album/ui/activity/AlbumBrowserActivity/isFullView Z
invokevirtual android/os/Bundle/putBoolean(Ljava/lang/String;Z)V
return
.limit locals 2
.limit stack 4
.end method
