.bytecode 50.0
.class synchronized com/nd/rj/common/microblogging/SNSEditWeiBo$5
.super java/lang/Object
.implements android/text/TextWatcher
.enclosing method com/nd/rj/common/microblogging/SNSEditWeiBo
.inner class inner com/nd/rj/common/microblogging/SNSEditWeiBo$5

.field final synthetic 'this$0' Lcom/nd/rj/common/microblogging/SNSEditWeiBo;

.method <init>(Lcom/nd/rj/common/microblogging/SNSEditWeiBo;)V
aload 0
aload 1
putfield com/nd/rj/common/microblogging/SNSEditWeiBo$5/this$0 Lcom/nd/rj/common/microblogging/SNSEditWeiBo;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method private setUI(Ljava/lang/String;)V
aload 1
invokestatic com/nd/rj/common/microblogging/help/StrFun/getSNSStringLength(Ljava/lang/String;)I
istore 2
aload 1
invokevirtual java/lang/String/length()I
istore 3
aload 0
getfield com/nd/rj/common/microblogging/SNSEditWeiBo$5/this$0 Lcom/nd/rj/common/microblogging/SNSEditWeiBo;
invokestatic com/nd/rj/common/microblogging/SNSEditWeiBo/access$500(Lcom/nd/rj/common/microblogging/SNSEditWeiBo;)I
istore 4
aload 0
getfield com/nd/rj/common/microblogging/SNSEditWeiBo$5/this$0 Lcom/nd/rj/common/microblogging/SNSEditWeiBo;
invokestatic com/nd/rj/common/microblogging/SNSEditWeiBo/access$200(Lcom/nd/rj/common/microblogging/SNSEditWeiBo;)Landroid/widget/EditText;
iconst_1
anewarray android/text/InputFilter
dup
iconst_0
new android/text/InputFilter$LengthFilter
dup
aload 0
getfield com/nd/rj/common/microblogging/SNSEditWeiBo$5/this$0 Lcom/nd/rj/common/microblogging/SNSEditWeiBo;
invokestatic com/nd/rj/common/microblogging/SNSEditWeiBo/access$500(Lcom/nd/rj/common/microblogging/SNSEditWeiBo;)I
iload 3
iadd
iload 2
isub
invokespecial android/text/InputFilter$LengthFilter/<init>(I)V
aastore
invokevirtual android/widget/EditText/setFilters([Landroid/text/InputFilter;)V
aload 0
getfield com/nd/rj/common/microblogging/SNSEditWeiBo$5/this$0 Lcom/nd/rj/common/microblogging/SNSEditWeiBo;
getstatic com/nd/rj/common/R$string/sns_count_hint I
invokevirtual com/nd/rj/common/microblogging/SNSEditWeiBo/getString(I)Ljava/lang/String;
iconst_1
anewarray java/lang/Object
dup
iconst_0
iload 4
iload 2
isub
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
astore 1
aload 0
getfield com/nd/rj/common/microblogging/SNSEditWeiBo$5/this$0 Lcom/nd/rj/common/microblogging/SNSEditWeiBo;
invokestatic com/nd/rj/common/microblogging/SNSEditWeiBo/access$700(Lcom/nd/rj/common/microblogging/SNSEditWeiBo;)Landroid/widget/TextView;
aload 1
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
.limit locals 5
.limit stack 8
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
aload 0
getfield com/nd/rj/common/microblogging/SNSEditWeiBo$5/this$0 Lcom/nd/rj/common/microblogging/SNSEditWeiBo;
invokestatic com/nd/rj/common/microblogging/SNSEditWeiBo/access$200(Lcom/nd/rj/common/microblogging/SNSEditWeiBo;)Landroid/widget/EditText;
invokevirtual android/widget/EditText/getText()Landroid/text/Editable;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
astore 4
aload 4
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
return
L0:
aload 4
invokestatic com/nd/rj/common/microblogging/help/StrFun/getSNSStringLength(Ljava/lang/String;)I
istore 3
iload 3
istore 2
aload 4
astore 1
iload 3
aload 0
getfield com/nd/rj/common/microblogging/SNSEditWeiBo$5/this$0 Lcom/nd/rj/common/microblogging/SNSEditWeiBo;
invokestatic com/nd/rj/common/microblogging/SNSEditWeiBo/access$500(Lcom/nd/rj/common/microblogging/SNSEditWeiBo;)I
if_icmpgt L1
aload 0
aload 4
invokespecial com/nd/rj/common/microblogging/SNSEditWeiBo$5/setUI(Ljava/lang/String;)V
return
L1:
iload 2
aload 0
getfield com/nd/rj/common/microblogging/SNSEditWeiBo$5/this$0 Lcom/nd/rj/common/microblogging/SNSEditWeiBo;
invokestatic com/nd/rj/common/microblogging/SNSEditWeiBo/access$500(Lcom/nd/rj/common/microblogging/SNSEditWeiBo;)I
if_icmple L2
aload 1
iconst_0
aload 1
invokevirtual java/lang/String/length()I
iconst_1
isub
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
astore 1
aload 1
invokestatic com/nd/rj/common/microblogging/help/StrFun/getSNSStringLength(Ljava/lang/String;)I
istore 2
goto L1
L2:
aload 0
aload 1
invokespecial com/nd/rj/common/microblogging/SNSEditWeiBo$5/setUI(Ljava/lang/String;)V
aload 0
getfield com/nd/rj/common/microblogging/SNSEditWeiBo$5/this$0 Lcom/nd/rj/common/microblogging/SNSEditWeiBo;
invokestatic com/nd/rj/common/microblogging/SNSEditWeiBo/access$200(Lcom/nd/rj/common/microblogging/SNSEditWeiBo;)Landroid/widget/EditText;
aload 1
invokevirtual android/widget/EditText/setText(Ljava/lang/CharSequence;)V
return
.limit locals 5
.limit stack 4
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
