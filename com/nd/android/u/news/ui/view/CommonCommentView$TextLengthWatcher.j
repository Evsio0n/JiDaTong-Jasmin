.bytecode 50.0
.class synchronized com/nd/android/u/news/ui/view/CommonCommentView$TextLengthWatcher
.super java/lang/Object
.implements android/text/TextWatcher
.inner class private TextLengthWatcher inner com/nd/android/u/news/ui/view/CommonCommentView$TextLengthWatcher outer com/nd/android/u/news/ui/view/CommonCommentView

.field final synthetic 'this$0' Lcom/nd/android/u/news/ui/view/CommonCommentView;

.method private <init>(Lcom/nd/android/u/news/ui/view/CommonCommentView;)V
aload 0
aload 1
putfield com/nd/android/u/news/ui/view/CommonCommentView$TextLengthWatcher/this$0 Lcom/nd/android/u/news/ui/view/CommonCommentView;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/nd/android/u/news/ui/view/CommonCommentView;Lcom/nd/android/u/news/ui/view/CommonCommentView$1;)V
aload 0
aload 1
invokespecial com/nd/android/u/news/ui/view/CommonCommentView$TextLengthWatcher/<init>(Lcom/nd/android/u/news/ui/view/CommonCommentView;)V
return
.limit locals 3
.limit stack 2
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
aload 0
getfield com/nd/android/u/news/ui/view/CommonCommentView$TextLengthWatcher/this$0 Lcom/nd/android/u/news/ui/view/CommonCommentView;
aload 1
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokestatic com/nd/android/u/news/ui/view/CommonCommentView/access$100(Lcom/nd/android/u/news/ui/view/CommonCommentView;Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/news/ui/view/CommonCommentView$TextLengthWatcher/this$0 Lcom/nd/android/u/news/ui/view/CommonCommentView;
invokestatic com/nd/android/u/news/ui/view/CommonCommentView/access$200(Lcom/nd/android/u/news/ui/view/CommonCommentView;)I
bipush 70
if_icmplt L0
aload 0
getfield com/nd/android/u/news/ui/view/CommonCommentView$TextLengthWatcher/this$0 Lcom/nd/android/u/news/ui/view/CommonCommentView;
invokestatic com/nd/android/u/news/ui/view/CommonCommentView/access$300(Lcom/nd/android/u/news/ui/view/CommonCommentView;)Landroid/widget/TextView;
invokevirtual android/widget/TextView/getVisibility()I
bipush 8
if_icmpne L1
aload 0
getfield com/nd/android/u/news/ui/view/CommonCommentView$TextLengthWatcher/this$0 Lcom/nd/android/u/news/ui/view/CommonCommentView;
invokestatic com/nd/android/u/news/ui/view/CommonCommentView/access$300(Lcom/nd/android/u/news/ui/view/CommonCommentView;)Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
L1:
return
L0:
aload 0
getfield com/nd/android/u/news/ui/view/CommonCommentView$TextLengthWatcher/this$0 Lcom/nd/android/u/news/ui/view/CommonCommentView;
invokestatic com/nd/android/u/news/ui/view/CommonCommentView/access$300(Lcom/nd/android/u/news/ui/view/CommonCommentView;)Landroid/widget/TextView;
invokevirtual android/widget/TextView/getVisibility()I
ifne L1
aload 0
getfield com/nd/android/u/news/ui/view/CommonCommentView$TextLengthWatcher/this$0 Lcom/nd/android/u/news/ui/view/CommonCommentView;
invokestatic com/nd/android/u/news/ui/view/CommonCommentView/access$300(Lcom/nd/android/u/news/ui/view/CommonCommentView;)Landroid/widget/TextView;
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
