.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/activity/BindUnitActivity
.super android/support/v4/app/FragmentActivity

.field public static final 'IS_BIND' Ljava/lang/String; = "is_bind"

.field public static final 'PERSON_UNIT_INFO' Ljava/lang/String; = "person_units_info"

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
ldc_w 2130903078
invokevirtual com/nd/android/u/cloud/activity/BindUnitActivity/setContentView(I)V
aload 0
invokevirtual com/nd/android/u/cloud/activity/BindUnitActivity/getIntent()Landroid/content/Intent;
astore 1
aload 1
ifnonnull L0
aload 0
invokevirtual com/nd/android/u/cloud/activity/BindUnitActivity/finish()V
return
L0:
aload 1
ldc "person_units_info"
invokevirtual android/content/Intent/getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;
checkcast com/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonUnitsInfo
astore 2
aload 2
ifnull L1
aload 2
invokevirtual com/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonUnitsInfo/isObjectValid()Z
ifne L2
L1:
aload 0
invokevirtual com/nd/android/u/cloud/activity/BindUnitActivity/finish()V
return
L2:
aload 0
invokevirtual com/nd/android/u/cloud/activity/BindUnitActivity/getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
invokevirtual android/support/v4/app/FragmentManager/beginTransaction()Landroid/support/v4/app/FragmentTransaction;
astore 3
aload 3
ldc_w 2131624213
aload 2
aload 1
ldc "is_bind"
iconst_1
invokevirtual android/content/Intent/getBooleanExtra(Ljava/lang/String;Z)Z
invokestatic com/nd/android/u/cloud/activity/fragment/BindUnitFragment/newInstance(Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonUnitsInfo;Z)Lcom/nd/android/u/cloud/activity/fragment/BindUnitFragment;
invokevirtual android/support/v4/app/FragmentTransaction/add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
pop
aload 3
invokevirtual android/support/v4/app/FragmentTransaction/commit()I
pop
return
.limit locals 4
.limit stack 6
.end method
