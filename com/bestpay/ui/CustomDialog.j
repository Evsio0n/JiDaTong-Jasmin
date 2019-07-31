.bytecode 50.0
.class public synchronized com/bestpay/ui/CustomDialog
.super android/app/Dialog
.inner class inner com/bestpay/ui/CustomDialog$1
.inner class inner com/bestpay/ui/CustomDialog$2
.inner class public static abstract interface ClickListener inner com/bestpay/ui/CustomDialog$ClickListener outer com/bestpay/ui/CustomDialog

.field private 'mCancelTv' Landroid/widget/TextView;

.field public 'mClickLister' Lcom/bestpay/ui/CustomDialog$ClickListener;

.field private 'mConfirmTv' Landroid/widget/TextView;

.field private 'mContext' Landroid/content/Context;

.field private 'mMessageTv' Landroid/widget/TextView;

.field private 'mMsg' Ljava/lang/String;

.field private 'mResources' Landroid/content/res/Resources;

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial android/app/Dialog/<init>(Landroid/content/Context;)V
return
.limit locals 2
.limit stack 2
.end method

.method public <init>(Landroid/content/Context;Ljava/lang/String;)V
aload 0
aload 1
getstatic com/bestpay/R$style/MyDialog I
invokespecial android/app/Dialog/<init>(Landroid/content/Context;I)V
aload 0
aload 1
putfield com/bestpay/ui/CustomDialog/mContext Landroid/content/Context;
aload 0
aload 0
getfield com/bestpay/ui/CustomDialog/mContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
putfield com/bestpay/ui/CustomDialog/mResources Landroid/content/res/Resources;
aload 0
aload 2
putfield com/bestpay/ui/CustomDialog/mMsg Ljava/lang/String;
return
.limit locals 3
.limit stack 3
.end method

.method public initView()V
aload 0
aload 0
aload 0
getfield com/bestpay/ui/CustomDialog/mResources Landroid/content/res/Resources;
ldc "custom_dialog_confirm_cancel_tv"
ldc "id"
aload 0
getfield com/bestpay/ui/CustomDialog/mContext Landroid/content/Context;
invokevirtual android/content/Context/getPackageName()Ljava/lang/String;
invokevirtual android/content/res/Resources/getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
invokevirtual com/bestpay/ui/CustomDialog/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/bestpay/ui/CustomDialog/mMessageTv Landroid/widget/TextView;
aload 0
aload 0
aload 0
getfield com/bestpay/ui/CustomDialog/mResources Landroid/content/res/Resources;
ldc "custom_dialog_confirm_cancel_confirm_tv"
ldc "id"
aload 0
getfield com/bestpay/ui/CustomDialog/mContext Landroid/content/Context;
invokevirtual android/content/Context/getPackageName()Ljava/lang/String;
invokevirtual android/content/res/Resources/getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
invokevirtual com/bestpay/ui/CustomDialog/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/bestpay/ui/CustomDialog/mConfirmTv Landroid/widget/TextView;
aload 0
aload 0
aload 0
getfield com/bestpay/ui/CustomDialog/mResources Landroid/content/res/Resources;
ldc "custom_dialog_confirm_cancel_cancel_tv"
ldc "id"
aload 0
getfield com/bestpay/ui/CustomDialog/mContext Landroid/content/Context;
invokevirtual android/content/Context/getPackageName()Ljava/lang/String;
invokevirtual android/content/res/Resources/getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
invokevirtual com/bestpay/ui/CustomDialog/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/bestpay/ui/CustomDialog/mCancelTv Landroid/widget/TextView;
return
.limit locals 1
.limit stack 6
.end method

.method protected onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial android/app/Dialog/onCreate(Landroid/os/Bundle;)V
aload 0
iconst_1
invokevirtual com/bestpay/ui/CustomDialog/requestWindowFeature(I)Z
pop
aload 0
invokevirtual com/bestpay/ui/CustomDialog/getWindow()Landroid/view/Window;
invokevirtual android/view/Window/getAttributes()Landroid/view/WindowManager$LayoutParams;
pop
aload 0
aload 0
getfield com/bestpay/ui/CustomDialog/mResources Landroid/content/res/Resources;
ldc "custom_dialog_confirm_cancel"
ldc "layout"
aload 0
getfield com/bestpay/ui/CustomDialog/mContext Landroid/content/Context;
invokevirtual android/content/Context/getPackageName()Ljava/lang/String;
invokevirtual android/content/res/Resources/getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
invokevirtual com/bestpay/ui/CustomDialog/setContentView(I)V
aload 0
invokevirtual com/bestpay/ui/CustomDialog/initView()V
aload 0
getfield com/bestpay/ui/CustomDialog/mMessageTv Landroid/widget/TextView;
aload 0
getfield com/bestpay/ui/CustomDialog/mMsg Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/bestpay/ui/CustomDialog/mConfirmTv Landroid/widget/TextView;
new com/bestpay/ui/CustomDialog$1
dup
aload 0
invokespecial com/bestpay/ui/CustomDialog$1/<init>(Lcom/bestpay/ui/CustomDialog;)V
invokevirtual android/widget/TextView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/bestpay/ui/CustomDialog/mCancelTv Landroid/widget/TextView;
new com/bestpay/ui/CustomDialog$2
dup
aload 0
invokespecial com/bestpay/ui/CustomDialog$2/<init>(Lcom/bestpay/ui/CustomDialog;)V
invokevirtual android/widget/TextView/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
.limit locals 2
.limit stack 5
.end method

.method public setOnClickListener(Lcom/bestpay/ui/CustomDialog$ClickListener;)V
aload 0
aload 1
putfield com/bestpay/ui/CustomDialog/mClickLister Lcom/bestpay/ui/CustomDialog$ClickListener;
return
.limit locals 2
.limit stack 2
.end method
