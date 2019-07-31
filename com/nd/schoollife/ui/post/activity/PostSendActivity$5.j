.bytecode 50.0
.class synchronized com/nd/schoollife/ui/post/activity/PostSendActivity$5
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/schoollife/ui/post/activity/PostSendActivity/showSending()V
.inner class inner com/nd/schoollife/ui/post/activity/PostSendActivity$5

.field final synthetic 'this$0' Lcom/nd/schoollife/ui/post/activity/PostSendActivity;

.method <init>(Lcom/nd/schoollife/ui/post/activity/PostSendActivity;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/post/activity/PostSendActivity$5/this$0 Lcom/nd/schoollife/ui/post/activity/PostSendActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 0
getfield com/nd/schoollife/ui/post/activity/PostSendActivity$5/this$0 Lcom/nd/schoollife/ui/post/activity/PostSendActivity;
invokevirtual com/nd/schoollife/ui/post/activity/PostSendActivity/getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
invokevirtual android/support/v4/app/FragmentManager/beginTransaction()Landroid/support/v4/app/FragmentTransaction;
aload 0
getfield com/nd/schoollife/ui/post/activity/PostSendActivity$5/this$0 Lcom/nd/schoollife/ui/post/activity/PostSendActivity;
invokestatic com/nd/schoollife/ui/post/activity/PostSendActivity/access$1100(Lcom/nd/schoollife/ui/post/activity/PostSendActivity;)Lcom/nd/schoollife/ui/common/fragment/TipsDialog;
invokevirtual android/support/v4/app/FragmentTransaction/remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
invokevirtual android/support/v4/app/FragmentTransaction/commit()I
pop
return
.limit locals 2
.limit stack 2
.end method
