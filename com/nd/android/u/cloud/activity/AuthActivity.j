.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/activity/AuthActivity
.super android/support/v4/app/FragmentActivity

.field public static final 'PERSON_INFO' Ljava/lang/String; = "person_info"

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
ldc_w 2130903077
invokevirtual com/nd/android/u/cloud/activity/AuthActivity/setContentView(I)V
aload 0
invokevirtual com/nd/android/u/cloud/activity/AuthActivity/getIntent()Landroid/content/Intent;
astore 1
aload 1
ifnonnull L0
aload 0
invokevirtual com/nd/android/u/cloud/activity/AuthActivity/finish()V
return
L0:
aload 1
ldc "person_info"
invokevirtual android/content/Intent/getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;
checkcast com/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonInfo
astore 1
aload 1
ifnull L1
aload 1
invokevirtual com/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonInfo/isObjectValid()Z
ifne L2
L1:
aload 0
invokevirtual com/nd/android/u/cloud/activity/AuthActivity/finish()V
return
L2:
aload 0
invokevirtual com/nd/android/u/cloud/activity/AuthActivity/getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
invokevirtual android/support/v4/app/FragmentManager/beginTransaction()Landroid/support/v4/app/FragmentTransaction;
astore 2
aload 2
ldc_w 2131624213
aload 1
invokestatic com/nd/android/u/cloud/activity/fragment/AuthFragment/newInstance(Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonInfo;)Lcom/nd/android/u/cloud/activity/fragment/AuthFragment;
invokevirtual android/support/v4/app/FragmentTransaction/add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
pop
aload 2
invokevirtual android/support/v4/app/FragmentTransaction/commit()I
pop
return
.limit locals 3
.limit stack 3
.end method
