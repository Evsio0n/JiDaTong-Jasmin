.bytecode 50.0
.class public synchronized com/nd/schoollife/ui/common/view/MyDialog
.super android/app/Dialog
.inner class inner com/nd/schoollife/ui/common/view/MyDialog$1
.inner class inner com/nd/schoollife/ui/common/view/MyDialog$2

.field private 'btn01' Landroid/widget/Button;

.field private 'btn02' Landroid/widget/Button;

.field private 'contentLayoutView' Landroid/widget/LinearLayout;

.field private 'customerView' Landroid/widget/LinearLayout;

.field private 'layoutId' I

.field private 'mContext' Landroid/content/Context;

.method public <init>(Landroid/content/Context;I)V
aload 0
aload 1
invokespecial android/app/Dialog/<init>(Landroid/content/Context;)V
aload 0
iconst_1
invokevirtual com/nd/schoollife/ui/common/view/MyDialog/requestWindowFeature(I)Z
pop
aload 0
aload 1
putfield com/nd/schoollife/ui/common/view/MyDialog/mContext Landroid/content/Context;
aload 0
iload 2
putfield com/nd/schoollife/ui/common/view/MyDialog/layoutId I
aload 0
aload 0
getfield com/nd/schoollife/ui/common/view/MyDialog/mContext Landroid/content/Context;
ldc "layout_inflater"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/view/LayoutInflater
checkcast android/view/LayoutInflater
aload 0
getfield com/nd/schoollife/ui/common/view/MyDialog/layoutId I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/schoollife/ui/common/view/MyDialog/customerView Landroid/widget/LinearLayout;
aload 0
aload 0
getfield com/nd/schoollife/ui/common/view/MyDialog/customerView Landroid/widget/LinearLayout;
getstatic com/nd/schoollife/R$id/button1 I
invokevirtual android/widget/LinearLayout/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/schoollife/ui/common/view/MyDialog/btn01 Landroid/widget/Button;
aload 0
aload 0
getfield com/nd/schoollife/ui/common/view/MyDialog/customerView Landroid/widget/LinearLayout;
getstatic com/nd/schoollife/R$id/button2 I
invokevirtual android/widget/LinearLayout/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/schoollife/ui/common/view/MyDialog/btn02 Landroid/widget/Button;
aload 0
aload 0
getfield com/nd/schoollife/ui/common/view/MyDialog/customerView Landroid/widget/LinearLayout;
getstatic com/nd/schoollife/R$id/custom_flayout I
invokevirtual android/widget/LinearLayout/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/schoollife/ui/common/view/MyDialog/contentLayoutView Landroid/widget/LinearLayout;
return
.limit locals 3
.limit stack 4
.end method

.method public addContentView(Landroid/view/View;)V
aload 1
ifnull L0
aload 0
getfield com/nd/schoollife/ui/common/view/MyDialog/contentLayoutView Landroid/widget/LinearLayout;
aload 1
new android/view/ViewGroup$LayoutParams
dup
bipush -2
sipush 200
invokespecial android/view/ViewGroup$LayoutParams/<init>(II)V
invokevirtual android/widget/LinearLayout/addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
aload 0
getfield com/nd/schoollife/ui/common/view/MyDialog/contentLayoutView Landroid/widget/LinearLayout;
bipush 17
invokevirtual android/widget/LinearLayout/setGravity(I)V
L0:
return
.limit locals 2
.limit stack 6
.end method

.method public getCustomerView()Landroid/widget/LinearLayout;
aload 0
getfield com/nd/schoollife/ui/common/view/MyDialog/customerView Landroid/widget/LinearLayout;
areturn
.limit locals 1
.limit stack 1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial android/app/Dialog/onCreate(Landroid/os/Bundle;)V
aload 0
aload 0
getfield com/nd/schoollife/ui/common/view/MyDialog/customerView Landroid/widget/LinearLayout;
invokevirtual com/nd/schoollife/ui/common/view/MyDialog/setContentView(Landroid/view/View;)V
aload 0
iconst_1
invokevirtual com/nd/schoollife/ui/common/view/MyDialog/setCancelable(Z)V
return
.limit locals 2
.limit stack 2
.end method

.method public setCancelBtnVisable(I)V
aload 0
getfield com/nd/schoollife/ui/common/view/MyDialog/btn02 Landroid/widget/Button;
ifnull L0
aload 0
getfield com/nd/schoollife/ui/common/view/MyDialog/btn02 Landroid/widget/Button;
iload 1
invokevirtual android/widget/Button/setVisibility(I)V
L0:
return
.limit locals 2
.limit stack 2
.end method

.method public setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
aload 2
ifnull L0
aload 0
getfield com/nd/schoollife/ui/common/view/MyDialog/btn02 Landroid/widget/Button;
aload 1
invokevirtual android/widget/Button/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/schoollife/ui/common/view/MyDialog/btn02 Landroid/widget/Button;
new com/nd/schoollife/ui/common/view/MyDialog$2
dup
aload 0
aload 2
invokespecial com/nd/schoollife/ui/common/view/MyDialog$2/<init>(Lcom/nd/schoollife/ui/common/view/MyDialog;Landroid/content/DialogInterface$OnClickListener;)V
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
L0:
aload 0
getfield com/nd/schoollife/ui/common/view/MyDialog/btn02 Landroid/widget/Button;
bipush 8
invokevirtual android/widget/Button/setVisibility(I)V
return
.limit locals 3
.limit stack 5
.end method

.method public setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
aload 2
ifnull L0
aload 0
getfield com/nd/schoollife/ui/common/view/MyDialog/btn01 Landroid/widget/Button;
aload 1
invokevirtual android/widget/Button/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/schoollife/ui/common/view/MyDialog/btn01 Landroid/widget/Button;
new com/nd/schoollife/ui/common/view/MyDialog$1
dup
aload 0
aload 2
invokespecial com/nd/schoollife/ui/common/view/MyDialog$1/<init>(Lcom/nd/schoollife/ui/common/view/MyDialog;Landroid/content/DialogInterface$OnClickListener;)V
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
L0:
aload 0
getfield com/nd/schoollife/ui/common/view/MyDialog/btn01 Landroid/widget/Button;
bipush 8
invokevirtual android/widget/Button/setVisibility(I)V
return
.limit locals 3
.limit stack 5
.end method
