.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/ui/base/JoinOrgActivityBase
.super com/product/android/ui/activity/HeaderActivity

.field public static final 'RESULT_FINISH' I = 1000


.field protected 'bIsRestore' Z

.field protected 'llInput' Landroid/widget/LinearLayout;

.field protected 'pBundle' Landroid/os/Bundle;

.field protected 'showFlag' Z

.method public <init>()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/<init>()V
aload 0
iconst_0
putfield com/nd/android/u/cloud/ui/base/JoinOrgActivityBase/bIsRestore Z
aload 0
iconst_0
putfield com/nd/android/u/cloud/ui/base/JoinOrgActivityBase/showFlag Z
return
.limit locals 1
.limit stack 2
.end method

.method protected getShowFlag(Ljava/lang/String;)Z
aload 0
getfield com/nd/android/u/cloud/ui/base/JoinOrgActivityBase/pBundle Landroid/os/Bundle;
ifnonnull L0
aload 0
invokevirtual com/nd/android/u/cloud/ui/base/JoinOrgActivityBase/getIntent()Landroid/content/Intent;
aload 1
iconst_0
invokevirtual android/content/Intent/getBooleanExtra(Ljava/lang/String;Z)Z
ireturn
L0:
aload 0
getfield com/nd/android/u/cloud/ui/base/JoinOrgActivityBase/pBundle Landroid/os/Bundle;
ldc "flag"
invokevirtual android/os/Bundle/getBoolean(Ljava/lang/String;)Z
ireturn
.limit locals 2
.limit stack 3
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
aload 0
iload 1
iload 2
aload 3
invokespecial com/product/android/ui/activity/HeaderActivity/onActivityResult(IILandroid/content/Intent;)V
iload 2
sipush 1000
if_icmpne L0
aload 0
iload 2
aload 0
invokevirtual com/nd/android/u/cloud/ui/base/JoinOrgActivityBase/getIntent()Landroid/content/Intent;
invokevirtual com/nd/android/u/cloud/ui/base/JoinOrgActivityBase/setResult(ILandroid/content/Intent;)V
aload 0
invokevirtual com/nd/android/u/cloud/ui/base/JoinOrgActivityBase/finish()V
L0:
return
.limit locals 4
.limit stack 4
.end method

.method protected onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/product/android/ui/activity/HeaderActivity/onCreate(Landroid/os/Bundle;)V
aload 1
ifnull L0
aload 0
iconst_1
putfield com/nd/android/u/cloud/ui/base/JoinOrgActivityBase/bIsRestore Z
aload 0
aload 1
putfield com/nd/android/u/cloud/ui/base/JoinOrgActivityBase/pBundle Landroid/os/Bundle;
L0:
return
.limit locals 2
.limit stack 2
.end method

.method public onResume()V
aload 0
getfield com/nd/android/u/cloud/ui/base/JoinOrgActivityBase/bIsRestore Z
ifeq L0
aload 0
getfield com/nd/android/u/cloud/ui/base/JoinOrgActivityBase/llInput Landroid/widget/LinearLayout;
invokevirtual android/widget/LinearLayout/getChildCount()I
istore 2
iconst_0
istore 1
L1:
iload 1
iload 2
if_icmpge L2
aload 0
getfield com/nd/android/u/cloud/ui/base/JoinOrgActivityBase/llInput Landroid/widget/LinearLayout;
iload 1
invokevirtual android/widget/LinearLayout/getChildAt(I)Landroid/view/View;
checkcast com/nd/android/u/cloud/view/widge/Item_Input
aload 0
getfield com/nd/android/u/cloud/ui/base/JoinOrgActivityBase/pBundle Landroid/os/Bundle;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/os/Bundle/getString(Ljava/lang/String;)Ljava/lang/String;
invokevirtual com/nd/android/u/cloud/view/widge/Item_Input/setValue(Ljava/lang/String;)V
iload 1
iconst_1
iadd
istore 1
goto L1
L2:
aload 0
iconst_0
putfield com/nd/android/u/cloud/ui/base/JoinOrgActivityBase/bIsRestore Z
L0:
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/onResume()V
return
.limit locals 3
.limit stack 4
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/product/android/ui/activity/HeaderActivity/onSaveInstanceState(Landroid/os/Bundle;)V
aload 0
getfield com/nd/android/u/cloud/ui/base/JoinOrgActivityBase/llInput Landroid/widget/LinearLayout;
invokevirtual android/widget/LinearLayout/getChildCount()I
istore 3
iconst_0
istore 2
L0:
iload 2
iload 3
if_icmpge L1
aload 0
getfield com/nd/android/u/cloud/ui/base/JoinOrgActivityBase/llInput Landroid/widget/LinearLayout;
iload 2
invokevirtual android/widget/LinearLayout/getChildAt(I)Landroid/view/View;
checkcast com/nd/android/u/cloud/view/widge/Item_Input
astore 4
aload 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
iload 2
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aload 4
invokevirtual com/nd/android/u/cloud/view/widge/Item_Input/getValue()Ljava/lang/String;
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
iload 2
iconst_1
iadd
istore 2
goto L0
L1:
aload 1
ldc "flag"
aload 0
getfield com/nd/android/u/cloud/ui/base/JoinOrgActivityBase/showFlag Z
invokevirtual android/os/Bundle/putBoolean(Ljava/lang/String;Z)V
return
.limit locals 5
.limit stack 3
.end method
