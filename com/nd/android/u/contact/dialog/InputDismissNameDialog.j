.bytecode 50.0
.class public synchronized com/nd/android/u/contact/dialog/InputDismissNameDialog
.super android/app/Dialog
.inner class inner com/nd/android/u/contact/dialog/InputDismissNameDialog$1
.inner class public static abstract interface OnDlgModifyTextDismissListener inner com/nd/android/u/contact/dialog/InputDismissNameDialog$OnDlgModifyTextDismissListener outer com/nd/android/u/contact/dialog/InputDismissNameDialog

.field private static final 'DISCUSSION_NAME_MAX_LENGTH' I = 18


.field private static final 'DISCUSSION_NAME_MIN_LENGTH' I = 2


.field public static final 'TEXT_TYPE_DISCUSSION' I = 2


.field public static final 'TEXT_TYPE_EMAIL' I = 1


.field public static final 'TEXT_TYPE_PHONE' I = 0


.field protected 'clickListener' Landroid/view/View$OnClickListener;

.field private 'm_DismissListener' Lcom/nd/android/u/contact/dialog/InputDismissNameDialog$OnDlgModifyTextDismissListener;

.field private 'm_btnCancel' Landroid/widget/TextView;

.field private 'm_btnReset' Landroid/widget/Button;

.field private 'm_btnSave' Landroid/widget/TextView;

.field private 'm_context' Landroid/content/Context;

.field private 'm_etTextValue' Landroid/widget/EditText;

.field private 'm_iTextType' I

.field private 'm_strDefaultValue' Ljava/lang/String;

.field private 'm_strDlgTitle' Ljava/lang/String;

.field private 'm_strHint' Ljava/lang/String;

.field private 'm_tvTitle' Landroid/widget/TextView;

.method public <init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
aload 0
aload 1
iload 6
invokespecial android/app/Dialog/<init>(Landroid/content/Context;I)V
aload 0
iconst_m1
putfield com/nd/android/u/contact/dialog/InputDismissNameDialog/m_iTextType I
aload 0
new com/nd/android/u/contact/dialog/InputDismissNameDialog$1
dup
aload 0
invokespecial com/nd/android/u/contact/dialog/InputDismissNameDialog$1/<init>(Lcom/nd/android/u/contact/dialog/InputDismissNameDialog;)V
putfield com/nd/android/u/contact/dialog/InputDismissNameDialog/clickListener Landroid/view/View$OnClickListener;
aload 0
aload 1
putfield com/nd/android/u/contact/dialog/InputDismissNameDialog/m_context Landroid/content/Context;
aload 0
iload 2
putfield com/nd/android/u/contact/dialog/InputDismissNameDialog/m_iTextType I
aload 0
aload 3
putfield com/nd/android/u/contact/dialog/InputDismissNameDialog/m_strDlgTitle Ljava/lang/String;
aload 0
aload 4
putfield com/nd/android/u/contact/dialog/InputDismissNameDialog/m_strHint Ljava/lang/String;
aload 0
aload 5
putfield com/nd/android/u/contact/dialog/InputDismissNameDialog/m_strDefaultValue Ljava/lang/String;
return
.limit locals 7
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/android/u/contact/dialog/InputDismissNameDialog;)Landroid/widget/EditText;
aload 0
getfield com/nd/android/u/contact/dialog/InputDismissNameDialog/m_etTextValue Landroid/widget/EditText;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/android/u/contact/dialog/InputDismissNameDialog;)Landroid/content/Context;
aload 0
getfield com/nd/android/u/contact/dialog/InputDismissNameDialog/m_context Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/nd/android/u/contact/dialog/InputDismissNameDialog;)Ljava/lang/String;
aload 0
getfield com/nd/android/u/contact/dialog/InputDismissNameDialog/m_strHint Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/nd/android/u/contact/dialog/InputDismissNameDialog;)I
aload 0
getfield com/nd/android/u/contact/dialog/InputDismissNameDialog/m_iTextType I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$400(Lcom/nd/android/u/contact/dialog/InputDismissNameDialog;)Lcom/nd/android/u/contact/dialog/InputDismissNameDialog$OnDlgModifyTextDismissListener;
aload 0
getfield com/nd/android/u/contact/dialog/InputDismissNameDialog/m_DismissListener Lcom/nd/android/u/contact/dialog/InputDismissNameDialog$OnDlgModifyTextDismissListener;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$500(Lcom/nd/android/u/contact/dialog/InputDismissNameDialog;)V
aload 0
invokespecial com/nd/android/u/contact/dialog/InputDismissNameDialog/getValueAndDismiss()V
return
.limit locals 1
.limit stack 1
.end method

.method private getValueAndDismiss()V
aload 0
getfield com/nd/android/u/contact/dialog/InputDismissNameDialog/m_DismissListener Lcom/nd/android/u/contact/dialog/InputDismissNameDialog$OnDlgModifyTextDismissListener;
aload 0
getfield com/nd/android/u/contact/dialog/InputDismissNameDialog/m_etTextValue Landroid/widget/EditText;
invokevirtual android/widget/EditText/getText()Landroid/text/Editable;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokevirtual java/lang/String/trim()Ljava/lang/String;
invokeinterface com/nd/android/u/contact/dialog/InputDismissNameDialog$OnDlgModifyTextDismissListener/GetTextValue(Ljava/lang/String;)V 1
aload 0
invokevirtual com/nd/android/u/contact/dialog/InputDismissNameDialog/dismiss()V
return
.limit locals 1
.limit stack 2
.end method

.method public onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial android/app/Dialog/onCreate(Landroid/os/Bundle;)V
aload 0
iconst_1
invokevirtual com/nd/android/u/contact/dialog/InputDismissNameDialog/requestWindowFeature(I)Z
pop
aload 0
getstatic com/nd/android/u/contact/R$layout/add_friend_group_dialog I
invokevirtual com/nd/android/u/contact/dialog/InputDismissNameDialog/setContentView(I)V
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/tv_dialog_cancle I
invokevirtual com/nd/android/u/contact/dialog/InputDismissNameDialog/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/dialog/InputDismissNameDialog/m_btnCancel Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/tv_dialog_ok I
invokevirtual com/nd/android/u/contact/dialog/InputDismissNameDialog/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/dialog/InputDismissNameDialog/m_btnSave Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/contact/dialog/InputDismissNameDialog/m_btnCancel Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/contact/dialog/InputDismissNameDialog/clickListener Landroid/view/View$OnClickListener;
invokevirtual android/widget/TextView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/contact/dialog/InputDismissNameDialog/m_btnSave Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/contact/dialog/InputDismissNameDialog/clickListener Landroid/view/View$OnClickListener;
invokevirtual android/widget/TextView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/tv_dialog_title I
invokevirtual com/nd/android/u/contact/dialog/InputDismissNameDialog/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/dialog/InputDismissNameDialog/m_tvTitle Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/contact/dialog/InputDismissNameDialog/m_tvTitle Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/contact/dialog/InputDismissNameDialog/m_strDlgTitle Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/et_friend_group_name I
invokevirtual com/nd/android/u/contact/dialog/InputDismissNameDialog/findViewById(I)Landroid/view/View;
checkcast android/widget/EditText
putfield com/nd/android/u/contact/dialog/InputDismissNameDialog/m_etTextValue Landroid/widget/EditText;
aload 0
getfield com/nd/android/u/contact/dialog/InputDismissNameDialog/m_etTextValue Landroid/widget/EditText;
aload 0
getfield com/nd/android/u/contact/dialog/InputDismissNameDialog/m_context Landroid/content/Context;
getstatic com/nd/android/u/contact/R$string/personal_input I
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 0
getfield com/nd/android/u/contact/dialog/InputDismissNameDialog/m_strHint Ljava/lang/String;
aastore
invokevirtual android/content/Context/getString(I[Ljava/lang/Object;)Ljava/lang/String;
invokevirtual android/widget/EditText/setHint(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/contact/dialog/InputDismissNameDialog/m_iTextType I
ifne L0
aload 0
getfield com/nd/android/u/contact/dialog/InputDismissNameDialog/m_etTextValue Landroid/widget/EditText;
iconst_2
invokevirtual android/widget/EditText/setInputType(I)V
L0:
aload 0
getfield com/nd/android/u/contact/dialog/InputDismissNameDialog/m_strDefaultValue Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L1
aload 0
getfield com/nd/android/u/contact/dialog/InputDismissNameDialog/m_etTextValue Landroid/widget/EditText;
aload 0
getfield com/nd/android/u/contact/dialog/InputDismissNameDialog/m_strDefaultValue Ljava/lang/String;
invokevirtual android/widget/EditText/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/contact/dialog/InputDismissNameDialog/m_etTextValue Landroid/widget/EditText;
aload 0
getfield com/nd/android/u/contact/dialog/InputDismissNameDialog/m_strDefaultValue Ljava/lang/String;
invokevirtual java/lang/String/length()I
invokevirtual android/widget/EditText/setSelection(I)V
L1:
iconst_2
aload 0
getfield com/nd/android/u/contact/dialog/InputDismissNameDialog/m_iTextType I
if_icmpne L2
aload 0
getfield com/nd/android/u/contact/dialog/InputDismissNameDialog/m_etTextValue Landroid/widget/EditText;
getstatic com/nd/android/u/contact/R$string/group_name_default I
invokevirtual android/widget/EditText/setHint(I)V
new android/text/InputFilter$LengthFilter
dup
bipush 18
invokespecial android/text/InputFilter$LengthFilter/<init>(I)V
astore 1
aload 0
getfield com/nd/android/u/contact/dialog/InputDismissNameDialog/m_etTextValue Landroid/widget/EditText;
iconst_1
anewarray android/text/InputFilter
dup
iconst_0
aload 1
aastore
invokevirtual android/widget/EditText/setFilters([Landroid/text/InputFilter;)V
L2:
return
.limit locals 2
.limit stack 7
.end method

.method public setOnAfterDismissListener(Lcom/nd/android/u/contact/dialog/InputDismissNameDialog$OnDlgModifyTextDismissListener;)V
aload 0
aload 1
putfield com/nd/android/u/contact/dialog/InputDismissNameDialog/m_DismissListener Lcom/nd/android/u/contact/dialog/InputDismissNameDialog$OnDlgModifyTextDismissListener;
return
.limit locals 2
.limit stack 2
.end method
