.bytecode 50.0
.class public synchronized com/nd/schoollife/ui/common/fragment/LoadingDialog
.super android/support/v4/app/DialogFragment

.field private 'layout' Landroid/view/View;

.method public <init>()V
aload 0
invokespecial android/support/v4/app/DialogFragment/<init>()V
aload 0
aconst_null
putfield com/nd/schoollife/ui/common/fragment/LoadingDialog/layout Landroid/view/View;
return
.limit locals 1
.limit stack 2
.end method

.method public onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial android/support/v4/app/DialogFragment/onCreate(Landroid/os/Bundle;)V
aload 0
iconst_2
iconst_0
invokevirtual com/nd/schoollife/ui/common/fragment/LoadingDialog/setStyle(II)V
return
.limit locals 2
.limit stack 3
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
aload 0
aload 1
invokespecial android/support/v4/app/DialogFragment/onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
areturn
.limit locals 2
.limit stack 2
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
aload 0
getfield com/nd/schoollife/ui/common/fragment/LoadingDialog/layout Landroid/view/View;
ifnonnull L0
aload 0
aload 1
getstatic com/nd/schoollife/R$layout/common_dialog_loading I
aload 2
iconst_0
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
putfield com/nd/schoollife/ui/common/fragment/LoadingDialog/layout Landroid/view/View;
aload 0
invokevirtual com/nd/schoollife/ui/common/fragment/LoadingDialog/getActivity()Landroid/support/v4/app/FragmentActivity;
invokevirtual android/support/v4/app/FragmentActivity/getWindow()Landroid/view/Window;
invokevirtual android/view/Window/getAttributes()Landroid/view/WindowManager$LayoutParams;
bipush 17
putfield android/view/WindowManager$LayoutParams/gravity I
L0:
aload 0
getfield com/nd/schoollife/ui/common/fragment/LoadingDialog/layout Landroid/view/View;
invokevirtual android/view/View/getParent()Landroid/view/ViewParent;
checkcast android/view/ViewGroup
astore 1
aload 1
ifnull L1
aload 1
aload 0
getfield com/nd/schoollife/ui/common/fragment/LoadingDialog/layout Landroid/view/View;
invokevirtual android/view/ViewGroup/removeView(Landroid/view/View;)V
L1:
aload 0
getfield com/nd/schoollife/ui/common/fragment/LoadingDialog/layout Landroid/view/View;
areturn
.limit locals 4
.limit stack 5
.end method
