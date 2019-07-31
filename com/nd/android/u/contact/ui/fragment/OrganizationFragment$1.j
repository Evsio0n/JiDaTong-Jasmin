.bytecode 50.0
.class synchronized com/nd/android/u/contact/ui/fragment/OrganizationFragment$1
.super android/os/Handler
.enclosing method com/nd/android/u/contact/ui/fragment/OrganizationFragment
.inner class inner com/nd/android/u/contact/ui/fragment/OrganizationFragment$1

.field final synthetic 'this$0' Lcom/nd/android/u/contact/ui/fragment/OrganizationFragment;

.method <init>(Lcom/nd/android/u/contact/ui/fragment/OrganizationFragment;)V
aload 0
aload 1
putfield com/nd/android/u/contact/ui/fragment/OrganizationFragment$1/this$0 Lcom/nd/android/u/contact/ui/fragment/OrganizationFragment;
aload 0
invokespecial android/os/Handler/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public handleMessage(Landroid/os/Message;)V
aload 0
aload 1
invokespecial android/os/Handler/handleMessage(Landroid/os/Message;)V
aload 1
getfield android/os/Message/what I
ifne L0
aload 0
getfield com/nd/android/u/contact/ui/fragment/OrganizationFragment$1/this$0 Lcom/nd/android/u/contact/ui/fragment/OrganizationFragment;
invokevirtual com/nd/android/u/contact/ui/fragment/OrganizationFragment/refreshAll()V
return
L0:
aload 0
getfield com/nd/android/u/contact/ui/fragment/OrganizationFragment$1/this$0 Lcom/nd/android/u/contact/ui/fragment/OrganizationFragment;
invokevirtual com/nd/android/u/contact/ui/fragment/OrganizationFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
getstatic com/nd/android/u/contact/R$string/org_refresh_fail I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
aload 0
getfield com/nd/android/u/contact/ui/fragment/OrganizationFragment$1/this$0 Lcom/nd/android/u/contact/ui/fragment/OrganizationFragment;
invokestatic com/nd/android/u/contact/ui/fragment/OrganizationFragment/access$000(Lcom/nd/android/u/contact/ui/fragment/OrganizationFragment;)V
return
.limit locals 2
.limit stack 2
.end method
