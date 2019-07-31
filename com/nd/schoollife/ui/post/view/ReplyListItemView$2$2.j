.bytecode 50.0
.class synchronized com/nd/schoollife/ui/post/view/ReplyListItemView$2$2
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/schoollife/ui/post/view/ReplyListItemView$2/onClick(Landroid/view/View;)V
.inner class inner com/nd/schoollife/ui/post/view/ReplyListItemView$2
.inner class inner com/nd/schoollife/ui/post/view/ReplyListItemView$2$2

.field final synthetic 'this$1' Lcom/nd/schoollife/ui/post/view/ReplyListItemView$2;

.method <init>(Lcom/nd/schoollife/ui/post/view/ReplyListItemView$2;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/post/view/ReplyListItemView$2$2/this$1 Lcom/nd/schoollife/ui/post/view/ReplyListItemView$2;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 0
getfield com/nd/schoollife/ui/post/view/ReplyListItemView$2$2/this$1 Lcom/nd/schoollife/ui/post/view/ReplyListItemView$2;
getfield com/nd/schoollife/ui/post/view/ReplyListItemView$2/this$0 Lcom/nd/schoollife/ui/post/view/ReplyListItemView;
invokestatic com/nd/schoollife/ui/post/view/ReplyListItemView/access$100(Lcom/nd/schoollife/ui/post/view/ReplyListItemView;)Landroid/content/Context;
ifnull L0
aload 0
getfield com/nd/schoollife/ui/post/view/ReplyListItemView$2$2/this$1 Lcom/nd/schoollife/ui/post/view/ReplyListItemView$2;
getfield com/nd/schoollife/ui/post/view/ReplyListItemView$2/this$0 Lcom/nd/schoollife/ui/post/view/ReplyListItemView;
invokestatic com/nd/schoollife/ui/post/view/ReplyListItemView/access$100(Lcom/nd/schoollife/ui/post/view/ReplyListItemView;)Landroid/content/Context;
checkcast com/nd/schoollife/ui/common/activity/BaseSchoollifeActivity
invokevirtual com/nd/schoollife/ui/common/activity/BaseSchoollifeActivity/dismissConfirmDialog()V
L0:
return
.limit locals 2
.limit stack 1
.end method
