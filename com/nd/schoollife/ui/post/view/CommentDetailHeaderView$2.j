.bytecode 50.0
.class synchronized com/nd/schoollife/ui/post/view/CommentDetailHeaderView$2
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/schoollife/ui/post/view/CommentDetailHeaderView/initView(Landroid/content/Context;)V
.inner class inner com/nd/schoollife/ui/post/view/CommentDetailHeaderView$2
.inner class inner com/nd/schoollife/ui/post/view/CommentDetailHeaderView$2$1
.inner class inner com/nd/schoollife/ui/post/view/CommentDetailHeaderView$2$2

.field final synthetic 'this$0' Lcom/nd/schoollife/ui/post/view/CommentDetailHeaderView;

.method <init>(Lcom/nd/schoollife/ui/post/view/CommentDetailHeaderView;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/post/view/CommentDetailHeaderView$2/this$0 Lcom/nd/schoollife/ui/post/view/CommentDetailHeaderView;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 0
getfield com/nd/schoollife/ui/post/view/CommentDetailHeaderView$2/this$0 Lcom/nd/schoollife/ui/post/view/CommentDetailHeaderView;
invokestatic com/nd/schoollife/ui/post/view/CommentDetailHeaderView/access$100(Lcom/nd/schoollife/ui/post/view/CommentDetailHeaderView;)Landroid/content/Context;
ifnull L0
aload 0
getfield com/nd/schoollife/ui/post/view/CommentDetailHeaderView$2/this$0 Lcom/nd/schoollife/ui/post/view/CommentDetailHeaderView;
invokestatic com/nd/schoollife/ui/post/view/CommentDetailHeaderView/access$100(Lcom/nd/schoollife/ui/post/view/CommentDetailHeaderView;)Landroid/content/Context;
instanceof com/nd/schoollife/ui/common/activity/BaseSchoollifeActivity
ifeq L0
aload 0
getfield com/nd/schoollife/ui/post/view/CommentDetailHeaderView$2/this$0 Lcom/nd/schoollife/ui/post/view/CommentDetailHeaderView;
invokestatic com/nd/schoollife/ui/post/view/CommentDetailHeaderView/access$100(Lcom/nd/schoollife/ui/post/view/CommentDetailHeaderView;)Landroid/content/Context;
checkcast com/nd/schoollife/ui/common/activity/BaseSchoollifeActivity
ldc "\u63d0\u793a"
ldc "\u662f\u5426\u786e\u5b9a\u5220\u9664\u6b64\u56de\u5e16\uff1f"
ldc ""
ldc ""
new com/nd/schoollife/ui/post/view/CommentDetailHeaderView$2$1
dup
aload 0
invokespecial com/nd/schoollife/ui/post/view/CommentDetailHeaderView$2$1/<init>(Lcom/nd/schoollife/ui/post/view/CommentDetailHeaderView$2;)V
new com/nd/schoollife/ui/post/view/CommentDetailHeaderView$2$2
dup
aload 0
invokespecial com/nd/schoollife/ui/post/view/CommentDetailHeaderView$2$2/<init>(Lcom/nd/schoollife/ui/post/view/CommentDetailHeaderView$2;)V
invokevirtual com/nd/schoollife/ui/common/activity/BaseSchoollifeActivity/showConfirmDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
L0:
return
.limit locals 2
.limit stack 9
.end method
