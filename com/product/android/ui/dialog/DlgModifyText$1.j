.bytecode 50.0
.class synchronized com/product/android/ui/dialog/DlgModifyText$1
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/product/android/ui/dialog/DlgModifyText
.inner class inner com/product/android/ui/dialog/DlgModifyText$1

.field final synthetic 'this$0' Lcom/product/android/ui/dialog/DlgModifyText;

.method <init>(Lcom/product/android/ui/dialog/DlgModifyText;)V
aload 0
aload 1
putfield com/product/android/ui/dialog/DlgModifyText$1/this$0 Lcom/product/android/ui/dialog/DlgModifyText;
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
getstatic com/nd/android/u/allcommon/R$id/button_cancel I
if_icmpne L0
aload 0
getfield com/product/android/ui/dialog/DlgModifyText$1/this$0 Lcom/product/android/ui/dialog/DlgModifyText;
invokevirtual com/product/android/ui/dialog/DlgModifyText/dismiss()V
L1:
return
L0:
iload 2
getstatic com/nd/android/u/allcommon/R$id/button_ok I
if_icmpne L1
aload 0
getfield com/product/android/ui/dialog/DlgModifyText$1/this$0 Lcom/product/android/ui/dialog/DlgModifyText;
invokestatic com/product/android/ui/dialog/DlgModifyText/access$000(Lcom/product/android/ui/dialog/DlgModifyText;)Landroid/widget/EditText;
invokevirtual android/widget/EditText/getText()Landroid/text/Editable;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokevirtual java/lang/String/trim()Ljava/lang/String;
astore 3
aload 3
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L2
aload 0
getfield com/product/android/ui/dialog/DlgModifyText$1/this$0 Lcom/product/android/ui/dialog/DlgModifyText;
invokestatic com/product/android/ui/dialog/DlgModifyText/access$100(Lcom/product/android/ui/dialog/DlgModifyText;)Landroid/content/Context;
aload 0
getfield com/product/android/ui/dialog/DlgModifyText$1/this$0 Lcom/product/android/ui/dialog/DlgModifyText;
invokestatic com/product/android/ui/dialog/DlgModifyText/access$100(Lcom/product/android/ui/dialog/DlgModifyText;)Landroid/content/Context;
getstatic com/nd/android/u/allcommon/R$string/personal_save I
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 0
getfield com/product/android/ui/dialog/DlgModifyText$1/this$0 Lcom/product/android/ui/dialog/DlgModifyText;
invokestatic com/product/android/ui/dialog/DlgModifyText/access$200(Lcom/product/android/ui/dialog/DlgModifyText;)Ljava/lang/String;
aastore
invokevirtual android/content/Context/getString(I[Ljava/lang/Object;)Ljava/lang/String;
iconst_1
invokestatic android/widget/Toast/makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
invokevirtual android/widget/Toast/show()V
return
L2:
aload 0
getfield com/product/android/ui/dialog/DlgModifyText$1/this$0 Lcom/product/android/ui/dialog/DlgModifyText;
invokestatic com/product/android/ui/dialog/DlgModifyText/access$300(Lcom/product/android/ui/dialog/DlgModifyText;)I
iconst_2
if_icmpeq L3
aload 0
getfield com/product/android/ui/dialog/DlgModifyText$1/this$0 Lcom/product/android/ui/dialog/DlgModifyText;
invokestatic com/product/android/ui/dialog/DlgModifyText/access$100(Lcom/product/android/ui/dialog/DlgModifyText;)Landroid/content/Context;
getstatic com/nd/android/u/allcommon/R$string/personal_input I
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 0
getfield com/product/android/ui/dialog/DlgModifyText$1/this$0 Lcom/product/android/ui/dialog/DlgModifyText;
invokestatic com/product/android/ui/dialog/DlgModifyText/access$200(Lcom/product/android/ui/dialog/DlgModifyText;)Ljava/lang/String;
aastore
invokevirtual android/content/Context/getString(I[Ljava/lang/Object;)Ljava/lang/String;
astore 4
aload 0
getfield com/product/android/ui/dialog/DlgModifyText$1/this$0 Lcom/product/android/ui/dialog/DlgModifyText;
invokestatic com/product/android/ui/dialog/DlgModifyText/access$300(Lcom/product/android/ui/dialog/DlgModifyText;)I
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
getfield com/product/android/ui/dialog/DlgModifyText$1/this$0 Lcom/product/android/ui/dialog/DlgModifyText;
invokestatic com/product/android/ui/dialog/DlgModifyText/access$100(Lcom/product/android/ui/dialog/DlgModifyText;)Landroid/content/Context;
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
getfield com/product/android/ui/dialog/DlgModifyText$1/this$0 Lcom/product/android/ui/dialog/DlgModifyText;
invokestatic com/product/android/ui/dialog/DlgModifyText/access$100(Lcom/product/android/ui/dialog/DlgModifyText;)Landroid/content/Context;
getstatic com/nd/android/u/allcommon/R$string/discussion_name_limit_max I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
return
L7:
aload 3
invokevirtual java/lang/String/length()I
iconst_2
if_icmpge L6
aload 0
getfield com/product/android/ui/dialog/DlgModifyText$1/this$0 Lcom/product/android/ui/dialog/DlgModifyText;
invokestatic com/product/android/ui/dialog/DlgModifyText/access$100(Lcom/product/android/ui/dialog/DlgModifyText;)Landroid/content/Context;
getstatic com/nd/android/u/allcommon/R$string/discussion_name_limit_min I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
return
L6:
aload 0
getfield com/product/android/ui/dialog/DlgModifyText$1/this$0 Lcom/product/android/ui/dialog/DlgModifyText;
invokestatic com/product/android/ui/dialog/DlgModifyText/access$400(Lcom/product/android/ui/dialog/DlgModifyText;)Lcom/product/android/ui/dialog/DlgModifyText$OnDlgModifyTextDismissListener;
ifnull L1
aload 0
getfield com/product/android/ui/dialog/DlgModifyText$1/this$0 Lcom/product/android/ui/dialog/DlgModifyText;
invokestatic com/product/android/ui/dialog/DlgModifyText/access$500(Lcom/product/android/ui/dialog/DlgModifyText;)V
return
.limit locals 5
.limit stack 7
.end method
