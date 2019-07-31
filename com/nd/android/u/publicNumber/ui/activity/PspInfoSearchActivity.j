.bytecode 50.0
.class public synchronized com/nd/android/u/publicNumber/ui/activity/PspInfoSearchActivity
.super com/product/android/ui/activity/BaseFragmentActivity
.implements com/nd/android/u/ui/widge/chatfragment/HeadFragment$HeadListener
.implements com/product/android/ui/widget/XYSearchBarWidget$OnSearchListener
.implements com/product/android/ui/widget/XYSearchBarWidget$OnStateListener
.inner class static synthetic inner com/nd/android/u/publicNumber/ui/activity/PspInfoSearchActivity$1
.inner class private static final enum FRAGMENT_TYPE inner com/nd/android/u/publicNumber/ui/activity/PspInfoSearchActivity$FRAGMENT_TYPE outer com/nd/android/u/publicNumber/ui/activity/PspInfoSearchActivity

.field protected static final 'HEAD_CONTAINER_ID' I

.field private 'mCurFragment' Landroid/support/v4/app/Fragment;

.field private 'mCurFragmentType' Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchActivity$FRAGMENT_TYPE;

.field private 'mSearchBar' Lcom/product/android/ui/widget/XYSearchBarWidget;

.field private 'mSearchNoRecordFragment' Lcom/nd/android/u/publicNumber/ui/activity/PspInfoNoResultFragment;

.field private 'mSearchResultFragment' Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;

.method static <clinit>()V
getstatic com/nd/android/u/chat/R$id/head_container I
putstatic com/nd/android/u/publicNumber/ui/activity/PspInfoSearchActivity/HEAD_CONTAINER_ID I
return
.limit locals 0
.limit stack 1
.end method

.method public <init>()V
aload 0
invokespecial com/product/android/ui/activity/BaseFragmentActivity/<init>()V
aload 0
getstatic com/nd/android/u/publicNumber/ui/activity/PspInfoSearchActivity$FRAGMENT_TYPE/INIT Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchActivity$FRAGMENT_TYPE;
putfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchActivity/mCurFragmentType Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchActivity$FRAGMENT_TYPE;
return
.limit locals 1
.limit stack 2
.end method

.method private changeFragment(Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchActivity$FRAGMENT_TYPE;Ljava/lang/String;)V
aload 0
invokevirtual com/nd/android/u/publicNumber/ui/activity/PspInfoSearchActivity/getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
astore 3
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchActivity/mCurFragmentType Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchActivity$FRAGMENT_TYPE;
aload 1
if_acmpne L0
aload 1
getstatic com/nd/android/u/publicNumber/ui/activity/PspInfoSearchActivity$FRAGMENT_TYPE/SEARCH_RESULT Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchActivity$FRAGMENT_TYPE;
if_acmpeq L0
return
L0:
aload 0
aload 1
putfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchActivity/mCurFragmentType Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchActivity$FRAGMENT_TYPE;
aload 3
invokevirtual android/support/v4/app/FragmentManager/beginTransaction()Landroid/support/v4/app/FragmentTransaction;
astore 3
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchActivity/mCurFragment Landroid/support/v4/app/Fragment;
ifnull L1
aload 3
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchActivity/mCurFragment Landroid/support/v4/app/Fragment;
invokevirtual android/support/v4/app/FragmentTransaction/hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
pop
L1:
aload 0
aload 1
aload 2
invokespecial com/nd/android/u/publicNumber/ui/activity/PspInfoSearchActivity/getFrament(Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchActivity$FRAGMENT_TYPE;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
astore 1
aload 1
invokevirtual android/support/v4/app/Fragment/isAdded()Z
ifne L2
aload 3
getstatic com/nd/android/u/chat/R$id/content_container I
aload 1
invokevirtual android/support/v4/app/FragmentTransaction/add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
pop
L3:
aload 0
aload 1
putfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchActivity/mCurFragment Landroid/support/v4/app/Fragment;
aload 3
invokevirtual android/support/v4/app/FragmentTransaction/commitAllowingStateLoss()I
pop
return
L2:
aload 3
aload 1
invokevirtual android/support/v4/app/FragmentTransaction/show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
pop
aload 1
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchActivity/mSearchResultFragment Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;
if_acmpne L3
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchActivity/mSearchResultFragment Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;
aload 2
invokevirtual com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment/searchPspInfoByKey(Ljava/lang/String;)V
goto L3
.limit locals 4
.limit stack 3
.end method

.method private getFrament(Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchActivity$FRAGMENT_TYPE;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
getstatic com/nd/android/u/publicNumber/ui/activity/PspInfoSearchActivity$1/$SwitchMap$com$nd$android$u$publicNumber$ui$activity$PspInfoSearchActivity$FRAGMENT_TYPE [I
aload 1
invokevirtual com/nd/android/u/publicNumber/ui/activity/PspInfoSearchActivity$FRAGMENT_TYPE/ordinal()I
iaload
tableswitch 1
L0
default : L1
L1:
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchActivity/mSearchNoRecordFragment Lcom/nd/android/u/publicNumber/ui/activity/PspInfoNoResultFragment;
ifnonnull L2
aload 0
invokestatic com/nd/android/u/publicNumber/ui/activity/PspInfoNoResultFragment/getInstance()Lcom/nd/android/u/publicNumber/ui/activity/PspInfoNoResultFragment;
putfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchActivity/mSearchNoRecordFragment Lcom/nd/android/u/publicNumber/ui/activity/PspInfoNoResultFragment;
L2:
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchActivity/mSearchNoRecordFragment Lcom/nd/android/u/publicNumber/ui/activity/PspInfoNoResultFragment;
areturn
L0:
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchActivity/mSearchResultFragment Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;
ifnonnull L3
aload 0
aload 2
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchActivity/mSearchBar Lcom/product/android/ui/widget/XYSearchBarWidget;
invokestatic com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment/getInstance(Ljava/lang/String;Lcom/product/android/ui/widget/XYSearchBarWidget;)Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;
putfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchActivity/mSearchResultFragment Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;
L3:
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchActivity/mSearchResultFragment Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;
areturn
.limit locals 3
.limit stack 3
.end method

.method public OnCancel()V
return
.limit locals 1
.limit stack 0
.end method

.method public OnEditClick()V
return
.limit locals 1
.limit stack 0
.end method

.method protected initComponent()V
aload 0
invokespecial com/product/android/ui/activity/BaseFragmentActivity/initComponent()V
aload 0
getstatic com/nd/android/u/chat/R$layout/pspinfo_search_activity I
invokevirtual com/nd/android/u/publicNumber/ui/activity/PspInfoSearchActivity/setContentView(I)V
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/sbw_psp_search I
invokevirtual com/nd/android/u/publicNumber/ui/activity/PspInfoSearchActivity/findViewById(I)Landroid/view/View;
checkcast com/product/android/ui/widget/XYSearchBarWidget
putfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchActivity/mSearchBar Lcom/product/android/ui/widget/XYSearchBarWidget;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchActivity/mSearchBar Lcom/product/android/ui/widget/XYSearchBarWidget;
ldc "\u8bf7\u8f93\u5165\u516c\u4f17\u53f7\u540d\u79f0\u6216\u8005ID"
invokevirtual com/product/android/ui/widget/XYSearchBarWidget/setHint(Ljava/lang/String;)V
invokestatic com/nd/android/u/ui/widge/chatfragment/HeadFragment/newInstance()Lcom/nd/android/u/ui/widge/chatfragment/HeadFragment;
astore 1
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 2
aload 2
ldc "title"
aload 0
getstatic com/nd/android/u/chat/R$string/search_psp_title I
invokevirtual com/nd/android/u/publicNumber/ui/activity/PspInfoSearchActivity/getString(I)Ljava/lang/String;
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
aload 1
aload 2
invokevirtual com/nd/android/u/ui/widge/chatfragment/HeadFragment/setArguments(Landroid/os/Bundle;)V
aload 0
invokevirtual com/nd/android/u/publicNumber/ui/activity/PspInfoSearchActivity/getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
invokevirtual android/support/v4/app/FragmentManager/beginTransaction()Landroid/support/v4/app/FragmentTransaction;
astore 2
aload 2
getstatic com/nd/android/u/publicNumber/ui/activity/PspInfoSearchActivity/HEAD_CONTAINER_ID I
aload 1
invokevirtual android/support/v4/app/FragmentTransaction/add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
pop
aload 2
invokevirtual android/support/v4/app/FragmentTransaction/commit()I
pop
aload 0
getstatic com/nd/android/u/publicNumber/ui/activity/PspInfoSearchActivity$FRAGMENT_TYPE/NONE Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchActivity$FRAGMENT_TYPE;
ldc ""
invokespecial com/nd/android/u/publicNumber/ui/activity/PspInfoSearchActivity/changeFragment(Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchActivity$FRAGMENT_TYPE;Ljava/lang/String;)V
return
.limit locals 3
.limit stack 4
.end method

.method protected initComponentValue()V
aload 0
invokespecial com/product/android/ui/activity/BaseFragmentActivity/initComponentValue()V
return
.limit locals 1
.limit stack 1
.end method

.method protected initEvent()V
aload 0
invokespecial com/product/android/ui/activity/BaseFragmentActivity/initEvent()V
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchActivity/mSearchBar Lcom/product/android/ui/widget/XYSearchBarWidget;
aload 0
invokevirtual com/product/android/ui/widget/XYSearchBarWidget/setOnSearchListener(Lcom/product/android/ui/widget/XYSearchBarWidget$OnSearchListener;)V
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchActivity/mSearchBar Lcom/product/android/ui/widget/XYSearchBarWidget;
aload 0
invokevirtual com/product/android/ui/widget/XYSearchBarWidget/setOnStateListener(Lcom/product/android/ui/widget/XYSearchBarWidget$OnStateListener;)V
return
.limit locals 1
.limit stack 2
.end method

.method public leftBtnHandle()V
aload 0
invokevirtual com/nd/android/u/publicNumber/ui/activity/PspInfoSearchActivity/finish()V
return
.limit locals 1
.limit stack 1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/product/android/ui/activity/BaseFragmentActivity/onCreate(Landroid/os/Bundle;)V
aload 0
invokevirtual com/nd/android/u/publicNumber/ui/activity/PspInfoSearchActivity/initComponent()V
aload 0
invokevirtual com/nd/android/u/publicNumber/ui/activity/PspInfoSearchActivity/initComponentValue()V
aload 0
invokevirtual com/nd/android/u/publicNumber/ui/activity/PspInfoSearchActivity/initEvent()V
return
.limit locals 2
.limit stack 2
.end method

.method protected onDestroy()V
aload 0
invokespecial com/product/android/ui/activity/BaseFragmentActivity/onDestroy()V
aload 0
aconst_null
putfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchActivity/mSearchNoRecordFragment Lcom/nd/android/u/publicNumber/ui/activity/PspInfoNoResultFragment;
aload 0
aconst_null
putfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchActivity/mSearchResultFragment Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;
return
.limit locals 1
.limit stack 2
.end method

.method public onSearchCancel()V
aload 0
getstatic com/nd/android/u/publicNumber/ui/activity/PspInfoSearchActivity$FRAGMENT_TYPE/NONE Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchActivity$FRAGMENT_TYPE;
ldc ""
invokespecial com/nd/android/u/publicNumber/ui/activity/PspInfoSearchActivity/changeFragment(Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchActivity$FRAGMENT_TYPE;Ljava/lang/String;)V
return
.limit locals 1
.limit stack 3
.end method

.method public onSearchChange(Ljava/lang/String;)V
aload 1
invokevirtual java/lang/String/trim()Ljava/lang/String;
astore 1
aload 1
ldc ""
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L0
aload 0
getstatic com/nd/android/u/publicNumber/ui/activity/PspInfoSearchActivity$FRAGMENT_TYPE/NONE Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchActivity$FRAGMENT_TYPE;
ldc ""
invokespecial com/nd/android/u/publicNumber/ui/activity/PspInfoSearchActivity/changeFragment(Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchActivity$FRAGMENT_TYPE;Ljava/lang/String;)V
return
L0:
aload 0
getstatic com/nd/android/u/publicNumber/ui/activity/PspInfoSearchActivity$FRAGMENT_TYPE/SEARCH_RESULT Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchActivity$FRAGMENT_TYPE;
aload 1
invokespecial com/nd/android/u/publicNumber/ui/activity/PspInfoSearchActivity/changeFragment(Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchActivity$FRAGMENT_TYPE;Ljava/lang/String;)V
return
.limit locals 2
.limit stack 3
.end method

.method protected onStart()V
aload 0
invokespecial com/product/android/ui/activity/BaseFragmentActivity/onStart()V
return
.limit locals 1
.limit stack 1
.end method

.method public rightBtnHandle()V
return
.limit locals 1
.limit stack 0
.end method
