.bytecode 50.0
.class synchronized com/nd/schoollife/ui/post/activity/PostDetailActivity$8
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/schoollife/ui/post/activity/PostDetailActivity/deletePost()V
.inner class inner com/nd/schoollife/ui/post/activity/PostDetailActivity$8

.field final synthetic 'this$0' Lcom/nd/schoollife/ui/post/activity/PostDetailActivity;

.method <init>(Lcom/nd/schoollife/ui/post/activity/PostDetailActivity;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/post/activity/PostDetailActivity$8/this$0 Lcom/nd/schoollife/ui/post/activity/PostDetailActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity$8/this$0 Lcom/nd/schoollife/ui/post/activity/PostDetailActivity;
invokestatic com/nd/schoollife/ui/post/activity/PostDetailActivity/access$2100(Lcom/nd/schoollife/ui/post/activity/PostDetailActivity;)Landroid/content/Context;
ifnull L0
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity$8/this$0 Lcom/nd/schoollife/ui/post/activity/PostDetailActivity;
invokestatic com/nd/schoollife/ui/post/activity/PostDetailActivity/access$2200(Lcom/nd/schoollife/ui/post/activity/PostDetailActivity;)Landroid/content/Context;
checkcast com/nd/schoollife/ui/common/activity/BaseSchoollifeActivity
invokevirtual com/nd/schoollife/ui/common/activity/BaseSchoollifeActivity/dismissConfirmDialog()V
L0:
return
.limit locals 2
.limit stack 1
.end method
