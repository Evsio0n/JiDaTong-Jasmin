.bytecode 50.0
.class public synchronized android/support/v4/app/DialogFragment
.super android/support/v4/app/Fragment
.implements android/content/DialogInterface$OnCancelListener
.implements android/content/DialogInterface$OnDismissListener

.field private static final 'SAVED_BACK_STACK_ID' Ljava/lang/String; = "android:backStackId"

.field private static final 'SAVED_CANCELABLE' Ljava/lang/String; = "android:cancelable"

.field private static final 'SAVED_DIALOG_STATE_TAG' Ljava/lang/String; = "android:savedDialogState"

.field private static final 'SAVED_SHOWS_DIALOG' Ljava/lang/String; = "android:showsDialog"

.field private static final 'SAVED_STYLE' Ljava/lang/String; = "android:style"

.field private static final 'SAVED_THEME' Ljava/lang/String; = "android:theme"

.field public static final 'STYLE_NORMAL' I = 0


.field public static final 'STYLE_NO_FRAME' I = 2


.field public static final 'STYLE_NO_INPUT' I = 3


.field public static final 'STYLE_NO_TITLE' I = 1


.field 'mBackStackId' I

.field 'mCancelable' Z

.field 'mDialog' Landroid/app/Dialog;

.field 'mDismissed' Z

.field 'mShownByMe' Z

.field 'mShowsDialog' Z

.field 'mStyle' I

.field 'mTheme' I

.field 'mViewDestroyed' Z

.method public <init>()V
aload 0
invokespecial android/support/v4/app/Fragment/<init>()V
aload 0
iconst_0
putfield android/support/v4/app/DialogFragment/mStyle I
aload 0
iconst_0
putfield android/support/v4/app/DialogFragment/mTheme I
aload 0
iconst_1
putfield android/support/v4/app/DialogFragment/mCancelable Z
aload 0
iconst_1
putfield android/support/v4/app/DialogFragment/mShowsDialog Z
aload 0
iconst_m1
putfield android/support/v4/app/DialogFragment/mBackStackId I
return
.limit locals 1
.limit stack 2
.end method

.method public dismiss()V
aload 0
iconst_0
invokevirtual android/support/v4/app/DialogFragment/dismissInternal(Z)V
return
.limit locals 1
.limit stack 2
.end method

.method public dismissAllowingStateLoss()V
aload 0
iconst_1
invokevirtual android/support/v4/app/DialogFragment/dismissInternal(Z)V
return
.limit locals 1
.limit stack 2
.end method

.method dismissInternal(Z)V
aload 0
getfield android/support/v4/app/DialogFragment/mDismissed Z
ifeq L0
return
L0:
aload 0
iconst_1
putfield android/support/v4/app/DialogFragment/mDismissed Z
aload 0
iconst_0
putfield android/support/v4/app/DialogFragment/mShownByMe Z
aload 0
getfield android/support/v4/app/DialogFragment/mDialog Landroid/app/Dialog;
ifnull L1
aload 0
getfield android/support/v4/app/DialogFragment/mDialog Landroid/app/Dialog;
invokevirtual android/app/Dialog/dismiss()V
aload 0
aconst_null
putfield android/support/v4/app/DialogFragment/mDialog Landroid/app/Dialog;
L1:
aload 0
iconst_1
putfield android/support/v4/app/DialogFragment/mViewDestroyed Z
aload 0
getfield android/support/v4/app/DialogFragment/mBackStackId I
iflt L2
aload 0
invokevirtual android/support/v4/app/DialogFragment/getFragmentManager()Landroid/support/v4/app/FragmentManager;
aload 0
getfield android/support/v4/app/DialogFragment/mBackStackId I
iconst_1
invokevirtual android/support/v4/app/FragmentManager/popBackStack(II)V
aload 0
iconst_m1
putfield android/support/v4/app/DialogFragment/mBackStackId I
return
L2:
aload 0
invokevirtual android/support/v4/app/DialogFragment/getFragmentManager()Landroid/support/v4/app/FragmentManager;
invokevirtual android/support/v4/app/FragmentManager/beginTransaction()Landroid/support/v4/app/FragmentTransaction;
astore 2
aload 2
aload 0
invokevirtual android/support/v4/app/FragmentTransaction/remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
pop
iload 1
ifeq L3
aload 2
invokevirtual android/support/v4/app/FragmentTransaction/commitAllowingStateLoss()I
pop
return
L3:
aload 2
invokevirtual android/support/v4/app/FragmentTransaction/commit()I
pop
return
.limit locals 3
.limit stack 3
.end method

.method public getDialog()Landroid/app/Dialog;
aload 0
getfield android/support/v4/app/DialogFragment/mDialog Landroid/app/Dialog;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
aload 0
getfield android/support/v4/app/DialogFragment/mShowsDialog Z
ifne L0
aload 0
aload 1
invokespecial android/support/v4/app/Fragment/getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
areturn
L0:
aload 0
aload 0
aload 1
invokevirtual android/support/v4/app/DialogFragment/onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
putfield android/support/v4/app/DialogFragment/mDialog Landroid/app/Dialog;
aload 0
getfield android/support/v4/app/DialogFragment/mStyle I
tableswitch 1
L1
L1
L2
default : L3
L3:
aload 0
getfield android/support/v4/app/DialogFragment/mDialog Landroid/app/Dialog;
ifnull L4
aload 0
getfield android/support/v4/app/DialogFragment/mDialog Landroid/app/Dialog;
invokevirtual android/app/Dialog/getContext()Landroid/content/Context;
ldc "layout_inflater"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/view/LayoutInflater
areturn
L2:
aload 0
getfield android/support/v4/app/DialogFragment/mDialog Landroid/app/Dialog;
invokevirtual android/app/Dialog/getWindow()Landroid/view/Window;
bipush 24
invokevirtual android/view/Window/addFlags(I)V
L1:
aload 0
getfield android/support/v4/app/DialogFragment/mDialog Landroid/app/Dialog;
iconst_1
invokevirtual android/app/Dialog/requestWindowFeature(I)Z
pop
goto L3
L4:
aload 0
getfield android/support/v4/app/DialogFragment/mActivity Landroid/support/v4/app/FragmentActivity;
ldc "layout_inflater"
invokevirtual android/support/v4/app/FragmentActivity/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/view/LayoutInflater
areturn
.limit locals 2
.limit stack 3
.end method

.method public getShowsDialog()Z
aload 0
getfield android/support/v4/app/DialogFragment/mShowsDialog Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getTheme()I
aload 0
getfield android/support/v4/app/DialogFragment/mTheme I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public isCancelable()Z
aload 0
getfield android/support/v4/app/DialogFragment/mCancelable Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial android/support/v4/app/Fragment/onActivityCreated(Landroid/os/Bundle;)V
aload 0
getfield android/support/v4/app/DialogFragment/mShowsDialog Z
ifne L0
L1:
return
L0:
aload 0
invokevirtual android/support/v4/app/DialogFragment/getView()Landroid/view/View;
astore 2
aload 2
ifnull L2
aload 2
invokevirtual android/view/View/getParent()Landroid/view/ViewParent;
ifnull L3
new java/lang/IllegalStateException
dup
ldc "DialogFragment can not be attached to a container view"
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
L3:
aload 0
getfield android/support/v4/app/DialogFragment/mDialog Landroid/app/Dialog;
aload 2
invokevirtual android/app/Dialog/setContentView(Landroid/view/View;)V
L2:
aload 0
getfield android/support/v4/app/DialogFragment/mDialog Landroid/app/Dialog;
aload 0
invokevirtual android/support/v4/app/DialogFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
invokevirtual android/app/Dialog/setOwnerActivity(Landroid/app/Activity;)V
aload 0
getfield android/support/v4/app/DialogFragment/mDialog Landroid/app/Dialog;
aload 0
getfield android/support/v4/app/DialogFragment/mCancelable Z
invokevirtual android/app/Dialog/setCancelable(Z)V
aload 0
getfield android/support/v4/app/DialogFragment/mDialog Landroid/app/Dialog;
aload 0
invokevirtual android/app/Dialog/setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V
aload 0
getfield android/support/v4/app/DialogFragment/mDialog Landroid/app/Dialog;
aload 0
invokevirtual android/app/Dialog/setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
aload 1
ifnull L1
aload 1
ldc "android:savedDialogState"
invokevirtual android/os/Bundle/getBundle(Ljava/lang/String;)Landroid/os/Bundle;
astore 1
aload 1
ifnull L1
aload 0
getfield android/support/v4/app/DialogFragment/mDialog Landroid/app/Dialog;
aload 1
invokevirtual android/app/Dialog/onRestoreInstanceState(Landroid/os/Bundle;)V
return
.limit locals 3
.limit stack 3
.end method

.method public onAttach(Landroid/app/Activity;)V
aload 0
aload 1
invokespecial android/support/v4/app/Fragment/onAttach(Landroid/app/Activity;)V
aload 0
getfield android/support/v4/app/DialogFragment/mShownByMe Z
ifne L0
aload 0
iconst_0
putfield android/support/v4/app/DialogFragment/mDismissed Z
L0:
return
.limit locals 2
.limit stack 2
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
return
.limit locals 2
.limit stack 0
.end method

.method public onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial android/support/v4/app/Fragment/onCreate(Landroid/os/Bundle;)V
aload 0
getfield android/support/v4/app/DialogFragment/mContainerId I
ifne L0
iconst_1
istore 2
L1:
aload 0
iload 2
putfield android/support/v4/app/DialogFragment/mShowsDialog Z
aload 1
ifnull L2
aload 0
aload 1
ldc "android:style"
iconst_0
invokevirtual android/os/Bundle/getInt(Ljava/lang/String;I)I
putfield android/support/v4/app/DialogFragment/mStyle I
aload 0
aload 1
ldc "android:theme"
iconst_0
invokevirtual android/os/Bundle/getInt(Ljava/lang/String;I)I
putfield android/support/v4/app/DialogFragment/mTheme I
aload 0
aload 1
ldc "android:cancelable"
iconst_1
invokevirtual android/os/Bundle/getBoolean(Ljava/lang/String;Z)Z
putfield android/support/v4/app/DialogFragment/mCancelable Z
aload 0
aload 1
ldc "android:showsDialog"
aload 0
getfield android/support/v4/app/DialogFragment/mShowsDialog Z
invokevirtual android/os/Bundle/getBoolean(Ljava/lang/String;Z)Z
putfield android/support/v4/app/DialogFragment/mShowsDialog Z
aload 0
aload 1
ldc "android:backStackId"
iconst_m1
invokevirtual android/os/Bundle/getInt(Ljava/lang/String;I)I
putfield android/support/v4/app/DialogFragment/mBackStackId I
L2:
return
L0:
iconst_0
istore 2
goto L1
.limit locals 3
.limit stack 4
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
new android/app/Dialog
dup
aload 0
invokevirtual android/support/v4/app/DialogFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
aload 0
invokevirtual android/support/v4/app/DialogFragment/getTheme()I
invokespecial android/app/Dialog/<init>(Landroid/content/Context;I)V
areturn
.limit locals 2
.limit stack 4
.end method

.method public onDestroyView()V
aload 0
invokespecial android/support/v4/app/Fragment/onDestroyView()V
aload 0
getfield android/support/v4/app/DialogFragment/mDialog Landroid/app/Dialog;
ifnull L0
aload 0
iconst_1
putfield android/support/v4/app/DialogFragment/mViewDestroyed Z
aload 0
getfield android/support/v4/app/DialogFragment/mDialog Landroid/app/Dialog;
invokevirtual android/app/Dialog/dismiss()V
aload 0
aconst_null
putfield android/support/v4/app/DialogFragment/mDialog Landroid/app/Dialog;
L0:
return
.limit locals 1
.limit stack 2
.end method

.method public onDetach()V
aload 0
invokespecial android/support/v4/app/Fragment/onDetach()V
aload 0
getfield android/support/v4/app/DialogFragment/mShownByMe Z
ifne L0
aload 0
getfield android/support/v4/app/DialogFragment/mDismissed Z
ifne L0
aload 0
iconst_1
putfield android/support/v4/app/DialogFragment/mDismissed Z
L0:
return
.limit locals 1
.limit stack 2
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
aload 0
getfield android/support/v4/app/DialogFragment/mViewDestroyed Z
ifne L0
aload 0
iconst_1
invokevirtual android/support/v4/app/DialogFragment/dismissInternal(Z)V
L0:
return
.limit locals 2
.limit stack 2
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial android/support/v4/app/Fragment/onSaveInstanceState(Landroid/os/Bundle;)V
aload 0
getfield android/support/v4/app/DialogFragment/mDialog Landroid/app/Dialog;
ifnull L0
aload 0
getfield android/support/v4/app/DialogFragment/mDialog Landroid/app/Dialog;
invokevirtual android/app/Dialog/onSaveInstanceState()Landroid/os/Bundle;
astore 2
aload 2
ifnull L0
aload 1
ldc "android:savedDialogState"
aload 2
invokevirtual android/os/Bundle/putBundle(Ljava/lang/String;Landroid/os/Bundle;)V
L0:
aload 0
getfield android/support/v4/app/DialogFragment/mStyle I
ifeq L1
aload 1
ldc "android:style"
aload 0
getfield android/support/v4/app/DialogFragment/mStyle I
invokevirtual android/os/Bundle/putInt(Ljava/lang/String;I)V
L1:
aload 0
getfield android/support/v4/app/DialogFragment/mTheme I
ifeq L2
aload 1
ldc "android:theme"
aload 0
getfield android/support/v4/app/DialogFragment/mTheme I
invokevirtual android/os/Bundle/putInt(Ljava/lang/String;I)V
L2:
aload 0
getfield android/support/v4/app/DialogFragment/mCancelable Z
ifne L3
aload 1
ldc "android:cancelable"
aload 0
getfield android/support/v4/app/DialogFragment/mCancelable Z
invokevirtual android/os/Bundle/putBoolean(Ljava/lang/String;Z)V
L3:
aload 0
getfield android/support/v4/app/DialogFragment/mShowsDialog Z
ifne L4
aload 1
ldc "android:showsDialog"
aload 0
getfield android/support/v4/app/DialogFragment/mShowsDialog Z
invokevirtual android/os/Bundle/putBoolean(Ljava/lang/String;Z)V
L4:
aload 0
getfield android/support/v4/app/DialogFragment/mBackStackId I
iconst_m1
if_icmpeq L5
aload 1
ldc "android:backStackId"
aload 0
getfield android/support/v4/app/DialogFragment/mBackStackId I
invokevirtual android/os/Bundle/putInt(Ljava/lang/String;I)V
L5:
return
.limit locals 3
.limit stack 3
.end method

.method public onStart()V
aload 0
invokespecial android/support/v4/app/Fragment/onStart()V
aload 0
getfield android/support/v4/app/DialogFragment/mDialog Landroid/app/Dialog;
ifnull L0
aload 0
iconst_0
putfield android/support/v4/app/DialogFragment/mViewDestroyed Z
aload 0
getfield android/support/v4/app/DialogFragment/mDialog Landroid/app/Dialog;
invokevirtual android/app/Dialog/show()V
L0:
return
.limit locals 1
.limit stack 2
.end method

.method public onStop()V
aload 0
invokespecial android/support/v4/app/Fragment/onStop()V
aload 0
getfield android/support/v4/app/DialogFragment/mDialog Landroid/app/Dialog;
ifnull L0
aload 0
getfield android/support/v4/app/DialogFragment/mDialog Landroid/app/Dialog;
invokevirtual android/app/Dialog/hide()V
L0:
return
.limit locals 1
.limit stack 1
.end method

.method public setCancelable(Z)V
aload 0
iload 1
putfield android/support/v4/app/DialogFragment/mCancelable Z
aload 0
getfield android/support/v4/app/DialogFragment/mDialog Landroid/app/Dialog;
ifnull L0
aload 0
getfield android/support/v4/app/DialogFragment/mDialog Landroid/app/Dialog;
iload 1
invokevirtual android/app/Dialog/setCancelable(Z)V
L0:
return
.limit locals 2
.limit stack 2
.end method

.method public setShowsDialog(Z)V
aload 0
iload 1
putfield android/support/v4/app/DialogFragment/mShowsDialog Z
return
.limit locals 2
.limit stack 2
.end method

.method public setStyle(II)V
aload 0
iload 1
putfield android/support/v4/app/DialogFragment/mStyle I
aload 0
getfield android/support/v4/app/DialogFragment/mStyle I
iconst_2
if_icmpeq L0
aload 0
getfield android/support/v4/app/DialogFragment/mStyle I
iconst_3
if_icmpne L1
L0:
aload 0
ldc_w 16973913
putfield android/support/v4/app/DialogFragment/mTheme I
L1:
iload 2
ifeq L2
aload 0
iload 2
putfield android/support/v4/app/DialogFragment/mTheme I
L2:
return
.limit locals 3
.limit stack 2
.end method

.method public show(Landroid/support/v4/app/FragmentTransaction;Ljava/lang/String;)I
aload 0
iconst_0
putfield android/support/v4/app/DialogFragment/mDismissed Z
aload 0
iconst_1
putfield android/support/v4/app/DialogFragment/mShownByMe Z
aload 1
aload 0
aload 2
invokevirtual android/support/v4/app/FragmentTransaction/add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;
pop
aload 0
iconst_0
putfield android/support/v4/app/DialogFragment/mViewDestroyed Z
aload 0
aload 1
invokevirtual android/support/v4/app/FragmentTransaction/commit()I
putfield android/support/v4/app/DialogFragment/mBackStackId I
aload 0
getfield android/support/v4/app/DialogFragment/mBackStackId I
ireturn
.limit locals 3
.limit stack 3
.end method

.method public show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V
aload 0
iconst_0
putfield android/support/v4/app/DialogFragment/mDismissed Z
aload 0
iconst_1
putfield android/support/v4/app/DialogFragment/mShownByMe Z
aload 1
invokevirtual android/support/v4/app/FragmentManager/beginTransaction()Landroid/support/v4/app/FragmentTransaction;
astore 1
aload 1
aload 0
aload 2
invokevirtual android/support/v4/app/FragmentTransaction/add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;
pop
aload 1
invokevirtual android/support/v4/app/FragmentTransaction/commit()I
pop
return
.limit locals 3
.limit stack 3
.end method
