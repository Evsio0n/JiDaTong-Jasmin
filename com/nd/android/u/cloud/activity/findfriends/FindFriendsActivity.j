.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity
.super com/product/android/ui/activity/HeaderActivity
.implements android/view/View$OnClickListener
.implements android/widget/CompoundButton$OnCheckedChangeListener
.implements android/view/View$OnTouchListener
.inner class inner com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity$1
.inner class inner com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity$2
.inner class inner com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity$3
.inner class inner com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity$4
.inner class private GetFriendListTask inner com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity$GetFriendListTask outer com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity

.field private final 'DELAY_TIME' I

.field private 'isLoading' Z

.field private 'mCbFemale' Landroid/widget/CheckBox;

.field private 'mCbMale' Landroid/widget/CheckBox;

.field private 'mCollege' Lcom/nd/android/u/cloud/readschoolinfo/CollegeInfo;

.field private 'mEtHighSchool' Landroid/widget/EditText;

.field private 'mGetFriendTask' Lcom/nd/android/u/cloud/activity/findfriends/FindFriendsActivity$GetFriendListTask;

.field private 'mGrade' Lcom/nd/android/u/cloud/bean/friendRcmmnd/GradeInfo;

.field private 'mHandler' Landroid/os/Handler;

.field private 'mHighSchoolInfo' Lcom/nd/android/u/cloud/readschoolinfo/HighSchoolInfo;

.field private 'mHighSchoolSelectedListener' Lcom/nd/android/u/cloud/activity/welcome/SelectSchoolListView$OnDataSelectedListener;

.field private 'mHometownCode' Ljava/lang/String;

.field private 'mIvClearHighSchool' Landroid/widget/ImageView;

.field private 'mLvHighSchool' Lcom/nd/android/u/cloud/activity/welcome/SelectSchoolListView;

.field private 'mScrollView' Landroid/widget/ScrollView;

.field private 'mTvCollege' Landroid/widget/TextView;

.field private 'mTvGrade' Landroid/widget/TextView;

.field private 'mTvHometown' Landroid/widget/TextView;

.field private 'mTvToast' Landroid/widget/TextView;

.method public <init>()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/<init>()V
aload 0
iconst_0
putfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/isLoading Z
aload 0
ldc ""
putfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/mHometownCode Ljava/lang/String;
aload 0
sipush 2000
putfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/DELAY_TIME I
aload 0
new com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity$3
dup
aload 0
invokespecial com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity$3/<init>(Lcom/nd/android/u/cloud/activity/findfriends/FindFriendsActivity;)V
putfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/mHighSchoolSelectedListener Lcom/nd/android/u/cloud/activity/welcome/SelectSchoolListView$OnDataSelectedListener;
return
.limit locals 1
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/android/u/cloud/activity/findfriends/FindFriendsActivity;)Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/mTvToast Landroid/widget/TextView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/android/u/cloud/activity/findfriends/FindFriendsActivity;)Landroid/widget/ImageView;
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/mIvClearHighSchool Landroid/widget/ImageView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1000(Lcom/nd/android/u/cloud/activity/findfriends/FindFriendsActivity;)Lcom/nd/android/u/cloud/bean/friendRcmmnd/GradeInfo;
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/mGrade Lcom/nd/android/u/cloud/bean/friendRcmmnd/GradeInfo;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1100(Lcom/nd/android/u/cloud/activity/findfriends/FindFriendsActivity;)Lcom/nd/android/u/cloud/readschoolinfo/CollegeInfo;
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/mCollege Lcom/nd/android/u/cloud/readschoolinfo/CollegeInfo;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1200(Lcom/nd/android/u/cloud/activity/findfriends/FindFriendsActivity;)Ljava/lang/String;
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/mHometownCode Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1300(Lcom/nd/android/u/cloud/activity/findfriends/FindFriendsActivity;I)V
aload 0
iload 1
invokespecial com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/showAndHide(I)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$1400(Lcom/nd/android/u/cloud/activity/findfriends/FindFriendsActivity;)Landroid/widget/ScrollView;
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/mScrollView Landroid/widget/ScrollView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/nd/android/u/cloud/activity/findfriends/FindFriendsActivity;)Lcom/nd/android/u/cloud/readschoolinfo/HighSchoolInfo;
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/mHighSchoolInfo Lcom/nd/android/u/cloud/readschoolinfo/HighSchoolInfo;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$202(Lcom/nd/android/u/cloud/activity/findfriends/FindFriendsActivity;Lcom/nd/android/u/cloud/readschoolinfo/HighSchoolInfo;)Lcom/nd/android/u/cloud/readschoolinfo/HighSchoolInfo;
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/mHighSchoolInfo Lcom/nd/android/u/cloud/readschoolinfo/HighSchoolInfo;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$300(Lcom/nd/android/u/cloud/activity/findfriends/FindFriendsActivity;Z)V
aload 0
iload 1
invokespecial com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/resumeEditText(Z)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$400(Lcom/nd/android/u/cloud/activity/findfriends/FindFriendsActivity;)Lcom/nd/android/u/cloud/activity/welcome/SelectSchoolListView;
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/mLvHighSchool Lcom/nd/android/u/cloud/activity/welcome/SelectSchoolListView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$500(Lcom/nd/android/u/cloud/activity/findfriends/FindFriendsActivity;)Landroid/widget/EditText;
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/mEtHighSchool Landroid/widget/EditText;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$602(Lcom/nd/android/u/cloud/activity/findfriends/FindFriendsActivity;Z)Z
aload 0
iload 1
putfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/isLoading Z
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$700(Lcom/nd/android/u/cloud/activity/findfriends/FindFriendsActivity;)Landroid/widget/CheckBox;
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/mCbFemale Landroid/widget/CheckBox;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$800(Lcom/nd/android/u/cloud/activity/findfriends/FindFriendsActivity;)Landroid/widget/CheckBox;
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/mCbMale Landroid/widget/CheckBox;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$900(Lcom/nd/android/u/cloud/activity/findfriends/FindFriendsActivity;)I
aload 0
invokespecial com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/getGender()I
ireturn
.limit locals 1
.limit stack 1
.end method

.method private getGender()I
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/mCbFemale Landroid/widget/CheckBox;
invokevirtual android/widget/CheckBox/isChecked()Z
ifeq L0
iconst_2
ireturn
L0:
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/mCbMale Landroid/widget/CheckBox;
invokevirtual android/widget/CheckBox/isChecked()Z
ifeq L1
iconst_1
ireturn
L1:
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method private goToSelectAddress()V
new android/content/Intent
dup
aload 0
ldc com/nd/address/ui/AddressSelector
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 1
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/mHometownCode Ljava/lang/String;
ifnull L0
aload 1
ldc "code"
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/mHometownCode Ljava/lang/String;
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
L0:
aload 0
aload 1
sipush 28675
invokevirtual com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/startActivityForResult(Landroid/content/Intent;I)V
return
.limit locals 2
.limit stack 4
.end method

.method private goToSelectCollege()V
new android/content/Intent
dup
aload 0
ldc com/nd/android/u/cloud/activity/findfriends/FindFriendsSelectCollegeActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 1
aload 1
ldc "select_title"
aload 0
invokevirtual com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/getResources()Landroid/content/res/Resources;
ldc_w 2131493635
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/mCollege Lcom/nd/android/u/cloud/readschoolinfo/CollegeInfo;
ifnull L0
aload 1
ldc "select_conditions"
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/mCollege Lcom/nd/android/u/cloud/readschoolinfo/CollegeInfo;
invokevirtual com/nd/android/u/cloud/readschoolinfo/CollegeInfo/getUnitCode()Ljava/lang/String;
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
L0:
aload 0
aload 1
sipush 28674
invokevirtual com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/startActivityForResult(Landroid/content/Intent;I)V
return
.limit locals 2
.limit stack 4
.end method

.method private goToSelectGrade()V
new android/content/Intent
dup
aload 0
ldc com/nd/android/u/cloud/activity/findfriends/FindFriendsSelectGradeActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 1
aload 1
ldc "select_title"
aload 0
invokevirtual com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/getResources()Landroid/content/res/Resources;
ldc_w 2131493636
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/mGrade Lcom/nd/android/u/cloud/bean/friendRcmmnd/GradeInfo;
ifnull L0
aload 1
ldc "select_conditions"
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/mGrade Lcom/nd/android/u/cloud/bean/friendRcmmnd/GradeInfo;
getfield com/nd/android/u/cloud/bean/friendRcmmnd/GradeInfo/code Ljava/lang/String;
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
L0:
aload 0
aload 1
sipush 28673
invokevirtual com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/startActivityForResult(Landroid/content/Intent;I)V
return
.limit locals 2
.limit stack 4
.end method

.method private isSearchAble()Z
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/mCbFemale Landroid/widget/CheckBox;
invokevirtual android/widget/CheckBox/isChecked()Z
ifeq L0
L1:
iconst_1
ireturn
L0:
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/mCbMale Landroid/widget/CheckBox;
invokevirtual android/widget/CheckBox/isChecked()Z
ifne L1
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/mTvHometown Landroid/widget/TextView;
invokevirtual android/widget/TextView/getText()Ljava/lang/CharSequence;
invokeinterface java/lang/CharSequence/toString()Ljava/lang/String; 0
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L1
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/mTvGrade Landroid/widget/TextView;
invokevirtual android/widget/TextView/getText()Ljava/lang/CharSequence;
invokeinterface java/lang/CharSequence/toString()Ljava/lang/String; 0
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L1
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/mTvCollege Landroid/widget/TextView;
invokevirtual android/widget/TextView/getText()Ljava/lang/CharSequence;
invokeinterface java/lang/CharSequence/toString()Ljava/lang/String; 0
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L1
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/mEtHighSchool Landroid/widget/EditText;
invokevirtual android/widget/EditText/getText()Landroid/text/Editable;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L1
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method private resumeEditText(Z)V
iload 1
ifeq L0
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/mEtHighSchool Landroid/widget/EditText;
iconst_0
iconst_0
aload 0
invokevirtual com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/getResources()Landroid/content/res/Resources;
ldc_w 2131165243
invokevirtual android/content/res/Resources/getDimension(I)F
f2i
iconst_0
invokevirtual android/widget/EditText/setPadding(IIII)V
return
L0:
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/mEtHighSchool Landroid/widget/EditText;
iconst_0
iconst_0
aload 0
invokevirtual com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/getResources()Landroid/content/res/Resources;
ldc_w 2131165243
invokevirtual android/content/res/Resources/getDimension(I)F
f2i
aload 0
invokevirtual com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/getResources()Landroid/content/res/Resources;
ldc_w 2131165318
invokevirtual android/content/res/Resources/getDimension(I)F
f2i
invokevirtual android/widget/EditText/setPadding(IIII)V
return
.limit locals 2
.limit stack 6
.end method

.method private showAndHide(I)V
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/mTvToast Landroid/widget/TextView;
iload 1
invokevirtual android/widget/TextView/setText(I)V
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/mTvToast Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/mHandler Landroid/os/Handler;
invokestatic android/os/Message/obtain()Landroid/os/Message;
ldc2_w 2000L
invokevirtual android/os/Handler/sendMessageDelayed(Landroid/os/Message;J)Z
pop
return
.limit locals 2
.limit stack 4
.end method

.method protected initComponent()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/initComponent()V
aload 0
aload 0
ldc_w 2131624177
invokevirtual com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/CheckBox
putfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/mCbFemale Landroid/widget/CheckBox;
aload 0
aload 0
ldc_w 2131624176
invokevirtual com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/CheckBox
putfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/mCbMale Landroid/widget/CheckBox;
aload 0
aload 0
ldc_w 2131624179
invokevirtual com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/mTvHometown Landroid/widget/TextView;
aload 0
aload 0
ldc_w 2131624182
invokevirtual com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/mTvGrade Landroid/widget/TextView;
aload 0
aload 0
ldc_w 2131624185
invokevirtual com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/mTvCollege Landroid/widget/TextView;
aload 0
aload 0
ldc_w 2131624190
invokevirtual com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/EditText
putfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/mEtHighSchool Landroid/widget/EditText;
aload 0
aload 0
ldc_w 2131624191
invokevirtual com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/mIvClearHighSchool Landroid/widget/ImageView;
aload 0
aload 0
ldc_w 2131624193
invokevirtual com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/findViewById(I)Landroid/view/View;
checkcast com/nd/android/u/cloud/activity/welcome/SelectSchoolListView
putfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/mLvHighSchool Lcom/nd/android/u/cloud/activity/welcome/SelectSchoolListView;
aload 0
aload 0
ldc_w 2131624194
invokevirtual com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/mTvToast Landroid/widget/TextView;
aload 0
aload 0
ldc_w 2131624175
invokevirtual com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ScrollView
putfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/mScrollView Landroid/widget/ScrollView;
aload 0
new com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity$1
dup
aload 0
invokespecial com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity$1/<init>(Lcom/nd/android/u/cloud/activity/findfriends/FindFriendsActivity;)V
putfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/mHandler Landroid/os/Handler;
return
.limit locals 1
.limit stack 4
.end method

.method protected initComponentValue()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/initComponentValue()V
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/titleText Landroid/widget/TextView;
ldc_w 2131493663
invokevirtual android/widget/TextView/setText(I)V
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/mHometownCode Ljava/lang/String;
ifnull L0
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/mHometownCode Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L0
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/mTvHometown Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/mHometownCode Ljava/lang/String;
invokestatic com/nd/android/u/cloud/helper/Utils/getHometownByCode(Ljava/lang/String;)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L0:
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/mGrade Lcom/nd/android/u/cloud/bean/friendRcmmnd/GradeInfo;
ifnull L1
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/mTvGrade Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/mGrade Lcom/nd/android/u/cloud/bean/friendRcmmnd/GradeInfo;
getfield com/nd/android/u/cloud/bean/friendRcmmnd/GradeInfo/name Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L1:
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/mCollege Lcom/nd/android/u/cloud/readschoolinfo/CollegeInfo;
ifnull L2
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/mTvCollege Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/mCollege Lcom/nd/android/u/cloud/readschoolinfo/CollegeInfo;
invokevirtual com/nd/android/u/cloud/readschoolinfo/CollegeInfo/getUnitName()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L2:
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/mHighSchoolInfo Lcom/nd/android/u/cloud/readschoolinfo/HighSchoolInfo;
ifnull L3
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/mEtHighSchool Landroid/widget/EditText;
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/mHighSchoolInfo Lcom/nd/android/u/cloud/readschoolinfo/HighSchoolInfo;
invokevirtual com/nd/android/u/cloud/readschoolinfo/HighSchoolInfo/getSchoolName()Ljava/lang/String;
invokevirtual android/widget/EditText/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/mEtHighSchool Landroid/widget/EditText;
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/mHighSchoolInfo Lcom/nd/android/u/cloud/readschoolinfo/HighSchoolInfo;
invokevirtual com/nd/android/u/cloud/readschoolinfo/HighSchoolInfo/getSchoolName()Ljava/lang/String;
invokevirtual java/lang/String/length()I
invokevirtual android/widget/EditText/setSelection(I)V
L3:
return
.limit locals 1
.limit stack 2
.end method

.method protected initEvent()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/initEvent()V
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/mCbFemale Landroid/widget/CheckBox;
aload 0
invokevirtual android/widget/CheckBox/setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/mCbMale Landroid/widget/CheckBox;
aload 0
invokevirtual android/widget/CheckBox/setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
aload 0
ldc_w 2131624178
invokevirtual com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/findViewById(I)Landroid/view/View;
aload 0
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
ldc_w 2131624181
invokevirtual com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/findViewById(I)Landroid/view/View;
aload 0
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
ldc_w 2131624184
invokevirtual com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/findViewById(I)Landroid/view/View;
aload 0
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/mIvClearHighSchool Landroid/widget/ImageView;
aload 0
invokevirtual android/widget/ImageView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
ldc_w 2131624192
invokevirtual com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/findViewById(I)Landroid/view/View;
aload 0
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/mLvHighSchool Lcom/nd/android/u/cloud/activity/welcome/SelectSchoolListView;
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/mHighSchoolSelectedListener Lcom/nd/android/u/cloud/activity/welcome/SelectSchoolListView$OnDataSelectedListener;
invokevirtual com/nd/android/u/cloud/activity/welcome/SelectSchoolListView/setOnDataSelectedListener(Lcom/nd/android/u/cloud/activity/welcome/SelectSchoolListView$OnDataSelectedListener;)V
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/mEtHighSchool Landroid/widget/EditText;
aload 0
invokevirtual android/widget/EditText/setOnTouchListener(Landroid/view/View$OnTouchListener;)V
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/mEtHighSchool Landroid/widget/EditText;
new com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity$2
dup
aload 0
invokespecial com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity$2/<init>(Lcom/nd/android/u/cloud/activity/findfriends/FindFriendsActivity;)V
invokevirtual android/widget/EditText/addTextChangedListener(Landroid/text/TextWatcher;)V
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/mScrollView Landroid/widget/ScrollView;
aload 0
invokevirtual android/widget/ScrollView/setOnTouchListener(Landroid/view/View$OnTouchListener;)V
return
.limit locals 1
.limit stack 4
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
iload 2
iconst_m1
if_icmpne L0
iload 1
tableswitch 28673
L1
L2
L3
default : L0
L0:
aload 0
iload 1
iload 2
aload 3
invokespecial com/product/android/ui/activity/HeaderActivity/onActivityResult(IILandroid/content/Intent;)V
return
L1:
aload 0
aload 3
ldc "select_return_content"
invokevirtual android/content/Intent/getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;
checkcast com/nd/android/u/cloud/bean/friendRcmmnd/GradeInfo
putfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/mGrade Lcom/nd/android/u/cloud/bean/friendRcmmnd/GradeInfo;
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/mGrade Lcom/nd/android/u/cloud/bean/friendRcmmnd/GradeInfo;
ifnull L4
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/mTvGrade Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/mGrade Lcom/nd/android/u/cloud/bean/friendRcmmnd/GradeInfo;
getfield com/nd/android/u/cloud/bean/friendRcmmnd/GradeInfo/name Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
goto L0
L4:
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/mTvGrade Landroid/widget/TextView;
ldc ""
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
goto L0
L2:
aload 0
aload 3
ldc "select_return_content"
invokevirtual android/content/Intent/getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;
checkcast com/nd/android/u/cloud/readschoolinfo/CollegeInfo
putfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/mCollege Lcom/nd/android/u/cloud/readschoolinfo/CollegeInfo;
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/mCollege Lcom/nd/android/u/cloud/readschoolinfo/CollegeInfo;
ifnull L5
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/mTvCollege Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/mCollege Lcom/nd/android/u/cloud/readschoolinfo/CollegeInfo;
invokevirtual com/nd/android/u/cloud/readschoolinfo/CollegeInfo/getUnitName()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
goto L0
L5:
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/mTvCollege Landroid/widget/TextView;
ldc ""
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
goto L0
L3:
aload 0
aload 3
ldc "newCode"
invokevirtual android/content/Intent/getStringExtra(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/mHometownCode Ljava/lang/String;
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/mHometownCode Ljava/lang/String;
ifnonnull L6
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/mTvHometown Landroid/widget/TextView;
ldc ""
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
goto L0
L6:
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/mHometownCode Ljava/lang/String;
invokestatic com/nd/android/u/cloud/helper/Utils/getHometownByCode(Ljava/lang/String;)Ljava/lang/String;
astore 4
aload 4
ifnull L0
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/mTvHometown Landroid/widget/TextView;
aload 4
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
goto L0
.limit locals 5
.limit stack 4
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/isLoading Z
ifeq L0
L1:
return
L0:
aload 1
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/mCbFemale Landroid/widget/CheckBox;
if_acmpne L2
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/mCbFemale Landroid/widget/CheckBox;
iload 2
invokevirtual android/widget/CheckBox/setChecked(Z)V
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/mCbFemale Landroid/widget/CheckBox;
iload 2
invokevirtual android/widget/CheckBox/setSelected(Z)V
iload 2
ifeq L1
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/mCbMale Landroid/widget/CheckBox;
iconst_0
invokevirtual android/widget/CheckBox/setChecked(Z)V
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/mCbMale Landroid/widget/CheckBox;
iconst_0
invokevirtual android/widget/CheckBox/setSelected(Z)V
return
L2:
aload 1
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/mCbMale Landroid/widget/CheckBox;
if_acmpne L1
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/mCbMale Landroid/widget/CheckBox;
iload 2
invokevirtual android/widget/CheckBox/setChecked(Z)V
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/mCbMale Landroid/widget/CheckBox;
iload 2
invokevirtual android/widget/CheckBox/setSelected(Z)V
iload 2
ifeq L1
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/mCbFemale Landroid/widget/CheckBox;
iconst_0
invokevirtual android/widget/CheckBox/setChecked(Z)V
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/mCbFemale Landroid/widget/CheckBox;
iconst_0
invokevirtual android/widget/CheckBox/setSelected(Z)V
return
.limit locals 3
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/isLoading Z
ifeq L0
return
L0:
aload 1
invokevirtual android/view/View/getId()I
lookupswitch
2131624178 : L1
2131624181 : L2
2131624184 : L3
2131624191 : L4
2131624192 : L5
default : L6
L6:
return
L1:
aload 0
invokespecial com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/goToSelectAddress()V
return
L2:
aload 0
invokespecial com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/goToSelectGrade()V
return
L3:
aload 0
invokespecial com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/goToSelectCollege()V
return
L4:
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/mEtHighSchool Landroid/widget/EditText;
ldc ""
invokevirtual android/widget/EditText/setText(Ljava/lang/CharSequence;)V
return
L5:
aload 0
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/mEtHighSchool Landroid/widget/EditText;
invokevirtual com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/hideSoftInput(Landroid/widget/EditText;)V
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/mTvToast Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
invokestatic ims/utils/CommUtil/JudgeNetWorkStatus(Landroid/content/Context;)Z
ifne L7
aload 0
ldc_w 2131494478
invokespecial com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/showAndHide(I)V
return
L7:
aload 0
invokespecial com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/isSearchAble()Z
ifne L8
aload 0
ldc_w 2131493657
invokespecial com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/showAndHide(I)V
return
L8:
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/mEtHighSchool Landroid/widget/EditText;
invokevirtual android/widget/EditText/getText()Landroid/text/Editable;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L9
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/mHighSchoolInfo Lcom/nd/android/u/cloud/readschoolinfo/HighSchoolInfo;
ifnull L10
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/mEtHighSchool Landroid/widget/EditText;
invokevirtual android/widget/EditText/getText()Landroid/text/Editable;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/mHighSchoolInfo Lcom/nd/android/u/cloud/readschoolinfo/HighSchoolInfo;
invokevirtual com/nd/android/u/cloud/readschoolinfo/HighSchoolInfo/getSchoolName()Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L9
aload 0
aconst_null
putfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/mHighSchoolInfo Lcom/nd/android/u/cloud/readschoolinfo/HighSchoolInfo;
aload 0
ldc_w 2131493656
invokespecial com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/showAndHide(I)V
return
L10:
aload 0
ldc_w 2131493656
invokespecial com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/showAndHide(I)V
return
L9:
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/mTvToast Landroid/widget/TextView;
ldc_w 2131493667
invokevirtual android/widget/TextView/setText(I)V
aload 0
new com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity$GetFriendListTask
dup
aload 0
invokespecial com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity$GetFriendListTask/<init>(Lcom/nd/android/u/cloud/activity/findfriends/FindFriendsActivity;)V
putfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/mGetFriendTask Lcom/nd/android/u/cloud/activity/findfriends/FindFriendsActivity$GetFriendListTask;
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/mGetFriendTask Lcom/nd/android/u/cloud/activity/findfriends/FindFriendsActivity$GetFriendListTask;
iconst_0
anewarray java/lang/Void
invokevirtual com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity$GetFriendListTask/execute([Ljava/lang/Object;)Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;
pop
return
.limit locals 2
.limit stack 4
.end method

.method protected onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/product/android/ui/activity/HeaderActivity/onCreate(Landroid/os/Bundle;)V
aload 1
ifnull L0
aload 0
aload 1
ldc "select_hometown"
invokevirtual android/os/Bundle/getString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/mHometownCode Ljava/lang/String;
aload 0
aload 1
ldc "select_grade"
invokevirtual android/os/Bundle/getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
checkcast com/nd/android/u/cloud/bean/friendRcmmnd/GradeInfo
putfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/mGrade Lcom/nd/android/u/cloud/bean/friendRcmmnd/GradeInfo;
aload 0
aload 1
ldc "select_college"
invokevirtual android/os/Bundle/getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
checkcast com/nd/android/u/cloud/readschoolinfo/CollegeInfo
putfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/mCollege Lcom/nd/android/u/cloud/readschoolinfo/CollegeInfo;
aload 0
aload 1
ldc "select_highschool"
invokevirtual android/os/Bundle/getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
checkcast com/nd/android/u/cloud/readschoolinfo/HighSchoolInfo
putfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/mHighSchoolInfo Lcom/nd/android/u/cloud/readschoolinfo/HighSchoolInfo;
L0:
aload 0
ldc_w 2130903069
invokevirtual com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/setContentView(I)V
aload 0
invokevirtual com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/initComponent()V
aload 0
invokevirtual com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/initComponentValue()V
aload 0
invokevirtual com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/initEvent()V
return
.limit locals 2
.limit stack 3
.end method

.method protected onDestroy()V
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/mGetFriendTask Lcom/nd/android/u/cloud/activity/findfriends/FindFriendsActivity$GetFriendListTask;
ifnull L0
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/mGetFriendTask Lcom/nd/android/u/cloud/activity/findfriends/FindFriendsActivity$GetFriendListTask;
invokevirtual com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity$GetFriendListTask/getStatus()Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status;
getstatic com/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status/RUNNING Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status;
if_acmpne L0
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/mGetFriendTask Lcom/nd/android/u/cloud/activity/findfriends/FindFriendsActivity$GetFriendListTask;
iconst_1
invokevirtual com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity$GetFriendListTask/cancel(Z)Z
pop
L0:
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/onDestroy()V
return
.limit locals 1
.limit stack 2
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
aload 1
ldc "select_gender"
aload 0
invokespecial com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/getGender()I
invokevirtual android/os/Bundle/putInt(Ljava/lang/String;I)V
aload 1
ldc "select_hometown"
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/mHometownCode Ljava/lang/String;
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
aload 1
ldc "select_grade"
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/mGrade Lcom/nd/android/u/cloud/bean/friendRcmmnd/GradeInfo;
invokevirtual android/os/Bundle/putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
aload 1
ldc "select_college"
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/mCollege Lcom/nd/android/u/cloud/readschoolinfo/CollegeInfo;
invokevirtual android/os/Bundle/putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
aload 1
ldc "select_highschool"
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/mHighSchoolInfo Lcom/nd/android/u/cloud/readschoolinfo/HighSchoolInfo;
invokevirtual android/os/Bundle/putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
aload 0
aload 1
invokespecial com/product/android/ui/activity/HeaderActivity/onSaveInstanceState(Landroid/os/Bundle;)V
return
.limit locals 2
.limit stack 3
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
aload 1
invokevirtual android/view/View/getId()I
ldc_w 2131624190
if_icmpne L0
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/mHandler Landroid/os/Handler;
new com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity$4
dup
aload 0
invokespecial com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity$4/<init>(Lcom/nd/android/u/cloud/activity/findfriends/FindFriendsActivity;)V
ldc2_w 200L
invokevirtual android/os/Handler/postDelayed(Ljava/lang/Runnable;J)Z
pop
L1:
iconst_0
ireturn
L0:
aload 1
invokevirtual android/view/View/getId()I
ldc_w 2131624175
if_icmpne L1
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/mLvHighSchool Lcom/nd/android/u/cloud/activity/welcome/SelectSchoolListView;
invokevirtual com/nd/android/u/cloud/activity/welcome/SelectSchoolListView/getVisibility()I
ifne L1
aload 0
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/mEtHighSchool Landroid/widget/EditText;
invokevirtual com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/hideSoftInput(Landroid/widget/EditText;)V
goto L1
.limit locals 3
.limit stack 4
.end method
