.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/activity/guide/BindPhoneActivity
.super com/product/android/ui/activity/HeaderActivity
.implements android/view/View$OnTouchListener
.inner class inner com/nd/android/u/cloud/activity/guide/BindPhoneActivity$1

.field private static final 'CHECK_PHONE_REQUEST_CODE' I = 650


.field private final 'PHONE' Ljava/lang/String;

.field private 'mEtContent' Landroid/widget/EditText;

.field private 'mImm' Landroid/view/inputmethod/InputMethodManager;

.method public <init>()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/<init>()V
aload 0
ldc "phone"
putfield com/nd/android/u/cloud/activity/guide/BindPhoneActivity/PHONE Ljava/lang/String;
return
.limit locals 1
.limit stack 2
.end method

.method static synthetic access$000(Lcom/nd/android/u/cloud/activity/guide/BindPhoneActivity;)V
aload 0
invokespecial com/nd/android/u/cloud/activity/guide/BindPhoneActivity/lunchMainActivity()V
return
.limit locals 1
.limit stack 1
.end method

.method private lunchMainActivity()V
aload 0
iconst_1
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokestatic com/nd/android/u/cloud/helper/Utils/setBindPhoneFlag(Landroid/content/Context;ZJ)V
aload 0
invokestatic com/nd/android/u/cloud/helper/Utils/lunchMainLifeActivity(Landroid/content/Context;)V
return
.limit locals 1
.limit stack 4
.end method

.method protected _onCreate(Landroid/os/Bundle;)Z
aload 0
ldc_w 2130903054
invokevirtual com/nd/android/u/cloud/activity/guide/BindPhoneActivity/setContentView(I)V
aload 0
aload 0
ldc "input_method"
invokevirtual com/nd/android/u/cloud/activity/guide/BindPhoneActivity/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/view/inputmethod/InputMethodManager
putfield com/nd/android/u/cloud/activity/guide/BindPhoneActivity/mImm Landroid/view/inputmethod/InputMethodManager;
aload 0
invokevirtual com/nd/android/u/cloud/activity/guide/BindPhoneActivity/initComponent()V
aload 0
invokevirtual com/nd/android/u/cloud/activity/guide/BindPhoneActivity/initEvent()V
aload 0
ldc_w 2131493945
invokevirtual com/nd/android/u/cloud/activity/guide/BindPhoneActivity/setActivityTitle(I)V
aload 1
ifnull L0
aload 0
getfield com/nd/android/u/cloud/activity/guide/BindPhoneActivity/mEtContent Landroid/widget/EditText;
aload 1
ldc "phone"
invokevirtual android/os/Bundle/getString(Ljava/lang/String;)Ljava/lang/String;
invokevirtual android/widget/EditText/setText(Ljava/lang/CharSequence;)V
L0:
aload 0
aload 1
invokespecial com/product/android/ui/activity/HeaderActivity/_onCreate(Landroid/os/Bundle;)Z
ireturn
.limit locals 2
.limit stack 3
.end method

.method protected initEvent()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/initEvent()V
aload 0
ldc_w 2131625260
invokevirtual com/nd/android/u/cloud/activity/guide/BindPhoneActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
aload 0
invokevirtual com/nd/android/u/cloud/activity/guide/BindPhoneActivity/getResources()Landroid/content/res/Resources;
ldc_w 2131493988
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
ldc_w 2131625260
invokevirtual com/nd/android/u/cloud/activity/guide/BindPhoneActivity/findViewById(I)Landroid/view/View;
iconst_0
invokevirtual android/view/View/setVisibility(I)V
aload 0
ldc_w 2131625260
invokevirtual com/nd/android/u/cloud/activity/guide/BindPhoneActivity/findViewById(I)Landroid/view/View;
ldc_w 2130837933
invokevirtual android/view/View/setBackgroundResource(I)V
aload 0
ldc_w 2131624281
invokevirtual com/nd/android/u/cloud/activity/guide/BindPhoneActivity/findViewById(I)Landroid/view/View;
iconst_0
invokevirtual android/view/View/setVisibility(I)V
aload 0
aload 0
ldc_w 2131624031
invokevirtual com/nd/android/u/cloud/activity/guide/BindPhoneActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/EditText
putfield com/nd/android/u/cloud/activity/guide/BindPhoneActivity/mEtContent Landroid/widget/EditText;
aload 0
ldc_w 2131624092
invokevirtual com/nd/android/u/cloud/activity/guide/BindPhoneActivity/findViewById(I)Landroid/view/View;
aload 0
invokevirtual android/view/View/setOnTouchListener(Landroid/view/View$OnTouchListener;)V
return
.limit locals 1
.limit stack 3
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
aload 0
iload 1
iload 2
aload 3
invokespecial com/product/android/ui/activity/HeaderActivity/onActivityResult(IILandroid/content/Intent;)V
iload 1
sipush 650
if_icmpne L0
iload 2
iconst_m1
if_icmpne L0
aload 0
invokevirtual com/nd/android/u/cloud/activity/guide/BindPhoneActivity/finish()V
L0:
return
.limit locals 4
.limit stack 4
.end method

.method public onBackPressed()V
aload 0
invokespecial com/nd/android/u/cloud/activity/guide/BindPhoneActivity/lunchMainActivity()V
aload 0
invokevirtual com/nd/android/u/cloud/activity/guide/BindPhoneActivity/finish()V
return
.limit locals 1
.limit stack 1
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/product/android/ui/activity/HeaderActivity/onSaveInstanceState(Landroid/os/Bundle;)V
aload 1
ldc "phone"
aload 0
getfield com/nd/android/u/cloud/activity/guide/BindPhoneActivity/mEtContent Landroid/widget/EditText;
invokevirtual android/widget/EditText/getText()Landroid/text/Editable;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokevirtual java/lang/String/trim()Ljava/lang/String;
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
return
.limit locals 2
.limit stack 3
.end method

.method public onStart()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/onStart()V
aload 0
invokevirtual com/nd/android/u/cloud/activity/guide/BindPhoneActivity/initComponentValue()V
return
.limit locals 1
.limit stack 1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
aload 1
invokevirtual android/view/View/getId()I
tableswitch 2131624092
L0
default : L1
L1:
iconst_0
ireturn
L0:
aload 0
getfield com/nd/android/u/cloud/activity/guide/BindPhoneActivity/mImm Landroid/view/inputmethod/InputMethodManager;
invokevirtual android/view/inputmethod/InputMethodManager/isActive()Z
ifeq L1
aload 0
getfield com/nd/android/u/cloud/activity/guide/BindPhoneActivity/mImm Landroid/view/inputmethod/InputMethodManager;
aload 1
invokevirtual android/view/View/getWindowToken()Landroid/os/IBinder;
iconst_0
invokevirtual android/view/inputmethod/InputMethodManager/hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
pop
iconst_0
ireturn
.limit locals 3
.limit stack 3
.end method

.method protected rightBtnHandle()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/rightBtnHandle()V
aload 0
getfield com/nd/android/u/cloud/activity/guide/BindPhoneActivity/mEtContent Landroid/widget/EditText;
invokevirtual android/widget/EditText/getText()Landroid/text/Editable;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokevirtual java/lang/String/trim()Ljava/lang/String;
astore 1
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
aload 0
invokespecial com/nd/android/u/cloud/activity/guide/BindPhoneActivity/lunchMainActivity()V
aload 0
invokevirtual com/nd/android/u/cloud/activity/guide/BindPhoneActivity/finish()V
return
L0:
aload 1
invokestatic ims/utils/CommUtil/isMobile(Ljava/lang/String;)Z
ifne L1
new com/nd/android/u/cloud/activity/guide/DlgCheckPhone
dup
aload 0
invokespecial com/nd/android/u/cloud/activity/guide/DlgCheckPhone/<init>(Landroid/content/Context;)V
astore 1
aload 1
new com/nd/android/u/cloud/activity/guide/BindPhoneActivity$1
dup
aload 0
invokespecial com/nd/android/u/cloud/activity/guide/BindPhoneActivity$1/<init>(Lcom/nd/android/u/cloud/activity/guide/BindPhoneActivity;)V
invokevirtual com/nd/android/u/cloud/activity/guide/DlgCheckPhone/setOnAfterDismissListener(Lcom/nd/android/u/cloud/activity/guide/DlgCheckPhone$OnDlgBtnListener;)V
aload 1
invokevirtual com/nd/android/u/cloud/activity/guide/DlgCheckPhone/show()V
return
L1:
new android/content/Intent
dup
aload 0
ldc com/nd/android/u/cloud/activity/guide/CheckPhoneActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 2
aload 2
ldc "phone_number"
aload 1
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 0
aload 2
sipush 650
invokevirtual com/nd/android/u/cloud/activity/guide/BindPhoneActivity/startActivityForResult(Landroid/content/Intent;I)V
return
.limit locals 3
.limit stack 4
.end method
