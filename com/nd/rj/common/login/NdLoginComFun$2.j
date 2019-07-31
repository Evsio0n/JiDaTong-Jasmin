.bytecode 50.0
.class final synchronized com/nd/rj/common/login/NdLoginComFun$2
.super java/lang/Object
.implements android/text/InputFilter
.enclosing method com/nd/rj/common/login/NdLoginComFun/SetEditTextEditable(Landroid/widget/EditText;Ljava/lang/Boolean;)V
.inner class static final inner com/nd/rj/common/login/NdLoginComFun$2

.method <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
aload 1
invokeinterface java/lang/CharSequence/length()I 0
iconst_1
if_icmpge L0
aload 4
iload 5
iload 6
invokeinterface android/text/Spanned/subSequence(II)Ljava/lang/CharSequence; 2
areturn
L0:
ldc ""
areturn
.limit locals 7
.limit stack 3
.end method
