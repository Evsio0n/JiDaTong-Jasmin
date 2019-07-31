.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/activity/welcome/WelcomeChangeInfoActivity
.super com/product/android/ui/activity/HeaderActivity
.implements android/view/View$OnClickListener
.implements com/nd/android/u/cloud/activity/welcome/SelectSchoolListView$OnDataSelectedListener
.inner class inner com/nd/android/u/cloud/activity/welcome/WelcomeChangeInfoActivity$1
.inner class inner com/nd/android/u/cloud/activity/welcome/WelcomeChangeInfoActivity$2
.inner class UpdateInfo inner com/nd/android/u/cloud/activity/welcome/WelcomeChangeInfoActivity$UpdateInfo outer com/nd/android/u/cloud/activity/welcome/WelcomeChangeInfoActivity

.field public static final 'ANIMATION_DURATION' I = 200


.field public static final 'AREA_CODE' Ljava/lang/String; = "area_code"

.field public static final 'SCHOOL_CODE' Ljava/lang/String; = "school_code"

.field private static final 'SELECT_ADDRESS_REQUEST_CODE' I = 500


.field private 'mClearButton' Landroid/widget/ImageButton;

.field private 'mHighSchoolCode' Ljava/lang/String;

.field private 'mHomeCode' Ljava/lang/String;

.field private 'mHomeTextView' Landroid/widget/TextView;

.field private 'mIsSelect' Z

.field private 'mListView' Lcom/nd/android/u/cloud/activity/welcome/SelectSchoolListView;

.field private 'mSchoolEditText' Landroid/widget/EditText;

.method public <init>()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/<init>()V
aload 0
aconst_null
putfield com/nd/android/u/cloud/activity/welcome/WelcomeChangeInfoActivity/mHighSchoolCode Ljava/lang/String;
aload 0
aconst_null
putfield com/nd/android/u/cloud/activity/welcome/WelcomeChangeInfoActivity/mHomeCode Ljava/lang/String;
aload 0
iconst_0
putfield com/nd/android/u/cloud/activity/welcome/WelcomeChangeInfoActivity/mIsSelect Z
return
.limit locals 1
.limit stack 2
.end method

.method static synthetic access$000(Lcom/nd/android/u/cloud/activity/welcome/WelcomeChangeInfoActivity;)Z
aload 0
getfield com/nd/android/u/cloud/activity/welcome/WelcomeChangeInfoActivity/mIsSelect Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/android/u/cloud/activity/welcome/WelcomeChangeInfoActivity;)Lcom/nd/android/u/cloud/activity/welcome/SelectSchoolListView;
aload 0
getfield com/nd/android/u/cloud/activity/welcome/WelcomeChangeInfoActivity/mListView Lcom/nd/android/u/cloud/activity/welcome/SelectSchoolListView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/nd/android/u/cloud/activity/welcome/WelcomeChangeInfoActivity;)Landroid/widget/ImageButton;
aload 0
getfield com/nd/android/u/cloud/activity/welcome/WelcomeChangeInfoActivity/mClearButton Landroid/widget/ImageButton;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$302(Lcom/nd/android/u/cloud/activity/welcome/WelcomeChangeInfoActivity;Ljava/lang/String;)Ljava/lang/String;
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/welcome/WelcomeChangeInfoActivity/mHighSchoolCode Ljava/lang/String;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method private changeInfo(Z)V
iconst_0
istore 2
getstatic com/nd/android/u/cloud/activity/welcome/WelcomeInfo/INSTANCE Lcom/nd/android/u/cloud/activity/welcome/WelcomeInfo;
astore 3
aload 3
invokevirtual com/nd/android/u/cloud/activity/welcome/WelcomeInfo/getAreaCode()Ljava/lang/String;
astore 4
aload 0
getfield com/nd/android/u/cloud/activity/welcome/WelcomeChangeInfoActivity/mHomeCode Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
aload 0
ldc ""
putfield com/nd/android/u/cloud/activity/welcome/WelcomeChangeInfoActivity/mHomeCode Ljava/lang/String;
L0:
aload 0
getfield com/nd/android/u/cloud/activity/welcome/WelcomeChangeInfoActivity/mHomeCode Ljava/lang/String;
aload 4
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L1
iconst_1
istore 2
L1:
aload 3
invokevirtual com/nd/android/u/cloud/activity/welcome/WelcomeInfo/getHighSchoolCode()Ljava/lang/String;
astore 3
aload 0
getfield com/nd/android/u/cloud/activity/welcome/WelcomeChangeInfoActivity/mHighSchoolCode Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L2
aload 0
ldc ""
putfield com/nd/android/u/cloud/activity/welcome/WelcomeChangeInfoActivity/mHighSchoolCode Ljava/lang/String;
L2:
aload 0
getfield com/nd/android/u/cloud/activity/welcome/WelcomeChangeInfoActivity/mHighSchoolCode Ljava/lang/String;
aload 3
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L3
iconst_1
istore 2
L3:
iload 2
ifeq L4
iload 1
ifeq L5
new com/nd/android/u/cloud/activity/welcome/WelcomeDialog
dup
aload 0
new com/nd/android/u/cloud/activity/welcome/WelcomeChangeInfoActivity$2
dup
aload 0
invokespecial com/nd/android/u/cloud/activity/welcome/WelcomeChangeInfoActivity$2/<init>(Lcom/nd/android/u/cloud/activity/welcome/WelcomeChangeInfoActivity;)V
aconst_null
invokespecial com/nd/android/u/cloud/activity/welcome/WelcomeDialog/<init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V
invokevirtual com/nd/android/u/cloud/activity/welcome/WelcomeDialog/show()V
return
L5:
aload 0
invokespecial com/nd/android/u/cloud/activity/welcome/WelcomeChangeInfoActivity/updateInfo()V
return
L4:
aload 0
invokevirtual com/nd/android/u/cloud/activity/welcome/WelcomeChangeInfoActivity/finish()V
return
.limit locals 5
.limit stack 6
.end method

.method private updateInfo()V
new com/nd/android/u/cloud/activity/welcome/com/UpdateStudentInfo$UpdateStudentInfoReqParams
dup
invokespecial com/nd/android/u/cloud/activity/welcome/com/UpdateStudentInfo$UpdateStudentInfoReqParams/<init>()V
astore 1
aload 1
aload 0
getfield com/nd/android/u/cloud/activity/welcome/WelcomeChangeInfoActivity/mHomeCode Ljava/lang/String;
putfield com/nd/android/u/cloud/activity/welcome/com/UpdateStudentInfo$UpdateStudentInfoReqParams/mAreacode Ljava/lang/String;
aload 1
aload 0
getfield com/nd/android/u/cloud/activity/welcome/WelcomeChangeInfoActivity/mHighSchoolCode Ljava/lang/String;
putfield com/nd/android/u/cloud/activity/welcome/com/UpdateStudentInfo$UpdateStudentInfoReqParams/mHighSchoolCode Ljava/lang/String;
new com/nd/android/u/cloud/activity/welcome/WelcomeChangeInfoActivity$UpdateInfo
dup
aload 0
aload 0
iconst_1
invokespecial com/nd/android/u/cloud/activity/welcome/WelcomeChangeInfoActivity$UpdateInfo/<init>(Lcom/nd/android/u/cloud/activity/welcome/WelcomeChangeInfoActivity;Landroid/app/Activity;Z)V
iconst_1
anewarray com/nd/android/u/cloud/activity/welcome/com/UpdateStudentInfo$UpdateStudentInfoReqParams
dup
iconst_0
aload 1
aastore
invokevirtual com/nd/android/u/cloud/activity/welcome/WelcomeChangeInfoActivity$UpdateInfo/execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
pop
return
.limit locals 2
.limit stack 5
.end method

.method public dataSelected(Ljava/lang/String;Ljava/lang/String;)V
aload 0
iconst_1
putfield com/nd/android/u/cloud/activity/welcome/WelcomeChangeInfoActivity/mIsSelect Z
aload 0
aload 2
putfield com/nd/android/u/cloud/activity/welcome/WelcomeChangeInfoActivity/mHighSchoolCode Ljava/lang/String;
aload 0
getfield com/nd/android/u/cloud/activity/welcome/WelcomeChangeInfoActivity/mSchoolEditText Landroid/widget/EditText;
aload 1
invokevirtual android/widget/EditText/setText(Ljava/lang/CharSequence;)V
aload 0
iconst_0
putfield com/nd/android/u/cloud/activity/welcome/WelcomeChangeInfoActivity/mIsSelect Z
return
.limit locals 3
.limit stack 2
.end method

.method protected initComponent()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/initComponent()V
aload 0
invokevirtual com/nd/android/u/cloud/activity/welcome/WelcomeChangeInfoActivity/getResources()Landroid/content/res/Resources;
astore 1
aload 0
getfield com/nd/android/u/cloud/activity/welcome/WelcomeChangeInfoActivity/titleText Landroid/widget/TextView;
aload 1
ldc_w 2131493841
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/cloud/activity/welcome/WelcomeChangeInfoActivity/rightBtn Landroid/widget/Button;
aload 1
ldc_w 2131493834
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual android/widget/Button/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/cloud/activity/welcome/WelcomeChangeInfoActivity/rightBtn Landroid/widget/Button;
iconst_0
invokevirtual android/widget/Button/setVisibility(I)V
aload 0
getfield com/nd/android/u/cloud/activity/welcome/WelcomeChangeInfoActivity/rightBtn Landroid/widget/Button;
ldc_w 2130837931
invokevirtual android/widget/Button/setBackgroundResource(I)V
aload 0
aload 0
ldc_w 2131624482
invokevirtual com/nd/android/u/cloud/activity/welcome/WelcomeChangeInfoActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/EditText
putfield com/nd/android/u/cloud/activity/welcome/WelcomeChangeInfoActivity/mSchoolEditText Landroid/widget/EditText;
aload 0
aload 0
ldc_w 2131624479
invokevirtual com/nd/android/u/cloud/activity/welcome/WelcomeChangeInfoActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/activity/welcome/WelcomeChangeInfoActivity/mHomeTextView Landroid/widget/TextView;
aload 0
aload 0
ldc_w 2131624483
invokevirtual com/nd/android/u/cloud/activity/welcome/WelcomeChangeInfoActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageButton
putfield com/nd/android/u/cloud/activity/welcome/WelcomeChangeInfoActivity/mClearButton Landroid/widget/ImageButton;
aload 0
aload 0
ldc_w 2131624484
invokevirtual com/nd/android/u/cloud/activity/welcome/WelcomeChangeInfoActivity/findViewById(I)Landroid/view/View;
checkcast com/nd/android/u/cloud/activity/welcome/SelectSchoolListView
putfield com/nd/android/u/cloud/activity/welcome/WelcomeChangeInfoActivity/mListView Lcom/nd/android/u/cloud/activity/welcome/SelectSchoolListView;
return
.limit locals 2
.limit stack 3
.end method

.method protected initComponentValue()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/initComponentValue()V
aload 0
getstatic com/nd/android/u/cloud/activity/welcome/WelcomeInfo/INSTANCE Lcom/nd/android/u/cloud/activity/welcome/WelcomeInfo;
invokevirtual com/nd/android/u/cloud/activity/welcome/WelcomeInfo/getHighSchoolCode()Ljava/lang/String;
putfield com/nd/android/u/cloud/activity/welcome/WelcomeChangeInfoActivity/mHighSchoolCode Ljava/lang/String;
aload 0
getstatic com/nd/android/u/cloud/activity/welcome/WelcomeInfo/INSTANCE Lcom/nd/android/u/cloud/activity/welcome/WelcomeInfo;
invokevirtual com/nd/android/u/cloud/activity/welcome/WelcomeInfo/getAreaCode()Ljava/lang/String;
putfield com/nd/android/u/cloud/activity/welcome/WelcomeChangeInfoActivity/mHomeCode Ljava/lang/String;
aload 0
getfield com/nd/android/u/cloud/activity/welcome/WelcomeChangeInfoActivity/mHighSchoolCode Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L0
getstatic com/nd/android/u/cloud/readschoolinfo/SchoolInfoHandle/INSTANCE Lcom/nd/android/u/cloud/readschoolinfo/SchoolInfoHandle;
aload 0
invokevirtual com/nd/android/u/cloud/readschoolinfo/SchoolInfoHandle/openDatabase(Landroid/content/Context;)V
aload 0
getfield com/nd/android/u/cloud/activity/welcome/WelcomeChangeInfoActivity/mSchoolEditText Landroid/widget/EditText;
getstatic com/nd/android/u/cloud/readschoolinfo/SchoolInfoHandle/INSTANCE Lcom/nd/android/u/cloud/readschoolinfo/SchoolInfoHandle;
aload 0
getfield com/nd/android/u/cloud/activity/welcome/WelcomeChangeInfoActivity/mHighSchoolCode Ljava/lang/String;
invokevirtual com/nd/android/u/cloud/readschoolinfo/SchoolInfoHandle/getSchoolNameByCode(Ljava/lang/String;)Ljava/lang/String;
invokevirtual android/widget/EditText/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/cloud/activity/welcome/WelcomeChangeInfoActivity/mSchoolEditText Landroid/widget/EditText;
invokevirtual android/widget/EditText/getText()Landroid/text/Editable;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L0
aload 0
getfield com/nd/android/u/cloud/activity/welcome/WelcomeChangeInfoActivity/mClearButton Landroid/widget/ImageButton;
iconst_0
invokevirtual android/widget/ImageButton/setVisibility(I)V
L0:
aload 0
getfield com/nd/android/u/cloud/activity/welcome/WelcomeChangeInfoActivity/mHomeCode Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L1
getstatic com/nd/rj/common/administrativeregions/lib/SQLiteHandle/INSTANCE Lcom/nd/rj/common/administrativeregions/lib/SQLiteHandle;
aload 0
invokevirtual com/nd/rj/common/administrativeregions/lib/SQLiteHandle/openDatabase(Landroid/content/Context;)V
aload 0
getfield com/nd/android/u/cloud/activity/welcome/WelcomeChangeInfoActivity/mHomeTextView Landroid/widget/TextView;
getstatic com/nd/rj/common/administrativeregions/lib/AdministrativeRegionsHandle/INSTANCE Lcom/nd/rj/common/administrativeregions/lib/AdministrativeRegionsHandle;
aload 0
getfield com/nd/android/u/cloud/activity/welcome/WelcomeChangeInfoActivity/mHomeCode Ljava/lang/String;
iconst_1
invokevirtual com/nd/rj/common/administrativeregions/lib/AdministrativeRegionsHandle/getFullName(Ljava/lang/String;Z)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L1:
return
.limit locals 1
.limit stack 4
.end method

.method protected initEvent()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/initEvent()V
aload 0
ldc_w 2131624477
invokevirtual com/nd/android/u/cloud/activity/welcome/WelcomeChangeInfoActivity/findViewById(I)Landroid/view/View;
aload 0
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/cloud/activity/welcome/WelcomeChangeInfoActivity/mHomeTextView Landroid/widget/TextView;
aload 0
invokevirtual android/widget/TextView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/cloud/activity/welcome/WelcomeChangeInfoActivity/mListView Lcom/nd/android/u/cloud/activity/welcome/SelectSchoolListView;
aload 0
invokevirtual com/nd/android/u/cloud/activity/welcome/SelectSchoolListView/setOnDataSelectedListener(Lcom/nd/android/u/cloud/activity/welcome/SelectSchoolListView$OnDataSelectedListener;)V
aload 0
getfield com/nd/android/u/cloud/activity/welcome/WelcomeChangeInfoActivity/mSchoolEditText Landroid/widget/EditText;
new com/nd/android/u/cloud/activity/welcome/WelcomeChangeInfoActivity$1
dup
aload 0
invokespecial com/nd/android/u/cloud/activity/welcome/WelcomeChangeInfoActivity$1/<init>(Lcom/nd/android/u/cloud/activity/welcome/WelcomeChangeInfoActivity;)V
invokevirtual android/widget/EditText/addTextChangedListener(Landroid/text/TextWatcher;)V
aload 0
getfield com/nd/android/u/cloud/activity/welcome/WelcomeChangeInfoActivity/mClearButton Landroid/widget/ImageButton;
aload 0
invokevirtual android/widget/ImageButton/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
.limit locals 1
.limit stack 4
.end method

.method protected leftBtnHandle()V
aload 0
iconst_1
invokespecial com/nd/android/u/cloud/activity/welcome/WelcomeChangeInfoActivity/changeInfo(Z)V
return
.limit locals 1
.limit stack 2
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
iload 1
sipush 500
if_icmpne L0
iload 2
iconst_m1
if_icmpne L0
aload 0
aload 3
ldc "newCode"
invokevirtual android/content/Intent/getStringExtra(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/cloud/activity/welcome/WelcomeChangeInfoActivity/mHomeCode Ljava/lang/String;
aload 0
getfield com/nd/android/u/cloud/activity/welcome/WelcomeChangeInfoActivity/mHomeCode Ljava/lang/String;
invokestatic com/nd/android/u/cloud/helper/Utils/getHometownByCode(Ljava/lang/String;)Ljava/lang/String;
astore 4
aload 4
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L0
aload 0
getfield com/nd/android/u/cloud/activity/welcome/WelcomeChangeInfoActivity/mHomeTextView Landroid/widget/TextView;
aload 4
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L0:
aload 0
iload 1
iload 2
aload 3
invokespecial com/product/android/ui/activity/HeaderActivity/onActivityResult(IILandroid/content/Intent;)V
return
.limit locals 5
.limit stack 4
.end method

.method public onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
lookupswitch
2131624477 : L0
2131624479 : L0
2131624483 : L1
default : L2
L2:
return
L1:
aload 0
getfield com/nd/android/u/cloud/activity/welcome/WelcomeChangeInfoActivity/mSchoolEditText Landroid/widget/EditText;
ldc ""
invokevirtual android/widget/EditText/setText(Ljava/lang/CharSequence;)V
return
L0:
new android/content/Intent
dup
aload 0
ldc com/nd/address/ui/AddressSelector
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 1
aload 1
ldc "code"
aload 0
getfield com/nd/android/u/cloud/activity/welcome/WelcomeChangeInfoActivity/mHomeCode Ljava/lang/String;
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 1
ldc "isClick"
iconst_0
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
pop
aload 0
aload 1
sipush 500
invokevirtual com/nd/android/u/cloud/activity/welcome/WelcomeChangeInfoActivity/startActivityForResult(Landroid/content/Intent;I)V
return
.limit locals 2
.limit stack 4
.end method

.method protected onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/product/android/ui/activity/HeaderActivity/onCreate(Landroid/os/Bundle;)V
aload 0
ldc_w 2130903134
invokevirtual com/nd/android/u/cloud/activity/welcome/WelcomeChangeInfoActivity/setContentView(I)V
aload 0
invokevirtual com/nd/android/u/cloud/activity/welcome/WelcomeChangeInfoActivity/initComponent()V
aload 0
invokevirtual com/nd/android/u/cloud/activity/welcome/WelcomeChangeInfoActivity/initComponentValue()V
aload 0
invokevirtual com/nd/android/u/cloud/activity/welcome/WelcomeChangeInfoActivity/initEvent()V
return
.limit locals 2
.limit stack 2
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/product/android/ui/activity/HeaderActivity/onRestoreInstanceState(Landroid/os/Bundle;)V
aload 1
ldc "area_code"
invokevirtual android/os/Bundle/containsKey(Ljava/lang/String;)Z
ifeq L0
aload 0
aload 1
ldc "area_code"
invokevirtual android/os/Bundle/getString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/cloud/activity/welcome/WelcomeChangeInfoActivity/mHomeCode Ljava/lang/String;
L0:
aload 1
ldc "school_code"
invokevirtual android/os/Bundle/containsKey(Ljava/lang/String;)Z
ifeq L1
aload 0
aload 1
ldc "school_code"
invokevirtual android/os/Bundle/getString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/cloud/activity/welcome/WelcomeChangeInfoActivity/mHighSchoolCode Ljava/lang/String;
L1:
return
.limit locals 2
.limit stack 3
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/product/android/ui/activity/HeaderActivity/onSaveInstanceState(Landroid/os/Bundle;)V
aload 0
getfield com/nd/android/u/cloud/activity/welcome/WelcomeChangeInfoActivity/mHomeCode Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L0
aload 1
ldc "area_code"
aload 0
getfield com/nd/android/u/cloud/activity/welcome/WelcomeChangeInfoActivity/mHomeCode Ljava/lang/String;
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
L0:
aload 0
getfield com/nd/android/u/cloud/activity/welcome/WelcomeChangeInfoActivity/mHighSchoolCode Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L1
aload 1
ldc "school_code"
aload 0
getfield com/nd/android/u/cloud/activity/welcome/WelcomeChangeInfoActivity/mHighSchoolCode Ljava/lang/String;
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
L1:
return
.limit locals 2
.limit stack 3
.end method

.method protected rightBtnHandle()V
aload 0
iconst_0
invokespecial com/nd/android/u/cloud/activity/welcome/WelcomeChangeInfoActivity/changeInfo(Z)V
return
.limit locals 1
.limit stack 2
.end method
