.bytecode 50.0
.class public synchronized com/nd/android/u/ui/activity/recent_contact/NoContactRecordFragment
.super android/support/v4/app/Fragment

.method public <init>()V
aload 0
invokespecial android/support/v4/app/Fragment/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static newInstance()Lcom/nd/android/u/ui/activity/recent_contact/NoContactRecordFragment;
new com/nd/android/u/ui/activity/recent_contact/NoContactRecordFragment
dup
invokespecial com/nd/android/u/ui/activity/recent_contact/NoContactRecordFragment/<init>()V
areturn
.limit locals 0
.limit stack 2
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
aload 1
getstatic com/nd/android/u/chat/R$layout/no_contact_record I
aload 2
iconst_0
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
astore 1
aload 1
getstatic com/nd/android/u/chat/R$id/iv I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
astore 2
getstatic com/product/android/business/config/Configuration/MYPRODUCT Ljava/lang/String;
ldc "jmu_android"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L0
getstatic com/nd/android/u/chat/R$drawable/jimei_logo_no_data_bg I
istore 4
L1:
aload 2
iload 4
invokevirtual android/widget/ImageView/setImageResource(I)V
aload 1
areturn
L0:
getstatic com/nd/android/u/chat/R$drawable/logo_no_data_bg I
istore 4
goto L1
.limit locals 5
.limit stack 4
.end method
