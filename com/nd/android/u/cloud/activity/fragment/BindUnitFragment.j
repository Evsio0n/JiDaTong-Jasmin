.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/activity/fragment/BindUnitFragment
.super com/nd/android/u/cloud/activity/fragment/BaseFragment
.implements android/widget/AdapterView$OnItemClickListener
.inner class inner com/nd/android/u/cloud/activity/fragment/BindUnitFragment$1
.inner class inner com/nd/android/u/cloud/activity/fragment/BindUnitFragment$2
.inner class private static BindIdentityTask inner com/nd/android/u/cloud/activity/fragment/BindUnitFragment$BindIdentityTask outer com/nd/android/u/cloud/activity/fragment/BindUnitFragment

.field private 'mIsBind' Z

.field private 'mListView' Landroid/widget/ListView;

.field private 'mPersonUnitsInfo' Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonUnitsInfo;

.field private 'mRemindTextView' Landroid/widget/TextView;

.field private 'mSelectedData' Ljava/util/List; signature "Ljava/util/List<Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$SingleUnitInfo;>;"

.method public <init>()V
aload 0
invokespecial com/nd/android/u/cloud/activity/fragment/BaseFragment/<init>()V
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/cloud/activity/fragment/BindUnitFragment/mSelectedData Ljava/util/List;
return
.limit locals 1
.limit stack 3
.end method

.method static synthetic access$000(Lcom/nd/android/u/cloud/activity/fragment/BindUnitFragment;)Z
aload 0
getfield com/nd/android/u/cloud/activity/fragment/BindUnitFragment/mIsBind Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/android/u/cloud/activity/fragment/BindUnitFragment;)Ljava/util/List;
aload 0
getfield com/nd/android/u/cloud/activity/fragment/BindUnitFragment/mSelectedData Ljava/util/List;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/nd/android/u/cloud/activity/fragment/BindUnitFragment;)Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonUnitsInfo;
aload 0
getfield com/nd/android/u/cloud/activity/fragment/BindUnitFragment/mPersonUnitsInfo Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonUnitsInfo;
areturn
.limit locals 1
.limit stack 1
.end method

.method private changeItemState(I)V
aload 0
getfield com/nd/android/u/cloud/activity/fragment/BindUnitFragment/mListView Landroid/widget/ListView;
invokevirtual android/widget/ListView/getFirstVisiblePosition()I
istore 2
aload 0
getfield com/nd/android/u/cloud/activity/fragment/BindUnitFragment/mListView Landroid/widget/ListView;
invokevirtual android/widget/ListView/getLastVisiblePosition()I
istore 3
iload 1
iload 2
if_icmplt L0
iload 1
iload 3
if_icmpgt L0
aload 0
getfield com/nd/android/u/cloud/activity/fragment/BindUnitFragment/mListView Landroid/widget/ListView;
iload 1
iload 2
isub
invokevirtual android/widget/ListView/getChildAt(I)Landroid/view/View;
invokevirtual android/view/View/getTag()Ljava/lang/Object;
checkcast com/nd/android/u/cloud/ui/adapter/UnitItemAdapter$ViewHolder
astore 4
aload 0
getfield com/nd/android/u/cloud/activity/fragment/BindUnitFragment/mPersonUnitsInfo Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonUnitsInfo;
invokevirtual com/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonUnitsInfo/getUnitInfoList()Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/cloud/activity/fragment/CheckIDFragment$SingleUnitInfo
astore 5
aload 4
getfield com/nd/android/u/cloud/ui/adapter/UnitItemAdapter$ViewHolder/mCheckBox Landroid/widget/CheckBox;
invokevirtual android/widget/CheckBox/isChecked()Z
ifeq L1
aload 4
getfield com/nd/android/u/cloud/ui/adapter/UnitItemAdapter$ViewHolder/mCheckBox Landroid/widget/CheckBox;
iconst_0
invokevirtual android/widget/CheckBox/setChecked(Z)V
aload 0
getfield com/nd/android/u/cloud/activity/fragment/BindUnitFragment/mSelectedData Ljava/util/List;
aload 5
invokeinterface java/util/List/contains(Ljava/lang/Object;)Z 1
ifeq L0
aload 0
getfield com/nd/android/u/cloud/activity/fragment/BindUnitFragment/mSelectedData Ljava/util/List;
aload 5
invokeinterface java/util/List/remove(Ljava/lang/Object;)Z 1
pop
L0:
return
L1:
aload 4
getfield com/nd/android/u/cloud/ui/adapter/UnitItemAdapter$ViewHolder/mCheckBox Landroid/widget/CheckBox;
iconst_1
invokevirtual android/widget/CheckBox/setChecked(Z)V
aload 0
getfield com/nd/android/u/cloud/activity/fragment/BindUnitFragment/mSelectedData Ljava/util/List;
aload 5
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
return
.limit locals 6
.limit stack 3
.end method

.method public static newInstance(Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonUnitsInfo;Z)Lcom/nd/android/u/cloud/activity/fragment/BindUnitFragment;
new com/nd/android/u/cloud/activity/fragment/BindUnitFragment
dup
invokespecial com/nd/android/u/cloud/activity/fragment/BindUnitFragment/<init>()V
astore 2
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 3
aload 3
ldc "person_units_info"
aload 0
invokevirtual android/os/Bundle/putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
aload 3
ldc "is_bind"
iload 1
invokevirtual android/os/Bundle/putBoolean(Ljava/lang/String;Z)V
aload 2
aload 3
invokevirtual com/nd/android/u/cloud/activity/fragment/BindUnitFragment/setArguments(Landroid/os/Bundle;)V
aload 2
areturn
.limit locals 4
.limit stack 3
.end method

.method protected initComponent(Landroid/view/View;)V
aload 0
aload 1
invokespecial com/nd/android/u/cloud/activity/fragment/BaseFragment/initComponent(Landroid/view/View;)V
aload 0
aload 1
ldc_w 2131625337
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ListView
putfield com/nd/android/u/cloud/activity/fragment/BindUnitFragment/mListView Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/cloud/activity/fragment/BindUnitFragment/mListView Landroid/widget/ListView;
aload 0
invokevirtual android/widget/ListView/setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
aload 1
ldc_w 2131625340
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
astore 2
aload 2
new com/nd/android/u/cloud/activity/fragment/BindUnitFragment$1
dup
aload 0
invokespecial com/nd/android/u/cloud/activity/fragment/BindUnitFragment$1/<init>(Lcom/nd/android/u/cloud/activity/fragment/BindUnitFragment;)V
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/cloud/activity/fragment/BindUnitFragment/mHeaderLeftButton Landroid/widget/Button;
new com/nd/android/u/cloud/activity/fragment/BindUnitFragment$2
dup
aload 0
invokespecial com/nd/android/u/cloud/activity/fragment/BindUnitFragment$2/<init>(Lcom/nd/android/u/cloud/activity/fragment/BindUnitFragment;)V
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
aload 1
ldc_w 2131625339
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/activity/fragment/BindUnitFragment/mRemindTextView Landroid/widget/TextView;
aload 0
invokevirtual com/nd/android/u/cloud/activity/fragment/BindUnitFragment/getResources()Landroid/content/res/Resources;
astore 1
aload 0
getfield com/nd/android/u/cloud/activity/fragment/BindUnitFragment/mIsBind Z
ifeq L0
aload 0
getfield com/nd/android/u/cloud/activity/fragment/BindUnitFragment/mHeaderTitleTextView Landroid/widget/TextView;
aload 1
ldc_w 2131493943
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/cloud/activity/fragment/BindUnitFragment/mRemindTextView Landroid/widget/TextView;
aload 1
ldc_w 2131494007
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
L0:
aload 2
bipush 8
invokevirtual android/widget/Button/setVisibility(I)V
aload 0
getfield com/nd/android/u/cloud/activity/fragment/BindUnitFragment/mHeaderTitleTextView Landroid/widget/TextView;
aload 1
ldc_w 2131493985
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/cloud/activity/fragment/BindUnitFragment/mRemindTextView Landroid/widget/TextView;
aload 1
ldc_w 2131493986
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
.limit locals 3
.limit stack 4
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/nd/android/u/cloud/activity/fragment/BaseFragment/onActivityCreated(Landroid/os/Bundle;)V
aload 0
invokevirtual com/nd/android/u/cloud/activity/fragment/BindUnitFragment/getArguments()Landroid/os/Bundle;
astore 1
aload 0
aload 1
ldc "person_units_info"
invokevirtual android/os/Bundle/getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
checkcast com/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonUnitsInfo
putfield com/nd/android/u/cloud/activity/fragment/BindUnitFragment/mPersonUnitsInfo Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonUnitsInfo;
aload 0
aload 1
ldc "is_bind"
invokevirtual android/os/Bundle/getBoolean(Ljava/lang/String;)Z
putfield com/nd/android/u/cloud/activity/fragment/BindUnitFragment/mIsBind Z
aload 0
aload 0
invokevirtual com/nd/android/u/cloud/activity/fragment/BindUnitFragment/getView()Landroid/view/View;
invokevirtual com/nd/android/u/cloud/activity/fragment/BindUnitFragment/initComponent(Landroid/view/View;)V
new com/nd/android/u/cloud/ui/adapter/UnitItemAdapter
dup
aload 0
invokevirtual com/nd/android/u/cloud/activity/fragment/BindUnitFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
aload 0
getfield com/nd/android/u/cloud/activity/fragment/BindUnitFragment/mPersonUnitsInfo Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonUnitsInfo;
invokevirtual com/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonUnitsInfo/getUnitInfoList()Ljava/util/List;
aload 0
getfield com/nd/android/u/cloud/activity/fragment/BindUnitFragment/mIsBind Z
invokespecial com/nd/android/u/cloud/ui/adapter/UnitItemAdapter/<init>(Landroid/content/Context;Ljava/util/List;Z)V
astore 1
aload 0
getfield com/nd/android/u/cloud/activity/fragment/BindUnitFragment/mListView Landroid/widget/ListView;
aload 1
invokevirtual android/widget/ListView/setAdapter(Landroid/widget/ListAdapter;)V
return
.limit locals 2
.limit stack 5
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
aload 1
ldc_w 2130903331
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
areturn
.limit locals 4
.limit stack 3
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.signature "(Landroid/widget/AdapterView<*>;Landroid/view/View;IJ)V"
aload 0
getfield com/nd/android/u/cloud/activity/fragment/BindUnitFragment/mIsBind Z
ifeq L0
aload 0
iload 3
invokespecial com/nd/android/u/cloud/activity/fragment/BindUnitFragment/changeItemState(I)V
return
L0:
aload 0
invokevirtual com/nd/android/u/cloud/activity/fragment/BindUnitFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
astore 1
aload 0
getfield com/nd/android/u/cloud/activity/fragment/BindUnitFragment/mPersonUnitsInfo Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonUnitsInfo;
invokevirtual com/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonUnitsInfo/getUnitInfoList()Ljava/util/List;
iload 3
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/cloud/activity/fragment/CheckIDFragment$SingleUnitInfo
invokestatic com/nd/android/u/cloud/activity/fragment/CheckIDFragment/updateUserInfo(Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$SingleUnitInfo;)V
aload 1
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokestatic com/nd/android/u/cloud/LoginManager/isGuideBefore(Landroid/content/Context;J)Z
ifeq L1
aload 1
invokestatic com/nd/android/u/cloud/helper/Utils/lunchMainLifeActivity(Landroid/content/Context;)V
L2:
aload 1
invokevirtual android/app/Activity/finish()V
return
L1:
aload 1
new android/content/Intent
dup
aload 1
ldc com/nd/android/u/cloud/activity/FirstSetMyPortrait
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
invokevirtual android/app/Activity/startActivity(Landroid/content/Intent;)V
goto L2
.limit locals 6
.limit stack 5
.end method
