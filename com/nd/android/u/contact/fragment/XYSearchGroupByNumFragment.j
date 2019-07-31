.bytecode 50.0
.class public synchronized com/nd/android/u/contact/fragment/XYSearchGroupByNumFragment
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

.method public static isNumeric(Ljava/lang/String;)Z
aload 0
invokevirtual java/lang/String/length()I
istore 1
L0:
iload 1
iconst_1
isub
istore 1
iload 1
iflt L1
aload 0
iload 1
invokevirtual java/lang/String/charAt(I)C
istore 2
iload 2
bipush 48
if_icmplt L2
iload 2
bipush 57
if_icmple L0
L2:
iconst_0
ireturn
L1:
iconst_1
ireturn
.limit locals 3
.limit stack 2
.end method

.method protected _onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
aload 1
getstatic com/nd/android/u/contact/R$layout/xy_search_group_by_number I
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
aload 1
invokestatic com/nd/android/u/contact/fragment/XYSearchGroupByNumFragment/isNumeric(Ljava/lang/String;)Z
ifeq L0
iconst_0
ireturn
.limit locals 2
.limit stack 2
.end method

.method protected getMessageWhat()I
sipush 1000
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
invokevirtual com/nd/android/u/contact/fragment/XYSearchGroupByNumFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
getstatic com/nd/android/u/contact/R$string/please_enter_group_name I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
L2:
return
L1:
aload 1
invokestatic com/nd/android/u/contact/fragment/XYSearchGroupByNumFragment/isNumeric(Ljava/lang/String;)Z
ifne L2
aload 0
invokevirtual com/nd/android/u/contact/fragment/XYSearchGroupByNumFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
getstatic com/nd/android/u/contact/R$string/gourpid_must_number I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
return
.limit locals 2
.limit stack 2
.end method
