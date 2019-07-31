.bytecode 50.0
.class public synchronized com/nd/android/u/publicNumber/ui/activity/PspActivity
.super android/support/v4/app/FragmentActivity
.implements android/view/View$OnClickListener
.implements com/product/android/ui/widget/XYSearchBarWidget$OnSearchListener
.implements com/product/android/ui/widget/XYSearchBarWidget$OnStateListener
.inner class inner com/nd/android/u/publicNumber/ui/activity/PspActivity$1

.field public static final 'PSP_LIST_FRAGMENT' I = 1


.field public static final 'PSP_SEARCH_FRAGMENT' I = 2


.field private 'btnLeft' Landroid/widget/Button;

.field private 'ivRight' Landroid/widget/ImageView;

.field private 'mCurFrg' Landroid/support/v4/app/Fragment;

.field private 'mCurTab' I

.field private 'mMaskLayer' Lcom/common/android/ui/widget/MaskLayer;

.field private 'mPspListFragment' Lcom/nd/android/u/publicNumber/ui/activity/PspListFragment;

.field private 'mPspSearchFragment' Lcom/nd/android/u/publicNumber/ui/activity/PspSearchFragment;

.field private 'mSearchBar' Lcom/product/android/ui/widget/XYSearchBarWidget;

.field private 'tvTitle' Landroid/widget/TextView;

.method public <init>()V
aload 0
invokespecial android/support/v4/app/FragmentActivity/<init>()V
aload 0
aconst_null
putfield com/nd/android/u/publicNumber/ui/activity/PspActivity/mPspListFragment Lcom/nd/android/u/publicNumber/ui/activity/PspListFragment;
aload 0
aconst_null
putfield com/nd/android/u/publicNumber/ui/activity/PspActivity/mPspSearchFragment Lcom/nd/android/u/publicNumber/ui/activity/PspSearchFragment;
aload 0
aconst_null
putfield com/nd/android/u/publicNumber/ui/activity/PspActivity/mSearchBar Lcom/product/android/ui/widget/XYSearchBarWidget;
aload 0
aconst_null
putfield com/nd/android/u/publicNumber/ui/activity/PspActivity/mMaskLayer Lcom/common/android/ui/widget/MaskLayer;
return
.limit locals 1
.limit stack 2
.end method

.method static synthetic access$000(Lcom/nd/android/u/publicNumber/ui/activity/PspActivity;)Lcom/product/android/ui/widget/XYSearchBarWidget;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspActivity/mSearchBar Lcom/product/android/ui/widget/XYSearchBarWidget;
areturn
.limit locals 1
.limit stack 1
.end method

.method public OnCancel()V
return
.limit locals 1
.limit stack 0
.end method

.method public OnEditClick()V
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspActivity/mMaskLayer Lcom/common/android/ui/widget/MaskLayer;
invokevirtual com/common/android/ui/widget/MaskLayer/isLayerShowing()Z
ifne L0
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspActivity/mMaskLayer Lcom/common/android/ui/widget/MaskLayer;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspActivity/mSearchBar Lcom/product/android/ui/widget/XYSearchBarWidget;
bipush 10
invokevirtual com/common/android/ui/widget/MaskLayer/maskLayoutBelow(Landroid/view/View;I)V
L0:
return
.limit locals 1
.limit stack 3
.end method

.method protected initComponent()V
aload 0
iconst_1
ldc ""
invokevirtual com/nd/android/u/publicNumber/ui/activity/PspActivity/showFragment(ILjava/lang/String;)V
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/header_btn_left I
invokevirtual com/nd/android/u/publicNumber/ui/activity/PspActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/android/u/publicNumber/ui/activity/PspActivity/btnLeft Landroid/widget/Button;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspActivity/btnLeft Landroid/widget/Button;
aload 0
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/header_text_title I
invokevirtual com/nd/android/u/publicNumber/ui/activity/PspActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/publicNumber/ui/activity/PspActivity/tvTitle Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspActivity/tvTitle Landroid/widget/TextView;
aload 0
getstatic com/nd/android/u/chat/R$string/xy_psp_name I
invokevirtual com/nd/android/u/publicNumber/ui/activity/PspActivity/getString(I)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/header_iv_right I
invokevirtual com/nd/android/u/publicNumber/ui/activity/PspActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/publicNumber/ui/activity/PspActivity/ivRight Landroid/widget/ImageView;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspActivity/ivRight Landroid/widget/ImageView;
aload 0
invokevirtual android/widget/ImageView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/sbw_psp_search I
invokevirtual com/nd/android/u/publicNumber/ui/activity/PspActivity/findViewById(I)Landroid/view/View;
checkcast com/product/android/ui/widget/XYSearchBarWidget
putfield com/nd/android/u/publicNumber/ui/activity/PspActivity/mSearchBar Lcom/product/android/ui/widget/XYSearchBarWidget;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspActivity/mSearchBar Lcom/product/android/ui/widget/XYSearchBarWidget;
aload 0
getstatic com/nd/android/u/chat/R$string/search_psp I
invokevirtual com/nd/android/u/publicNumber/ui/activity/PspActivity/getString(I)Ljava/lang/String;
invokevirtual com/product/android/ui/widget/XYSearchBarWidget/setHint(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspActivity/mSearchBar Lcom/product/android/ui/widget/XYSearchBarWidget;
aload 0
invokevirtual com/product/android/ui/widget/XYSearchBarWidget/setOnSearchListener(Lcom/product/android/ui/widget/XYSearchBarWidget$OnSearchListener;)V
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspActivity/mSearchBar Lcom/product/android/ui/widget/XYSearchBarWidget;
aload 0
invokevirtual com/product/android/ui/widget/XYSearchBarWidget/setOnStateListener(Lcom/product/android/ui/widget/XYSearchBarWidget$OnStateListener;)V
aload 0
new com/common/android/ui/widget/MaskLayer
dup
aload 0
invokespecial com/common/android/ui/widget/MaskLayer/<init>(Landroid/content/Context;)V
putfield com/nd/android/u/publicNumber/ui/activity/PspActivity/mMaskLayer Lcom/common/android/ui/widget/MaskLayer;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspActivity/mMaskLayer Lcom/common/android/ui/widget/MaskLayer;
new com/nd/android/u/publicNumber/ui/activity/PspActivity$1
dup
aload 0
invokespecial com/nd/android/u/publicNumber/ui/activity/PspActivity$1/<init>(Lcom/nd/android/u/publicNumber/ui/activity/PspActivity;)V
invokevirtual com/common/android/ui/widget/MaskLayer/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
.limit locals 1
.limit stack 4
.end method

.method public onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
istore 2
iload 2
getstatic com/nd/android/u/chat/R$id/header_iv_right I
if_icmpne L0
aload 0
new android/content/Intent
dup
aload 0
ldc com/nd/android/u/publicNumber/ui/activity/PspInfoSearchActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
invokevirtual com/nd/android/u/publicNumber/ui/activity/PspActivity/startActivity(Landroid/content/Intent;)V
L1:
return
L0:
iload 2
getstatic com/nd/android/u/chat/R$id/header_btn_left I
if_icmpne L1
aload 0
invokevirtual com/nd/android/u/publicNumber/ui/activity/PspActivity/finish()V
return
.limit locals 3
.limit stack 5
.end method

.method protected onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial android/support/v4/app/FragmentActivity/onCreate(Landroid/os/Bundle;)V
aload 0
getstatic com/nd/android/u/chat/R$layout/activity_psp I
invokevirtual com/nd/android/u/publicNumber/ui/activity/PspActivity/setContentView(I)V
aload 0
invokevirtual com/nd/android/u/publicNumber/ui/activity/PspActivity/initComponent()V
return
.limit locals 2
.limit stack 2
.end method

.method public onSearchCancel()V
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspActivity/mMaskLayer Lcom/common/android/ui/widget/MaskLayer;
invokevirtual com/common/android/ui/widget/MaskLayer/isLayerShowing()Z
ifeq L0
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspActivity/mMaskLayer Lcom/common/android/ui/widget/MaskLayer;
invokevirtual com/common/android/ui/widget/MaskLayer/hideLayer()V
L0:
aload 0
iconst_1
ldc ""
invokevirtual com/nd/android/u/publicNumber/ui/activity/PspActivity/showFragment(ILjava/lang/String;)V
return
.limit locals 1
.limit stack 3
.end method

.method public onSearchChange(Ljava/lang/String;)V
aload 1
invokevirtual java/lang/String/trim()Ljava/lang/String;
astore 1
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspActivity/mMaskLayer Lcom/common/android/ui/widget/MaskLayer;
invokevirtual com/common/android/ui/widget/MaskLayer/isLayerShowing()Z
ifeq L0
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspActivity/mMaskLayer Lcom/common/android/ui/widget/MaskLayer;
invokevirtual com/common/android/ui/widget/MaskLayer/hideLayer()V
L0:
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspActivity/mCurTab I
iconst_1
if_icmpne L1
aload 0
iconst_2
aload 1
invokevirtual com/nd/android/u/publicNumber/ui/activity/PspActivity/showFragment(ILjava/lang/String;)V
L2:
return
L1:
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspActivity/mPspSearchFragment Lcom/nd/android/u/publicNumber/ui/activity/PspSearchFragment;
ifnull L2
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspActivity/mPspSearchFragment Lcom/nd/android/u/publicNumber/ui/activity/PspSearchFragment;
aload 1
invokevirtual com/nd/android/u/publicNumber/ui/activity/PspSearchFragment/changeSearchText(Ljava/lang/String;)V
return
.limit locals 2
.limit stack 3
.end method

.method protected onStart()V
aload 0
invokespecial android/support/v4/app/FragmentActivity/onStart()V
aload 0
iconst_1
ldc ""
invokevirtual com/nd/android/u/publicNumber/ui/activity/PspActivity/showFragment(ILjava/lang/String;)V
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspActivity/mSearchBar Lcom/product/android/ui/widget/XYSearchBarWidget;
invokevirtual com/product/android/ui/widget/XYSearchBarWidget/stop()V
return
.limit locals 1
.limit stack 3
.end method

.method public showFragment(ILjava/lang/String;)V
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspActivity/mCurTab I
iload 1
if_icmpne L0
L1:
return
L0:
aload 0
iload 1
putfield com/nd/android/u/publicNumber/ui/activity/PspActivity/mCurTab I
aload 0
invokevirtual com/nd/android/u/publicNumber/ui/activity/PspActivity/getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
invokevirtual android/support/v4/app/FragmentManager/beginTransaction()Landroid/support/v4/app/FragmentTransaction;
astore 4
aconst_null
astore 3
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspActivity/mCurTab I
tableswitch 1
L2
L3
default : L4
L4:
aload 3
astore 2
L5:
aload 2
ifnull L1
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspActivity/mCurFrg Landroid/support/v4/app/Fragment;
ifnull L6
aload 4
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspActivity/mCurFrg Landroid/support/v4/app/Fragment;
invokevirtual android/support/v4/app/FragmentTransaction/hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
pop
L6:
aload 2
invokevirtual android/support/v4/app/Fragment/isAdded()Z
ifeq L7
aload 4
aload 2
invokevirtual android/support/v4/app/FragmentTransaction/show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
pop
L8:
aload 0
aload 2
putfield com/nd/android/u/publicNumber/ui/activity/PspActivity/mCurFrg Landroid/support/v4/app/Fragment;
aload 4
invokevirtual android/support/v4/app/FragmentTransaction/commitAllowingStateLoss()I
pop
return
L2:
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspActivity/mPspListFragment Lcom/nd/android/u/publicNumber/ui/activity/PspListFragment;
ifnonnull L9
aload 0
invokestatic com/nd/android/u/publicNumber/ui/activity/PspListFragment/newInstance()Lcom/nd/android/u/publicNumber/ui/activity/PspListFragment;
putfield com/nd/android/u/publicNumber/ui/activity/PspActivity/mPspListFragment Lcom/nd/android/u/publicNumber/ui/activity/PspListFragment;
L9:
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspActivity/mPspListFragment Lcom/nd/android/u/publicNumber/ui/activity/PspListFragment;
astore 2
goto L5
L3:
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspActivity/mPspSearchFragment Lcom/nd/android/u/publicNumber/ui/activity/PspSearchFragment;
ifnonnull L10
aload 0
aload 2
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspActivity/mSearchBar Lcom/product/android/ui/widget/XYSearchBarWidget;
invokestatic com/nd/android/u/publicNumber/ui/activity/PspSearchFragment/newInstance(Ljava/lang/String;Lcom/product/android/ui/widget/XYSearchBarWidget;)Lcom/nd/android/u/publicNumber/ui/activity/PspSearchFragment;
putfield com/nd/android/u/publicNumber/ui/activity/PspActivity/mPspSearchFragment Lcom/nd/android/u/publicNumber/ui/activity/PspSearchFragment;
L11:
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspActivity/mPspSearchFragment Lcom/nd/android/u/publicNumber/ui/activity/PspSearchFragment;
astore 2
goto L5
L10:
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspActivity/mPspSearchFragment Lcom/nd/android/u/publicNumber/ui/activity/PspSearchFragment;
aload 2
invokevirtual com/nd/android/u/publicNumber/ui/activity/PspSearchFragment/changeSearchText(Ljava/lang/String;)V
goto L11
L7:
aload 4
getstatic com/nd/android/u/chat/R$id/ll_psp I
aload 2
invokevirtual android/support/v4/app/FragmentTransaction/add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
pop
goto L8
.limit locals 5
.limit stack 3
.end method
