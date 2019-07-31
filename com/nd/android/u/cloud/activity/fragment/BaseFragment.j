.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/activity/fragment/BaseFragment
.super android/support/v4/app/Fragment

.field protected 'mHeaderLeftButton' Landroid/widget/Button;

.field protected 'mHeaderTitleTextView' Landroid/widget/TextView;

.method public <init>()V
aload 0
invokespecial android/support/v4/app/Fragment/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method protected getItemInput(ILandroid/widget/LinearLayout;)Lcom/nd/android/u/cloud/view/widge/Item_Input;
new com/nd/android/u/cloud/view/widge/Item_Input
dup
aload 0
invokevirtual com/nd/android/u/cloud/activity/fragment/BaseFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
iconst_1
invokespecial com/nd/android/u/cloud/view/widge/Item_Input/<init>(Landroid/content/Context;Z)V
astore 3
aload 3
iload 1
invokevirtual com/nd/android/u/cloud/view/widge/Item_Input/setHint(I)V
aload 3
invokevirtual com/nd/android/u/cloud/view/widge/Item_Input/hideName()V
aload 3
iconst_0
ldc_w 2130839237
invokevirtual com/nd/android/u/cloud/view/widge/Item_Input/setBackgrounds(II)V
aload 2
aload 3
invokevirtual android/widget/LinearLayout/addView(Landroid/view/View;)V
aload 3
areturn
.limit locals 4
.limit stack 4
.end method

.method protected initComponent(Landroid/view/View;)V
aload 0
aload 1
ldc_w 2131624647
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
invokevirtual com/nd/android/u/cloud/activity/fragment/BaseFragment/initHeader(Landroid/view/View;)V
return
.limit locals 2
.limit stack 3
.end method

.method protected initEvent()V
return
.limit locals 1
.limit stack 0
.end method

.method protected initHeader(Landroid/view/View;)V
aload 0
aload 1
ldc_w 2131624281
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/android/u/cloud/activity/fragment/BaseFragment/mHeaderLeftButton Landroid/widget/Button;
aload 0
aload 1
ldc_w 2131624282
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/activity/fragment/BaseFragment/mHeaderTitleTextView Landroid/widget/TextView;
return
.limit locals 2
.limit stack 3
.end method
