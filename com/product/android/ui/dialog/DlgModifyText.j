.bytecode 50.0
.class public synchronized com/product/android/ui/dialog/DlgModifyText
.super android/app/Dialog
.inner class inner com/product/android/ui/dialog/DlgModifyText$1
.inner class public static abstract interface OnDlgModifyTextDismissListener inner com/product/android/ui/dialog/DlgModifyText$OnDlgModifyTextDismissListener outer com/product/android/ui/dialog/DlgModifyText

.field private static final 'DISCUSSION_NAME_MAX_LENGTH' I = 18


.field private static final 'DISCUSSION_NAME_MIN_LENGTH' I = 2


.field public static final 'TEXT_TYPE_DISCUSSION' I = 2


.field public static final 'TEXT_TYPE_EMAIL' I = 1


.field public static final 'TEXT_TYPE_PHONE' I = 0


.field protected 'clickListener' Landroid/view/View$OnClickListener;

.field private 'm_DismissListener' Lcom/product/android/ui/dialog/DlgModifyText$OnDlgModifyTextDismissListener;

.field private 'm_btnCancel' Landroid/widget/Button;

.field private 'm_btnReset' Landroid/widget/Button;

.field private 'm_btnSave' Landroid/widget/Button;

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
putfield com/product/android/ui/dialog/DlgModifyText/m_iTextType I
aload 0
new com/product/android/ui/dialog/DlgModifyText$1
dup
aload 0
invokespecial com/product/android/ui/dialog/DlgModifyText$1/<init>(Lcom/product/android/ui/dialog/DlgModifyText;)V
putfield com/product/android/ui/dialog/DlgModifyText/clickListener Landroid/view/View$OnClickListener;
aload 0
aload 1
putfield com/product/android/ui/dialog/DlgModifyText/m_context Landroid/content/Context;
aload 0
iload 2
putfield com/product/android/ui/dialog/DlgModifyText/m_iTextType I
aload 0
aload 3
putfield com/product/android/ui/dialog/DlgModifyText/m_strDlgTitle Ljava/lang/String;
aload 0
aload 4
putfield com/product/android/ui/dialog/DlgModifyText/m_strHint Ljava/lang/String;
aload 0
aload 5
putfield com/product/android/ui/dialog/DlgModifyText/m_strDefaultValue Ljava/lang/String;
return
.limit locals 7
.limit stack 4
.end method

.method static synthetic access$000(Lcom/product/android/ui/dialog/DlgModifyText;)Landroid/widget/EditText;
aload 0
getfield com/product/android/ui/dialog/DlgModifyText/m_etTextValue Landroid/widget/EditText;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/product/android/ui/dialog/DlgModifyText;)Landroid/content/Context;
aload 0
getfield com/product/android/ui/dialog/DlgModifyText/m_context Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/product/android/ui/dialog/DlgModifyText;)Ljava/lang/String;
aload 0
getfield com/product/android/ui/dialog/DlgModifyText/m_strHint Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/product/android/ui/dialog/DlgModifyText;)I
aload 0
getfield com/product/android/ui/dialog/DlgModifyText/m_iTextType I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$400(Lcom/product/android/ui/dialog/DlgModifyText;)Lcom/product/android/ui/dialog/DlgModifyText$OnDlgModifyTextDismissListener;
aload 0
getfield com/product/android/ui/dialog/DlgModifyText/m_DismissListener Lcom/product/android/ui/dialog/DlgModifyText$OnDlgModifyTextDismissListener;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$500(Lcom/product/android/ui/dialog/DlgModifyText;)V
aload 0
invokespecial com/product/android/ui/dialog/DlgModifyText/getValueAndDismiss()V
return
.limit locals 1
.limit stack 1
.end method

.method private getValueAndDismiss()V
aload 0
getfield com/product/android/ui/dialog/DlgModifyText/m_DismissListener Lcom/product/android/ui/dialog/DlgModifyText$OnDlgModifyTextDismissListener;
aload 0
getfield com/product/android/ui/dialog/DlgModifyText/m_etTextValue Landroid/widget/EditText;
invokevirtual android/widget/EditText/getText()Landroid/text/Editable;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokevirtual java/lang/String/trim()Ljava/lang/String;
invokeinterface com/product/android/ui/dialog/DlgModifyText$OnDlgModifyTextDismissListener/GetTextValue(Ljava/lang/String;)V 1
aload 0
invokevirtual com/product/android/ui/dialog/DlgModifyText/dismiss()V
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
invokevirtual com/product/android/ui/dialog/DlgModifyText/requestWindowFeature(I)Z
pop
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_91XY Lcom/product/android/business/ProductTypeDef$Product;
if_acmpne L0
aload 0
getstatic com/nd/android/u/allcommon/R$layout/xy_dialog_modify I
invokevirtual com/product/android/ui/dialog/DlgModifyText/setContentView(I)V
L1:
aload 0
aload 0
getstatic com/nd/android/u/allcommon/R$id/button_cancel I
invokevirtual com/product/android/ui/dialog/DlgModifyText/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/product/android/ui/dialog/DlgModifyText/m_btnCancel Landroid/widget/Button;
aload 0
aload 0
getstatic com/nd/android/u/allcommon/R$id/button_ok I
invokevirtual com/product/android/ui/dialog/DlgModifyText/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/product/android/ui/dialog/DlgModifyText/m_btnSave Landroid/widget/Button;
aload 0
getfield com/product/android/ui/dialog/DlgModifyText/m_btnCancel Landroid/widget/Button;
aload 0
getfield com/product/android/ui/dialog/DlgModifyText/clickListener Landroid/view/View$OnClickListener;
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/product/android/ui/dialog/DlgModifyText/m_btnSave Landroid/widget/Button;
aload 0
getfield com/product/android/ui/dialog/DlgModifyText/clickListener Landroid/view/View$OnClickListener;
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
aload 0
getstatic com/nd/android/u/allcommon/R$id/dlg_title I
invokevirtual com/product/android/ui/dialog/DlgModifyText/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/product/android/ui/dialog/DlgModifyText/m_tvTitle Landroid/widget/TextView;
aload 0
getfield com/product/android/ui/dialog/DlgModifyText/m_tvTitle Landroid/widget/TextView;
aload 0
getfield com/product/android/ui/dialog/DlgModifyText/m_strDlgTitle Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
aload 0
getstatic com/nd/android/u/allcommon/R$id/text_value I
invokevirtual com/product/android/ui/dialog/DlgModifyText/findViewById(I)Landroid/view/View;
checkcast android/widget/EditText
putfield com/product/android/ui/dialog/DlgModifyText/m_etTextValue Landroid/widget/EditText;
aload 0
getfield com/product/android/ui/dialog/DlgModifyText/m_etTextValue Landroid/widget/EditText;
aload 0
getfield com/product/android/ui/dialog/DlgModifyText/m_context Landroid/content/Context;
getstatic com/nd/android/u/allcommon/R$string/personal_input I
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 0
getfield com/product/android/ui/dialog/DlgModifyText/m_strHint Ljava/lang/String;
aastore
invokevirtual android/content/Context/getString(I[Ljava/lang/Object;)Ljava/lang/String;
invokevirtual android/widget/EditText/setHint(Ljava/lang/CharSequence;)V
aload 0
getfield com/product/android/ui/dialog/DlgModifyText/m_iTextType I
ifne L2
aload 0
getfield com/product/android/ui/dialog/DlgModifyText/m_etTextValue Landroid/widget/EditText;
iconst_2
invokevirtual android/widget/EditText/setInputType(I)V
L2:
aload 0
getfield com/product/android/ui/dialog/DlgModifyText/m_strDefaultValue Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L3
aload 0
getfield com/product/android/ui/dialog/DlgModifyText/m_etTextValue Landroid/widget/EditText;
aload 0
getfield com/product/android/ui/dialog/DlgModifyText/m_strDefaultValue Ljava/lang/String;
invokevirtual android/widget/EditText/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/product/android/ui/dialog/DlgModifyText/m_etTextValue Landroid/widget/EditText;
aload 0
getfield com/product/android/ui/dialog/DlgModifyText/m_strDefaultValue Ljava/lang/String;
invokevirtual java/lang/String/length()I
invokevirtual android/widget/EditText/setSelection(I)V
L3:
iconst_2
aload 0
getfield com/product/android/ui/dialog/DlgModifyText/m_iTextType I
if_icmpne L4
aload 0
getfield com/product/android/ui/dialog/DlgModifyText/m_etTextValue Landroid/widget/EditText;
getstatic com/nd/android/u/allcommon/R$string/group_name_default I
invokevirtual android/widget/EditText/setHint(I)V
new android/text/InputFilter$LengthFilter
dup
bipush 18
invokespecial android/text/InputFilter$LengthFilter/<init>(I)V
astore 1
aload 0
getfield com/product/android/ui/dialog/DlgModifyText/m_etTextValue Landroid/widget/EditText;
iconst_1
anewarray android/text/InputFilter
dup
iconst_0
aload 1
aastore
invokevirtual android/widget/EditText/setFilters([Landroid/text/InputFilter;)V
L4:
return
L0:
aload 0
getstatic com/nd/android/u/allcommon/R$layout/dlg_modify_text I
invokevirtual com/product/android/ui/dialog/DlgModifyText/setContentView(I)V
goto L1
.limit locals 2
.limit stack 7
.end method

.method public setOnAfterDismissListener(Lcom/product/android/ui/dialog/DlgModifyText$OnDlgModifyTextDismissListener;)V
aload 0
aload 1
putfield com/product/android/ui/dialog/DlgModifyText/m_DismissListener Lcom/product/android/ui/dialog/DlgModifyText$OnDlgModifyTextDismissListener;
return
.limit locals 2
.limit stack 2
.end method
