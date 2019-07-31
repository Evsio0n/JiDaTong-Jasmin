.bytecode 50.0
.class public synchronized com/nd/android/u/contact/activity/PhotoScreenUnitActivity
.super com/nd/android/u/contact/activity/base/PhotoScreenUnitHeaderActivity

.field public static final 'DEPART_ID' Ljava/lang/String; = "departid"

.field public static final 'NODE_NAME' Ljava/lang/String; = "nodename"

.field private static final 'TAG' Ljava/lang/String; = "PhotoScreenUnitActivity"

.field public static final 'UNIT_ID' Ljava/lang/String; = "unitid"

.field private 'ctx' Landroid/content/Context;

.field private 'mOrgFragment' Lcom/nd/android/u/contact/ui/fragment/OrganizationFragment;

.method public <init>()V
aload 0
invokespecial com/nd/android/u/contact/activity/base/PhotoScreenUnitHeaderActivity/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method protected final _onCreate(Landroid/os/Bundle;)Z
aload 0
aload 1
invokespecial com/nd/android/u/contact/activity/base/PhotoScreenUnitHeaderActivity/_onCreate(Landroid/os/Bundle;)Z
ifeq L0
iconst_1
invokestatic com/nd/android/u/contact/ui/transfer/OrgDataTransfer/setSearchDept(Z)V
aload 0
aload 0
putfield com/nd/android/u/contact/activity/PhotoScreenUnitActivity/ctx Landroid/content/Context;
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_91XY Lcom/product/android/business/ProductTypeDef$Product;
if_acmpne L1
aload 0
getstatic com/nd/android/u/contact/R$layout/xy_photoscreen_unit I
invokevirtual com/nd/android/u/contact/activity/PhotoScreenUnitActivity/setContentView(I)V
L2:
aload 0
aload 0
invokevirtual com/nd/android/u/contact/activity/PhotoScreenUnitActivity/getIntent()Landroid/content/Intent;
ldc "unitid"
aload 0
getfield com/nd/android/u/contact/activity/PhotoScreenUnitActivity/unitid I
invokevirtual android/content/Intent/getIntExtra(Ljava/lang/String;I)I
putfield com/nd/android/u/contact/activity/PhotoScreenUnitActivity/unitid I
aload 0
aload 0
invokevirtual com/nd/android/u/contact/activity/PhotoScreenUnitActivity/getIntent()Landroid/content/Intent;
ldc "departid"
aload 0
getfield com/nd/android/u/contact/activity/PhotoScreenUnitActivity/deptid I
invokevirtual android/content/Intent/getIntExtra(Ljava/lang/String;I)I
putfield com/nd/android/u/contact/activity/PhotoScreenUnitActivity/deptid I
aload 0
invokevirtual com/nd/android/u/contact/activity/PhotoScreenUnitActivity/initComponent()V
aload 0
invokevirtual com/nd/android/u/contact/activity/PhotoScreenUnitActivity/initEvent()V
aload 0
invokevirtual com/nd/android/u/contact/activity/PhotoScreenUnitActivity/initComponentValue()V
iconst_1
ireturn
L1:
aload 0
getstatic com/nd/android/u/contact/R$layout/photoscreen_unit I
invokevirtual com/nd/android/u/contact/activity/PhotoScreenUnitActivity/setContentView(I)V
goto L2
L0:
iconst_0
ireturn
.limit locals 2
.limit stack 4
.end method

.method protected final initComponent()V
aload 0
invokespecial com/nd/android/u/contact/activity/base/PhotoScreenUnitHeaderActivity/initComponent()V
aload 0
aload 0
invokevirtual com/nd/android/u/contact/activity/PhotoScreenUnitActivity/getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
getstatic com/nd/android/u/contact/R$id/fragment_org I
invokevirtual android/support/v4/app/FragmentManager/findFragmentById(I)Landroid/support/v4/app/Fragment;
checkcast com/nd/android/u/contact/ui/fragment/OrganizationFragment
putfield com/nd/android/u/contact/activity/PhotoScreenUnitActivity/mOrgFragment Lcom/nd/android/u/contact/ui/fragment/OrganizationFragment;
aload 0
getfield com/nd/android/u/contact/activity/PhotoScreenUnitActivity/mOrgFragment Lcom/nd/android/u/contact/ui/fragment/OrganizationFragment;
iconst_1
invokevirtual com/nd/android/u/contact/ui/fragment/OrganizationFragment/setSelectMode(Z)Lcom/nd/android/u/contact/ui/base/ContactBaseFragment2;
pop
return
.limit locals 1
.limit stack 3
.end method

.method protected initComponentValue()V
aload 0
invokespecial com/nd/android/u/contact/activity/base/PhotoScreenUnitHeaderActivity/initComponentValue()V
aload 0
getfield com/nd/android/u/contact/activity/PhotoScreenUnitActivity/titleText Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
aload 0
invokevirtual com/nd/android/u/contact/activity/PhotoScreenUnitActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/choose_department I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual com/nd/android/u/contact/activity/PhotoScreenUnitActivity/setActivityTitle(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/contact/activity/PhotoScreenUnitActivity/searchEdit Landroid/widget/EditText;
bipush 8
invokevirtual android/widget/EditText/setVisibility(I)V
return
.limit locals 1
.limit stack 3
.end method

.method protected final initEvent()V
aload 0
invokespecial com/nd/android/u/contact/activity/base/PhotoScreenUnitHeaderActivity/initEvent()V
return
.limit locals 1
.limit stack 1
.end method
