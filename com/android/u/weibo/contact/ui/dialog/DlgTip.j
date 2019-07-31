.bytecode 50.0
.class public synchronized com/android/u/weibo/contact/ui/dialog/DlgTip
.super android/app/Dialog
.inner class inner com/android/u/weibo/contact/ui/dialog/DlgTip$1
.inner class public static abstract interface OnDlgTipDismissListener inner com/android/u/weibo/contact/ui/dialog/DlgTip$OnDlgTipDismissListener outer com/android/u/weibo/contact/ui/dialog/DlgTip

.field protected 'clickListener' Landroid/view/View$OnClickListener;

.field private 'm_DismissListener' Lcom/android/u/weibo/contact/ui/dialog/DlgTip$OnDlgTipDismissListener;

.field private 'm_btnCancel' Landroid/widget/Button;

.field private 'm_btnOK' Landroid/widget/Button;

.field private 'm_strCancel' Ljava/lang/String;

.field private 'm_strDlgTitle' Ljava/lang/String;

.field private 'm_strOK' Ljava/lang/String;

.field private 'm_strTip' Ljava/lang/String;

.field private 'm_tvTextTip' Landroid/widget/TextView;

.field private 'm_tvTitle' Landroid/widget/TextView;

.field private 'mbOnlyTip' Z

.field private 'mbtnOK' Landroid/widget/Button;

.field private 'mlayoutOnlyTip' Landroid/widget/RelativeLayout;

.field private 'mlayoutSwitch' Landroid/widget/LinearLayout;

.method public <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
aload 0
aload 1
iload 5
invokespecial android/app/Dialog/<init>(Landroid/content/Context;I)V
aload 0
iconst_0
putfield com/android/u/weibo/contact/ui/dialog/DlgTip/mbOnlyTip Z
aload 0
new com/android/u/weibo/contact/ui/dialog/DlgTip$1
dup
aload 0
invokespecial com/android/u/weibo/contact/ui/dialog/DlgTip$1/<init>(Lcom/android/u/weibo/contact/ui/dialog/DlgTip;)V
putfield com/android/u/weibo/contact/ui/dialog/DlgTip/clickListener Landroid/view/View$OnClickListener;
aload 0
aload 2
putfield com/android/u/weibo/contact/ui/dialog/DlgTip/m_strDlgTitle Ljava/lang/String;
aload 0
aload 3
putfield com/android/u/weibo/contact/ui/dialog/DlgTip/m_strTip Ljava/lang/String;
aload 0
aload 4
putfield com/android/u/weibo/contact/ui/dialog/DlgTip/m_strOK Ljava/lang/String;
aload 0
ldc ""
putfield com/android/u/weibo/contact/ui/dialog/DlgTip/m_strCancel Ljava/lang/String;
aload 0
iconst_1
putfield com/android/u/weibo/contact/ui/dialog/DlgTip/mbOnlyTip Z
return
.limit locals 6
.limit stack 4
.end method

.method public <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
aload 0
aload 1
iload 6
invokespecial android/app/Dialog/<init>(Landroid/content/Context;I)V
aload 0
iconst_0
putfield com/android/u/weibo/contact/ui/dialog/DlgTip/mbOnlyTip Z
aload 0
new com/android/u/weibo/contact/ui/dialog/DlgTip$1
dup
aload 0
invokespecial com/android/u/weibo/contact/ui/dialog/DlgTip$1/<init>(Lcom/android/u/weibo/contact/ui/dialog/DlgTip;)V
putfield com/android/u/weibo/contact/ui/dialog/DlgTip/clickListener Landroid/view/View$OnClickListener;
aload 0
aload 2
putfield com/android/u/weibo/contact/ui/dialog/DlgTip/m_strDlgTitle Ljava/lang/String;
aload 0
aload 3
putfield com/android/u/weibo/contact/ui/dialog/DlgTip/m_strTip Ljava/lang/String;
aload 0
aload 5
putfield com/android/u/weibo/contact/ui/dialog/DlgTip/m_strOK Ljava/lang/String;
aload 0
aload 4
putfield com/android/u/weibo/contact/ui/dialog/DlgTip/m_strCancel Ljava/lang/String;
return
.limit locals 7
.limit stack 4
.end method

.method static synthetic access$000(Lcom/android/u/weibo/contact/ui/dialog/DlgTip;)Lcom/android/u/weibo/contact/ui/dialog/DlgTip$OnDlgTipDismissListener;
aload 0
getfield com/android/u/weibo/contact/ui/dialog/DlgTip/m_DismissListener Lcom/android/u/weibo/contact/ui/dialog/DlgTip$OnDlgTipDismissListener;
areturn
.limit locals 1
.limit stack 1
.end method

.method public onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial android/app/Dialog/onCreate(Landroid/os/Bundle;)V
aload 0
iconst_1
invokevirtual com/android/u/weibo/contact/ui/dialog/DlgTip/requestWindowFeature(I)Z
pop
aload 0
getstatic com/android/u/weibo/R$layout/dlg_tip I
invokevirtual com/android/u/weibo/contact/ui/dialog/DlgTip/setContentView(I)V
aload 0
aload 0
getstatic com/android/u/weibo/R$id/layout_switch I
invokevirtual com/android/u/weibo/contact/ui/dialog/DlgTip/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/android/u/weibo/contact/ui/dialog/DlgTip/mlayoutSwitch Landroid/widget/LinearLayout;
aload 0
aload 0
getstatic com/android/u/weibo/R$id/button_cancel I
invokevirtual com/android/u/weibo/contact/ui/dialog/DlgTip/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/android/u/weibo/contact/ui/dialog/DlgTip/m_btnCancel Landroid/widget/Button;
aload 0
aload 0
getstatic com/android/u/weibo/R$id/button_ok I
invokevirtual com/android/u/weibo/contact/ui/dialog/DlgTip/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/android/u/weibo/contact/ui/dialog/DlgTip/m_btnOK Landroid/widget/Button;
aload 0
getfield com/android/u/weibo/contact/ui/dialog/DlgTip/m_btnCancel Landroid/widget/Button;
aload 0
getfield com/android/u/weibo/contact/ui/dialog/DlgTip/clickListener Landroid/view/View$OnClickListener;
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/android/u/weibo/contact/ui/dialog/DlgTip/m_btnOK Landroid/widget/Button;
aload 0
getfield com/android/u/weibo/contact/ui/dialog/DlgTip/clickListener Landroid/view/View$OnClickListener;
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
aload 0
getstatic com/android/u/weibo/R$id/dlg_title I
invokevirtual com/android/u/weibo/contact/ui/dialog/DlgTip/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/android/u/weibo/contact/ui/dialog/DlgTip/m_tvTitle Landroid/widget/TextView;
aload 0
getfield com/android/u/weibo/contact/ui/dialog/DlgTip/m_tvTitle Landroid/widget/TextView;
aload 0
getfield com/android/u/weibo/contact/ui/dialog/DlgTip/m_strDlgTitle Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/android/u/weibo/contact/ui/dialog/DlgTip/m_btnOK Landroid/widget/Button;
aload 0
getfield com/android/u/weibo/contact/ui/dialog/DlgTip/m_strOK Ljava/lang/String;
invokevirtual android/widget/Button/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/android/u/weibo/contact/ui/dialog/DlgTip/m_btnCancel Landroid/widget/Button;
aload 0
getfield com/android/u/weibo/contact/ui/dialog/DlgTip/m_strCancel Ljava/lang/String;
invokevirtual android/widget/Button/setText(Ljava/lang/CharSequence;)V
aload 0
aload 0
getstatic com/android/u/weibo/R$id/dlg_tv_tip I
invokevirtual com/android/u/weibo/contact/ui/dialog/DlgTip/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/android/u/weibo/contact/ui/dialog/DlgTip/m_tvTextTip Landroid/widget/TextView;
aload 0
getfield com/android/u/weibo/contact/ui/dialog/DlgTip/m_tvTextTip Landroid/widget/TextView;
aload 0
getfield com/android/u/weibo/contact/ui/dialog/DlgTip/m_strTip Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
aload 0
getstatic com/android/u/weibo/R$id/layout_only_tip I
invokevirtual com/android/u/weibo/contact/ui/dialog/DlgTip/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/android/u/weibo/contact/ui/dialog/DlgTip/mlayoutOnlyTip Landroid/widget/RelativeLayout;
aload 0
aload 0
getstatic com/android/u/weibo/R$id/btn_ok I
invokevirtual com/android/u/weibo/contact/ui/dialog/DlgTip/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/android/u/weibo/contact/ui/dialog/DlgTip/mbtnOK Landroid/widget/Button;
aload 0
getfield com/android/u/weibo/contact/ui/dialog/DlgTip/mbtnOK Landroid/widget/Button;
aload 0
getfield com/android/u/weibo/contact/ui/dialog/DlgTip/clickListener Landroid/view/View$OnClickListener;
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/android/u/weibo/contact/ui/dialog/DlgTip/mbOnlyTip Z
ifeq L0
aload 0
getfield com/android/u/weibo/contact/ui/dialog/DlgTip/mlayoutSwitch Landroid/widget/LinearLayout;
bipush 8
invokevirtual android/widget/LinearLayout/setVisibility(I)V
aload 0
getfield com/android/u/weibo/contact/ui/dialog/DlgTip/mlayoutOnlyTip Landroid/widget/RelativeLayout;
iconst_0
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
return
L0:
aload 0
getfield com/android/u/weibo/contact/ui/dialog/DlgTip/mlayoutSwitch Landroid/widget/LinearLayout;
iconst_0
invokevirtual android/widget/LinearLayout/setVisibility(I)V
aload 0
getfield com/android/u/weibo/contact/ui/dialog/DlgTip/mlayoutOnlyTip Landroid/widget/RelativeLayout;
bipush 8
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
return
.limit locals 2
.limit stack 3
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
iload 1
tableswitch 4
L0
default : L1
L1:
aload 0
iload 1
aload 2
invokespecial android/app/Dialog/onKeyDown(ILandroid/view/KeyEvent;)Z
ireturn
L0:
aload 0
getfield com/android/u/weibo/contact/ui/dialog/DlgTip/mbOnlyTip Z
ifeq L1
aload 0
getfield com/android/u/weibo/contact/ui/dialog/DlgTip/m_DismissListener Lcom/android/u/weibo/contact/ui/dialog/DlgTip$OnDlgTipDismissListener;
ifnull L1
aload 0
getfield com/android/u/weibo/contact/ui/dialog/DlgTip/m_DismissListener Lcom/android/u/weibo/contact/ui/dialog/DlgTip$OnDlgTipDismissListener;
iconst_0
invokeinterface com/android/u/weibo/contact/ui/dialog/DlgTip$OnDlgTipDismissListener/getTipResult(I)V 1
aload 0
invokevirtual com/android/u/weibo/contact/ui/dialog/DlgTip/dismiss()V
goto L1
.limit locals 3
.limit stack 3
.end method

.method public setOnAfterDismissListener(Lcom/android/u/weibo/contact/ui/dialog/DlgTip$OnDlgTipDismissListener;)V
aload 0
aload 1
putfield com/android/u/weibo/contact/ui/dialog/DlgTip/m_DismissListener Lcom/android/u/weibo/contact/ui/dialog/DlgTip$OnDlgTipDismissListener;
return
.limit locals 2
.limit stack 2
.end method
