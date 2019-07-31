.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/activity/CheckIDActivity
.super android/support/v4/app/FragmentActivity

.method public <init>()V
aload 0
invokespecial android/support/v4/app/FragmentActivity/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial android/support/v4/app/FragmentActivity/onCreate(Landroid/os/Bundle;)V
aload 0
ldc_w 2130903080
invokevirtual com/nd/android/u/cloud/activity/CheckIDActivity/setContentView(I)V
aload 0
invokevirtual com/nd/android/u/cloud/activity/CheckIDActivity/getIntent()Landroid/content/Intent;
ifnonnull L0
aload 0
invokevirtual com/nd/android/u/cloud/activity/CheckIDActivity/finish()V
return
L0:
aload 0
invokevirtual com/nd/android/u/cloud/activity/CheckIDActivity/getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
invokevirtual android/support/v4/app/FragmentManager/beginTransaction()Landroid/support/v4/app/FragmentTransaction;
astore 1
aload 1
ldc_w 2131624213
invokestatic com/nd/android/u/cloud/activity/fragment/CheckIDFragment/newInstance()Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment;
invokevirtual android/support/v4/app/FragmentTransaction/add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
pop
aload 1
invokevirtual android/support/v4/app/FragmentTransaction/commit()I
pop
return
.limit locals 2
.limit stack 3
.end method
