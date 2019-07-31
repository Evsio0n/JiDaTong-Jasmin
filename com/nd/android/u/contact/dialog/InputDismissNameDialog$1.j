.bytecode 50.0
.class synchronized com/nd/android/u/contact/dialog/InputDismissNameDialog$1
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/android/u/contact/dialog/InputDismissNameDialog
.inner class inner com/nd/android/u/contact/dialog/InputDismissNameDialog$1

.field final synthetic 'this$0' Lcom/nd/android/u/contact/dialog/InputDismissNameDialog;

.method <init>(Lcom/nd/android/u/contact/dialog/InputDismissNameDialog;)V
aload 0
aload 1
putfield com/nd/android/u/contact/dialog/InputDismissNameDialog$1/this$0 Lcom/nd/android/u/contact/dialog/InputDismissNameDialog;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
istore 2
iload 2
getstatic com/nd/android/u/contact/R$id/tv_dialog_cancle I
if_icmpne L0
aload 0
getfield com/nd/android/u/contact/dialog/InputDismissNameDialog$1/this$0 Lcom/nd/android/u/contact/dialog/InputDismissNameDialog;
invokevirtual com/nd/android/u/contact/dialog/InputDismissNameDialog/dismiss()V
L1:
return
L0:
iload 2
getstatic com/nd/android/u/contact/R$id/tv_dialog_ok I
if_icmpne L1
aload 0
getfield com/nd/android/u/contact/dialog/InputDismissNameDialog$1/this$0 Lcom/nd/android/u/contact/dialog/InputDismissNameDialog;
invokestatic com/nd/android/u/contact/dialog/InputDismissNameDialog/access$000(Lcom/nd/android/u/contact/dialog/InputDismissNameDialog;)Landroid/widget/EditText;
invokevirtual android/widget/EditText/getText()Landroid/text/Editable;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokevirtual java/lang/String/trim()Ljava/lang/String;
astore 3
aload 3
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L2
aload 0
getfield com/nd/android/u/contact/dialog/InputDismissNameDialog$1/this$0 Lcom/nd/android/u/contact/dialog/InputDismissNameDialog;
invokestatic com/nd/android/u/contact/dialog/InputDismissNameDialog/access$100(Lcom/nd/android/u/contact/dialog/InputDismissNameDialog;)Landroid/content/Context;
aload 0
getfield com/nd/android/u/contact/dialog/InputDismissNameDialog$1/this$0 Lcom/nd/android/u/contact/dialog/InputDismissNameDialog;
invokestatic com/nd/android/u/contact/dialog/InputDismissNameDialog/access$100(Lcom/nd/android/u/contact/dialog/InputDismissNameDialog;)Landroid/content/Context;
getstatic com/nd/android/u/contact/R$string/personal_save I
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 0
getfield com/nd/android/u/contact/dialog/InputDismissNameDialog$1/this$0 Lcom/nd/android/u/contact/dialog/InputDismissNameDialog;
invokestatic com/nd/android/u/contact/dialog/InputDismissNameDialog/access$200(Lcom/nd/android/u/contact/dialog/InputDismissNameDialog;)Ljava/lang/String;
aastore
invokevirtual android/content/Context/getString(I[Ljava/lang/Object;)Ljava/lang/String;
iconst_1
invokestatic android/widget/Toast/makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
invokevirtual android/widget/Toast/show()V
return
L2:
aload 0
getfield com/nd/android/u/contact/dialog/InputDismissNameDialog$1/this$0 Lcom/nd/android/u/contact/dialog/InputDismissNameDialog;
invokestatic com/nd/android/u/contact/dialog/InputDismissNameDialog/access$300(Lcom/nd/android/u/contact/dialog/InputDismissNameDialog;)I
iconst_2
if_icmpeq L3
aload 0
getfield com/nd/android/u/contact/dialog/InputDismissNameDialog$1/this$0 Lcom/nd/android/u/contact/dialog/InputDismissNameDialog;
invokestatic com/nd/android/u/contact/dialog/InputDismissNameDialog/access$100(Lcom/nd/android/u/contact/dialog/InputDismissNameDialog;)Landroid/content/Context;
getstatic com/nd/android/u/contact/R$string/personal_input I
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 0
getfield com/nd/android/u/contact/dialog/InputDismissNameDialog$1/this$0 Lcom/nd/android/u/contact/dialog/InputDismissNameDialog;
invokestatic com/nd/android/u/contact/dialog/InputDismissNameDialog/access$200(Lcom/nd/android/u/contact/dialog/InputDismissNameDialog;)Ljava/lang/String;
aastore
invokevirtual android/content/Context/getString(I[Ljava/lang/Object;)Ljava/lang/String;
astore 4
aload 0
getfield com/nd/android/u/contact/dialog/InputDismissNameDialog$1/this$0 Lcom/nd/android/u/contact/dialog/InputDismissNameDialog;
invokestatic com/nd/android/u/contact/dialog/InputDismissNameDialog/access$300(Lcom/nd/android/u/contact/dialog/InputDismissNameDialog;)I
iconst_1
if_icmpne L4
ldc "^[0-9a-z._-]+@(([0-9a-z]+)[.])+[a-z]{2,3}$"
astore 1
L5:
aload 1
invokestatic java/util/regex/Pattern/compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
aload 3
invokevirtual java/util/regex/Pattern/matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
invokevirtual java/util/regex/Matcher/matches()Z
ifne L6
aload 0
getfield com/nd/android/u/contact/dialog/InputDismissNameDialog$1/this$0 Lcom/nd/android/u/contact/dialog/InputDismissNameDialog;
invokestatic com/nd/android/u/contact/dialog/InputDismissNameDialog/access$100(Lcom/nd/android/u/contact/dialog/InputDismissNameDialog;)Landroid/content/Context;
aload 4
iconst_1
invokestatic android/widget/Toast/makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
invokevirtual android/widget/Toast/show()V
return
L4:
ldc "1\\d{10}"
astore 1
goto L5
L3:
aload 3
invokevirtual java/lang/String/length()I
bipush 18
if_icmple L7
aload 0
getfield com/nd/android/u/contact/dialog/InputDismissNameDialog$1/this$0 Lcom/nd/android/u/contact/dialog/InputDismissNameDialog;
invokestatic com/nd/android/u/contact/dialog/InputDismissNameDialog/access$100(Lcom/nd/android/u/contact/dialog/InputDismissNameDialog;)Landroid/content/Context;
getstatic com/nd/android/u/contact/R$string/discussion_name_limit_max I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
return
L7:
aload 3
invokevirtual java/lang/String/length()I
iconst_2
if_icmpge L8
aload 0
getfield com/nd/android/u/contact/dialog/InputDismissNameDialog$1/this$0 Lcom/nd/android/u/contact/dialog/InputDismissNameDialog;
invokestatic com/nd/android/u/contact/dialog/InputDismissNameDialog/access$100(Lcom/nd/android/u/contact/dialog/InputDismissNameDialog;)Landroid/content/Context;
getstatic com/nd/android/u/contact/R$string/discussion_name_limit_min I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
return
L8:
aload 3
invokestatic com/common/android/utils/smiley/Smileyhelper/containEmoji(Ljava/lang/String;)Z
ifeq L6
aload 0
getfield com/nd/android/u/contact/dialog/InputDismissNameDialog$1/this$0 Lcom/nd/android/u/contact/dialog/InputDismissNameDialog;
invokestatic com/nd/android/u/contact/dialog/InputDismissNameDialog/access$100(Lcom/nd/android/u/contact/dialog/InputDismissNameDialog;)Landroid/content/Context;
getstatic com/nd/android/u/contact/R$string/discussion_name_not_emoji I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
return
L6:
aload 0
getfield com/nd/android/u/contact/dialog/InputDismissNameDialog$1/this$0 Lcom/nd/android/u/contact/dialog/InputDismissNameDialog;
invokestatic com/nd/android/u/contact/dialog/InputDismissNameDialog/access$400(Lcom/nd/android/u/contact/dialog/InputDismissNameDialog;)Lcom/nd/android/u/contact/dialog/InputDismissNameDialog$OnDlgModifyTextDismissListener;
ifnull L1
aload 0
getfield com/nd/android/u/contact/dialog/InputDismissNameDialog$1/this$0 Lcom/nd/android/u/contact/dialog/InputDismissNameDialog;
invokestatic com/nd/android/u/contact/dialog/InputDismissNameDialog/access$500(Lcom/nd/android/u/contact/dialog/InputDismissNameDialog;)V
return
.limit locals 5
.limit stack 7
.end method
