.bytecode 50.0
.class public synchronized com/nd/android/u/contact/dialog/RankFilterDialog
.super android/app/AlertDialog$Builder
.implements android/view/View$OnClickListener
.inner class inner com/nd/android/u/contact/dialog/RankFilterDialog$1
.inner class inner com/nd/android/u/contact/dialog/RankFilterDialog$2
.inner class inner com/nd/android/u/contact/dialog/RankFilterDialog$3
.inner class inner com/nd/android/u/contact/dialog/RankFilterDialog$4

.field public static final 'MSG_CLICKOK' I = 100


.field private 'mContext' Landroid/content/Context;

.field private 'mDepartidSel' I

.field private 'mFilterInfo' Lcom/product/android/commonInterface/contact/RankFilterInfo;

.field private 'mGenderSel' I

.field private 'mHandler' Landroid/os/Handler;

.field private 'mMessageReceiver' Landroid/content/BroadcastReceiver;

.field private 'mSelectNameSel' Ljava/lang/String;

.field private 'mTimeSel' I

.field private 'mUnitidSel' I

.field private 'onCancelListener' Landroid/content/DialogInterface$OnCancelListener;

.field private 'schoolmateAll' Landroid/view/View;

.field private 'schoolmateFemale' Landroid/view/View;

.field private 'schoolmateMale' Landroid/view/View;

.field private 'selectUnitlayout' Landroid/widget/RelativeLayout;

.field private 'selectedUnitText' Landroid/widget/TextView;

.field private 'timeAll' Landroid/view/View;

.field private 'timeLastWeek' Landroid/widget/TextView;

.method public <init>(Landroid/content/Context;Landroid/os/Handler;)V
aload 0
aload 1
invokespecial android/app/AlertDialog$Builder/<init>(Landroid/content/Context;)V
aload 0
iconst_0
putfield com/nd/android/u/contact/dialog/RankFilterDialog/mTimeSel I
aload 0
iconst_0
putfield com/nd/android/u/contact/dialog/RankFilterDialog/mGenderSel I
aload 0
iconst_0
putfield com/nd/android/u/contact/dialog/RankFilterDialog/mUnitidSel I
aload 0
iconst_0
putfield com/nd/android/u/contact/dialog/RankFilterDialog/mDepartidSel I
aload 0
ldc ""
putfield com/nd/android/u/contact/dialog/RankFilterDialog/mSelectNameSel Ljava/lang/String;
aload 0
new com/nd/android/u/contact/dialog/RankFilterDialog$1
dup
aload 0
invokespecial com/nd/android/u/contact/dialog/RankFilterDialog$1/<init>(Lcom/nd/android/u/contact/dialog/RankFilterDialog;)V
putfield com/nd/android/u/contact/dialog/RankFilterDialog/onCancelListener Landroid/content/DialogInterface$OnCancelListener;
aload 0
new com/nd/android/u/contact/dialog/RankFilterDialog$2
dup
aload 0
invokespecial com/nd/android/u/contact/dialog/RankFilterDialog$2/<init>(Lcom/nd/android/u/contact/dialog/RankFilterDialog;)V
putfield com/nd/android/u/contact/dialog/RankFilterDialog/mMessageReceiver Landroid/content/BroadcastReceiver;
aload 0
aload 1
putfield com/nd/android/u/contact/dialog/RankFilterDialog/mContext Landroid/content/Context;
aload 0
aload 2
putfield com/nd/android/u/contact/dialog/RankFilterDialog/mHandler Landroid/os/Handler;
aload 0
getfield com/nd/android/u/contact/dialog/RankFilterDialog/mContext Landroid/content/Context;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
getstatic com/nd/android/u/contact/R$layout/rank_filter I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 1
aload 0
aload 1
getstatic com/nd/android/u/contact/R$id/filter_time_all I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
putfield com/nd/android/u/contact/dialog/RankFilterDialog/timeAll Landroid/view/View;
aload 0
aload 1
getstatic com/nd/android/u/contact/R$id/filter_time_last I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/dialog/RankFilterDialog/timeLastWeek Landroid/widget/TextView;
aload 0
aload 1
getstatic com/nd/android/u/contact/R$id/filter_schoolmate_all I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
putfield com/nd/android/u/contact/dialog/RankFilterDialog/schoolmateAll Landroid/view/View;
aload 0
aload 1
getstatic com/nd/android/u/contact/R$id/filter_schoolmate_male I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
putfield com/nd/android/u/contact/dialog/RankFilterDialog/schoolmateMale Landroid/view/View;
aload 0
aload 1
getstatic com/nd/android/u/contact/R$id/filter_schoolmate_female I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
putfield com/nd/android/u/contact/dialog/RankFilterDialog/schoolmateFemale Landroid/view/View;
aload 0
aload 1
getstatic com/nd/android/u/contact/R$id/filter_unit_layout I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/nd/android/u/contact/dialog/RankFilterDialog/selectUnitlayout Landroid/widget/RelativeLayout;
aload 0
aload 1
getstatic com/nd/android/u/contact/R$id/filter_unit_text I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/dialog/RankFilterDialog/selectedUnitText Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/contact/dialog/RankFilterDialog/mContext Landroid/content/Context;
invokestatic android/support/v4/content/LocalBroadcastManager/getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;
aload 0
getfield com/nd/android/u/contact/dialog/RankFilterDialog/mMessageReceiver Landroid/content/BroadcastReceiver;
new android/content/IntentFilter
dup
ldc "com.nd.android.u.cloud.ui.dialog.PhotoScreenDialog"
invokespecial android/content/IntentFilter/<init>(Ljava/lang/String;)V
invokevirtual android/support/v4/content/LocalBroadcastManager/registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
aload 0
getstatic com/nd/android/u/contact/R$string/photoscreen I
invokevirtual com/nd/android/u/contact/dialog/RankFilterDialog/setTitle(I)Landroid/app/AlertDialog$Builder;
pop
aload 0
invokespecial com/nd/android/u/contact/dialog/RankFilterDialog/setLastWeek()V
aload 0
aload 1
invokevirtual com/nd/android/u/contact/dialog/RankFilterDialog/setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;
pop
aload 0
invokespecial com/nd/android/u/contact/dialog/RankFilterDialog/initEvent()V
aload 0
aload 0
getfield com/nd/android/u/contact/dialog/RankFilterDialog/onCancelListener Landroid/content/DialogInterface$OnCancelListener;
invokevirtual com/nd/android/u/contact/dialog/RankFilterDialog/setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;
pop
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getType()I 0
invokestatic com/product/android/business/ApplicationVariable$IDENTITY/value2Enum(I)Lcom/product/android/business/ApplicationVariable$IDENTITY;
getstatic com/product/android/business/ApplicationVariable$IDENTITY/STUDENT Lcom/product/android/business/ApplicationVariable$IDENTITY;
if_acmpne L0
aload 0
getfield com/nd/android/u/contact/dialog/RankFilterDialog/selectUnitlayout Landroid/widget/RelativeLayout;
bipush 8
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
L0:
return
.limit locals 3
.limit stack 5
.end method

.method private UnRegisterObserver()V
aload 0
getfield com/nd/android/u/contact/dialog/RankFilterDialog/mContext Landroid/content/Context;
invokestatic android/support/v4/content/LocalBroadcastManager/getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;
aload 0
getfield com/nd/android/u/contact/dialog/RankFilterDialog/mMessageReceiver Landroid/content/BroadcastReceiver;
invokevirtual android/support/v4/content/LocalBroadcastManager/unregisterReceiver(Landroid/content/BroadcastReceiver;)V
return
.limit locals 1
.limit stack 2
.end method

.method static synthetic access$000(Lcom/nd/android/u/contact/dialog/RankFilterDialog;)V
aload 0
invokespecial com/nd/android/u/contact/dialog/RankFilterDialog/UnRegisterObserver()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/android/u/contact/dialog/RankFilterDialog;)Landroid/os/Handler;
aload 0
getfield com/nd/android/u/contact/dialog/RankFilterDialog/mHandler Landroid/os/Handler;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/nd/android/u/contact/dialog/RankFilterDialog;)I
aload 0
getfield com/nd/android/u/contact/dialog/RankFilterDialog/mGenderSel I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/nd/android/u/contact/dialog/RankFilterDialog;)Lcom/product/android/commonInterface/contact/RankFilterInfo;
aload 0
getfield com/nd/android/u/contact/dialog/RankFilterDialog/mFilterInfo Lcom/product/android/commonInterface/contact/RankFilterInfo;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$400(Lcom/nd/android/u/contact/dialog/RankFilterDialog;)I
aload 0
getfield com/nd/android/u/contact/dialog/RankFilterDialog/mTimeSel I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$500(Lcom/nd/android/u/contact/dialog/RankFilterDialog;)I
aload 0
getfield com/nd/android/u/contact/dialog/RankFilterDialog/mDepartidSel I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$600(Lcom/nd/android/u/contact/dialog/RankFilterDialog;)I
aload 0
getfield com/nd/android/u/contact/dialog/RankFilterDialog/mUnitidSel I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$700(Lcom/nd/android/u/contact/dialog/RankFilterDialog;)Ljava/lang/String;
aload 0
getfield com/nd/android/u/contact/dialog/RankFilterDialog/mSelectNameSel Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method private initEvent()V
aload 0
getfield com/nd/android/u/contact/dialog/RankFilterDialog/schoolmateAll Landroid/view/View;
aload 0
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/contact/dialog/RankFilterDialog/schoolmateMale Landroid/view/View;
aload 0
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/contact/dialog/RankFilterDialog/schoolmateFemale Landroid/view/View;
aload 0
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/contact/dialog/RankFilterDialog/selectUnitlayout Landroid/widget/RelativeLayout;
aload 0
invokevirtual android/widget/RelativeLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/contact/dialog/RankFilterDialog/selectedUnitText Landroid/widget/TextView;
aload 0
invokevirtual android/widget/TextView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/contact/dialog/RankFilterDialog/timeAll Landroid/view/View;
aload 0
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/contact/dialog/RankFilterDialog/timeLastWeek Landroid/widget/TextView;
aload 0
invokevirtual android/widget/TextView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getstatic com/nd/android/u/contact/R$string/ok I
new com/nd/android/u/contact/dialog/RankFilterDialog$3
dup
aload 0
invokespecial com/nd/android/u/contact/dialog/RankFilterDialog$3/<init>(Lcom/nd/android/u/contact/dialog/RankFilterDialog;)V
invokevirtual com/nd/android/u/contact/dialog/RankFilterDialog/setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
pop
aload 0
getstatic com/nd/android/u/contact/R$string/cancel I
new com/nd/android/u/contact/dialog/RankFilterDialog$4
dup
aload 0
invokespecial com/nd/android/u/contact/dialog/RankFilterDialog$4/<init>(Lcom/nd/android/u/contact/dialog/RankFilterDialog;)V
invokevirtual com/nd/android/u/contact/dialog/RankFilterDialog/setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
pop
return
.limit locals 1
.limit stack 5
.end method

.method private setLastWeek()V
aload 0
getfield com/nd/android/u/contact/dialog/RankFilterDialog/timeLastWeek Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/contact/dialog/RankFilterDialog/mContext Landroid/content/Context;
getstatic com/nd/android/u/contact/R$string/only_last_week I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
.limit locals 1
.limit stack 3
.end method

.method public final onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
istore 2
iload 2
getstatic com/nd/android/u/contact/R$id/filter_schoolmate_all I
if_icmpne L0
aload 0
iconst_0
invokevirtual com/nd/android/u/contact/dialog/RankFilterDialog/setGenderSelectedBtn(I)V
L1:
return
L0:
iload 2
getstatic com/nd/android/u/contact/R$id/filter_schoolmate_female I
if_icmpne L2
aload 0
iconst_2
invokevirtual com/nd/android/u/contact/dialog/RankFilterDialog/setGenderSelectedBtn(I)V
return
L2:
iload 2
getstatic com/nd/android/u/contact/R$id/filter_schoolmate_male I
if_icmpne L3
aload 0
iconst_1
invokevirtual com/nd/android/u/contact/dialog/RankFilterDialog/setGenderSelectedBtn(I)V
return
L3:
iload 2
getstatic com/nd/android/u/contact/R$id/filter_time_all I
if_icmpne L4
aload 0
iconst_0
invokevirtual com/nd/android/u/contact/dialog/RankFilterDialog/setTimeSelect(I)V
return
L4:
iload 2
getstatic com/nd/android/u/contact/R$id/filter_time_last I
if_icmpne L5
aload 0
iconst_1
invokevirtual com/nd/android/u/contact/dialog/RankFilterDialog/setTimeSelect(I)V
return
L5:
iload 2
getstatic com/nd/android/u/contact/R$id/filter_unit_text I
if_icmpeq L6
iload 2
getstatic com/nd/android/u/contact/R$id/filter_unit_layout I
if_icmpne L1
L6:
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
astore 1
aload 1
aload 0
getfield com/nd/android/u/contact/dialog/RankFilterDialog/mContext Landroid/content/Context;
ldc com/nd/android/u/contact/activity/PhotoScreenUnitActivity
invokevirtual android/content/Intent/setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
pop
aload 1
ldc "unitid"
aload 0
getfield com/nd/android/u/contact/dialog/RankFilterDialog/mUnitidSel I
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;I)Landroid/content/Intent;
pop
aload 1
ldc "departid"
aload 0
getfield com/nd/android/u/contact/dialog/RankFilterDialog/mDepartidSel I
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;I)Landroid/content/Intent;
pop
aload 0
getfield com/nd/android/u/contact/dialog/RankFilterDialog/mContext Landroid/content/Context;
checkcast android/app/Activity
aload 1
iconst_0
invokevirtual android/app/Activity/startActivityForResult(Landroid/content/Intent;I)V
return
.limit locals 3
.limit stack 3
.end method

.method public final setFilterValue(Lcom/product/android/commonInterface/contact/RankFilterInfo;)V
aload 0
aload 1
putfield com/nd/android/u/contact/dialog/RankFilterDialog/mFilterInfo Lcom/product/android/commonInterface/contact/RankFilterInfo;
aload 0
getfield com/nd/android/u/contact/dialog/RankFilterDialog/mFilterInfo Lcom/product/android/commonInterface/contact/RankFilterInfo;
ifnull L0
aload 0
aload 0
getfield com/nd/android/u/contact/dialog/RankFilterDialog/mFilterInfo Lcom/product/android/commonInterface/contact/RankFilterInfo;
invokevirtual com/product/android/commonInterface/contact/RankFilterInfo/getUnitid()I
putfield com/nd/android/u/contact/dialog/RankFilterDialog/mUnitidSel I
aload 0
aload 0
getfield com/nd/android/u/contact/dialog/RankFilterDialog/mFilterInfo Lcom/product/android/commonInterface/contact/RankFilterInfo;
invokevirtual com/product/android/commonInterface/contact/RankFilterInfo/getDepartid()I
putfield com/nd/android/u/contact/dialog/RankFilterDialog/mDepartidSel I
aload 0
aload 0
getfield com/nd/android/u/contact/dialog/RankFilterDialog/mFilterInfo Lcom/product/android/commonInterface/contact/RankFilterInfo;
invokevirtual com/product/android/commonInterface/contact/RankFilterInfo/getOrgSelectName()Ljava/lang/String;
putfield com/nd/android/u/contact/dialog/RankFilterDialog/mSelectNameSel Ljava/lang/String;
aload 0
aload 0
getfield com/nd/android/u/contact/dialog/RankFilterDialog/mFilterInfo Lcom/product/android/commonInterface/contact/RankFilterInfo;
invokevirtual com/product/android/commonInterface/contact/RankFilterInfo/getGenderSelect()I
invokevirtual com/nd/android/u/contact/dialog/RankFilterDialog/setGenderSelectedBtn(I)V
aload 0
aload 0
getfield com/nd/android/u/contact/dialog/RankFilterDialog/mFilterInfo Lcom/product/android/commonInterface/contact/RankFilterInfo;
invokevirtual com/product/android/commonInterface/contact/RankFilterInfo/getTimeSelect()I
invokevirtual com/nd/android/u/contact/dialog/RankFilterDialog/setTimeSelect(I)V
aload 0
getfield com/nd/android/u/contact/dialog/RankFilterDialog/selectedUnitText Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/contact/dialog/RankFilterDialog/mFilterInfo Lcom/product/android/commonInterface/contact/RankFilterInfo;
invokevirtual com/product/android/commonInterface/contact/RankFilterInfo/getOrgSelectName()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/contact/dialog/RankFilterDialog/mFilterInfo Lcom/product/android/commonInterface/contact/RankFilterInfo;
invokevirtual com/product/android/commonInterface/contact/RankFilterInfo/isDefault()Z
ifeq L1
aload 0
getstatic com/nd/android/u/contact/R$string/photoscreen I
invokevirtual com/nd/android/u/contact/dialog/RankFilterDialog/setTitle(I)Landroid/app/AlertDialog$Builder;
pop
L0:
return
L1:
aload 0
getstatic com/nd/android/u/contact/R$string/filter_ready I
invokevirtual com/nd/android/u/contact/dialog/RankFilterDialog/setTitle(I)Landroid/app/AlertDialog$Builder;
pop
return
.limit locals 2
.limit stack 2
.end method

.method public final setGenderSelectedBtn(I)V
aload 0
iload 1
putfield com/nd/android/u/contact/dialog/RankFilterDialog/mGenderSel I
aload 0
getfield com/nd/android/u/contact/dialog/RankFilterDialog/schoolmateAll Landroid/view/View;
getstatic com/nd/android/u/contact/R$drawable/bt_blank I
invokevirtual android/view/View/setBackgroundResource(I)V
aload 0
getfield com/nd/android/u/contact/dialog/RankFilterDialog/schoolmateMale Landroid/view/View;
getstatic com/nd/android/u/contact/R$drawable/bt_blank I
invokevirtual android/view/View/setBackgroundResource(I)V
aload 0
getfield com/nd/android/u/contact/dialog/RankFilterDialog/schoolmateFemale Landroid/view/View;
getstatic com/nd/android/u/contact/R$drawable/bt_blank I
invokevirtual android/view/View/setBackgroundResource(I)V
iload 1
tableswitch 0
L0
L1
L2
default : L3
L3:
return
L0:
aload 0
getfield com/nd/android/u/contact/dialog/RankFilterDialog/schoolmateAll Landroid/view/View;
getstatic com/nd/android/u/contact/R$drawable/bt_left_over I
invokevirtual android/view/View/setBackgroundResource(I)V
return
L1:
aload 0
getfield com/nd/android/u/contact/dialog/RankFilterDialog/schoolmateMale Landroid/view/View;
getstatic com/nd/android/u/contact/R$drawable/bt_center_over I
invokevirtual android/view/View/setBackgroundResource(I)V
return
L2:
aload 0
getfield com/nd/android/u/contact/dialog/RankFilterDialog/schoolmateFemale Landroid/view/View;
getstatic com/nd/android/u/contact/R$drawable/bt_right_over I
invokevirtual android/view/View/setBackgroundResource(I)V
return
.limit locals 2
.limit stack 2
.end method

.method public final setTimeSelect(I)V
aload 0
iload 1
putfield com/nd/android/u/contact/dialog/RankFilterDialog/mTimeSel I
aload 0
getfield com/nd/android/u/contact/dialog/RankFilterDialog/timeAll Landroid/view/View;
getstatic com/nd/android/u/contact/R$drawable/bt_blank I
invokevirtual android/view/View/setBackgroundResource(I)V
aload 0
getfield com/nd/android/u/contact/dialog/RankFilterDialog/timeLastWeek Landroid/widget/TextView;
getstatic com/nd/android/u/contact/R$drawable/bt_blank I
invokevirtual android/widget/TextView/setBackgroundResource(I)V
iload 1
tableswitch 0
L0
L1
default : L2
L2:
return
L0:
aload 0
getfield com/nd/android/u/contact/dialog/RankFilterDialog/timeAll Landroid/view/View;
getstatic com/nd/android/u/contact/R$drawable/bt_left_over I
invokevirtual android/view/View/setBackgroundResource(I)V
return
L1:
aload 0
getfield com/nd/android/u/contact/dialog/RankFilterDialog/timeLastWeek Landroid/widget/TextView;
getstatic com/nd/android/u/contact/R$drawable/bt_center_over I
invokevirtual android/widget/TextView/setBackgroundResource(I)V
return
.limit locals 2
.limit stack 2
.end method

.method public final setUnitValue(IILjava/lang/String;)V
aload 0
iload 1
putfield com/nd/android/u/contact/dialog/RankFilterDialog/mUnitidSel I
aload 0
iload 2
putfield com/nd/android/u/contact/dialog/RankFilterDialog/mDepartidSel I
aload 0
aload 3
putfield com/nd/android/u/contact/dialog/RankFilterDialog/mSelectNameSel Ljava/lang/String;
aload 0
getfield com/nd/android/u/contact/dialog/RankFilterDialog/selectedUnitText Landroid/widget/TextView;
aload 3
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
.limit locals 4
.limit stack 2
.end method
