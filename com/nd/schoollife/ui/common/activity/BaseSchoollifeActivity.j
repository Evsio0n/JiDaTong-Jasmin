.bytecode 50.0
.class public synchronized abstract com/nd/schoollife/ui/common/activity/BaseSchoollifeActivity
.super com/nd/schoollife/ui/common/base/BaseFragmentActivity
.inner class inner com/nd/schoollife/ui/common/activity/BaseSchoollifeActivity$1
.inner class inner com/nd/schoollife/ui/common/activity/BaseSchoollifeActivity$2

.field private 'mTipsConfirmDialog' Lcom/nd/schoollife/ui/common/fragment/TipsDialog;

.field private 'mTipsSendingDialog' Lcom/nd/schoollife/ui/common/fragment/TipsDialog;

.method public <init>()V
aload 0
invokespecial com/nd/schoollife/ui/common/base/BaseFragmentActivity/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$000(Lcom/nd/schoollife/ui/common/activity/BaseSchoollifeActivity;)Lcom/nd/schoollife/ui/common/fragment/TipsDialog;
aload 0
getfield com/nd/schoollife/ui/common/activity/BaseSchoollifeActivity/mTipsSendingDialog Lcom/nd/schoollife/ui/common/fragment/TipsDialog;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/schoollife/ui/common/activity/BaseSchoollifeActivity;)Lcom/nd/schoollife/ui/common/fragment/TipsDialog;
aload 0
getfield com/nd/schoollife/ui/common/activity/BaseSchoollifeActivity/mTipsConfirmDialog Lcom/nd/schoollife/ui/common/fragment/TipsDialog;
areturn
.limit locals 1
.limit stack 1
.end method

.method public dismissConfirmDialog()V
.catch java/lang/Exception from L0 to L1 using L2
L0:
aload 0
invokevirtual com/nd/schoollife/ui/common/activity/BaseSchoollifeActivity/isFinishing()Z
ifne L1
aload 0
getfield com/nd/schoollife/ui/common/activity/BaseSchoollifeActivity/mTipsConfirmDialog Lcom/nd/schoollife/ui/common/fragment/TipsDialog;
ifnull L1
aload 0
invokevirtual com/nd/schoollife/ui/common/activity/BaseSchoollifeActivity/getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
invokevirtual android/support/v4/app/FragmentManager/beginTransaction()Landroid/support/v4/app/FragmentTransaction;
aload 0
getfield com/nd/schoollife/ui/common/activity/BaseSchoollifeActivity/mTipsConfirmDialog Lcom/nd/schoollife/ui/common/fragment/TipsDialog;
invokevirtual android/support/v4/app/FragmentTransaction/remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
invokevirtual android/support/v4/app/FragmentTransaction/commitAllowingStateLoss()I
pop
L1:
return
L2:
astore 1
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
return
.limit locals 2
.limit stack 2
.end method

.method public dismissSubmitingDialog()V
.catch java/lang/Exception from L0 to L1 using L2
L0:
aload 0
invokevirtual com/nd/schoollife/ui/common/activity/BaseSchoollifeActivity/isFinishing()Z
ifne L1
aload 0
getfield com/nd/schoollife/ui/common/activity/BaseSchoollifeActivity/mTipsSendingDialog Lcom/nd/schoollife/ui/common/fragment/TipsDialog;
ifnull L1
aload 0
invokevirtual com/nd/schoollife/ui/common/activity/BaseSchoollifeActivity/getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
invokevirtual android/support/v4/app/FragmentManager/beginTransaction()Landroid/support/v4/app/FragmentTransaction;
aload 0
getfield com/nd/schoollife/ui/common/activity/BaseSchoollifeActivity/mTipsSendingDialog Lcom/nd/schoollife/ui/common/fragment/TipsDialog;
invokevirtual android/support/v4/app/FragmentTransaction/remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
invokevirtual android/support/v4/app/FragmentTransaction/commitAllowingStateLoss()I
pop
L1:
return
L2:
astore 1
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
return
.limit locals 2
.limit stack 2
.end method

.method public showConfirmDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
aload 0
aload 1
aload 2
aload 3
aload 4
aload 5
aload 6
iconst_1
invokevirtual com/nd/schoollife/ui/common/activity/BaseSchoollifeActivity/showConfirmDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Z)V
return
.limit locals 7
.limit stack 8
.end method

.method public showConfirmDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Z)V
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
.catch java/lang/Exception from L4 to L5 using L2
.catch java/lang/Exception from L6 to L7 using L2
.catch java/lang/Exception from L8 to L9 using L2
.catch java/lang/Exception from L10 to L11 using L2
.catch java/lang/Exception from L12 to L13 using L2
.catch java/lang/Exception from L13 to L14 using L2
.catch java/lang/Exception from L14 to L15 using L2
.catch java/lang/Exception from L16 to L17 using L2
.catch java/lang/Exception from L18 to L19 using L2
.catch java/lang/Exception from L19 to L20 using L2
.catch java/lang/Exception from L21 to L22 using L2
.catch java/lang/Exception from L23 to L24 using L2
.catch java/lang/Exception from L24 to L25 using L2
.catch java/lang/Exception from L26 to L27 using L2
.catch java/lang/Exception from L27 to L28 using L2
L0:
aload 0
invokevirtual com/nd/schoollife/ui/common/activity/BaseSchoollifeActivity/isFinishing()Z
ifne L29
L1:
aload 5
ifnonnull L3
aload 6
ifnonnull L3
return
L3:
aload 0
invokevirtual com/nd/schoollife/ui/common/activity/BaseSchoollifeActivity/getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
invokevirtual android/support/v4/app/FragmentManager/beginTransaction()Landroid/support/v4/app/FragmentTransaction;
astore 10
aload 0
new com/nd/schoollife/ui/common/fragment/TipsDialog
dup
invokespecial com/nd/schoollife/ui/common/fragment/TipsDialog/<init>()V
putfield com/nd/schoollife/ui/common/activity/BaseSchoollifeActivity/mTipsConfirmDialog Lcom/nd/schoollife/ui/common/fragment/TipsDialog;
aload 0
getfield com/nd/schoollife/ui/common/activity/BaseSchoollifeActivity/mTipsConfirmDialog Lcom/nd/schoollife/ui/common/fragment/TipsDialog;
iload 7
invokevirtual com/nd/schoollife/ui/common/fragment/TipsDialog/setCancelable(Z)V
aload 0
getfield com/nd/schoollife/ui/common/activity/BaseSchoollifeActivity/mTipsConfirmDialog Lcom/nd/schoollife/ui/common/fragment/TipsDialog;
new com/nd/schoollife/ui/common/activity/BaseSchoollifeActivity$2
dup
aload 0
invokespecial com/nd/schoollife/ui/common/activity/BaseSchoollifeActivity$2/<init>(Lcom/nd/schoollife/ui/common/activity/BaseSchoollifeActivity;)V
invokevirtual com/nd/schoollife/ui/common/fragment/TipsDialog/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/schoollife/ui/common/activity/BaseSchoollifeActivity/mTipsConfirmDialog Lcom/nd/schoollife/ui/common/fragment/TipsDialog;
getstatic com/nd/schoollife/ui/common/fragment/TipsDialog$TYPE_SHOW/BTN_NO Lcom/nd/schoollife/ui/common/fragment/TipsDialog$TYPE_SHOW;
invokevirtual com/nd/schoollife/ui/common/fragment/TipsDialog/setShowType(Lcom/nd/schoollife/ui/common/fragment/TipsDialog$TYPE_SHOW;)V
aload 0
getfield com/nd/schoollife/ui/common/activity/BaseSchoollifeActivity/mTipsConfirmDialog Lcom/nd/schoollife/ui/common/fragment/TipsDialog;
aload 0
getfield com/nd/schoollife/ui/common/activity/BaseSchoollifeActivity/mCtx Landroid/content/Context;
getstatic com/nd/schoollife/R$string/confirm I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
invokevirtual com/nd/schoollife/ui/common/fragment/TipsDialog/setLeftBtnText(Ljava/lang/String;)V
aload 0
getstatic com/nd/schoollife/R$string/commiting_now I
invokevirtual com/nd/schoollife/ui/common/activity/BaseSchoollifeActivity/getString(I)Ljava/lang/String;
astore 8
aload 0
getstatic com/nd/schoollife/R$string/str_submit_dialog_title I
invokevirtual com/nd/schoollife/ui/common/activity/BaseSchoollifeActivity/getString(I)Ljava/lang/String;
astore 9
L4:
aload 2
invokestatic com/common/android/utils/StringUtils/isEmpty(Ljava/lang/String;)Z
ifne L30
L5:
aload 2
astore 8
L30:
aload 9
astore 2
L6:
aload 1
invokestatic com/common/android/utils/StringUtils/isEmpty(Ljava/lang/String;)Z
ifne L8
L7:
aload 1
astore 2
L8:
aload 0
getfield com/nd/schoollife/ui/common/activity/BaseSchoollifeActivity/mTipsConfirmDialog Lcom/nd/schoollife/ui/common/fragment/TipsDialog;
aload 2
invokevirtual com/nd/schoollife/ui/common/fragment/TipsDialog/setTitle(Ljava/lang/String;)V
aload 0
getfield com/nd/schoollife/ui/common/activity/BaseSchoollifeActivity/mTipsConfirmDialog Lcom/nd/schoollife/ui/common/fragment/TipsDialog;
aload 8
invokevirtual com/nd/schoollife/ui/common/fragment/TipsDialog/setContent(Ljava/lang/String;)V
L9:
aload 5
ifnull L31
aload 6
ifnonnull L31
L10:
aload 0
getfield com/nd/schoollife/ui/common/activity/BaseSchoollifeActivity/mTipsConfirmDialog Lcom/nd/schoollife/ui/common/fragment/TipsDialog;
getstatic com/nd/schoollife/ui/common/fragment/TipsDialog$TYPE_SHOW/BTN_ONE Lcom/nd/schoollife/ui/common/fragment/TipsDialog$TYPE_SHOW;
invokevirtual com/nd/schoollife/ui/common/fragment/TipsDialog/setShowType(Lcom/nd/schoollife/ui/common/fragment/TipsDialog$TYPE_SHOW;)V
aload 0
getfield com/nd/schoollife/ui/common/activity/BaseSchoollifeActivity/mTipsConfirmDialog Lcom/nd/schoollife/ui/common/fragment/TipsDialog;
aload 5
invokevirtual com/nd/schoollife/ui/common/fragment/TipsDialog/setOnClickListener(Landroid/view/View$OnClickListener;)V
L11:
aload 3
astore 1
L12:
aload 3
invokestatic com/common/android/utils/StringUtils/isEmpty(Ljava/lang/String;)Z
ifeq L13
aload 0
getfield com/nd/schoollife/ui/common/activity/BaseSchoollifeActivity/mCtx Landroid/content/Context;
getstatic com/nd/schoollife/R$string/confirm I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
astore 1
L13:
aload 0
getfield com/nd/schoollife/ui/common/activity/BaseSchoollifeActivity/mTipsConfirmDialog Lcom/nd/schoollife/ui/common/fragment/TipsDialog;
aload 1
invokevirtual com/nd/schoollife/ui/common/fragment/TipsDialog/setLeftBtnText(Ljava/lang/String;)V
L14:
aload 10
aload 0
getfield com/nd/schoollife/ui/common/activity/BaseSchoollifeActivity/mTipsConfirmDialog Lcom/nd/schoollife/ui/common/fragment/TipsDialog;
ldc "confrim"
invokevirtual android/support/v4/app/FragmentTransaction/add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;
invokevirtual android/support/v4/app/FragmentTransaction/commitAllowingStateLoss()I
pop
L15:
return
L2:
astore 1
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
return
L31:
aload 5
ifnonnull L32
aload 6
ifnull L32
L16:
aload 0
getfield com/nd/schoollife/ui/common/activity/BaseSchoollifeActivity/mTipsConfirmDialog Lcom/nd/schoollife/ui/common/fragment/TipsDialog;
getstatic com/nd/schoollife/ui/common/fragment/TipsDialog$TYPE_SHOW/BTN_ONE Lcom/nd/schoollife/ui/common/fragment/TipsDialog$TYPE_SHOW;
invokevirtual com/nd/schoollife/ui/common/fragment/TipsDialog/setShowType(Lcom/nd/schoollife/ui/common/fragment/TipsDialog$TYPE_SHOW;)V
aload 0
getfield com/nd/schoollife/ui/common/activity/BaseSchoollifeActivity/mTipsConfirmDialog Lcom/nd/schoollife/ui/common/fragment/TipsDialog;
aload 6
invokevirtual com/nd/schoollife/ui/common/fragment/TipsDialog/setOnClickListener(Landroid/view/View$OnClickListener;)V
L17:
aload 4
astore 1
L18:
aload 4
invokestatic com/common/android/utils/StringUtils/isEmpty(Ljava/lang/String;)Z
ifeq L19
aload 0
getfield com/nd/schoollife/ui/common/activity/BaseSchoollifeActivity/mCtx Landroid/content/Context;
getstatic com/nd/schoollife/R$string/cancel I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
astore 1
L19:
aload 0
getfield com/nd/schoollife/ui/common/activity/BaseSchoollifeActivity/mTipsConfirmDialog Lcom/nd/schoollife/ui/common/fragment/TipsDialog;
aload 1
invokevirtual com/nd/schoollife/ui/common/fragment/TipsDialog/setRightBtnText(Ljava/lang/String;)V
L20:
goto L14
L32:
aload 5
ifnull L14
aload 6
ifnull L14
L21:
aload 0
getfield com/nd/schoollife/ui/common/activity/BaseSchoollifeActivity/mTipsConfirmDialog Lcom/nd/schoollife/ui/common/fragment/TipsDialog;
getstatic com/nd/schoollife/ui/common/fragment/TipsDialog$TYPE_SHOW/BTN_TWO Lcom/nd/schoollife/ui/common/fragment/TipsDialog$TYPE_SHOW;
invokevirtual com/nd/schoollife/ui/common/fragment/TipsDialog/setShowType(Lcom/nd/schoollife/ui/common/fragment/TipsDialog$TYPE_SHOW;)V
aload 0
getfield com/nd/schoollife/ui/common/activity/BaseSchoollifeActivity/mTipsConfirmDialog Lcom/nd/schoollife/ui/common/fragment/TipsDialog;
aload 5
invokevirtual com/nd/schoollife/ui/common/fragment/TipsDialog/setLeftOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/schoollife/ui/common/activity/BaseSchoollifeActivity/mTipsConfirmDialog Lcom/nd/schoollife/ui/common/fragment/TipsDialog;
aload 6
invokevirtual com/nd/schoollife/ui/common/fragment/TipsDialog/setRightOnClickListener(Landroid/view/View$OnClickListener;)V
L22:
aload 3
astore 1
L23:
aload 3
invokestatic com/common/android/utils/StringUtils/isEmpty(Ljava/lang/String;)Z
ifeq L24
aload 0
getfield com/nd/schoollife/ui/common/activity/BaseSchoollifeActivity/mCtx Landroid/content/Context;
getstatic com/nd/schoollife/R$string/confirm I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
astore 1
L24:
aload 0
getfield com/nd/schoollife/ui/common/activity/BaseSchoollifeActivity/mTipsConfirmDialog Lcom/nd/schoollife/ui/common/fragment/TipsDialog;
aload 1
invokevirtual com/nd/schoollife/ui/common/fragment/TipsDialog/setLeftBtnText(Ljava/lang/String;)V
L25:
aload 4
astore 1
L26:
aload 4
invokestatic com/common/android/utils/StringUtils/isEmpty(Ljava/lang/String;)Z
ifeq L27
aload 0
getfield com/nd/schoollife/ui/common/activity/BaseSchoollifeActivity/mCtx Landroid/content/Context;
getstatic com/nd/schoollife/R$string/cancel I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
astore 1
L27:
aload 0
getfield com/nd/schoollife/ui/common/activity/BaseSchoollifeActivity/mTipsConfirmDialog Lcom/nd/schoollife/ui/common/fragment/TipsDialog;
aload 1
invokevirtual com/nd/schoollife/ui/common/fragment/TipsDialog/setRightBtnText(Ljava/lang/String;)V
L28:
goto L14
L29:
return
.limit locals 11
.limit stack 4
.end method

.method public showSubmitingDialog(Ljava/lang/String;Ljava/lang/String;)V
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
.catch java/lang/Exception from L4 to L5 using L2
.catch java/lang/Exception from L5 to L6 using L2
.catch java/lang/Exception from L7 to L8 using L2
.catch java/lang/Exception from L9 to L10 using L2
L0:
aload 0
invokevirtual com/nd/schoollife/ui/common/activity/BaseSchoollifeActivity/isFinishing()Z
ifeq L3
L1:
return
L3:
aload 0
invokevirtual com/nd/schoollife/ui/common/activity/BaseSchoollifeActivity/getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
invokevirtual android/support/v4/app/FragmentManager/beginTransaction()Landroid/support/v4/app/FragmentTransaction;
astore 5
aload 0
getfield com/nd/schoollife/ui/common/activity/BaseSchoollifeActivity/mTipsSendingDialog Lcom/nd/schoollife/ui/common/fragment/TipsDialog;
ifnonnull L4
aload 0
new com/nd/schoollife/ui/common/fragment/TipsDialog
dup
invokespecial com/nd/schoollife/ui/common/fragment/TipsDialog/<init>()V
putfield com/nd/schoollife/ui/common/activity/BaseSchoollifeActivity/mTipsSendingDialog Lcom/nd/schoollife/ui/common/fragment/TipsDialog;
aload 0
getfield com/nd/schoollife/ui/common/activity/BaseSchoollifeActivity/mTipsSendingDialog Lcom/nd/schoollife/ui/common/fragment/TipsDialog;
new com/nd/schoollife/ui/common/activity/BaseSchoollifeActivity$1
dup
aload 0
invokespecial com/nd/schoollife/ui/common/activity/BaseSchoollifeActivity$1/<init>(Lcom/nd/schoollife/ui/common/activity/BaseSchoollifeActivity;)V
invokevirtual com/nd/schoollife/ui/common/fragment/TipsDialog/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/schoollife/ui/common/activity/BaseSchoollifeActivity/mTipsSendingDialog Lcom/nd/schoollife/ui/common/fragment/TipsDialog;
getstatic com/nd/schoollife/ui/common/fragment/TipsDialog$TYPE_SHOW/BTN_NO Lcom/nd/schoollife/ui/common/fragment/TipsDialog$TYPE_SHOW;
invokevirtual com/nd/schoollife/ui/common/fragment/TipsDialog/setShowType(Lcom/nd/schoollife/ui/common/fragment/TipsDialog$TYPE_SHOW;)V
L4:
aload 0
getstatic com/nd/schoollife/R$string/commiting_now I
invokevirtual com/nd/schoollife/ui/common/activity/BaseSchoollifeActivity/getString(I)Ljava/lang/String;
astore 3
aload 0
getstatic com/nd/schoollife/R$string/str_submit_dialog_title I
invokevirtual com/nd/schoollife/ui/common/activity/BaseSchoollifeActivity/getString(I)Ljava/lang/String;
astore 4
L5:
aload 2
invokestatic com/common/android/utils/StringUtils/isEmpty(Ljava/lang/String;)Z
ifne L11
L6:
aload 2
astore 3
L11:
aload 4
astore 2
L7:
aload 1
invokestatic com/common/android/utils/StringUtils/isEmpty(Ljava/lang/String;)Z
ifne L9
L8:
aload 1
astore 2
L9:
aload 0
getfield com/nd/schoollife/ui/common/activity/BaseSchoollifeActivity/mTipsSendingDialog Lcom/nd/schoollife/ui/common/fragment/TipsDialog;
aload 2
invokevirtual com/nd/schoollife/ui/common/fragment/TipsDialog/setTitle(Ljava/lang/String;)V
aload 0
getfield com/nd/schoollife/ui/common/activity/BaseSchoollifeActivity/mTipsSendingDialog Lcom/nd/schoollife/ui/common/fragment/TipsDialog;
aload 3
invokevirtual com/nd/schoollife/ui/common/fragment/TipsDialog/setContent(Ljava/lang/String;)V
aload 5
aload 0
getfield com/nd/schoollife/ui/common/activity/BaseSchoollifeActivity/mTipsSendingDialog Lcom/nd/schoollife/ui/common/fragment/TipsDialog;
ldc "submiting"
invokevirtual android/support/v4/app/FragmentTransaction/add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;
invokevirtual android/support/v4/app/FragmentTransaction/commitAllowingStateLoss()I
pop
L10:
return
L2:
astore 1
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
return
.limit locals 6
.limit stack 4
.end method
