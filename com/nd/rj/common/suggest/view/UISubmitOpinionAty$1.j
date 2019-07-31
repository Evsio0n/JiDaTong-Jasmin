.bytecode 50.0
.class synchronized com/nd/rj/common/suggest/view/UISubmitOpinionAty$1
.super java/lang/Object
.implements android/text/TextWatcher
.enclosing method com/nd/rj/common/suggest/view/UISubmitOpinionAty
.inner class inner com/nd/rj/common/suggest/view/UISubmitOpinionAty$1

.field final synthetic 'this$0' Lcom/nd/rj/common/suggest/view/UISubmitOpinionAty;

.method <init>(Lcom/nd/rj/common/suggest/view/UISubmitOpinionAty;)V
aload 0
aload 1
putfield com/nd/rj/common/suggest/view/UISubmitOpinionAty$1/this$0 Lcom/nd/rj/common/suggest/view/UISubmitOpinionAty;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
aload 0
getfield com/nd/rj/common/suggest/view/UISubmitOpinionAty$1/this$0 Lcom/nd/rj/common/suggest/view/UISubmitOpinionAty;
getfield com/nd/rj/common/suggest/view/UISubmitOpinionAty/m_editSubMessage Landroid/widget/EditText;
invokevirtual android/widget/EditText/getText()Landroid/text/Editable;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokevirtual java/lang/String/length()I
istore 2
aload 0
getfield com/nd/rj/common/suggest/view/UISubmitOpinionAty$1/this$0 Lcom/nd/rj/common/suggest/view/UISubmitOpinionAty;
getstatic com/nd/rj/common/R$string/suggest_sns_count_hint I
invokevirtual com/nd/rj/common/suggest/view/UISubmitOpinionAty/getString(I)Ljava/lang/String;
iconst_1
anewarray java/lang/Object
dup
iconst_0
sipush 140
iload 2
isub
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
astore 1
aload 0
getfield com/nd/rj/common/suggest/view/UISubmitOpinionAty$1/this$0 Lcom/nd/rj/common/suggest/view/UISubmitOpinionAty;
getfield com/nd/rj/common/suggest/view/UISubmitOpinionAty/m_textViewHit Landroid/widget/TextView;
aload 1
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
.limit locals 3
.limit stack 6
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
return
.limit locals 5
.limit stack 0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
return
.limit locals 5
.limit stack 0
.end method
