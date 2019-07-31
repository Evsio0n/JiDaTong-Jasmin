.bytecode 50.0
.class public synchronized com/nd/android/u/contact/activity/PhotoScreeningActivty
.super com/product/android/ui/activity/HeaderActivity
.implements android/view/View$OnClickListener
.inner class inner com/nd/android/u/contact/activity/PhotoScreeningActivty$1
.inner class inner com/nd/android/u/contact/activity/PhotoScreeningActivty$2

.field public static final 'ACTION_SELECTED_ORG_PROC' Ljava/lang/String; = "com.nd.android.u.cloud.ui.dialog.PhotoScreenDialog"

.field public static final 'REQUEST_DEPTID' I = 0


.field private 'mMessageReceiver' Landroid/content/BroadcastReceiver;

.field private 'm_btnDetermine' Landroid/widget/Button;

.field private 'm_btnMostPopular' Landroid/widget/Button;

.field private 'm_btnRadom' Landroid/widget/Button;

.field private 'm_btnReset' Landroid/widget/Button;

.field private 'mbUnRegister' Z

.field private 'onCancelListener' Landroid/content/DialogInterface$OnCancelListener;

.field private 'schoolmateBtn' Landroid/widget/Button;

.field private 'schoolmateFemateBtn' Landroid/widget/Button;

.field private 'schoolmateMateBtn' Landroid/widget/Button;

.field private 'selectUnitlayout' Landroid/widget/RelativeLayout;

.field private 'selectedUnitText' Landroid/widget/TextView;

.method public <init>()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/<init>()V
aload 0
iconst_0
putfield com/nd/android/u/contact/activity/PhotoScreeningActivty/mbUnRegister Z
aload 0
new com/nd/android/u/contact/activity/PhotoScreeningActivty$1
dup
aload 0
invokespecial com/nd/android/u/contact/activity/PhotoScreeningActivty$1/<init>(Lcom/nd/android/u/contact/activity/PhotoScreeningActivty;)V
putfield com/nd/android/u/contact/activity/PhotoScreeningActivty/onCancelListener Landroid/content/DialogInterface$OnCancelListener;
aload 0
new com/nd/android/u/contact/activity/PhotoScreeningActivty$2
dup
aload 0
invokespecial com/nd/android/u/contact/activity/PhotoScreeningActivty$2/<init>(Lcom/nd/android/u/contact/activity/PhotoScreeningActivty;)V
putfield com/nd/android/u/contact/activity/PhotoScreeningActivty/mMessageReceiver Landroid/content/BroadcastReceiver;
return
.limit locals 1
.limit stack 4
.end method

.method private ResetCondition()V
invokestatic com/nd/android/u/contact/dataStructure/PhotoScreenCondition/getInstance()Lcom/nd/android/u/contact/dataStructure/PhotoScreenCondition;
invokevirtual com/nd/android/u/contact/dataStructure/PhotoScreenCondition/initNewValue()V
invokestatic com/nd/android/u/contact/dataStructure/PhotoScreenCondition/getInstance()Lcom/nd/android/u/contact/dataStructure/PhotoScreenCondition;
invokevirtual com/nd/android/u/contact/dataStructure/PhotoScreenCondition/copyNewValue()V
invokestatic com/nd/android/u/contact/dataStructure/PhotoScreenCondition/getInstance()Lcom/nd/android/u/contact/dataStructure/PhotoScreenCondition;
iconst_0
invokevirtual com/nd/android/u/contact/dataStructure/PhotoScreenCondition/setNewOrder(I)V
aload 0
invokestatic com/nd/android/u/contact/dataStructure/PhotoScreenCondition/getInstance()Lcom/nd/android/u/contact/dataStructure/PhotoScreenCondition;
invokevirtual com/nd/android/u/contact/dataStructure/PhotoScreenCondition/getNewOrder()I
invokevirtual com/nd/android/u/contact/activity/PhotoScreeningActivty/setOrderSelectedBtn(I)V
invokestatic com/nd/android/u/contact/dataStructure/PhotoScreenCondition/getInstance()Lcom/nd/android/u/contact/dataStructure/PhotoScreenCondition;
iconst_0
invokevirtual com/nd/android/u/contact/dataStructure/PhotoScreenCondition/setNewGender(I)V
aload 0
iconst_0
invokevirtual com/nd/android/u/contact/activity/PhotoScreeningActivty/setGenderSelectedBtn(I)V
aload 0
getfield com/nd/android/u/contact/activity/PhotoScreeningActivty/selectedUnitText Landroid/widget/TextView;
invokestatic com/nd/android/u/contact/dataStructure/PhotoScreenCondition/getInstance()Lcom/nd/android/u/contact/dataStructure/PhotoScreenCondition;
invokevirtual com/nd/android/u/contact/dataStructure/PhotoScreenCondition/getSelectedNodeName()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
.limit locals 1
.limit stack 2
.end method

.method private UnRegisterObserver()V
aload 0
getfield com/nd/android/u/contact/activity/PhotoScreeningActivty/mbUnRegister Z
ifne L0
aload 0
invokestatic android/support/v4/content/LocalBroadcastManager/getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;
aload 0
getfield com/nd/android/u/contact/activity/PhotoScreeningActivty/mMessageReceiver Landroid/content/BroadcastReceiver;
invokevirtual android/support/v4/content/LocalBroadcastManager/unregisterReceiver(Landroid/content/BroadcastReceiver;)V
L0:
aload 0
iconst_1
putfield com/nd/android/u/contact/activity/PhotoScreeningActivty/mbUnRegister Z
return
.limit locals 1
.limit stack 2
.end method

.method static synthetic access$000(Lcom/nd/android/u/contact/activity/PhotoScreeningActivty;)V
aload 0
invokespecial com/nd/android/u/contact/activity/PhotoScreeningActivty/UnRegisterObserver()V
return
.limit locals 1
.limit stack 1
.end method

.method protected initComponent()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/initComponent()V
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/photoscreen_btn_most_popular I
invokevirtual com/nd/android/u/contact/activity/PhotoScreeningActivty/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/android/u/contact/activity/PhotoScreeningActivty/m_btnMostPopular Landroid/widget/Button;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/photoscreen_btn_radom I
invokevirtual com/nd/android/u/contact/activity/PhotoScreeningActivty/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/android/u/contact/activity/PhotoScreeningActivty/m_btnRadom Landroid/widget/Button;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/photoscreen_btn_schoolmate I
invokevirtual com/nd/android/u/contact/activity/PhotoScreeningActivty/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/android/u/contact/activity/PhotoScreeningActivty/schoolmateBtn Landroid/widget/Button;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/photoscreen_btn_schoolmate_male I
invokevirtual com/nd/android/u/contact/activity/PhotoScreeningActivty/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/android/u/contact/activity/PhotoScreeningActivty/schoolmateMateBtn Landroid/widget/Button;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/photoscreen_btn_schoolmate_female I
invokevirtual com/nd/android/u/contact/activity/PhotoScreeningActivty/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/android/u/contact/activity/PhotoScreeningActivty/schoolmateFemateBtn Landroid/widget/Button;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/photoscreen_unit_layout I
invokevirtual com/nd/android/u/contact/activity/PhotoScreeningActivty/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/nd/android/u/contact/activity/PhotoScreeningActivty/selectUnitlayout Landroid/widget/RelativeLayout;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/photoscreen_unit_text I
invokevirtual com/nd/android/u/contact/activity/PhotoScreeningActivty/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/activity/PhotoScreeningActivty/selectedUnitText Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/photoscreen_btn_reset I
invokevirtual com/nd/android/u/contact/activity/PhotoScreeningActivty/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/android/u/contact/activity/PhotoScreeningActivty/m_btnReset Landroid/widget/Button;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/photoscreen_btn_determine I
invokevirtual com/nd/android/u/contact/activity/PhotoScreeningActivty/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/android/u/contact/activity/PhotoScreeningActivty/m_btnDetermine Landroid/widget/Button;
aload 0
getfield com/nd/android/u/contact/activity/PhotoScreeningActivty/rightBtn Landroid/widget/Button;
bipush 8
invokevirtual android/widget/Button/setVisibility(I)V
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_91XY Lcom/product/android/business/ProductTypeDef$Product;
if_acmpne L0
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getType()I 0
invokestatic com/product/android/business/ApplicationVariable$IDENTITY/value2Enum(I)Lcom/product/android/business/ApplicationVariable$IDENTITY;
getstatic com/product/android/business/ApplicationVariable$IDENTITY/STUDENT Lcom/product/android/business/ApplicationVariable$IDENTITY;
if_acmpne L0
aload 0
getfield com/nd/android/u/contact/activity/PhotoScreeningActivty/selectUnitlayout Landroid/widget/RelativeLayout;
bipush 8
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
L0:
aload 0
invokestatic com/nd/android/u/contact/dataStructure/PhotoScreenCondition/getInstance()Lcom/nd/android/u/contact/dataStructure/PhotoScreenCondition;
invokevirtual com/nd/android/u/contact/dataStructure/PhotoScreenCondition/getGender()I
invokevirtual com/nd/android/u/contact/activity/PhotoScreeningActivty/setGenderSelectedBtn(I)V
invokestatic com/nd/android/u/contact/dataStructure/PhotoScreenCondition/getInstance()Lcom/nd/android/u/contact/dataStructure/PhotoScreenCondition;
invokevirtual com/nd/android/u/contact/dataStructure/PhotoScreenCondition/copyNewValue()V
invokestatic com/nd/android/u/contact/dataStructure/PhotoScreenCondition/getInstance()Lcom/nd/android/u/contact/dataStructure/PhotoScreenCondition;
aconst_null
invokevirtual com/nd/android/u/contact/dataStructure/PhotoScreenCondition/setNewStatus(Lcom/nd/android/u/contact/dataStructure/PhotoScreenStatus;)V
aload 0
invokestatic com/nd/android/u/contact/dataStructure/PhotoScreenCondition/getInstance()Lcom/nd/android/u/contact/dataStructure/PhotoScreenCondition;
invokevirtual com/nd/android/u/contact/dataStructure/PhotoScreenCondition/getOrder()I
invokevirtual com/nd/android/u/contact/activity/PhotoScreeningActivty/setOrderSelectedBtn(I)V
aload 0
invokestatic com/nd/android/u/contact/dataStructure/PhotoScreenCondition/getInstance()Lcom/nd/android/u/contact/dataStructure/PhotoScreenCondition;
invokevirtual com/nd/android/u/contact/dataStructure/PhotoScreenCondition/getGender()I
invokevirtual com/nd/android/u/contact/activity/PhotoScreeningActivty/setGenderSelectedBtn(I)V
aload 0
invokestatic android/support/v4/content/LocalBroadcastManager/getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;
aload 0
getfield com/nd/android/u/contact/activity/PhotoScreeningActivty/mMessageReceiver Landroid/content/BroadcastReceiver;
new android/content/IntentFilter
dup
ldc "com.nd.android.u.cloud.ui.dialog.PhotoScreenDialog"
invokespecial android/content/IntentFilter/<init>(Ljava/lang/String;)V
invokevirtual android/support/v4/content/LocalBroadcastManager/registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
aload 0
invokevirtual com/nd/android/u/contact/activity/PhotoScreeningActivty/initEvent()V
aload 0
getstatic com/nd/android/u/contact/R$string/photoscreen I
invokevirtual com/nd/android/u/contact/activity/PhotoScreeningActivty/setActivityTitle(I)V
aload 0
invokevirtual com/nd/android/u/contact/activity/PhotoScreeningActivty/initComponentValue()V
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_5IUP Lcom/product/android/business/ProductTypeDef$Product;
if_acmpne L1
aload 0
getstatic com/nd/android/u/contact/R$id/gender_filter_layout I
invokevirtual com/nd/android/u/contact/activity/PhotoScreeningActivty/findViewById(I)Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/activity/PhotoScreeningActivty/selectUnitlayout Landroid/widget/RelativeLayout;
bipush 8
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
L1:
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getType()I 0
invokestatic com/product/android/business/ApplicationVariable$IDENTITY/value2Enum(I)Lcom/product/android/business/ApplicationVariable$IDENTITY;
getstatic com/product/android/business/ApplicationVariable$IDENTITY/STUDENT Lcom/product/android/business/ApplicationVariable$IDENTITY;
if_acmpne L2
aload 0
getfield com/nd/android/u/contact/activity/PhotoScreeningActivty/selectUnitlayout Landroid/widget/RelativeLayout;
bipush 8
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
L2:
return
.limit locals 1
.limit stack 5
.end method

.method public initComponentValue()V
invokestatic com/nd/android/u/contact/dataStructure/PhotoScreenCondition/getInstance()Lcom/nd/android/u/contact/dataStructure/PhotoScreenCondition;
invokevirtual com/nd/android/u/contact/dataStructure/PhotoScreenCondition/getNewStatus()Lcom/nd/android/u/contact/dataStructure/PhotoScreenStatus;
ifnull L0
aload 0
getfield com/nd/android/u/contact/activity/PhotoScreeningActivty/selectedUnitText Landroid/widget/TextView;
invokestatic com/nd/android/u/contact/dataStructure/PhotoScreenCondition/getInstance()Lcom/nd/android/u/contact/dataStructure/PhotoScreenCondition;
invokevirtual com/nd/android/u/contact/dataStructure/PhotoScreenCondition/getNewStatusSelectedNodeName()Ljava/lang/CharSequence;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
L0:
aload 0
getfield com/nd/android/u/contact/activity/PhotoScreeningActivty/selectedUnitText Landroid/widget/TextView;
invokestatic com/nd/android/u/contact/dataStructure/PhotoScreenCondition/getInstance()Lcom/nd/android/u/contact/dataStructure/PhotoScreenCondition;
invokevirtual com/nd/android/u/contact/dataStructure/PhotoScreenCondition/getSelectedNodeName()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
.limit locals 1
.limit stack 2
.end method

.method protected initEvent()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/initEvent()V
aload 0
getfield com/nd/android/u/contact/activity/PhotoScreeningActivty/m_btnMostPopular Landroid/widget/Button;
aload 0
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/contact/activity/PhotoScreeningActivty/m_btnRadom Landroid/widget/Button;
aload 0
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/contact/activity/PhotoScreeningActivty/schoolmateBtn Landroid/widget/Button;
aload 0
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/contact/activity/PhotoScreeningActivty/schoolmateMateBtn Landroid/widget/Button;
aload 0
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/contact/activity/PhotoScreeningActivty/schoolmateFemateBtn Landroid/widget/Button;
aload 0
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/contact/activity/PhotoScreeningActivty/selectUnitlayout Landroid/widget/RelativeLayout;
aload 0
invokevirtual android/widget/RelativeLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/contact/activity/PhotoScreeningActivty/selectedUnitText Landroid/widget/TextView;
aload 0
invokevirtual android/widget/TextView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/contact/activity/PhotoScreeningActivty/m_btnReset Landroid/widget/Button;
aload 0
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/contact/activity/PhotoScreeningActivty/m_btnDetermine Landroid/widget/Button;
aload 0
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
.limit locals 1
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
istore 2
iload 2
getstatic com/nd/android/u/contact/R$id/photoscreen_btn_most_popular I
if_icmpne L0
invokestatic com/nd/android/u/contact/dataStructure/PhotoScreenCondition/getInstance()Lcom/nd/android/u/contact/dataStructure/PhotoScreenCondition;
iconst_1
invokevirtual com/nd/android/u/contact/dataStructure/PhotoScreenCondition/setNewOrder(I)V
aload 0
invokestatic com/nd/android/u/contact/dataStructure/PhotoScreenCondition/getInstance()Lcom/nd/android/u/contact/dataStructure/PhotoScreenCondition;
invokevirtual com/nd/android/u/contact/dataStructure/PhotoScreenCondition/getNewOrder()I
invokevirtual com/nd/android/u/contact/activity/PhotoScreeningActivty/setOrderSelectedBtn(I)V
L1:
return
L0:
iload 2
getstatic com/nd/android/u/contact/R$id/photoscreen_btn_radom I
if_icmpne L2
invokestatic com/nd/android/u/contact/dataStructure/PhotoScreenCondition/getInstance()Lcom/nd/android/u/contact/dataStructure/PhotoScreenCondition;
iconst_0
invokevirtual com/nd/android/u/contact/dataStructure/PhotoScreenCondition/setNewOrder(I)V
aload 0
invokestatic com/nd/android/u/contact/dataStructure/PhotoScreenCondition/getInstance()Lcom/nd/android/u/contact/dataStructure/PhotoScreenCondition;
invokevirtual com/nd/android/u/contact/dataStructure/PhotoScreenCondition/getNewOrder()I
invokevirtual com/nd/android/u/contact/activity/PhotoScreeningActivty/setOrderSelectedBtn(I)V
return
L2:
iload 2
getstatic com/nd/android/u/contact/R$id/photoscreen_btn_schoolmate I
if_icmpne L3
invokestatic com/nd/android/u/contact/dataStructure/PhotoScreenCondition/getInstance()Lcom/nd/android/u/contact/dataStructure/PhotoScreenCondition;
iconst_0
invokevirtual com/nd/android/u/contact/dataStructure/PhotoScreenCondition/setNewGender(I)V
aload 0
iconst_0
invokevirtual com/nd/android/u/contact/activity/PhotoScreeningActivty/setGenderSelectedBtn(I)V
return
L3:
iload 2
getstatic com/nd/android/u/contact/R$id/photoscreen_btn_schoolmate_female I
if_icmpne L4
invokestatic com/nd/android/u/contact/dataStructure/PhotoScreenCondition/getInstance()Lcom/nd/android/u/contact/dataStructure/PhotoScreenCondition;
iconst_2
invokevirtual com/nd/android/u/contact/dataStructure/PhotoScreenCondition/setNewGender(I)V
aload 0
iconst_2
invokevirtual com/nd/android/u/contact/activity/PhotoScreeningActivty/setGenderSelectedBtn(I)V
return
L4:
iload 2
getstatic com/nd/android/u/contact/R$id/photoscreen_btn_schoolmate_male I
if_icmpne L5
invokestatic com/nd/android/u/contact/dataStructure/PhotoScreenCondition/getInstance()Lcom/nd/android/u/contact/dataStructure/PhotoScreenCondition;
iconst_1
invokevirtual com/nd/android/u/contact/dataStructure/PhotoScreenCondition/setNewGender(I)V
aload 0
iconst_1
invokevirtual com/nd/android/u/contact/activity/PhotoScreeningActivty/setGenderSelectedBtn(I)V
return
L5:
iload 2
getstatic com/nd/android/u/contact/R$id/photoscreen_unit_text I
if_icmpeq L6
iload 2
getstatic com/nd/android/u/contact/R$id/photoscreen_unit_layout I
if_icmpne L7
L6:
ldc "TIMECOST"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "ERP \u573a\u666f5\uff1a\u7b5b\u9009\u7167\u7247\u5899\u7684\u9009\u62e9\u90e8\u95e8\uff08\u90e8\u95e8\u4eba\u6570\uff09-Time:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokestatic java/lang/System/currentTimeMillis()J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
astore 1
aload 1
aload 0
ldc com/nd/android/u/contact/activity/PhotoScreenUnitActivity
invokevirtual android/content/Intent/setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
pop
invokestatic com/nd/android/u/contact/dataStructure/PhotoScreenCondition/getInstance()Lcom/nd/android/u/contact/dataStructure/PhotoScreenCondition;
invokevirtual com/nd/android/u/contact/dataStructure/PhotoScreenCondition/getNewStatus()Lcom/nd/android/u/contact/dataStructure/PhotoScreenStatus;
ifnull L8
aload 1
ldc "unitid"
invokestatic com/nd/android/u/contact/dataStructure/PhotoScreenCondition/getInstance()Lcom/nd/android/u/contact/dataStructure/PhotoScreenCondition;
invokevirtual com/nd/android/u/contact/dataStructure/PhotoScreenCondition/getNewStatusUnitid()I
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;I)Landroid/content/Intent;
pop
aload 1
ldc "departid"
invokestatic com/nd/android/u/contact/dataStructure/PhotoScreenCondition/getInstance()Lcom/nd/android/u/contact/dataStructure/PhotoScreenCondition;
invokevirtual com/nd/android/u/contact/dataStructure/PhotoScreenCondition/getNewStatusDeitid()I
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;I)Landroid/content/Intent;
pop
L9:
aload 0
aload 1
iconst_0
invokevirtual android/app/Activity/startActivityForResult(Landroid/content/Intent;I)V
return
L8:
aload 1
ldc "unitid"
invokestatic com/nd/android/u/contact/dataStructure/PhotoScreenCondition/getInstance()Lcom/nd/android/u/contact/dataStructure/PhotoScreenCondition;
invokevirtual com/nd/android/u/contact/dataStructure/PhotoScreenCondition/getUnitid()I
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;I)Landroid/content/Intent;
pop
aload 1
ldc "departid"
invokestatic com/nd/android/u/contact/dataStructure/PhotoScreenCondition/getInstance()Lcom/nd/android/u/contact/dataStructure/PhotoScreenCondition;
invokevirtual com/nd/android/u/contact/dataStructure/PhotoScreenCondition/getDeptid()I
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;I)Landroid/content/Intent;
pop
goto L9
L7:
iload 2
getstatic com/nd/android/u/contact/R$id/photoscreen_btn_reset I
if_icmpne L10
aload 0
invokespecial com/nd/android/u/contact/activity/PhotoScreeningActivty/ResetCondition()V
invokestatic com/nd/android/u/contact/dataStructure/PhotoScreenCondition/getInstance()Lcom/nd/android/u/contact/dataStructure/PhotoScreenCondition;
invokevirtual com/nd/android/u/contact/dataStructure/PhotoScreenCondition/validateionChanage()V
return
L10:
iload 2
getstatic com/nd/android/u/contact/R$id/photoscreen_btn_determine I
if_icmpne L1
invokestatic com/nd/android/u/contact/dataStructure/PhotoScreenCondition/getInstance()Lcom/nd/android/u/contact/dataStructure/PhotoScreenCondition;
invokevirtual com/nd/android/u/contact/dataStructure/PhotoScreenCondition/validateionChanage()V
aload 0
invokespecial com/nd/android/u/contact/activity/PhotoScreeningActivty/UnRegisterObserver()V
aload 0
invokevirtual com/nd/android/u/contact/activity/PhotoScreeningActivty/finish()V
return
.limit locals 3
.limit stack 4
.end method

.method protected onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/product/android/ui/activity/HeaderActivity/onCreate(Landroid/os/Bundle;)V
aload 0
getstatic com/nd/android/u/contact/R$layout/xy_photoscreen I
invokevirtual com/nd/android/u/contact/activity/PhotoScreeningActivty/setContentView(I)V
aload 0
invokevirtual com/nd/android/u/contact/activity/PhotoScreeningActivty/initComponent()V
aload 0
invokevirtual com/nd/android/u/contact/activity/PhotoScreeningActivty/initEvent()V
return
.limit locals 2
.limit stack 2
.end method

.method protected setActivityTitle(I)V
aload 0
getfield com/nd/android/u/contact/activity/PhotoScreeningActivty/titleText Landroid/widget/TextView;
iload 1
invokevirtual android/widget/TextView/setText(I)V
return
.limit locals 2
.limit stack 2
.end method

.method protected setActivityTitle(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/contact/activity/PhotoScreeningActivty/titleText Landroid/widget/TextView;
aload 1
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
.limit locals 2
.limit stack 2
.end method

.method public setGenderSelectedBtn(I)V
aload 0
getfield com/nd/android/u/contact/activity/PhotoScreeningActivty/schoolmateBtn Landroid/widget/Button;
getstatic com/nd/android/u/contact/R$drawable/bt_blank I
invokevirtual android/widget/Button/setBackgroundResource(I)V
aload 0
getfield com/nd/android/u/contact/activity/PhotoScreeningActivty/schoolmateMateBtn Landroid/widget/Button;
getstatic com/nd/android/u/contact/R$drawable/bt_blank I
invokevirtual android/widget/Button/setBackgroundResource(I)V
aload 0
getfield com/nd/android/u/contact/activity/PhotoScreeningActivty/schoolmateFemateBtn Landroid/widget/Button;
getstatic com/nd/android/u/contact/R$drawable/bt_blank I
invokevirtual android/widget/Button/setBackgroundResource(I)V
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
getfield com/nd/android/u/contact/activity/PhotoScreeningActivty/schoolmateBtn Landroid/widget/Button;
getstatic com/nd/android/u/contact/R$drawable/xy_photowall_select_left I
invokevirtual android/widget/Button/setBackgroundResource(I)V
return
L1:
aload 0
getfield com/nd/android/u/contact/activity/PhotoScreeningActivty/schoolmateMateBtn Landroid/widget/Button;
getstatic com/nd/android/u/contact/R$drawable/xy_photowall_select_middle I
invokevirtual android/widget/Button/setBackgroundResource(I)V
return
L2:
aload 0
getfield com/nd/android/u/contact/activity/PhotoScreeningActivty/schoolmateFemateBtn Landroid/widget/Button;
getstatic com/nd/android/u/contact/R$drawable/xy_photowall_select_right I
invokevirtual android/widget/Button/setBackgroundResource(I)V
return
.limit locals 2
.limit stack 2
.end method

.method public setOrderSelectedBtn(I)V
aload 0
getfield com/nd/android/u/contact/activity/PhotoScreeningActivty/m_btnMostPopular Landroid/widget/Button;
getstatic com/nd/android/u/contact/R$drawable/bt_blank I
invokevirtual android/widget/Button/setBackgroundResource(I)V
aload 0
getfield com/nd/android/u/contact/activity/PhotoScreeningActivty/m_btnRadom Landroid/widget/Button;
getstatic com/nd/android/u/contact/R$drawable/bt_blank I
invokevirtual android/widget/Button/setBackgroundResource(I)V
iload 1
tableswitch 0
L0
L1
default : L2
L2:
return
L0:
aload 0
getfield com/nd/android/u/contact/activity/PhotoScreeningActivty/m_btnRadom Landroid/widget/Button;
getstatic com/nd/android/u/contact/R$drawable/xy_photowall_select_left I
invokevirtual android/widget/Button/setBackgroundResource(I)V
return
L1:
aload 0
getfield com/nd/android/u/contact/activity/PhotoScreeningActivty/m_btnMostPopular Landroid/widget/Button;
getstatic com/nd/android/u/contact/R$drawable/xy_photowall_select_right I
invokevirtual android/widget/Button/setBackgroundResource(I)V
return
.limit locals 2
.limit stack 2
.end method
