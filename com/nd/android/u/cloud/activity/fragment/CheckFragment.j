.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/activity/fragment/CheckFragment
.super com/nd/android/u/cloud/activity/fragment/BaseFragment
.inner class inner com/nd/android/u/cloud/activity/fragment/CheckFragment$1
.inner class inner com/nd/android/u/cloud/activity/fragment/CheckFragment$2
.inner class private static SubmitCheckTask inner com/nd/android/u/cloud/activity/fragment/CheckFragment$SubmitCheckTask outer com/nd/android/u/cloud/activity/fragment/CheckFragment

.field private 'mInfo' Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonInfo;

.field private 'mMajorItem' Lcom/nd/android/u/cloud/view/widge/Item_Input;

.field private 'mNameItem' Lcom/nd/android/u/cloud/view/widge/Item_Input;

.field private 'mPhoneItem' Lcom/nd/android/u/cloud/view/widge/Item_Input;

.method public <init>()V
aload 0
invokespecial com/nd/android/u/cloud/activity/fragment/BaseFragment/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$000(Lcom/nd/android/u/cloud/activity/fragment/CheckFragment;)Lcom/nd/android/u/cloud/view/widge/Item_Input;
aload 0
getfield com/nd/android/u/cloud/activity/fragment/CheckFragment/mNameItem Lcom/nd/android/u/cloud/view/widge/Item_Input;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/android/u/cloud/activity/fragment/CheckFragment;)Lcom/nd/android/u/cloud/view/widge/Item_Input;
aload 0
getfield com/nd/android/u/cloud/activity/fragment/CheckFragment/mPhoneItem Lcom/nd/android/u/cloud/view/widge/Item_Input;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/nd/android/u/cloud/activity/fragment/CheckFragment;)Lcom/nd/android/u/cloud/view/widge/Item_Input;
aload 0
getfield com/nd/android/u/cloud/activity/fragment/CheckFragment/mMajorItem Lcom/nd/android/u/cloud/view/widge/Item_Input;
areturn
.limit locals 1
.limit stack 1
.end method

.method public static newInstance(Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonInfo;)Lcom/nd/android/u/cloud/activity/fragment/CheckFragment;
new com/nd/android/u/cloud/activity/fragment/CheckFragment
dup
invokespecial com/nd/android/u/cloud/activity/fragment/CheckFragment/<init>()V
astore 1
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 2
aload 2
ldc "person_info"
aload 0
invokevirtual android/os/Bundle/putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
aload 1
aload 2
invokevirtual com/nd/android/u/cloud/activity/fragment/CheckFragment/setArguments(Landroid/os/Bundle;)V
aload 1
areturn
.limit locals 3
.limit stack 3
.end method

.method protected initComponent(Landroid/view/View;)V
aload 0
aload 1
invokespecial com/nd/android/u/cloud/activity/fragment/BaseFragment/initComponent(Landroid/view/View;)V
aload 0
getfield com/nd/android/u/cloud/activity/fragment/CheckFragment/mHeaderTitleTextView Landroid/widget/TextView;
aload 0
invokevirtual com/nd/android/u/cloud/activity/fragment/CheckFragment/getResources()Landroid/content/res/Resources;
ldc_w 2131493952
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 1
ldc_w 2131625341
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
new com/nd/android/u/cloud/activity/fragment/CheckFragment$1
dup
aload 0
invokespecial com/nd/android/u/cloud/activity/fragment/CheckFragment$1/<init>(Lcom/nd/android/u/cloud/activity/fragment/CheckFragment;)V
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/cloud/activity/fragment/CheckFragment/mHeaderLeftButton Landroid/widget/Button;
new com/nd/android/u/cloud/activity/fragment/CheckFragment$2
dup
aload 0
invokespecial com/nd/android/u/cloud/activity/fragment/CheckFragment$2/<init>(Lcom/nd/android/u/cloud/activity/fragment/CheckFragment;)V
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
invokevirtual com/nd/android/u/cloud/activity/fragment/CheckFragment/getResources()Landroid/content/res/Resources;
astore 2
aload 1
ldc_w 2131625332
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
astore 1
aload 0
aload 0
ldc_w 2131493996
aload 1
invokevirtual com/nd/android/u/cloud/activity/fragment/CheckFragment/getItemInput(ILandroid/widget/LinearLayout;)Lcom/nd/android/u/cloud/view/widge/Item_Input;
putfield com/nd/android/u/cloud/activity/fragment/CheckFragment/mNameItem Lcom/nd/android/u/cloud/view/widge/Item_Input;
aload 0
getfield com/nd/android/u/cloud/activity/fragment/CheckFragment/mNameItem Lcom/nd/android/u/cloud/view/widge/Item_Input;
aload 2
ldc_w 2131165246
invokevirtual android/content/res/Resources/getDimension(I)F
invokevirtual com/nd/android/u/cloud/view/widge/Item_Input/setMarginBottom(F)V
aload 0
getfield com/nd/android/u/cloud/activity/fragment/CheckFragment/mNameItem Lcom/nd/android/u/cloud/view/widge/Item_Input;
aload 0
getfield com/nd/android/u/cloud/activity/fragment/CheckFragment/mInfo Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonInfo;
invokevirtual com/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonInfo/getRealName()Ljava/lang/String;
invokevirtual com/nd/android/u/cloud/view/widge/Item_Input/setValue(Ljava/lang/String;)V
aload 0
aload 0
ldc_w 2131493990
aload 1
invokevirtual com/nd/android/u/cloud/activity/fragment/CheckFragment/getItemInput(ILandroid/widget/LinearLayout;)Lcom/nd/android/u/cloud/view/widge/Item_Input;
putfield com/nd/android/u/cloud/activity/fragment/CheckFragment/mPhoneItem Lcom/nd/android/u/cloud/view/widge/Item_Input;
aload 0
getfield com/nd/android/u/cloud/activity/fragment/CheckFragment/mPhoneItem Lcom/nd/android/u/cloud/view/widge/Item_Input;
aload 2
ldc_w 2131165246
invokevirtual android/content/res/Resources/getDimension(I)F
invokevirtual com/nd/android/u/cloud/view/widge/Item_Input/setMarginBottom(F)V
aload 0
getfield com/nd/android/u/cloud/activity/fragment/CheckFragment/mPhoneItem Lcom/nd/android/u/cloud/view/widge/Item_Input;
aload 0
getfield com/nd/android/u/cloud/activity/fragment/CheckFragment/mInfo Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonInfo;
invokevirtual com/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonInfo/getPhoneNumber()Ljava/lang/String;
invokevirtual com/nd/android/u/cloud/view/widge/Item_Input/setValue(Ljava/lang/String;)V
aload 0
aload 0
ldc_w 2131493987
aload 1
invokevirtual com/nd/android/u/cloud/activity/fragment/CheckFragment/getItemInput(ILandroid/widget/LinearLayout;)Lcom/nd/android/u/cloud/view/widge/Item_Input;
putfield com/nd/android/u/cloud/activity/fragment/CheckFragment/mMajorItem Lcom/nd/android/u/cloud/view/widge/Item_Input;
return
.limit locals 3
.limit stack 4
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/nd/android/u/cloud/activity/fragment/BaseFragment/onActivityCreated(Landroid/os/Bundle;)V
aload 0
invokevirtual com/nd/android/u/cloud/activity/fragment/CheckFragment/getView()Landroid/view/View;
astore 1
aload 0
aload 0
invokevirtual com/nd/android/u/cloud/activity/fragment/CheckFragment/getArguments()Landroid/os/Bundle;
ldc "person_info"
invokevirtual android/os/Bundle/getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
checkcast com/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonInfo
putfield com/nd/android/u/cloud/activity/fragment/CheckFragment/mInfo Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonInfo;
aload 0
aload 1
invokevirtual com/nd/android/u/cloud/activity/fragment/CheckFragment/initComponent(Landroid/view/View;)V
return
.limit locals 2
.limit stack 3
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
aload 1
ldc_w 2130903332
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
areturn
.limit locals 4
.limit stack 3
.end method
