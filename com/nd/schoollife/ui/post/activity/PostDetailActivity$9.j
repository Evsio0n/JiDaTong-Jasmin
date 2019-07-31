.bytecode 50.0
.class synchronized com/nd/schoollife/ui/post/activity/PostDetailActivity$9
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/schoollife/ui/post/activity/PostDetailActivity/processOnPostExecute(ILcom/nd/schoollife/ui/common/task/CallStyle;Ljava/lang/Object;)V
.inner class inner com/nd/schoollife/ui/post/activity/PostDetailActivity$9

.field final synthetic 'this$0' Lcom/nd/schoollife/ui/post/activity/PostDetailActivity;

.method <init>(Lcom/nd/schoollife/ui/post/activity/PostDetailActivity;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/post/activity/PostDetailActivity$9/this$0 Lcom/nd/schoollife/ui/post/activity/PostDetailActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity$9/this$0 Lcom/nd/schoollife/ui/post/activity/PostDetailActivity;
invokevirtual com/nd/schoollife/ui/post/activity/PostDetailActivity/dismissConfirmDialog()V
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity$9/this$0 Lcom/nd/schoollife/ui/post/activity/PostDetailActivity;
invokevirtual com/nd/schoollife/ui/post/activity/PostDetailActivity/finish()V
return
.limit locals 2
.limit stack 1
.end method
