.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/activity/welcome/WelcomeFriendActivity
.super com/product/android/ui/activity/HeaderActivity
.implements android/view/View$OnClickListener
.inner class inner com/nd/android/u/cloud/activity/welcome/WelcomeFriendActivity$1
.inner class GridAdapter inner com/nd/android/u/cloud/activity/welcome/WelcomeFriendActivity$GridAdapter outer com/nd/android/u/cloud/activity/welcome/WelcomeFriendActivity
.inner class inner com/nd/android/u/cloud/activity/welcome/WelcomeFriendActivity$GridAdapter$1
.inner class ViewHolder inner com/nd/android/u/cloud/activity/welcome/WelcomeFriendActivity$ViewHolder outer com/nd/android/u/cloud/activity/welcome/WelcomeFriendActivity

.field public static final 'COLUMN' I = 4


.field public static final 'HOME' I = 1


.field public static final 'SCHOOLMATE' I = 2


.field public static final 'tag' Ljava/lang/String; = "zhp"

.field private 'mAdapter' Lcom/nd/android/u/cloud/activity/welcome/WelcomeFriendActivity$GridAdapter;

.field private 'mFriendInfoArray' Ljava/util/List; signature "Ljava/util/List<Lcom/nd/android/u/cloud/activity/welcome/FriendInfo;>;"

.field private 'mHomeTextView' Landroid/widget/TextView;

.field private 'mInfoTextView' Landroid/widget/TextView;

.field private 'mListView' Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

.field private 'mSchoolTextView' Landroid/widget/TextView;

.method public <init>()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$000(Lcom/nd/android/u/cloud/activity/welcome/WelcomeFriendActivity;)Lcom/nd/android/u/cloud/activity/welcome/WelcomeFriendActivity$GridAdapter;
aload 0
getfield com/nd/android/u/cloud/activity/welcome/WelcomeFriendActivity/mAdapter Lcom/nd/android/u/cloud/activity/welcome/WelcomeFriendActivity$GridAdapter;
areturn
.limit locals 1
.limit stack 1
.end method

.method private setTextViewSpan(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;I)Landroid/text/SpannableString;
new android/text/SpannableString
dup
aload 1
invokespecial android/text/SpannableString/<init>(Ljava/lang/CharSequence;)V
astore 1
new android/text/style/TextAppearanceSpan
dup
aload 0
iload 4
invokespecial android/text/style/TextAppearanceSpan/<init>(Landroid/content/Context;I)V
astore 5
aload 2
aload 3
invokevirtual java/lang/String/indexOf(Ljava/lang/String;)I
istore 4
aload 1
aload 5
iload 4
aload 3
invokevirtual java/lang/String/length()I
iload 4
iadd
bipush 33
invokevirtual android/text/SpannableString/setSpan(Ljava/lang/Object;III)V
aload 1
areturn
.limit locals 6
.limit stack 5
.end method

.method public follow(Ljava/util/List;Ljava/lang/StringBuilder;)Z
.signature "(Ljava/util/List<Ljava/lang/Long;>;Ljava/lang/StringBuilder;)Z"
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 2
aload 2
aload 1
putfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
getstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
iconst_3
sipush 31007
aload 2
invokevirtual com/product/android/commonInterface/CommonInterfaceManager/CommonInterfaceID(IILcom/product/android/commonInterface/BaseCommonStruct;)I
ifeq L0
L1:
iconst_0
ireturn
L0:
getstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
iconst_1
sipush 11016
aload 2
invokevirtual com/product/android/commonInterface/CommonInterfaceManager/CommonInterfaceID(IILcom/product/android/commonInterface/BaseCommonStruct;)I
ifne L1
iconst_1
ireturn
.limit locals 3
.limit stack 4
.end method

.method protected initComponent()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/initComponent()V
aload 0
invokevirtual com/nd/android/u/cloud/activity/welcome/WelcomeFriendActivity/getResources()Landroid/content/res/Resources;
astore 1
aload 0
getfield com/nd/android/u/cloud/activity/welcome/WelcomeFriendActivity/titleText Landroid/widget/TextView;
aload 1
ldc_w 2131493840
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/cloud/activity/welcome/WelcomeFriendActivity/rightBtn Landroid/widget/Button;
aload 1
ldc_w 2131493834
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual android/widget/Button/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/cloud/activity/welcome/WelcomeFriendActivity/rightBtn Landroid/widget/Button;
iconst_0
invokevirtual android/widget/Button/setVisibility(I)V
aload 0
getfield com/nd/android/u/cloud/activity/welcome/WelcomeFriendActivity/rightBtn Landroid/widget/Button;
ldc_w 2130837931
invokevirtual android/widget/Button/setBackgroundResource(I)V
aload 0
aload 0
ldc_w 2131624485
invokevirtual com/nd/android/u/cloud/activity/welcome/WelcomeFriendActivity/findViewById(I)Landroid/view/View;
checkcast com/handmark/pulltorefresh/library/PullToRefreshListView
putfield com/nd/android/u/cloud/activity/welcome/WelcomeFriendActivity/mListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
aload 0
getfield com/nd/android/u/cloud/activity/welcome/WelcomeFriendActivity/mListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
getstatic com/handmark/pulltorefresh/library/PullToRefreshBase$Mode/DISABLED Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V
aload 0
invokevirtual com/nd/android/u/cloud/activity/welcome/WelcomeFriendActivity/getLayoutInflater()Landroid/view/LayoutInflater;
ldc_w 2130903831
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 1
aload 1
ldc_w 2131627119
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
aload 0
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
aload 1
ldc_w 2131627120
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/activity/welcome/WelcomeFriendActivity/mInfoTextView Landroid/widget/TextView;
aload 0
aload 1
ldc_w 2131624479
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/activity/welcome/WelcomeFriendActivity/mHomeTextView Landroid/widget/TextView;
aload 0
aload 1
ldc_w 2131627118
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/activity/welcome/WelcomeFriendActivity/mSchoolTextView Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/cloud/activity/welcome/WelcomeFriendActivity/mListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/getRefreshableView()Landroid/view/View;
checkcast android/widget/ListView
aload 1
invokevirtual android/widget/ListView/addHeaderView(Landroid/view/View;)V
return
.limit locals 2
.limit stack 3
.end method

.method protected leftBtnHandle()V
aload 0
iconst_0
invokevirtual com/nd/android/u/cloud/activity/welcome/WelcomeFriendActivity/setResult(I)V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/leftBtnHandle()V
return
.limit locals 1
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
tableswitch 2131627119
L0
default : L1
L1:
return
L0:
aload 0
ldc com/nd/android/u/cloud/activity/welcome/WelcomeChangeInfoActivity
invokevirtual com/nd/android/u/cloud/activity/welcome/WelcomeFriendActivity/goTo(Ljava/lang/Class;)V
return
.limit locals 2
.limit stack 2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/product/android/ui/activity/HeaderActivity/onCreate(Landroid/os/Bundle;)V
aload 0
ldc_w 2130903135
invokevirtual com/nd/android/u/cloud/activity/welcome/WelcomeFriendActivity/setContentView(I)V
aload 0
invokevirtual com/nd/android/u/cloud/activity/welcome/WelcomeFriendActivity/initComponent()V
aload 0
invokevirtual com/nd/android/u/cloud/activity/welcome/WelcomeFriendActivity/initComponentValue()V
aload 0
invokevirtual com/nd/android/u/cloud/activity/welcome/WelcomeFriendActivity/initEvent()V
return
.limit locals 2
.limit stack 2
.end method

.method public onResume()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/onResume()V
aload 0
invokevirtual com/nd/android/u/cloud/activity/welcome/WelcomeFriendActivity/setPersonInfo()V
aload 0
getstatic com/nd/android/u/cloud/activity/welcome/WelcomeInfo/INSTANCE Lcom/nd/android/u/cloud/activity/welcome/WelcomeInfo;
invokevirtual com/nd/android/u/cloud/activity/welcome/WelcomeInfo/getData()Ljava/util/List;
putfield com/nd/android/u/cloud/activity/welcome/WelcomeFriendActivity/mFriendInfoArray Ljava/util/List;
aload 0
new com/nd/android/u/cloud/activity/welcome/WelcomeFriendActivity$GridAdapter
dup
aload 0
aload 0
invokevirtual com/nd/android/u/cloud/activity/welcome/WelcomeFriendActivity/getApplicationContext()Landroid/content/Context;
aload 0
getfield com/nd/android/u/cloud/activity/welcome/WelcomeFriendActivity/mFriendInfoArray Ljava/util/List;
invokespecial com/nd/android/u/cloud/activity/welcome/WelcomeFriendActivity$GridAdapter/<init>(Lcom/nd/android/u/cloud/activity/welcome/WelcomeFriendActivity;Landroid/content/Context;Ljava/util/List;)V
putfield com/nd/android/u/cloud/activity/welcome/WelcomeFriendActivity/mAdapter Lcom/nd/android/u/cloud/activity/welcome/WelcomeFriendActivity$GridAdapter;
aload 0
getfield com/nd/android/u/cloud/activity/welcome/WelcomeFriendActivity/mListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
aload 0
getfield com/nd/android/u/cloud/activity/welcome/WelcomeFriendActivity/mAdapter Lcom/nd/android/u/cloud/activity/welcome/WelcomeFriendActivity$GridAdapter;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/setAdapter(Landroid/widget/ListAdapter;)V
return
.limit locals 1
.limit stack 6
.end method

.method protected rightBtnHandle()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/rightBtnHandle()V
getstatic com/nd/android/u/cloud/activity/welcome/WelcomeInfo/INSTANCE Lcom/nd/android/u/cloud/activity/welcome/WelcomeInfo;
invokevirtual com/nd/android/u/cloud/activity/welcome/WelcomeInfo/clearData()V
new com/nd/android/u/cloud/activity/welcome/WelcomeFriendActivity$1
dup
aload 0
invokespecial com/nd/android/u/cloud/activity/welcome/WelcomeFriendActivity$1/<init>(Lcom/nd/android/u/cloud/activity/welcome/WelcomeFriendActivity;)V
invokevirtual com/nd/android/u/cloud/activity/welcome/WelcomeFriendActivity$1/start()V
aload 0
iconst_m1
invokevirtual com/nd/android/u/cloud/activity/welcome/WelcomeFriendActivity/setResult(I)V
aload 0
invokevirtual com/nd/android/u/cloud/activity/welcome/WelcomeFriendActivity/finish()V
return
.limit locals 1
.limit stack 3
.end method

.method public setPersonInfo()V
getstatic com/nd/android/u/cloud/activity/welcome/WelcomeInfo/INSTANCE Lcom/nd/android/u/cloud/activity/welcome/WelcomeInfo;
astore 3
aload 3
invokevirtual com/nd/android/u/cloud/activity/welcome/WelcomeInfo/getAreaCode()Ljava/lang/String;
astore 4
aload 3
invokevirtual com/nd/android/u/cloud/activity/welcome/WelcomeInfo/getHighSchoolCode()Ljava/lang/String;
astore 5
aload 4
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
aload 5
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L1
L0:
getstatic com/nd/android/u/cloud/readschoolinfo/SchoolInfoHandle/INSTANCE Lcom/nd/android/u/cloud/readschoolinfo/SchoolInfoHandle;
aload 0
invokevirtual com/nd/android/u/cloud/readschoolinfo/SchoolInfoHandle/openDatabase(Landroid/content/Context;)V
aload 0
getfield com/nd/android/u/cloud/activity/welcome/WelcomeFriendActivity/mSchoolTextView Landroid/widget/TextView;
getstatic com/nd/android/u/cloud/readschoolinfo/SchoolInfoHandle/INSTANCE Lcom/nd/android/u/cloud/readschoolinfo/SchoolInfoHandle;
aload 5
invokevirtual com/nd/android/u/cloud/readschoolinfo/SchoolInfoHandle/getSchoolNameByCode(Ljava/lang/String;)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
getstatic com/nd/rj/common/administrativeregions/lib/SQLiteHandle/INSTANCE Lcom/nd/rj/common/administrativeregions/lib/SQLiteHandle;
aload 0
invokevirtual com/nd/rj/common/administrativeregions/lib/SQLiteHandle/openDatabase(Landroid/content/Context;)V
aload 0
getfield com/nd/android/u/cloud/activity/welcome/WelcomeFriendActivity/mHomeTextView Landroid/widget/TextView;
getstatic com/nd/rj/common/administrativeregions/lib/AdministrativeRegionsHandle/INSTANCE Lcom/nd/rj/common/administrativeregions/lib/AdministrativeRegionsHandle;
aload 4
iconst_1
invokevirtual com/nd/rj/common/administrativeregions/lib/AdministrativeRegionsHandle/getFullName(Ljava/lang/String;Z)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L1:
aload 3
invokevirtual com/nd/android/u/cloud/activity/welcome/WelcomeInfo/getTownsmennum()I
istore 1
aload 3
invokevirtual com/nd/android/u/cloud/activity/welcome/WelcomeInfo/getClassmateNum()I
istore 2
invokestatic java/util/Locale/getDefault()Ljava/util/Locale;
aload 0
ldc_w 2131493838
invokevirtual com/nd/android/u/cloud/activity/welcome/WelcomeFriendActivity/getString(I)Ljava/lang/String;
iconst_2
anewarray java/lang/Object
dup
iconst_0
iload 1
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
dup
iconst_1
iload 2
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
invokestatic java/lang/String/format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
astore 3
aload 0
new android/text/SpannableString
dup
aload 3
invokespecial android/text/SpannableString/<init>(Ljava/lang/CharSequence;)V
aload 3
iload 2
invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
ldc_w 2131230965
invokespecial com/nd/android/u/cloud/activity/welcome/WelcomeFriendActivity/setTextViewSpan(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;I)Landroid/text/SpannableString;
astore 4
aload 0
getfield com/nd/android/u/cloud/activity/welcome/WelcomeFriendActivity/mInfoTextView Landroid/widget/TextView;
aload 0
aload 4
aload 3
iload 1
invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
ldc_w 2131230965
invokespecial com/nd/android/u/cloud/activity/welcome/WelcomeFriendActivity/setTextViewSpan(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;I)Landroid/text/SpannableString;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
.limit locals 6
.limit stack 6
.end method
