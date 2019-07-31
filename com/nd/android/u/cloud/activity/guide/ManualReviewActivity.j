.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/activity/guide/ManualReviewActivity
.super com/product/android/ui/activity/HeaderActivity
.implements android/view/View$OnTouchListener
.inner class static synthetic inner com/nd/android/u/cloud/activity/guide/ManualReviewActivity$1
.inner class private AppealTask inner com/nd/android/u/cloud/activity/guide/ManualReviewActivity$AppealTask outer com/nd/android/u/cloud/activity/guide/ManualReviewActivity

.field private final 'SUCCESS_CODE' I

.field private 'mEtAccount' Landroid/widget/EditText;

.field private 'mEtId' Landroid/widget/EditText;

.field private 'mEtPhone' Landroid/widget/EditText;

.field private 'mEtSpecial' Landroid/widget/EditText;

.field private 'mImm' Landroid/view/inputmethod/InputMethodManager;

.field private 'mTv_manual_review_school' Landroid/widget/TextView;

.method public <init>()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/<init>()V
aload 0
sipush 200
putfield com/nd/android/u/cloud/activity/guide/ManualReviewActivity/SUCCESS_CODE I
return
.limit locals 1
.limit stack 2
.end method

.method protected _onCreate(Landroid/os/Bundle;)Z
aload 0
ldc_w 2130903091
invokevirtual com/nd/android/u/cloud/activity/guide/ManualReviewActivity/setContentView(I)V
aload 0
aload 0
ldc "input_method"
invokevirtual com/nd/android/u/cloud/activity/guide/ManualReviewActivity/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/view/inputmethod/InputMethodManager
putfield com/nd/android/u/cloud/activity/guide/ManualReviewActivity/mImm Landroid/view/inputmethod/InputMethodManager;
aload 0
invokevirtual com/nd/android/u/cloud/activity/guide/ManualReviewActivity/initComponent()V
aload 0
invokevirtual com/nd/android/u/cloud/activity/guide/ManualReviewActivity/initEvent()V
aload 0
ldc_w 2131493955
invokevirtual com/nd/android/u/cloud/activity/guide/ManualReviewActivity/setActivityTitle(I)V
aload 0
aload 1
invokespecial com/product/android/ui/activity/HeaderActivity/_onCreate(Landroid/os/Bundle;)Z
ireturn
.limit locals 2
.limit stack 3
.end method

.method protected initComponent()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/initComponent()V
aload 0
ldc_w 2131624259
invokevirtual com/nd/android/u/cloud/activity/guide/ManualReviewActivity/findViewById(I)Landroid/view/View;
aload 0
invokevirtual android/view/View/setOnTouchListener(Landroid/view/View$OnTouchListener;)V
aload 0
aload 0
ldc_w 2131624260
invokevirtual com/nd/android/u/cloud/activity/guide/ManualReviewActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/activity/guide/ManualReviewActivity/mTv_manual_review_school Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/cloud/activity/guide/ManualReviewActivity/mTv_manual_review_school Landroid/widget/TextView;
getstatic com/nd/android/u/cloud/XYExtentConfig/MAIN_IDENTITYCHECK_UNIT Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
.limit locals 1
.limit stack 3
.end method

.method protected initEvent()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/initEvent()V
aload 0
ldc_w 2131625260
invokevirtual com/nd/android/u/cloud/activity/guide/ManualReviewActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
aload 0
invokevirtual com/nd/android/u/cloud/activity/guide/ManualReviewActivity/getResources()Landroid/content/res/Resources;
ldc_w 2131494001
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
ldc_w 2131625260
invokevirtual com/nd/android/u/cloud/activity/guide/ManualReviewActivity/findViewById(I)Landroid/view/View;
iconst_0
invokevirtual android/view/View/setVisibility(I)V
aload 0
ldc_w 2131625260
invokevirtual com/nd/android/u/cloud/activity/guide/ManualReviewActivity/findViewById(I)Landroid/view/View;
ldc_w 2130837933
invokevirtual android/view/View/setBackgroundResource(I)V
aload 0
aload 0
ldc_w 2131624261
invokevirtual com/nd/android/u/cloud/activity/guide/ManualReviewActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/EditText
putfield com/nd/android/u/cloud/activity/guide/ManualReviewActivity/mEtAccount Landroid/widget/EditText;
aload 0
aload 0
ldc_w 2131624262
invokevirtual com/nd/android/u/cloud/activity/guide/ManualReviewActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/EditText
putfield com/nd/android/u/cloud/activity/guide/ManualReviewActivity/mEtId Landroid/widget/EditText;
aload 0
aload 0
ldc_w 2131624263
invokevirtual com/nd/android/u/cloud/activity/guide/ManualReviewActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/EditText
putfield com/nd/android/u/cloud/activity/guide/ManualReviewActivity/mEtPhone Landroid/widget/EditText;
aload 0
aload 0
ldc_w 2131624264
invokevirtual com/nd/android/u/cloud/activity/guide/ManualReviewActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/EditText
putfield com/nd/android/u/cloud/activity/guide/ManualReviewActivity/mEtSpecial Landroid/widget/EditText;
aload 0
getfield com/nd/android/u/cloud/activity/guide/ManualReviewActivity/mEtAccount Landroid/widget/EditText;
aload 0
invokevirtual com/nd/android/u/cloud/activity/guide/ManualReviewActivity/getIntent()Landroid/content/Intent;
ldc "account"
invokevirtual android/content/Intent/getStringExtra(Ljava/lang/String;)Ljava/lang/String;
invokevirtual android/widget/EditText/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/cloud/activity/guide/ManualReviewActivity/mEtId Landroid/widget/EditText;
aload 0
invokevirtual com/nd/android/u/cloud/activity/guide/ManualReviewActivity/getIntent()Landroid/content/Intent;
ldc "id"
invokevirtual android/content/Intent/getStringExtra(Ljava/lang/String;)Ljava/lang/String;
invokevirtual android/widget/EditText/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/cloud/activity/guide/ManualReviewActivity/mEtPhone Landroid/widget/EditText;
invokevirtual android/widget/EditText/requestFocus()Z
pop
return
.limit locals 1
.limit stack 3
.end method

.method protected leftBtnHandle()V
aload 0
getfield com/nd/android/u/cloud/activity/guide/ManualReviewActivity/mImm Landroid/view/inputmethod/InputMethodManager;
invokevirtual android/view/inputmethod/InputMethodManager/isActive()Z
ifeq L0
aload 0
getfield com/nd/android/u/cloud/activity/guide/ManualReviewActivity/mImm Landroid/view/inputmethod/InputMethodManager;
aload 0
getfield com/nd/android/u/cloud/activity/guide/ManualReviewActivity/mEtAccount Landroid/widget/EditText;
invokevirtual android/widget/EditText/getWindowToken()Landroid/os/IBinder;
iconst_0
invokevirtual android/view/inputmethod/InputMethodManager/hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
pop
L0:
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/leftBtnHandle()V
return
.limit locals 1
.limit stack 3
.end method

.method public onStart()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/onStart()V
aload 0
invokevirtual com/nd/android/u/cloud/activity/guide/ManualReviewActivity/initComponentValue()V
return
.limit locals 1
.limit stack 1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
aload 1
invokevirtual android/view/View/getId()I
tableswitch 2131624259
L0
default : L1
L1:
iconst_0
ireturn
L0:
aload 0
getfield com/nd/android/u/cloud/activity/guide/ManualReviewActivity/mImm Landroid/view/inputmethod/InputMethodManager;
invokevirtual android/view/inputmethod/InputMethodManager/isActive()Z
ifeq L1
aload 0
getfield com/nd/android/u/cloud/activity/guide/ManualReviewActivity/mImm Landroid/view/inputmethod/InputMethodManager;
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
getfield com/nd/android/u/cloud/activity/guide/ManualReviewActivity/mEtAccount Landroid/widget/EditText;
invokevirtual android/widget/EditText/getText()Landroid/text/Editable;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokevirtual java/lang/String/trim()Ljava/lang/String;
astore 1
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
aload 0
ldc_w 2131494697
invokestatic com/nd/rj/common/login/NdLoginComFun/ShowToast(Landroid/content/Context;I)V
return
L0:
aload 0
getfield com/nd/android/u/cloud/activity/guide/ManualReviewActivity/mEtId Landroid/widget/EditText;
invokevirtual android/widget/EditText/getText()Landroid/text/Editable;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokevirtual java/lang/String/trim()Ljava/lang/String;
astore 2
aload 2
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L1
aload 0
ldc_w 2131493981
invokestatic com/nd/rj/common/login/NdLoginComFun/ShowToast(Landroid/content/Context;I)V
return
L1:
aload 0
getfield com/nd/android/u/cloud/activity/guide/ManualReviewActivity/mEtPhone Landroid/widget/EditText;
invokevirtual android/widget/EditText/getText()Landroid/text/Editable;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokevirtual java/lang/String/trim()Ljava/lang/String;
astore 3
aload 3
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L2
aload 0
ldc_w 2131493992
invokestatic com/nd/rj/common/login/NdLoginComFun/ShowToast(Landroid/content/Context;I)V
return
L2:
aload 3
invokestatic ims/utils/CommUtil/isMobile(Ljava/lang/String;)Z
ifne L3
aload 0
ldc_w 2131494078
invokestatic com/nd/rj/common/login/NdLoginComFun/ShowToast(Landroid/content/Context;I)V
return
L3:
aload 0
invokestatic ims/utils/CommUtil/JudgeNetWorkStatus(Landroid/content/Context;)Z
ifeq L4
new com/nd/rj/common/login/jobnumber/ReqAppeal$AppealRequestParams
dup
invokespecial com/nd/rj/common/login/jobnumber/ReqAppeal$AppealRequestParams/<init>()V
astore 4
aload 4
aload 2
putfield com/nd/rj/common/login/jobnumber/ReqAppeal$AppealRequestParams/mIdcardno Ljava/lang/String;
aload 4
aload 1
putfield com/nd/rj/common/login/jobnumber/ReqAppeal$AppealRequestParams/mUsername Ljava/lang/String;
aload 4
iconst_1
putfield com/nd/rj/common/login/jobnumber/ReqAppeal$AppealRequestParams/mType I
aload 4
aload 3
putfield com/nd/rj/common/login/jobnumber/ReqAppeal$AppealRequestParams/mPhone Ljava/lang/String;
aload 4
aload 0
getfield com/nd/android/u/cloud/activity/guide/ManualReviewActivity/mEtSpecial Landroid/widget/EditText;
invokevirtual android/widget/EditText/getText()Landroid/text/Editable;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokevirtual java/lang/String/trim()Ljava/lang/String;
putfield com/nd/rj/common/login/jobnumber/ReqAppeal$AppealRequestParams/mSpecialty Ljava/lang/String;
new com/nd/android/u/cloud/activity/guide/ManualReviewActivity$AppealTask
dup
aload 0
aconst_null
invokespecial com/nd/android/u/cloud/activity/guide/ManualReviewActivity$AppealTask/<init>(Lcom/nd/android/u/cloud/activity/guide/ManualReviewActivity;Lcom/nd/android/u/cloud/activity/guide/ManualReviewActivity$1;)V
iconst_1
anewarray com/nd/rj/common/login/jobnumber/ReqAppeal$AppealRequestParams
dup
iconst_0
aload 4
aastore
invokevirtual com/nd/android/u/cloud/activity/guide/ManualReviewActivity$AppealTask/execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
pop
return
L4:
aload 0
ldc_w 2131494162
invokestatic com/nd/rj/common/login/NdLoginComFun/ShowToast(Landroid/content/Context;I)V
return
.limit locals 5
.limit stack 5
.end method
