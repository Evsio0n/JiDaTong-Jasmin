.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/activity/BootLotteryActivity
.super com/product/android/ui/activity/HeaderActivity
.implements android/view/View$OnClickListener
.inner class inner com/nd/android/u/cloud/activity/BootLotteryActivity$1

.field private static final 'GOTO_LOTTERY' I = 10001


.field private 'bottom_btn' Landroid/widget/TextView;

.field private 'intent' Landroid/content/Intent;

.field private 'lottery_history' Landroid/widget/TextView;

.field private 'lottery_image' Landroid/widget/ImageView;

.field protected 'm_user' Lcom/product/android/business/login/BindUser;

.field private 'middle_text' Landroid/widget/TextView;

.field private 'top_title' Landroid/widget/TextView;

.method public <init>()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$000(Lcom/nd/android/u/cloud/activity/BootLotteryActivity;)Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/cloud/activity/BootLotteryActivity/middle_text Landroid/widget/TextView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/android/u/cloud/activity/BootLotteryActivity;)Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/cloud/activity/BootLotteryActivity/lottery_history Landroid/widget/TextView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/nd/android/u/cloud/activity/BootLotteryActivity;)Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/cloud/activity/BootLotteryActivity/bottom_btn Landroid/widget/TextView;
areturn
.limit locals 1
.limit stack 1
.end method

.method protected _onCreate(Landroid/os/Bundle;)Z
aload 0
aload 1
invokespecial com/product/android/ui/activity/HeaderActivity/_onCreate(Landroid/os/Bundle;)Z
ifeq L0
invokestatic com/nd/android/u/cloud/data/FirstLoginOptionData/getInstance()Lcom/nd/android/u/cloud/data/FirstLoginOptionData;
aload 0
invokevirtual com/nd/android/u/cloud/data/FirstLoginOptionData/addActivity(Landroid/app/Activity;)V
aload 0
iconst_1
invokevirtual com/nd/android/u/cloud/activity/BootLotteryActivity/requestWindowFeature(I)Z
pop
aload 0
ldc_w 2130903181
invokevirtual com/nd/android/u/cloud/activity/BootLotteryActivity/setContentView(I)V
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
aload 0
ldc_w 2131624691
invokevirtual com/nd/android/u/cloud/activity/BootLotteryActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/activity/BootLotteryActivity/top_title Landroid/widget/TextView;
aload 0
aload 0
ldc_w 2131624690
invokevirtual com/nd/android/u/cloud/activity/BootLotteryActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/cloud/activity/BootLotteryActivity/lottery_image Landroid/widget/ImageView;
aload 0
aload 0
ldc_w 2131624692
invokevirtual com/nd/android/u/cloud/activity/BootLotteryActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/activity/BootLotteryActivity/middle_text Landroid/widget/TextView;
aload 0
aload 0
ldc_w 2131624693
invokevirtual com/nd/android/u/cloud/activity/BootLotteryActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/activity/BootLotteryActivity/lottery_history Landroid/widget/TextView;
aload 0
aload 0
ldc_w 2131624694
invokevirtual com/nd/android/u/cloud/activity/BootLotteryActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/activity/BootLotteryActivity/bottom_btn Landroid/widget/TextView;
aload 0
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getBindUser()Lcom/product/android/business/login/BindUser; 0
putfield com/nd/android/u/cloud/activity/BootLotteryActivity/m_user Lcom/product/android/business/login/BindUser;
return
.limit locals 1
.limit stack 3
.end method

.method protected initComponentValue()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/initComponentValue()V
return
.limit locals 1
.limit stack 1
.end method

.method protected initEvent()V
aload 0
getfield com/nd/android/u/cloud/activity/BootLotteryActivity/lottery_history Landroid/widget/TextView;
aload 0
invokevirtual android/widget/TextView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/cloud/activity/BootLotteryActivity/bottom_btn Landroid/widget/TextView;
aload 0
invokevirtual android/widget/TextView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/cloud/activity/BootLotteryActivity/top_title Landroid/widget/TextView;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getfield com/nd/android/u/cloud/activity/BootLotteryActivity/m_user Lcom/product/android/business/login/BindUser;
invokevirtual com/product/android/business/login/BindUser/getUsername()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokestatic java/util/Locale/getDefault()Ljava/util/Locale;
aload 0
ldc_w 2131495628
invokevirtual com/nd/android/u/cloud/activity/BootLotteryActivity/getString(I)Ljava/lang/String;
iconst_1
anewarray java/lang/Object
dup
iconst_0
getstatic com/nd/android/u/cloud/XYExtentConfig/MAIN_APP_NAME Ljava/lang/String;
aastore
invokestatic java/lang/String/format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
new com/nd/android/u/cloud/activity/BootLotteryActivity$1
dup
aload 0
aload 0
ldc_w 2131493746
invokespecial com/nd/android/u/cloud/activity/BootLotteryActivity$1/<init>(Lcom/nd/android/u/cloud/activity/BootLotteryActivity;Landroid/content/Context;I)V
iconst_0
anewarray java/lang/Void
invokevirtual com/common/android/utils/task/progressTask/ProgressTask/execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
pop
return
.limit locals 1
.limit stack 8
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
aload 0
iload 1
iload 2
aload 3
invokespecial com/product/android/ui/activity/HeaderActivity/onActivityResult(IILandroid/content/Intent;)V
iload 1
sipush 10001
if_icmpne L0
iload 2
iconst_m1
if_icmpne L0
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
astore 3
aload 3
aload 0
ldc com/nd/android/u/cloud/activity/MainFrameActivty
invokevirtual android/content/Intent/setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
pop
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 4
aload 4
ldc "id"
iconst_1
invokevirtual android/os/Bundle/putInt(Ljava/lang/String;I)V
aload 3
aload 4
invokevirtual android/content/Intent/putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
pop
aload 0
aload 3
invokevirtual com/nd/android/u/cloud/activity/BootLotteryActivity/startActivity(Landroid/content/Intent;)V
aload 0
invokevirtual com/nd/android/u/cloud/activity/BootLotteryActivity/finish()V
L0:
return
.limit locals 5
.limit stack 4
.end method

.method public onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
tableswitch 2131624693
L0
L1
default : L2
L2:
return
L0:
aload 0
new android/content/Intent
dup
aload 0
ldc com/nd/android/u/tast/lottery/activity/RafflesListPublicActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
putfield com/nd/android/u/cloud/activity/BootLotteryActivity/intent Landroid/content/Intent;
aload 0
aload 0
getfield com/nd/android/u/cloud/activity/BootLotteryActivity/intent Landroid/content/Intent;
invokevirtual com/nd/android/u/cloud/activity/BootLotteryActivity/startActivity(Landroid/content/Intent;)V
return
L1:
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getUnitid()I
istore 2
getstatic com/product/android/business/config/Configuration/DEFAULTUNITID I
iload 2
if_icmpne L3
aload 0
new android/content/Intent
dup
aload 0
ldc com/nd/android/u/tast/lottery/activity/LotMainActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
putfield com/nd/android/u/cloud/activity/BootLotteryActivity/intent Landroid/content/Intent;
aload 0
getfield com/nd/android/u/cloud/activity/BootLotteryActivity/intent Landroid/content/Intent;
ldc "loadingLot"
iconst_1
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
pop
aload 0
aload 0
getfield com/nd/android/u/cloud/activity/BootLotteryActivity/intent Landroid/content/Intent;
sipush 10001
invokevirtual com/nd/android/u/cloud/activity/BootLotteryActivity/startActivityForResult(Landroid/content/Intent;I)V
return
L3:
aload 0
ldc_w 2131494536
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
return
.limit locals 3
.limit stack 5
.end method

.method public onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/product/android/ui/activity/HeaderActivity/onCreate(Landroid/os/Bundle;)V
aload 0
invokevirtual com/nd/android/u/cloud/activity/BootLotteryActivity/initComponent()V
aload 0
invokevirtual com/nd/android/u/cloud/activity/BootLotteryActivity/initEvent()V
invokestatic com/nd/android/u/cloud/data/FirstLoginOptionData/getInstance()Lcom/nd/android/u/cloud/data/FirstLoginOptionData;
aload 0
invokevirtual com/nd/android/u/cloud/data/FirstLoginOptionData/addActivity(Landroid/app/Activity;)V
return
.limit locals 2
.limit stack 2
.end method

.method protected onDestroy()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/onDestroy()V
invokestatic com/nd/android/u/cloud/data/FirstLoginOptionData/getInstance()Lcom/nd/android/u/cloud/data/FirstLoginOptionData;
invokevirtual com/nd/android/u/cloud/data/FirstLoginOptionData/finishAllActivity()V
return
.limit locals 1
.limit stack 1
.end method

.method protected onStart()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/onStart()V
aload 0
invokevirtual com/nd/android/u/cloud/activity/BootLotteryActivity/initComponentValue()V
return
.limit locals 1
.limit stack 1
.end method
