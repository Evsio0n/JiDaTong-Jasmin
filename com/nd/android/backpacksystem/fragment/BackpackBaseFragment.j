.bytecode 50.0
.class public synchronized com/nd/android/backpacksystem/fragment/BackpackBaseFragment
.super android/support/v4/app/Fragment
.inner class inner com/nd/android/backpacksystem/fragment/BackpackBaseFragment$1
.inner class inner com/nd/android/backpacksystem/fragment/BackpackBaseFragment$2
.inner class inner com/nd/android/backpacksystem/fragment/BackpackBaseFragment$3
.inner class protected SendGift inner com/nd/android/backpacksystem/fragment/BackpackBaseFragment$SendGift outer com/nd/android/backpacksystem/fragment/BackpackBaseFragment

.field public static final 'FRAGMENT_TYPE' Ljava/lang/String; = "fragment_type"

.field public static final 'FROM_GIFT_BOX_FRAGMENT' I = 257


.field public static final 'FROM_MY_GIFT_FRAGMENT' I = 256


.field public static final 'FROM_OTHER_MORDL_TO_GIFT_BOX' I = 258


.field public static final 'FROM_OTHER_MORDL_TO_MAIN' I = 260


.field public static final 'FROM_OTHER_MORDL_TO_MY_GIFT' I = 259


.field public static final 'USER_ID' Ljava/lang/String; = "user_id"

.field protected 'mActivity' Landroid/app/Activity;

.field protected 'mBtnHeaderLeft' Landroid/widget/Button;

.field protected 'mBtnHeaderRight' Landroid/widget/Button;

.field protected 'mDlgSendGiftWithMsg' Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;

.field protected 'mFragmentType' I

.field protected 'mPbLoading' Landroid/widget/ProgressBar;

.field protected 'mRlHeaderTitle' Landroid/widget/RelativeLayout;

.field protected 'mRootView' Landroid/view/View;

.field protected 'mTvHeaderTitle' Landroid/widget/TextView;

.field protected 'mVpContent' Landroid/support/v4/view/ViewPager;

.field protected 'onClickListener' Landroid/view/View$OnClickListener;

.method public <init>()V
aload 0
invokespecial android/support/v4/app/Fragment/<init>()V
aload 0
sipush 260
putfield com/nd/android/backpacksystem/fragment/BackpackBaseFragment/mFragmentType I
aload 0
new com/nd/android/backpacksystem/fragment/BackpackBaseFragment$1
dup
aload 0
invokespecial com/nd/android/backpacksystem/fragment/BackpackBaseFragment$1/<init>(Lcom/nd/android/backpacksystem/fragment/BackpackBaseFragment;)V
putfield com/nd/android/backpacksystem/fragment/BackpackBaseFragment/onClickListener Landroid/view/View$OnClickListener;
return
.limit locals 1
.limit stack 4
.end method

.method protected cancelDlgSendGiftWithMsg()V
aload 0
getfield com/nd/android/backpacksystem/fragment/BackpackBaseFragment/mDlgSendGiftWithMsg Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;
ifnull L0
aload 0
getfield com/nd/android/backpacksystem/fragment/BackpackBaseFragment/mDlgSendGiftWithMsg Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;
invokevirtual com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/isShowing()Z
ifeq L0
aload 0
getfield com/nd/android/backpacksystem/fragment/BackpackBaseFragment/mDlgSendGiftWithMsg Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;
invokevirtual com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/cancel()V
L0:
return
.limit locals 1
.limit stack 1
.end method

.method protected cancelRetry()V
return
.limit locals 1
.limit stack 0
.end method

.method protected clickHeaderLeft()V
aload 0
getfield com/nd/android/backpacksystem/fragment/BackpackBaseFragment/mActivity Landroid/app/Activity;
invokevirtual android/app/Activity/finish()V
return
.limit locals 1
.limit stack 1
.end method

.method protected clickHeaderRight()V
return
.limit locals 1
.limit stack 0
.end method

.method protected doRetry()V
return
.limit locals 1
.limit stack 0
.end method

.method protected doSelectLeftTab()V
return
.limit locals 1
.limit stack 0
.end method

.method protected doSelectRightTab()V
return
.limit locals 1
.limit stack 0
.end method

.method protected initHeader()V
aload 0
aload 0
getfield com/nd/android/backpacksystem/fragment/BackpackBaseFragment/mRootView Landroid/view/View;
getstatic com/nd/android/backpacksystem/R$id/rlHeaderTitle I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/nd/android/backpacksystem/fragment/BackpackBaseFragment/mRlHeaderTitle Landroid/widget/RelativeLayout;
aload 0
aload 0
getfield com/nd/android/backpacksystem/fragment/BackpackBaseFragment/mRootView Landroid/view/View;
getstatic com/nd/android/backpacksystem/R$id/btnHeaderLeft I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/android/backpacksystem/fragment/BackpackBaseFragment/mBtnHeaderLeft Landroid/widget/Button;
aload 0
getfield com/nd/android/backpacksystem/fragment/BackpackBaseFragment/mBtnHeaderLeft Landroid/widget/Button;
aload 0
getfield com/nd/android/backpacksystem/fragment/BackpackBaseFragment/onClickListener Landroid/view/View$OnClickListener;
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
aload 0
getfield com/nd/android/backpacksystem/fragment/BackpackBaseFragment/mRootView Landroid/view/View;
getstatic com/nd/android/backpacksystem/R$id/tvHeaderTitle I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/backpacksystem/fragment/BackpackBaseFragment/mTvHeaderTitle Landroid/widget/TextView;
return
.limit locals 1
.limit stack 3
.end method

.method public isGiftBoxState()Z
aload 0
getfield com/nd/android/backpacksystem/fragment/BackpackBaseFragment/mFragmentType I
sipush 258
if_icmpne L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 2
.end method

.method public isMainState()Z
aload 0
getfield com/nd/android/backpacksystem/fragment/BackpackBaseFragment/mFragmentType I
sipush 260
if_icmpne L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 2
.end method

.method public isMyGiftState()Z
aload 0
getfield com/nd/android/backpacksystem/fragment/BackpackBaseFragment/mFragmentType I
sipush 259
if_icmpne L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 2
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial android/support/v4/app/Fragment/onActivityCreated(Landroid/os/Bundle;)V
aload 0
aload 0
invokevirtual com/nd/android/backpacksystem/fragment/BackpackBaseFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
putfield com/nd/android/backpacksystem/fragment/BackpackBaseFragment/mActivity Landroid/app/Activity;
return
.limit locals 2
.limit stack 2
.end method

.method protected requestFaildialog(Ljava/lang/String;)V
new android/app/AlertDialog$Builder
dup
aload 0
getfield com/nd/android/backpacksystem/fragment/BackpackBaseFragment/mActivity Landroid/app/Activity;
invokespecial android/app/AlertDialog$Builder/<init>(Landroid/content/Context;)V
astore 2
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
aload 2
getstatic com/nd/android/backpacksystem/R$string/request_fail_try_again I
invokevirtual android/app/AlertDialog$Builder/setMessage(I)Landroid/app/AlertDialog$Builder;
pop
L1:
aload 2
aload 0
getfield com/nd/android/backpacksystem/fragment/BackpackBaseFragment/mActivity Landroid/app/Activity;
getstatic com/nd/android/backpacksystem/R$string/cancel_gift I
invokevirtual android/app/Activity/getString(I)Ljava/lang/String;
new com/nd/android/backpacksystem/fragment/BackpackBaseFragment$2
dup
aload 0
invokespecial com/nd/android/backpacksystem/fragment/BackpackBaseFragment$2/<init>(Lcom/nd/android/backpacksystem/fragment/BackpackBaseFragment;)V
invokevirtual android/app/AlertDialog$Builder/setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
pop
aload 2
aload 0
getfield com/nd/android/backpacksystem/fragment/BackpackBaseFragment/mActivity Landroid/app/Activity;
getstatic com/nd/android/backpacksystem/R$string/retry I
invokevirtual android/app/Activity/getString(I)Ljava/lang/String;
new com/nd/android/backpacksystem/fragment/BackpackBaseFragment$3
dup
aload 0
invokespecial com/nd/android/backpacksystem/fragment/BackpackBaseFragment$3/<init>(Lcom/nd/android/backpacksystem/fragment/BackpackBaseFragment;)V
invokevirtual android/app/AlertDialog$Builder/setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
pop
aload 2
invokevirtual android/app/AlertDialog$Builder/create()Landroid/app/AlertDialog;
invokevirtual android/app/AlertDialog/show()V
return
L0:
aload 2
aload 1
invokevirtual android/app/AlertDialog$Builder/setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
pop
goto L1
.limit locals 3
.limit stack 5
.end method

.method protected requestSuccess()V
return
.limit locals 1
.limit stack 0
.end method

.method public setFragmentType(I)V
aload 0
iload 1
putfield com/nd/android/backpacksystem/fragment/BackpackBaseFragment/mFragmentType I
return
.limit locals 2
.limit stack 2
.end method
