.bytecode 50.0
.class synchronized com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$6
.super java/lang/Object
.implements android/text/TextWatcher
.enclosing method com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg
.inner class inner com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$6

.field final synthetic 'this$0' Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;

.method <init>(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;)V
aload 0
aload 1
putfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$6/this$0 Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
aload 1
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokevirtual java/lang/String/length()I
istore 2
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$6/this$0 Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;
iload 2
invokestatic com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/access$4300(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;I)Ljava/lang/String;
astore 1
iload 2
sipush 140
if_icmple L0
aload 1
ldc "("
invokevirtual java/lang/String/indexOf(Ljava/lang/String;)I
istore 2
aload 1
ldc "/"
invokevirtual java/lang/String/indexOf(Ljava/lang/String;)I
istore 3
new android/text/SpannableStringBuilder
dup
aload 1
invokespecial android/text/SpannableStringBuilder/<init>(Ljava/lang/CharSequence;)V
astore 1
aload 1
new android/text/style/ForegroundColorSpan
dup
ldc_w -65536
invokespecial android/text/style/ForegroundColorSpan/<init>(I)V
iload 2
iconst_1
iadd
iload 3
bipush 34
invokevirtual android/text/SpannableStringBuilder/setSpan(Ljava/lang/Object;III)V
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$6/this$0 Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;
invokestatic com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/access$4400(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;)Landroid/widget/TextView;
aload 1
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
L0:
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$6/this$0 Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;
invokestatic com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/access$4400(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;)Landroid/widget/TextView;
aload 1
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
.limit locals 4
.limit stack 5
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
