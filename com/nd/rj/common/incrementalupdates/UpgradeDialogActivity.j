.bytecode 50.0
.class public synchronized com/nd/rj/common/incrementalupdates/UpgradeDialogActivity
.super android/app/Activity
.inner class inner com/nd/rj/common/incrementalupdates/UpgradeDialogActivity$1
.inner class inner com/nd/rj/common/incrementalupdates/UpgradeDialogActivity$2

.field public static final 'APP_NAME' Ljava/lang/String; = "app_name"

.field public static final 'TAG' Ljava/lang/String;

.field public static final 'UPDATE_INFO' Ljava/lang/String; = "update_info"

.field private 'mAppName' Ljava/lang/String;

.field private 'mUpgradeInfo' Lcom/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo;

.method static <clinit>()V
ldc com/nd/rj/common/incrementalupdates/UpgradeDialogActivity
invokevirtual java/lang/Class/getSimpleName()Ljava/lang/String;
putstatic com/nd/rj/common/incrementalupdates/UpgradeDialogActivity/TAG Ljava/lang/String;
return
.limit locals 0
.limit stack 1
.end method

.method public <init>()V
aload 0
invokespecial android/app/Activity/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$0(Lcom/nd/rj/common/incrementalupdates/UpgradeDialogActivity;Z)V
aload 0
iload 1
invokespecial com/nd/rj/common/incrementalupdates/UpgradeDialogActivity/exitDialog(Z)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$1(Lcom/nd/rj/common/incrementalupdates/UpgradeDialogActivity;)V
aload 0
invokespecial com/nd/rj/common/incrementalupdates/UpgradeDialogActivity/upgrade()V
return
.limit locals 1
.limit stack 1
.end method

.method private exitDialog(Z)V
aload 0
getfield com/nd/rj/common/incrementalupdates/UpgradeDialogActivity/mUpgradeInfo Lcom/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo;
invokevirtual com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo/isForce()Z
ifeq L0
aload 0
ldc2_w -1L
invokestatic com/nd/rj/common/incrementalupdates/Storage/saveAutoCheckCtrl(Landroid/content/Context;J)V
iload 1
ifeq L1
aload 0
invokestatic java/lang/System/currentTimeMillis()J
invokestatic com/nd/rj/common/incrementalupdates/Storage/setForceUpdateTime(Landroid/content/Context;J)V
L1:
invokestatic com/nd/rj/common/incrementalupdates/UpgradeManager/exitSoft()V
return
L0:
aload 0
invokevirtual com/nd/rj/common/incrementalupdates/UpgradeDialogActivity/finish()V
return
.limit locals 2
.limit stack 3
.end method

.method private getData()V
aload 0
invokevirtual com/nd/rj/common/incrementalupdates/UpgradeDialogActivity/getIntent()Landroid/content/Intent;
astore 1
aload 1
ifnonnull L0
aload 0
aconst_null
putfield com/nd/rj/common/incrementalupdates/UpgradeDialogActivity/mUpgradeInfo Lcom/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo;
L1:
aload 0
getfield com/nd/rj/common/incrementalupdates/UpgradeDialogActivity/mAppName Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L2
aload 0
getfield com/nd/rj/common/incrementalupdates/UpgradeDialogActivity/mUpgradeInfo Lcom/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo;
ifnull L2
aload 0
getfield com/nd/rj/common/incrementalupdates/UpgradeDialogActivity/mUpgradeInfo Lcom/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo;
invokevirtual com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo/isObjectValid()Z
ifne L3
L2:
aload 0
invokevirtual com/nd/rj/common/incrementalupdates/UpgradeDialogActivity/finish()V
L3:
return
L0:
aload 0
aload 1
ldc "app_name"
invokevirtual android/content/Intent/getStringExtra(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/rj/common/incrementalupdates/UpgradeDialogActivity/mAppName Ljava/lang/String;
aload 0
aload 1
ldc "update_info"
invokevirtual android/content/Intent/getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;
checkcast com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo
putfield com/nd/rj/common/incrementalupdates/UpgradeDialogActivity/mUpgradeInfo Lcom/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo;
goto L1
.limit locals 2
.limit stack 3
.end method

.method private initData()V
aload 0
aload 0
ldc "tvVerNumber"
invokestatic com/nd/rj/common/incrementalupdates/ResourceUtil/getId(Landroid/content/Context;Ljava/lang/String;)I
invokevirtual com/nd/rj/common/incrementalupdates/UpgradeDialogActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
astore 2
aload 0
aload 0
ldc "tvVerContentTip"
invokestatic com/nd/rj/common/incrementalupdates/ResourceUtil/getId(Landroid/content/Context;Ljava/lang/String;)I
invokevirtual com/nd/rj/common/incrementalupdates/UpgradeDialogActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
astore 3
aload 0
aload 0
ldc "tvVerContent"
invokestatic com/nd/rj/common/incrementalupdates/ResourceUtil/getId(Landroid/content/Context;Ljava/lang/String;)I
invokevirtual com/nd/rj/common/incrementalupdates/UpgradeDialogActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
astore 1
aload 0
aload 0
ldc "ivForceUpgrade"
invokestatic com/nd/rj/common/incrementalupdates/ResourceUtil/getId(Landroid/content/Context;Ljava/lang/String;)I
invokevirtual com/nd/rj/common/incrementalupdates/UpgradeDialogActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
astore 4
getstatic android/os/Build$VERSION/SDK_INT I
bipush 11
if_icmplt L0
aload 0
iconst_0
invokevirtual com/nd/rj/common/incrementalupdates/UpgradeDialogActivity/setFinishOnTouchOutside(Z)V
L0:
aload 0
getfield com/nd/rj/common/incrementalupdates/UpgradeDialogActivity/mUpgradeInfo Lcom/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo;
invokevirtual com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo/isForce()Z
ifeq L1
aload 4
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 2
aload 0
ldc "please_upgrade_to_new_ver"
invokestatic com/nd/rj/common/incrementalupdates/ResourceUtil/getStringId(Landroid/content/Context;Ljava/lang/String;)I
invokevirtual android/widget/TextView/setText(I)V
aload 3
aload 0
ldc "update_force_content_tip"
invokestatic com/nd/rj/common/incrementalupdates/ResourceUtil/getStringId(Landroid/content/Context;Ljava/lang/String;)I
invokevirtual android/widget/TextView/setText(I)V
L2:
aload 0
getfield com/nd/rj/common/incrementalupdates/UpgradeDialogActivity/mUpgradeInfo Lcom/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo;
invokevirtual com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo/getNewestVersionHistory()Ljava/lang/String;
astore 2
aload 2
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L3
aload 1
ldc " "
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L4:
aload 0
aload 0
ldc "tvApkFullSize"
invokestatic com/nd/rj/common/incrementalupdates/ResourceUtil/getId(Landroid/content/Context;Ljava/lang/String;)I
invokevirtual com/nd/rj/common/incrementalupdates/UpgradeDialogActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
astore 1
aload 1
aload 0
getfield com/nd/rj/common/incrementalupdates/UpgradeDialogActivity/mUpgradeInfo Lcom/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo;
invokevirtual com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo/getFullPackageInfo()Lcom/nd/rj/common/incrementalupdates/serverinterface/PackageInfo;
invokevirtual com/nd/rj/common/incrementalupdates/serverinterface/PackageInfo/getPackageSize()I
i2l
invokestatic com/nd/rj/common/incrementalupdates/Utils/getSize(J)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
aload 0
ldc "tvApkIncrementalSize"
invokestatic com/nd/rj/common/incrementalupdates/ResourceUtil/getId(Landroid/content/Context;Ljava/lang/String;)I
invokevirtual com/nd/rj/common/incrementalupdates/UpgradeDialogActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
astore 2
aload 0
getfield com/nd/rj/common/incrementalupdates/UpgradeDialogActivity/mUpgradeInfo Lcom/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo;
invokevirtual com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo/hasIncrementalInfo()Z
ifeq L5
aload 1
invokevirtual android/widget/TextView/getPaint()Landroid/text/TextPaint;
bipush 16
invokevirtual android/text/TextPaint/setFlags(I)V
aload 2
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
aload 2
aload 0
getfield com/nd/rj/common/incrementalupdates/UpgradeDialogActivity/mUpgradeInfo Lcom/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo;
invokevirtual com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo/getIncrementalPackageInfo()Lcom/nd/rj/common/incrementalupdates/serverinterface/PackageInfo;
invokevirtual com/nd/rj/common/incrementalupdates/serverinterface/PackageInfo/getPackageSize()I
i2l
invokestatic com/nd/rj/common/incrementalupdates/Utils/getSize(J)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
L1:
aload 4
bipush 8
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 2
aload 0
invokevirtual com/nd/rj/common/incrementalupdates/UpgradeDialogActivity/getResources()Landroid/content/res/Resources;
aload 0
ldc "update_find_new_ver"
invokestatic com/nd/rj/common/incrementalupdates/ResourceUtil/getStringId(Landroid/content/Context;Ljava/lang/String;)I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 0
getfield com/nd/rj/common/incrementalupdates/UpgradeDialogActivity/mUpgradeInfo Lcom/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo;
invokevirtual com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo/getNewestVersionName()Ljava/lang/String;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 3
aload 0
ldc "update_content_tip"
invokestatic com/nd/rj/common/incrementalupdates/ResourceUtil/getStringId(Landroid/content/Context;Ljava/lang/String;)I
invokevirtual android/widget/TextView/setText(I)V
goto L2
L3:
aload 1
aload 2
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
goto L4
L5:
aload 2
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
return
.limit locals 5
.limit stack 6
.end method

.method private initEvent()V
aload 0
aload 0
ldc "btnUpdateLater"
invokestatic com/nd/rj/common/incrementalupdates/ResourceUtil/getId(Landroid/content/Context;Ljava/lang/String;)I
invokevirtual com/nd/rj/common/incrementalupdates/UpgradeDialogActivity/findViewById(I)Landroid/view/View;
new com/nd/rj/common/incrementalupdates/UpgradeDialogActivity$1
dup
aload 0
invokespecial com/nd/rj/common/incrementalupdates/UpgradeDialogActivity$1/<init>(Lcom/nd/rj/common/incrementalupdates/UpgradeDialogActivity;)V
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
aload 0
ldc "btnUpdateNow"
invokestatic com/nd/rj/common/incrementalupdates/ResourceUtil/getId(Landroid/content/Context;Ljava/lang/String;)I
invokevirtual com/nd/rj/common/incrementalupdates/UpgradeDialogActivity/findViewById(I)Landroid/view/View;
new com/nd/rj/common/incrementalupdates/UpgradeDialogActivity$2
dup
aload 0
invokespecial com/nd/rj/common/incrementalupdates/UpgradeDialogActivity$2/<init>(Lcom/nd/rj/common/incrementalupdates/UpgradeDialogActivity;)V
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
.limit locals 1
.limit stack 4
.end method

.method private upgrade()V
new android/content/Intent
dup
aload 0
ldc com/nd/rj/common/incrementalupdates/IncrementalUpdatesService
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 1
aload 1
ldc "app_name"
aload 0
getfield com/nd/rj/common/incrementalupdates/UpgradeDialogActivity/mAppName Ljava/lang/String;
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 1
ldc "update_info"
aload 0
getfield com/nd/rj/common/incrementalupdates/UpgradeDialogActivity/mUpgradeInfo Lcom/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo;
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
pop
aload 0
aload 1
invokevirtual com/nd/rj/common/incrementalupdates/UpgradeDialogActivity/startService(Landroid/content/Intent;)Landroid/content/ComponentName;
pop
return
.limit locals 2
.limit stack 4
.end method

.method public onBackPressed()V
aload 0
iconst_0
invokespecial com/nd/rj/common/incrementalupdates/UpgradeDialogActivity/exitDialog(Z)V
aload 0
invokespecial android/app/Activity/onBackPressed()V
return
.limit locals 1
.limit stack 2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial android/app/Activity/onCreate(Landroid/os/Bundle;)V
aload 0
aload 0
ldc "activity_upgrade_dialog"
invokestatic com/nd/rj/common/incrementalupdates/ResourceUtil/getLayoutId(Landroid/content/Context;Ljava/lang/String;)I
invokevirtual com/nd/rj/common/incrementalupdates/UpgradeDialogActivity/setContentView(I)V
aload 0
invokespecial com/nd/rj/common/incrementalupdates/UpgradeDialogActivity/getData()V
aload 0
invokespecial com/nd/rj/common/incrementalupdates/UpgradeDialogActivity/initData()V
aload 0
invokespecial com/nd/rj/common/incrementalupdates/UpgradeDialogActivity/initEvent()V
return
.limit locals 2
.limit stack 3
.end method
