.bytecode 50.0
.class public final synchronized com/nd/schoollife/common/utils/ui/DialogUtil
.super java/lang/Object
.inner class static final inner com/nd/schoollife/common/utils/ui/DialogUtil$1
.inner class static final inner com/nd/schoollife/common/utils/ui/DialogUtil$2

.field public static final 'TAG' Ljava/lang/String;

.method static <clinit>()V
ldc com/nd/schoollife/common/utils/ui/DialogUtil
invokevirtual java/lang/Class/getSimpleName()Ljava/lang/String;
putstatic com/nd/schoollife/common/utils/ui/DialogUtil/TAG Ljava/lang/String;
return
.limit locals 0
.limit stack 1
.end method

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static createSpinnerProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/app/ProgressDialog;
new android/app/ProgressDialog
dup
aload 0
invokespecial android/app/ProgressDialog/<init>(Landroid/content/Context;)V
astore 0
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L0
aload 0
aload 1
invokevirtual android/app/ProgressDialog/setTitle(Ljava/lang/CharSequence;)V
L0:
aload 0
aload 2
invokevirtual android/app/ProgressDialog/setMessage(Ljava/lang/CharSequence;)V
aload 0
iconst_1
invokevirtual android/app/ProgressDialog/setIndeterminate(Z)V
aload 0
iconst_0
invokevirtual android/app/ProgressDialog/setProgressStyle(I)V
aload 0
iconst_0
invokevirtual android/app/ProgressDialog/setCancelable(Z)V
aload 0
areturn
.limit locals 3
.limit stack 3
.end method

.method static getLoadingDialog(Landroid/content/Context;)Landroid/app/AlertDialog;
new com/nd/schoollife/ui/common/view/CommonLoadingDialog
dup
aload 0
invokespecial com/nd/schoollife/ui/common/view/CommonLoadingDialog/<init>(Landroid/content/Context;)V
astore 0
aload 0
iconst_1
invokevirtual android/app/AlertDialog/setCancelable(Z)V
aload 0
iconst_0
invokevirtual android/app/AlertDialog/setCanceledOnTouchOutside(Z)V
aload 0
areturn
.limit locals 1
.limit stack 3
.end method

.method public static getLoadingDialogForBaseActivity(Landroid/content/Context;)Landroid/app/AlertDialog;
new com/nd/schoollife/ui/common/view/CommonLoadingDialog
dup
aload 0
getstatic com/nd/schoollife/R$style/sty_common_loading_dialog I
invokespecial com/nd/schoollife/ui/common/view/CommonLoadingDialog/<init>(Landroid/content/Context;I)V
astore 0
aload 0
new com/nd/schoollife/common/utils/ui/DialogUtil$2
dup
invokespecial com/nd/schoollife/common/utils/ui/DialogUtil$2/<init>()V
invokevirtual android/app/AlertDialog/setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V
aload 0
iconst_1
invokevirtual android/app/AlertDialog/setCancelable(Z)V
aload 0
iconst_0
invokevirtual android/app/AlertDialog/setCanceledOnTouchOutside(Z)V
aload 0
areturn
.limit locals 1
.limit stack 4
.end method

.method public static showAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;
aload 0
aload 1
aload 2
iload 3
aload 4
aload 5
invokestatic com/nd/schoollife/common/utils/ui/DialogUtil/showConfirmDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;
areturn
.limit locals 6
.limit stack 6
.end method

.method public static showAlertDialogWithoutBtnEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;
aload 0
aload 1
aload 2
iconst_1
new com/nd/schoollife/common/utils/ui/DialogUtil$1
dup
invokespecial com/nd/schoollife/common/utils/ui/DialogUtil$1/<init>()V
aconst_null
invokestatic com/nd/schoollife/common/utils/ui/DialogUtil/showConfirmDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;
areturn
.limit locals 3
.limit stack 6
.end method

.method public static showConfirmDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;
new com/nd/schoollife/ui/common/view/MyDialog
dup
aload 0
getstatic com/nd/schoollife/R$layout/my_dialog I
invokespecial com/nd/schoollife/ui/common/view/MyDialog/<init>(Landroid/content/Context;I)V
astore 0
aload 0
invokevirtual com/nd/schoollife/ui/common/view/MyDialog/getCustomerView()Landroid/widget/LinearLayout;
getstatic com/nd/schoollife/R$id/alertTitle I
invokevirtual android/widget/LinearLayout/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
aload 1
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
invokevirtual com/nd/schoollife/ui/common/view/MyDialog/getCustomerView()Landroid/widget/LinearLayout;
getstatic com/nd/schoollife/R$id/message I
invokevirtual android/widget/LinearLayout/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
aload 2
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 4
ifnull L0
aload 0
ldc "\u786e\u5b9a"
aload 4
invokevirtual com/nd/schoollife/ui/common/view/MyDialog/setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
L0:
aload 5
ifnull L1
aload 0
ldc "\u53d6\u6d88"
aload 5
invokevirtual com/nd/schoollife/ui/common/view/MyDialog/setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
L2:
aload 0
iload 3
invokevirtual com/nd/schoollife/ui/common/view/MyDialog/setCancelable(Z)V
aload 0
invokevirtual com/nd/schoollife/ui/common/view/MyDialog/isShowing()Z
ifne L3
aload 0
invokevirtual com/nd/schoollife/ui/common/view/MyDialog/show()V
L3:
aload 0
areturn
L1:
aload 0
bipush 8
invokevirtual com/nd/schoollife/ui/common/view/MyDialog/setCancelBtnVisable(I)V
goto L2
.limit locals 6
.limit stack 4
.end method

.method static showCustomerViewDialog(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;ZLandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;
new com/nd/schoollife/ui/common/view/MyDialog
dup
aload 0
getstatic com/nd/schoollife/R$layout/my_dialog I
invokespecial com/nd/schoollife/ui/common/view/MyDialog/<init>(Landroid/content/Context;I)V
astore 0
aload 0
invokevirtual com/nd/schoollife/ui/common/view/MyDialog/getCustomerView()Landroid/widget/LinearLayout;
getstatic com/nd/schoollife/R$id/alertTitle I
invokevirtual android/widget/LinearLayout/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
aload 1
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
invokevirtual com/nd/schoollife/ui/common/view/MyDialog/getCustomerView()Landroid/widget/LinearLayout;
getstatic com/nd/schoollife/R$id/message I
invokevirtual android/widget/LinearLayout/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
astore 1
aload 2
ifnull L0
aload 0
aload 2
invokevirtual com/nd/schoollife/ui/common/view/MyDialog/addContentView(Landroid/view/View;)V
aload 1
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
L0:
aload 4
ifnull L1
aload 0
ldc "\u786e\u5b9a"
aload 4
invokevirtual com/nd/schoollife/ui/common/view/MyDialog/setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
L1:
aload 5
ifnull L2
aload 0
ldc "\u53d6\u6d88"
aload 5
invokevirtual com/nd/schoollife/ui/common/view/MyDialog/setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
L2:
iload 3
ifne L3
aload 0
iconst_0
invokevirtual com/nd/schoollife/ui/common/view/MyDialog/setCancelable(Z)V
L3:
aload 0
invokevirtual com/nd/schoollife/ui/common/view/MyDialog/isShowing()Z
ifne L4
aload 0
invokevirtual com/nd/schoollife/ui/common/view/MyDialog/show()V
L4:
aload 0
areturn
.limit locals 6
.limit stack 4
.end method

.method static showSingleChoiseDialog(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;ZLandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;
new android/app/AlertDialog$Builder
dup
aload 0
invokespecial android/app/AlertDialog$Builder/<init>(Landroid/content/Context;)V
aload 1
invokevirtual android/app/AlertDialog$Builder/setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
aload 2
iconst_0
aload 4
invokevirtual android/app/AlertDialog$Builder/setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
astore 0
aload 0
ldc "\u786e\u5b9a"
aload 4
invokevirtual android/app/AlertDialog$Builder/setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
pop
aload 0
invokevirtual android/app/AlertDialog$Builder/show()Landroid/app/AlertDialog;
areturn
.limit locals 6
.limit stack 4
.end method

.method public static showSpinnerProgressDialog_(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/app/ProgressDialog;
new android/app/ProgressDialog
dup
aload 0
invokespecial android/app/ProgressDialog/<init>(Landroid/content/Context;)V
astore 0
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L0
aload 0
aload 1
invokevirtual android/app/ProgressDialog/setTitle(Ljava/lang/CharSequence;)V
L0:
aload 2
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L1
aload 0
aload 2
invokevirtual android/app/ProgressDialog/setMessage(Ljava/lang/CharSequence;)V
L1:
aload 0
iconst_1
invokevirtual android/app/ProgressDialog/setIndeterminate(Z)V
aload 0
iconst_0
invokevirtual android/app/ProgressDialog/setProgressStyle(I)V
aload 0
areturn
.limit locals 3
.limit stack 3
.end method
