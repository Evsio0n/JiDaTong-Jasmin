.bytecode 50.0
.class public synchronized com/nd/android/u/ui/activity/recent_contact/OfflineFragment
.super android/support/v4/app/Fragment
.inner class inner com/nd/android/u/ui/activity/recent_contact/OfflineFragment$1

.method public <init>()V
aload 0
invokespecial android/support/v4/app/Fragment/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static newInstance()Lcom/nd/android/u/ui/activity/recent_contact/OfflineFragment;
new com/nd/android/u/ui/activity/recent_contact/OfflineFragment
dup
invokespecial com/nd/android/u/ui/activity/recent_contact/OfflineFragment/<init>()V
areturn
.limit locals 0
.limit stack 2
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial android/support/v4/app/Fragment/onActivityCreated(Landroid/os/Bundle;)V
aload 0
invokevirtual com/nd/android/u/ui/activity/recent_contact/OfflineFragment/getView()Landroid/view/View;
new com/nd/android/u/ui/activity/recent_contact/OfflineFragment$1
dup
aload 0
invokespecial com/nd/android/u/ui/activity/recent_contact/OfflineFragment$1/<init>(Lcom/nd/android/u/ui/activity/recent_contact/OfflineFragment;)V
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
.limit locals 2
.limit stack 4
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
aload 1
getstatic com/nd/android/u/chat/R$layout/net_warn_item I
aload 2
iconst_0
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
areturn
.limit locals 4
.limit stack 4
.end method
