.bytecode 50.0
.class synchronized com/nd/schoollife/ui/common/process/InputContentViewManager$TextLengthWatcher
.super java/lang/Object
.implements android/text/TextWatcher
.inner class private TextLengthWatcher inner com/nd/schoollife/ui/common/process/InputContentViewManager$TextLengthWatcher outer com/nd/schoollife/ui/common/process/InputContentViewManager

.field final synthetic 'this$0' Lcom/nd/schoollife/ui/common/process/InputContentViewManager;

.method private <init>(Lcom/nd/schoollife/ui/common/process/InputContentViewManager;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/common/process/InputContentViewManager$TextLengthWatcher/this$0 Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/nd/schoollife/ui/common/process/InputContentViewManager;Lcom/nd/schoollife/ui/common/process/InputContentViewManager$1;)V
aload 0
aload 1
invokespecial com/nd/schoollife/ui/common/process/InputContentViewManager$TextLengthWatcher/<init>(Lcom/nd/schoollife/ui/common/process/InputContentViewManager;)V
return
.limit locals 3
.limit stack 2
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager$TextLengthWatcher/this$0 Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
aload 1
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokestatic com/nd/schoollife/ui/common/process/InputContentViewManager/access$1000(Lcom/nd/schoollife/ui/common/process/InputContentViewManager;Ljava/lang/String;)V
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager$TextLengthWatcher/this$0 Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
invokestatic com/nd/schoollife/ui/common/process/InputContentViewManager/access$1100(Lcom/nd/schoollife/ui/common/process/InputContentViewManager;)I
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager$TextLengthWatcher/this$0 Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
invokestatic com/nd/schoollife/ui/common/process/InputContentViewManager/access$1200(Lcom/nd/schoollife/ui/common/process/InputContentViewManager;)I
if_icmplt L0
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager$TextLengthWatcher/this$0 Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
invokestatic com/nd/schoollife/ui/common/process/InputContentViewManager/access$1300(Lcom/nd/schoollife/ui/common/process/InputContentViewManager;)Landroid/widget/TextView;
invokevirtual android/widget/TextView/getVisibility()I
bipush 8
if_icmpne L1
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager$TextLengthWatcher/this$0 Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
invokestatic com/nd/schoollife/ui/common/process/InputContentViewManager/access$1300(Lcom/nd/schoollife/ui/common/process/InputContentViewManager;)Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
L1:
return
L0:
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager$TextLengthWatcher/this$0 Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
invokestatic com/nd/schoollife/ui/common/process/InputContentViewManager/access$1300(Lcom/nd/schoollife/ui/common/process/InputContentViewManager;)Landroid/widget/TextView;
invokevirtual android/widget/TextView/getVisibility()I
ifne L1
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager$TextLengthWatcher/this$0 Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
invokestatic com/nd/schoollife/ui/common/process/InputContentViewManager/access$1300(Lcom/nd/schoollife/ui/common/process/InputContentViewManager;)Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
return
.limit locals 2
.limit stack 2
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
