.bytecode 50.0
.class public synchronized com/nd/android/u/contact/fragment/XYSearchGroupByKeymFragment
.super com/nd/android/u/contact/fragment/XYSearchGroupBaseFragment
.implements android/view/View$OnClickListener
.implements android/text/TextWatcher

.method public <init>()V
aload 0
invokespecial com/nd/android/u/contact/fragment/XYSearchGroupBaseFragment/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method protected _onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
aload 1
getstatic com/nd/android/u/contact/R$layout/xy_search_group_by_key I
aload 2
iconst_0
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
areturn
.limit locals 4
.limit stack 4
.end method

.method protected checkKey(Ljava/lang/String;)Z
aload 1
ifnull L0
aload 1
ldc ""
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L1
L0:
iconst_1
ireturn
L1:
iconst_0
ireturn
.limit locals 2
.limit stack 2
.end method

.method protected getMessageWhat()I
sipush 1001
ireturn
.limit locals 1
.limit stack 1
.end method

.method protected showToast(Ljava/lang/String;)V
aload 1
ifnull L0
aload 1
ldc ""
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L1
L0:
aload 0
invokevirtual com/nd/android/u/contact/fragment/XYSearchGroupByKeymFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
getstatic com/nd/android/u/contact/R$string/please_enter_key I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
L1:
return
.limit locals 2
.limit stack 2
.end method
