.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/activity/ConcernFriends
.super com/product/android/ui/activity/HeaderActivity
.implements android/widget/AdapterView$OnItemClickListener
.implements com/android/u/weibo/cropimage/business/PortraitModify$OnActivityListener
.inner class inner com/nd/android/u/cloud/activity/ConcernFriends$1
.inner class inner com/nd/android/u/cloud/activity/ConcernFriends$2
.inner class inner com/nd/android/u/cloud/activity/ConcernFriends$3
.inner class inner com/nd/android/u/cloud/activity/ConcernFriends$4
.inner class private CommitToServer inner com/nd/android/u/cloud/activity/ConcernFriends$CommitToServer outer com/nd/android/u/cloud/activity/ConcernFriends
.inner class ImageAdapter inner com/nd/android/u/cloud/activity/ConcernFriends$ImageAdapter outer com/nd/android/u/cloud/activity/ConcernFriends
.inner class Holder inner com/nd/android/u/cloud/activity/ConcernFriends$ImageAdapter$Holder outer com/nd/android/u/cloud/activity/ConcernFriends

.field private static final 'TAG' Ljava/lang/String; = "ConcernFriends"

.field protected 'commitTaskListener' Lcom/common/android/utils/task/genericTask/TaskListener;

.field protected 'detailOnClick' Landroid/view/View$OnClickListener;

.field private 'handler' Landroid/os/Handler;

.field private 'mAdapter' Lcom/nd/android/u/cloud/activity/ConcernFriends$ImageAdapter;

.field 'mGridView' Landroid/widget/GridView;

.field protected 'mWidth' I

.field protected 'm_CommitTask' Lcom/common/android/utils/task/genericTask/GenericTask;

.field private 'm_bUsedSavedInstance' Z

.field private 'm_bmPortrait' Landroid/graphics/Bitmap;

.field private 'm_bmShowPicture' Landroid/graphics/Bitmap;

.field 'm_btnRight' Landroid/widget/Button;

.field private 'm_dialog' Landroid/app/ProgressDialog;

.field private 'm_listConcernFriends' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Ljava/lang/Long;>;"

.field private 'm_listFriends' Lcom/android/u/weibo/weibo/business/bean/WbUserInfoList;

.field 'm_tvTitle' Landroid/widget/TextView;

.field protected 'm_user' Lcom/product/android/business/login/BindUser;

.field private 'setRet' Z

.method public <init>()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/<init>()V
aload 0
iconst_0
putfield com/nd/android/u/cloud/activity/ConcernFriends/m_bUsedSavedInstance Z
aload 0
new com/nd/android/u/cloud/activity/ConcernFriends$2
dup
aload 0
invokespecial com/nd/android/u/cloud/activity/ConcernFriends$2/<init>(Lcom/nd/android/u/cloud/activity/ConcernFriends;)V
putfield com/nd/android/u/cloud/activity/ConcernFriends/detailOnClick Landroid/view/View$OnClickListener;
aload 0
new com/nd/android/u/cloud/activity/ConcernFriends$3
dup
aload 0
invokespecial com/nd/android/u/cloud/activity/ConcernFriends$3/<init>(Lcom/nd/android/u/cloud/activity/ConcernFriends;)V
putfield com/nd/android/u/cloud/activity/ConcernFriends/handler Landroid/os/Handler;
aload 0
new com/nd/android/u/cloud/activity/ConcernFriends$4
dup
aload 0
invokespecial com/nd/android/u/cloud/activity/ConcernFriends$4/<init>(Lcom/nd/android/u/cloud/activity/ConcernFriends;)V
putfield com/nd/android/u/cloud/activity/ConcernFriends/commitTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
return
.limit locals 1
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/android/u/cloud/activity/ConcernFriends;)Lcom/android/u/weibo/weibo/business/bean/WbUserInfoList;
aload 0
getfield com/nd/android/u/cloud/activity/ConcernFriends/m_listFriends Lcom/android/u/weibo/weibo/business/bean/WbUserInfoList;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$002(Lcom/nd/android/u/cloud/activity/ConcernFriends;Lcom/android/u/weibo/weibo/business/bean/WbUserInfoList;)Lcom/android/u/weibo/weibo/business/bean/WbUserInfoList;
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/ConcernFriends/m_listFriends Lcom/android/u/weibo/weibo/business/bean/WbUserInfoList;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$100(Lcom/nd/android/u/cloud/activity/ConcernFriends;)Lcom/nd/android/u/cloud/activity/ConcernFriends$ImageAdapter;
aload 0
getfield com/nd/android/u/cloud/activity/ConcernFriends/mAdapter Lcom/nd/android/u/cloud/activity/ConcernFriends$ImageAdapter;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/nd/android/u/cloud/activity/ConcernFriends;)Ljava/util/ArrayList;
aload 0
getfield com/nd/android/u/cloud/activity/ConcernFriends/m_listConcernFriends Ljava/util/ArrayList;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/nd/android/u/cloud/activity/ConcernFriends;)Landroid/app/ProgressDialog;
aload 0
getfield com/nd/android/u/cloud/activity/ConcernFriends/m_dialog Landroid/app/ProgressDialog;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$302(Lcom/nd/android/u/cloud/activity/ConcernFriends;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/ConcernFriends/m_dialog Landroid/app/ProgressDialog;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$400(Lcom/nd/android/u/cloud/activity/ConcernFriends;)V
aload 0
invokespecial com/nd/android/u/cloud/activity/ConcernFriends/uploadPortrait()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$600(Lcom/nd/android/u/cloud/activity/ConcernFriends;)Z
aload 0
getfield com/nd/android/u/cloud/activity/ConcernFriends/setRet Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$602(Lcom/nd/android/u/cloud/activity/ConcernFriends;Z)Z
aload 0
iload 1
putfield com/nd/android/u/cloud/activity/ConcernFriends/setRet Z
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$700(Lcom/nd/android/u/cloud/activity/ConcernFriends;)V
aload 0
invokespecial com/nd/android/u/cloud/activity/ConcernFriends/finshAndGo()V
return
.limit locals 1
.limit stack 1
.end method

.method private commitOtherDataToServer()V
aload 0
getfield com/nd/android/u/cloud/activity/ConcernFriends/m_CommitTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L0
aload 0
getfield com/nd/android/u/cloud/activity/ConcernFriends/m_CommitTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L0
return
L0:
aload 0
new com/nd/android/u/cloud/activity/ConcernFriends$CommitToServer
dup
aload 0
aconst_null
invokespecial com/nd/android/u/cloud/activity/ConcernFriends$CommitToServer/<init>(Lcom/nd/android/u/cloud/activity/ConcernFriends;Lcom/nd/android/u/cloud/activity/ConcernFriends$1;)V
putfield com/nd/android/u/cloud/activity/ConcernFriends/m_CommitTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/cloud/activity/ConcernFriends/m_CommitTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/cloud/activity/ConcernFriends/commitTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/setListener(Lcom/common/android/utils/task/genericTask/TaskListener;)V
new com/common/android/utils/task/genericTask/TaskParams
dup
invokespecial com/common/android/utils/task/genericTask/TaskParams/<init>()V
astore 1
aload 0
getfield com/nd/android/u/cloud/activity/ConcernFriends/m_CommitTask Lcom/common/android/utils/task/genericTask/GenericTask;
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

.method private finshAndGo()V
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getUnitid()I
istore 1
getstatic com/product/android/business/config/Configuration/DEFAULTUNITID I
iload 1
if_icmpne L0
aload 0
new android/content/Intent
dup
aload 0
ldc com/nd/android/u/cloud/activity/BootLotteryActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
invokevirtual com/nd/android/u/cloud/activity/ConcernFriends/startActivity(Landroid/content/Intent;)V
return
L0:
aload 0
invokestatic com/nd/android/u/cloud/helper/Utils/lunchMainLifeActivity(Landroid/content/Context;)V
return
.limit locals 2
.limit stack 5
.end method

.method private uploadPortrait()V
return
.limit locals 1
.limit stack 0
.end method

.method protected _onCreate(Landroid/os/Bundle;)Z
aload 0
aload 1
invokespecial com/product/android/ui/activity/HeaderActivity/_onCreate(Landroid/os/Bundle;)Z
ifeq L0
aload 0
iconst_1
invokevirtual com/nd/android/u/cloud/activity/ConcernFriends/requestWindowFeature(I)Z
pop
aload 0
ldc_w 2130903264
invokevirtual com/nd/android/u/cloud/activity/ConcernFriends/setContentView(I)V
L0:
iconst_1
ireturn
.limit locals 2
.limit stack 2
.end method

.method protected initComponent()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/initComponent()V
aload 0
invokevirtual com/nd/android/u/cloud/activity/ConcernFriends/getWindowManager()Landroid/view/WindowManager;
invokeinterface android/view/WindowManager/getDefaultDisplay()Landroid/view/Display; 0
astore 3
aload 3
invokevirtual android/view/Display/getWidth()I
istore 1
aload 3
invokevirtual android/view/Display/getHeight()I
istore 2
iload 1
iload 2
if_icmple L0
iload 2
istore 1
L1:
aload 0
iload 1
putfield com/nd/android/u/cloud/activity/ConcernFriends/mWidth I
aload 0
aload 0
ldc_w 2131624282
invokevirtual com/nd/android/u/cloud/activity/ConcernFriends/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/activity/ConcernFriends/m_tvTitle Landroid/widget/TextView;
aload 0
aload 0
ldc_w 2131625260
invokevirtual com/nd/android/u/cloud/activity/ConcernFriends/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/android/u/cloud/activity/ConcernFriends/m_btnRight Landroid/widget/Button;
aload 0
getfield com/nd/android/u/cloud/activity/ConcernFriends/m_btnRight Landroid/widget/Button;
iconst_0
invokevirtual android/widget/Button/setVisibility(I)V
aload 0
getfield com/nd/android/u/cloud/activity/ConcernFriends/m_btnRight Landroid/widget/Button;
aload 0
ldc_w 2131494507
invokevirtual com/nd/android/u/cloud/activity/ConcernFriends/getString(I)Ljava/lang/String;
invokevirtual android/widget/Button/setText(Ljava/lang/CharSequence;)V
aload 0
aload 0
ldc_w 2131625092
invokevirtual com/nd/android/u/cloud/activity/ConcernFriends/findViewById(I)Landroid/view/View;
checkcast android/widget/GridView
putfield com/nd/android/u/cloud/activity/ConcernFriends/mGridView Landroid/widget/GridView;
aload 0
new com/nd/android/u/cloud/activity/ConcernFriends$ImageAdapter
dup
aload 0
invokespecial com/nd/android/u/cloud/activity/ConcernFriends$ImageAdapter/<init>(Lcom/nd/android/u/cloud/activity/ConcernFriends;)V
putfield com/nd/android/u/cloud/activity/ConcernFriends/mAdapter Lcom/nd/android/u/cloud/activity/ConcernFriends$ImageAdapter;
aload 0
getfield com/nd/android/u/cloud/activity/ConcernFriends/mGridView Landroid/widget/GridView;
aload 0
getfield com/nd/android/u/cloud/activity/ConcernFriends/mAdapter Lcom/nd/android/u/cloud/activity/ConcernFriends$ImageAdapter;
invokevirtual android/widget/GridView/setAdapter(Landroid/widget/ListAdapter;)V
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/cloud/activity/ConcernFriends/m_listConcernFriends Ljava/util/ArrayList;
aload 0
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getBindUser()Lcom/product/android/business/login/BindUser; 0
putfield com/nd/android/u/cloud/activity/ConcernFriends/m_user Lcom/product/android/business/login/BindUser;
return
L0:
goto L1
.limit locals 4
.limit stack 4
.end method

.method protected initComponentValue()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/initComponentValue()V
aload 0
getfield com/nd/android/u/cloud/activity/ConcernFriends/m_tvTitle Landroid/widget/TextView;
aload 0
ldc_w 2131493339
invokevirtual com/nd/android/u/cloud/activity/ConcernFriends/getString(I)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
new com/nd/android/u/cloud/activity/ConcernFriends$1
dup
aload 0
aload 0
ldc_w 2131493748
invokespecial com/nd/android/u/cloud/activity/ConcernFriends$1/<init>(Lcom/nd/android/u/cloud/activity/ConcernFriends;Landroid/content/Context;I)V
iconst_0
anewarray java/lang/Void
invokevirtual com/common/android/utils/task/progressTask/ProgressTask/execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
pop
aload 0
getfield com/nd/android/u/cloud/activity/ConcernFriends/m_bUsedSavedInstance Z
ifne L0
aload 0
invokestatic com/nd/android/u/cloud/data/FirstLoginOptionData/getInstance()Lcom/nd/android/u/cloud/data/FirstLoginOptionData;
invokevirtual com/nd/android/u/cloud/data/FirstLoginOptionData/getPortraitBitmap()Landroid/graphics/Bitmap;
putfield com/nd/android/u/cloud/activity/ConcernFriends/m_bmPortrait Landroid/graphics/Bitmap;
aload 0
invokestatic com/nd/android/u/cloud/data/FirstLoginOptionData/getInstance()Lcom/nd/android/u/cloud/data/FirstLoginOptionData;
invokevirtual com/nd/android/u/cloud/data/FirstLoginOptionData/getShowPicture()Landroid/graphics/Bitmap;
putfield com/nd/android/u/cloud/activity/ConcernFriends/m_bmShowPicture Landroid/graphics/Bitmap;
L0:
return
.limit locals 1
.limit stack 5
.end method

.method protected initEvent()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/initEvent()V
aload 0
getfield com/nd/android/u/cloud/activity/ConcernFriends/mGridView Landroid/widget/GridView;
aload 0
invokevirtual android/widget/GridView/setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
aload 0
getfield com/nd/android/u/cloud/activity/ConcernFriends/m_btnRight Landroid/widget/Button;
aload 0
getfield com/nd/android/u/cloud/activity/ConcernFriends/detailOnClick Landroid/view/View$OnClickListener;
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
.limit locals 1
.limit stack 2
.end method

.method public onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/product/android/ui/activity/HeaderActivity/onCreate(Landroid/os/Bundle;)V
aload 1
ifnull L0
aload 0
iconst_1
putfield com/nd/android/u/cloud/activity/ConcernFriends/m_bUsedSavedInstance Z
aload 0
aload 1
invokestatic com/nd/android/u/cloud/data/FirstLoginOptionData/getInstance()Lcom/nd/android/u/cloud/data/FirstLoginOptionData;
invokevirtual com/nd/android/u/cloud/data/FirstLoginOptionData/getPortraitKey()Ljava/lang/String;
invokevirtual android/os/Bundle/getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
checkcast android/graphics/Bitmap
putfield com/nd/android/u/cloud/activity/ConcernFriends/m_bmPortrait Landroid/graphics/Bitmap;
aload 0
aload 1
invokestatic com/nd/android/u/cloud/data/FirstLoginOptionData/getInstance()Lcom/nd/android/u/cloud/data/FirstLoginOptionData;
invokevirtual com/nd/android/u/cloud/data/FirstLoginOptionData/getShowPictureKey()Ljava/lang/String;
invokevirtual android/os/Bundle/getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
checkcast android/graphics/Bitmap
putfield com/nd/android/u/cloud/activity/ConcernFriends/m_bmShowPicture Landroid/graphics/Bitmap;
L0:
aload 0
invokevirtual com/nd/android/u/cloud/activity/ConcernFriends/initComponent()V
aload 0
invokevirtual com/nd/android/u/cloud/activity/ConcernFriends/initEvent()V
invokestatic com/nd/android/u/cloud/data/FirstLoginOptionData/getInstance()Lcom/nd/android/u/cloud/data/FirstLoginOptionData;
aload 0
invokevirtual com/nd/android/u/cloud/data/FirstLoginOptionData/addActivity(Landroid/app/Activity;)V
return
.limit locals 2
.limit stack 3
.end method

.method protected onDestroy()V
invokestatic com/nd/android/u/cloud/data/FirstLoginOptionData/getInstance()Lcom/nd/android/u/cloud/data/FirstLoginOptionData;
aload 0
invokevirtual com/nd/android/u/cloud/data/FirstLoginOptionData/removeActivity(Landroid/app/Activity;)V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/onDestroy()V
return
.limit locals 1
.limit stack 2
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.signature "(Landroid/widget/AdapterView<*>;Landroid/view/View;IJ)V"
aload 0
getfield com/nd/android/u/cloud/activity/ConcernFriends/mAdapter Lcom/nd/android/u/cloud/activity/ConcernFriends$ImageAdapter;
ifnonnull L0
return
L0:
aload 0
getfield com/nd/android/u/cloud/activity/ConcernFriends/mAdapter Lcom/nd/android/u/cloud/activity/ConcernFriends$ImageAdapter;
aload 2
iload 3
invokevirtual com/nd/android/u/cloud/activity/ConcernFriends$ImageAdapter/setSelect(Landroid/view/View;I)V
return
.limit locals 6
.limit stack 3
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
aload 1
invokestatic com/nd/android/u/cloud/data/FirstLoginOptionData/getInstance()Lcom/nd/android/u/cloud/data/FirstLoginOptionData;
invokevirtual com/nd/android/u/cloud/data/FirstLoginOptionData/getPortraitKey()Ljava/lang/String;
aload 0
getfield com/nd/android/u/cloud/activity/ConcernFriends/m_bmPortrait Landroid/graphics/Bitmap;
invokevirtual android/os/Bundle/putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
aload 1
invokestatic com/nd/android/u/cloud/data/FirstLoginOptionData/getInstance()Lcom/nd/android/u/cloud/data/FirstLoginOptionData;
invokevirtual com/nd/android/u/cloud/data/FirstLoginOptionData/getShowPictureKey()Ljava/lang/String;
aload 0
getfield com/nd/android/u/cloud/activity/ConcernFriends/m_bmShowPicture Landroid/graphics/Bitmap;
invokevirtual android/os/Bundle/putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
aload 0
aload 1
invokespecial com/product/android/ui/activity/HeaderActivity/onSaveInstanceState(Landroid/os/Bundle;)V
return
.limit locals 2
.limit stack 3
.end method

.method protected onStart()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/onStart()V
aload 0
invokevirtual com/nd/android/u/cloud/activity/ConcernFriends/initComponentValue()V
return
.limit locals 1
.limit stack 1
.end method

.method public setSexImage(Landroid/widget/ImageView;I)V
iload 2
iconst_1
if_icmpne L0
aload 1
ldc_w 2130837953
invokevirtual android/widget/ImageView/setBackgroundResource(I)V
return
L0:
iload 2
iconst_2
if_icmpne L1
aload 1
ldc_w 2130837869
invokevirtual android/widget/ImageView/setBackgroundResource(I)V
return
L1:
aload 1
ldc_w 2130837953
invokevirtual android/widget/ImageView/setBackgroundResource(I)V
return
.limit locals 3
.limit stack 2
.end method

.method public succeedChanging(Ljava/lang/String;Ljava/lang/String;)V
return
.limit locals 3
.limit stack 0
.end method
