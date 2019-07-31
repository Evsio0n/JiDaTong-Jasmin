.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/activity/SelectHighSchoolActivity
.super com/product/android/ui/activity/HeaderActivity
.implements android/view/View$OnClickListener
.inner class inner com/nd/android/u/cloud/activity/SelectHighSchoolActivity$1
.inner class inner com/nd/android/u/cloud/activity/SelectHighSchoolActivity$2
.inner class inner com/nd/android/u/cloud/activity/SelectHighSchoolActivity$3
.inner class inner com/nd/android/u/cloud/activity/SelectHighSchoolActivity$4

.field private 'mEtHighSchool' Landroid/widget/EditText;

.field private 'mHighSchoolInfo' Lcom/nd/android/u/cloud/readschoolinfo/HighSchoolInfo;

.field private 'mHighschoolName' Ljava/lang/String;

.field private 'mIsModifiedHighSchool' Z

.field private 'mIvClearHighSchool' Landroid/widget/ImageView;

.field private 'mIvSave' Landroid/widget/ImageView;

.field private 'mLvHighSchool' Lcom/nd/android/u/cloud/activity/welcome/SelectSchoolListView;

.method public <init>()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$002(Lcom/nd/android/u/cloud/activity/SelectHighSchoolActivity;Z)Z
aload 0
iload 1
putfield com/nd/android/u/cloud/activity/SelectHighSchoolActivity/mIsModifiedHighSchool Z
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$100(Lcom/nd/android/u/cloud/activity/SelectHighSchoolActivity;)Lcom/nd/android/u/cloud/readschoolinfo/HighSchoolInfo;
aload 0
getfield com/nd/android/u/cloud/activity/SelectHighSchoolActivity/mHighSchoolInfo Lcom/nd/android/u/cloud/readschoolinfo/HighSchoolInfo;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$102(Lcom/nd/android/u/cloud/activity/SelectHighSchoolActivity;Lcom/nd/android/u/cloud/readschoolinfo/HighSchoolInfo;)Lcom/nd/android/u/cloud/readschoolinfo/HighSchoolInfo;
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/SelectHighSchoolActivity/mHighSchoolInfo Lcom/nd/android/u/cloud/readschoolinfo/HighSchoolInfo;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$200(Lcom/nd/android/u/cloud/activity/SelectHighSchoolActivity;)Landroid/widget/EditText;
aload 0
getfield com/nd/android/u/cloud/activity/SelectHighSchoolActivity/mEtHighSchool Landroid/widget/EditText;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/nd/android/u/cloud/activity/SelectHighSchoolActivity;)Landroid/widget/ImageView;
aload 0
getfield com/nd/android/u/cloud/activity/SelectHighSchoolActivity/mIvSave Landroid/widget/ImageView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$400(Lcom/nd/android/u/cloud/activity/SelectHighSchoolActivity;)Landroid/widget/ImageView;
aload 0
getfield com/nd/android/u/cloud/activity/SelectHighSchoolActivity/mIvClearHighSchool Landroid/widget/ImageView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$500(Lcom/nd/android/u/cloud/activity/SelectHighSchoolActivity;)Lcom/nd/android/u/cloud/activity/welcome/SelectSchoolListView;
aload 0
getfield com/nd/android/u/cloud/activity/SelectHighSchoolActivity/mLvHighSchool Lcom/nd/android/u/cloud/activity/welcome/SelectSchoolListView;
areturn
.limit locals 1
.limit stack 1
.end method

.method private checkHighSchool()Z
aload 0
invokevirtual com/nd/android/u/cloud/activity/SelectHighSchoolActivity/hideSoftInput()V
aload 0
getfield com/nd/android/u/cloud/activity/SelectHighSchoolActivity/mIsModifiedHighSchool Z
ifeq L0
aload 0
getfield com/nd/android/u/cloud/activity/SelectHighSchoolActivity/mHighSchoolInfo Lcom/nd/android/u/cloud/readschoolinfo/HighSchoolInfo;
ifnull L1
aload 0
getfield com/nd/android/u/cloud/activity/SelectHighSchoolActivity/mEtHighSchool Landroid/widget/EditText;
invokevirtual android/widget/EditText/getText()Landroid/text/Editable;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
aload 0
getfield com/nd/android/u/cloud/activity/SelectHighSchoolActivity/mHighSchoolInfo Lcom/nd/android/u/cloud/readschoolinfo/HighSchoolInfo;
invokevirtual com/nd/android/u/cloud/readschoolinfo/HighSchoolInfo/getSchoolName()Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L2
ldc_w 2131493656
invokestatic com/common/android/utils/ToastUtils/display(I)V
L0:
iconst_0
ireturn
L1:
aload 0
getfield com/nd/android/u/cloud/activity/SelectHighSchoolActivity/mEtHighSchool Landroid/widget/EditText;
invokevirtual android/widget/EditText/getText()Landroid/text/Editable;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokestatic com/common/android/utils/StringUtils/isEmpty(Ljava/lang/String;)Z
ifne L2
ldc_w 2131493656
invokestatic com/common/android/utils/ToastUtils/display(I)V
iconst_0
ireturn
L2:
iconst_1
ireturn
.limit locals 1
.limit stack 2
.end method

.method private doBack()V
aload 0
invokevirtual com/nd/android/u/cloud/activity/SelectHighSchoolActivity/hideSoftInput()V
aload 0
getfield com/nd/android/u/cloud/activity/SelectHighSchoolActivity/mIsModifiedHighSchool Z
ifeq L0
new com/nd/android/u/cloud/activity/welcome/WelcomeDialog
dup
aload 0
new com/nd/android/u/cloud/activity/SelectHighSchoolActivity$4
dup
aload 0
invokespecial com/nd/android/u/cloud/activity/SelectHighSchoolActivity$4/<init>(Lcom/nd/android/u/cloud/activity/SelectHighSchoolActivity;)V
aconst_null
invokespecial com/nd/android/u/cloud/activity/welcome/WelcomeDialog/<init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V
invokevirtual com/nd/android/u/cloud/activity/welcome/WelcomeDialog/show()V
return
L0:
aload 0
invokevirtual com/nd/android/u/cloud/activity/SelectHighSchoolActivity/finish()V
return
.limit locals 1
.limit stack 6
.end method

.method protected initComponent()V
.annotation invisible Landroid/annotation/SuppressLint;
value [s = "ResourceAsColor" 
.end annotation
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/initComponent()V
aload 0
aload 0
ldc_w 2131624355
invokevirtual com/nd/android/u/cloud/activity/SelectHighSchoolActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/EditText
putfield com/nd/android/u/cloud/activity/SelectHighSchoolActivity/mEtHighSchool Landroid/widget/EditText;
aload 0
aload 0
ldc_w 2131624191
invokevirtual com/nd/android/u/cloud/activity/SelectHighSchoolActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/cloud/activity/SelectHighSchoolActivity/mIvClearHighSchool Landroid/widget/ImageView;
aload 0
aload 0
ldc_w 2131624193
invokevirtual com/nd/android/u/cloud/activity/SelectHighSchoolActivity/findViewById(I)Landroid/view/View;
checkcast com/nd/android/u/cloud/activity/welcome/SelectSchoolListView
putfield com/nd/android/u/cloud/activity/SelectHighSchoolActivity/mLvHighSchool Lcom/nd/android/u/cloud/activity/welcome/SelectSchoolListView;
aload 0
aload 0
ldc_w 2131625528
invokevirtual com/nd/android/u/cloud/activity/SelectHighSchoolActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/cloud/activity/SelectHighSchoolActivity/mIvSave Landroid/widget/ImageView;
aload 0
getfield com/nd/android/u/cloud/activity/SelectHighSchoolActivity/mIvSave Landroid/widget/ImageView;
aconst_null
invokevirtual android/widget/ImageView/setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
aload 0
getfield com/nd/android/u/cloud/activity/SelectHighSchoolActivity/mIvSave Landroid/widget/ImageView;
getstatic android/widget/ImageView$ScaleType/CENTER Landroid/widget/ImageView$ScaleType;
invokevirtual android/widget/ImageView/setScaleType(Landroid/widget/ImageView$ScaleType;)V
aload 0
getfield com/nd/android/u/cloud/activity/SelectHighSchoolActivity/mIvSave Landroid/widget/ImageView;
aload 0
invokevirtual com/nd/android/u/cloud/activity/SelectHighSchoolActivity/getResources()Landroid/content/res/Resources;
ldc_w 2130838304
invokevirtual android/content/res/Resources/getDrawable(I)Landroid/graphics/drawable/Drawable;
invokevirtual android/widget/ImageView/setImageDrawable(Landroid/graphics/drawable/Drawable;)V
return
.limit locals 1
.limit stack 3
.end method

.method protected initComponentValue()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/initComponentValue()V
aload 0
getfield com/nd/android/u/cloud/activity/SelectHighSchoolActivity/titleText Landroid/widget/TextView;
ldc_w 2131495519
invokevirtual android/widget/TextView/setText(I)V
aload 0
getfield com/nd/android/u/cloud/activity/SelectHighSchoolActivity/mHighschoolName Ljava/lang/String;
invokestatic com/common/android/utils/StringUtils/isEmpty(Ljava/lang/String;)Z
ifne L0
aload 0
getfield com/nd/android/u/cloud/activity/SelectHighSchoolActivity/mEtHighSchool Landroid/widget/EditText;
aload 0
getfield com/nd/android/u/cloud/activity/SelectHighSchoolActivity/mHighschoolName Ljava/lang/String;
invokevirtual android/widget/EditText/setText(Ljava/lang/CharSequence;)V
L0:
return
.limit locals 1
.limit stack 2
.end method

.method protected initEvent()V
aload 0
getfield com/nd/android/u/cloud/activity/SelectHighSchoolActivity/leftBtn Landroid/widget/Button;
aload 0
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/cloud/activity/SelectHighSchoolActivity/mIvSave Landroid/widget/ImageView;
aload 0
invokevirtual android/widget/ImageView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/cloud/activity/SelectHighSchoolActivity/mLvHighSchool Lcom/nd/android/u/cloud/activity/welcome/SelectSchoolListView;
new com/nd/android/u/cloud/activity/SelectHighSchoolActivity$1
dup
aload 0
invokespecial com/nd/android/u/cloud/activity/SelectHighSchoolActivity$1/<init>(Lcom/nd/android/u/cloud/activity/SelectHighSchoolActivity;)V
invokevirtual com/nd/android/u/cloud/activity/welcome/SelectSchoolListView/setOnDataSelectedListener(Lcom/nd/android/u/cloud/activity/welcome/SelectSchoolListView$OnDataSelectedListener;)V
aload 0
getfield com/nd/android/u/cloud/activity/SelectHighSchoolActivity/mLvHighSchool Lcom/nd/android/u/cloud/activity/welcome/SelectSchoolListView;
new com/nd/android/u/cloud/activity/SelectHighSchoolActivity$2
dup
aload 0
invokespecial com/nd/android/u/cloud/activity/SelectHighSchoolActivity$2/<init>(Lcom/nd/android/u/cloud/activity/SelectHighSchoolActivity;)V
invokevirtual com/nd/android/u/cloud/activity/welcome/SelectSchoolListView/setOnTouchListener(Landroid/view/View$OnTouchListener;)V
aload 0
getfield com/nd/android/u/cloud/activity/SelectHighSchoolActivity/mIvClearHighSchool Landroid/widget/ImageView;
aload 0
invokevirtual android/widget/ImageView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/cloud/activity/SelectHighSchoolActivity/mEtHighSchool Landroid/widget/EditText;
new com/nd/android/u/cloud/activity/SelectHighSchoolActivity$3
dup
aload 0
invokespecial com/nd/android/u/cloud/activity/SelectHighSchoolActivity$3/<init>(Lcom/nd/android/u/cloud/activity/SelectHighSchoolActivity;)V
invokevirtual android/widget/EditText/addTextChangedListener(Landroid/text/TextWatcher;)V
return
.limit locals 1
.limit stack 4
.end method

.method public onBackPressed()V
aload 0
invokespecial com/nd/android/u/cloud/activity/SelectHighSchoolActivity/doBack()V
return
.limit locals 1
.limit stack 1
.end method

.method public onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
istore 2
iload 2
ldc_w 2131624191
if_icmpne L0
aload 0
getfield com/nd/android/u/cloud/activity/SelectHighSchoolActivity/mEtHighSchool Landroid/widget/EditText;
ldc ""
invokevirtual android/widget/EditText/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/cloud/activity/SelectHighSchoolActivity/mIvClearHighSchool Landroid/widget/ImageView;
bipush 8
invokevirtual android/widget/ImageView/setVisibility(I)V
L1:
return
L0:
iload 2
ldc_w 2131624281
if_icmpne L2
aload 0
invokespecial com/nd/android/u/cloud/activity/SelectHighSchoolActivity/doBack()V
return
L2:
iload 2
ldc_w 2131625528
if_icmpne L1
aload 0
invokespecial com/nd/android/u/cloud/activity/SelectHighSchoolActivity/checkHighSchool()Z
ifeq L1
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
astore 1
aload 0
getfield com/nd/android/u/cloud/activity/SelectHighSchoolActivity/mHighSchoolInfo Lcom/nd/android/u/cloud/readschoolinfo/HighSchoolInfo;
ifnull L3
aload 1
ldc "highschool_code"
aload 0
getfield com/nd/android/u/cloud/activity/SelectHighSchoolActivity/mHighSchoolInfo Lcom/nd/android/u/cloud/readschoolinfo/HighSchoolInfo;
invokevirtual com/nd/android/u/cloud/readschoolinfo/HighSchoolInfo/getSchoolCode()Ljava/lang/String;
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 1
ldc "highschool_name"
aload 0
getfield com/nd/android/u/cloud/activity/SelectHighSchoolActivity/mHighSchoolInfo Lcom/nd/android/u/cloud/readschoolinfo/HighSchoolInfo;
invokevirtual com/nd/android/u/cloud/readschoolinfo/HighSchoolInfo/getSchoolName()Ljava/lang/String;
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
L4:
aload 1
ldc "is_highschool_edit"
iconst_1
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
pop
aload 0
iconst_m1
aload 1
invokevirtual com/nd/android/u/cloud/activity/SelectHighSchoolActivity/setResult(ILandroid/content/Intent;)V
aload 0
invokevirtual com/nd/android/u/cloud/activity/SelectHighSchoolActivity/finish()V
return
L3:
aload 1
ldc "highschool_code"
ldc ""
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 1
ldc "highschool_name"
ldc ""
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
goto L4
.limit locals 3
.limit stack 3
.end method

.method protected onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/product/android/ui/activity/HeaderActivity/onCreate(Landroid/os/Bundle;)V
aload 0
ldc_w 2130903111
invokevirtual com/nd/android/u/cloud/activity/SelectHighSchoolActivity/setContentView(I)V
aload 0
aload 0
invokevirtual com/nd/android/u/cloud/activity/SelectHighSchoolActivity/getIntent()Landroid/content/Intent;
ldc "highschool_name"
invokevirtual android/content/Intent/getStringExtra(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/cloud/activity/SelectHighSchoolActivity/mHighschoolName Ljava/lang/String;
aload 0
invokevirtual com/nd/android/u/cloud/activity/SelectHighSchoolActivity/initComponent()V
aload 0
invokevirtual com/nd/android/u/cloud/activity/SelectHighSchoolActivity/initComponentValue()V
aload 0
invokevirtual com/nd/android/u/cloud/activity/SelectHighSchoolActivity/initEvent()V
return
.limit locals 2
.limit stack 3
.end method
