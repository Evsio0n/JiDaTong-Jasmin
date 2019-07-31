.bytecode 50.0
.class public synchronized com/nd/android/u/publicNumber/ui/activity/PspInfoNoResultFragment
.super android/support/v4/app/Fragment

.method public <init>()V
aload 0
invokespecial android/support/v4/app/Fragment/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static getInstance()Lcom/nd/android/u/publicNumber/ui/activity/PspInfoNoResultFragment;
new com/nd/android/u/publicNumber/ui/activity/PspInfoNoResultFragment
dup
invokespecial com/nd/android/u/publicNumber/ui/activity/PspInfoNoResultFragment/<init>()V
astore 0
aload 0
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
invokevirtual com/nd/android/u/publicNumber/ui/activity/PspInfoNoResultFragment/setArguments(Landroid/os/Bundle;)V
aload 0
areturn
.limit locals 1
.limit stack 3
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
aload 1
getstatic com/nd/android/u/chat/R$layout/no_pspinfo_record I
aload 2
iconst_0
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
astore 1
aload 1
getstatic com/nd/android/u/chat/R$id/iv I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
aload 0
invokevirtual com/nd/android/u/publicNumber/ui/activity/PspInfoNoResultFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
getstatic com/nd/android/u/chat/R$string/psp_no_record_title I
invokevirtual android/support/v4/app/FragmentActivity/getString(I)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 1
areturn
.limit locals 4
.limit stack 4
.end method
