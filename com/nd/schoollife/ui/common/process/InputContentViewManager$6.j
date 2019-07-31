.bytecode 50.0
.class synchronized com/nd/schoollife/ui/common/process/InputContentViewManager$6
.super java/lang/Object
.implements com/common/android/utils/smiley/SmileyView$OnSmileyCutListener
.enclosing method com/nd/schoollife/ui/common/process/InputContentViewManager/showCommentView(Lcom/nd/schoollife/ui/common/process/InputContentViewManager$COMMENT_TYPE;Ljava/lang/String;Ljava/lang/String;)V
.inner class inner com/nd/schoollife/ui/common/process/InputContentViewManager$6

.field final synthetic 'this$0' Lcom/nd/schoollife/ui/common/process/InputContentViewManager;

.method <init>(Lcom/nd/schoollife/ui/common/process/InputContentViewManager;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/common/process/InputContentViewManager$6/this$0 Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onSmileyCut()V
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager$6/this$0 Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
invokestatic com/nd/schoollife/ui/common/process/InputContentViewManager/access$1500(Lcom/nd/schoollife/ui/common/process/InputContentViewManager;)Landroid/app/Activity;
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager$6/this$0 Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
invokestatic com/nd/schoollife/ui/common/process/InputContentViewManager/access$1500(Lcom/nd/schoollife/ui/common/process/InputContentViewManager;)Landroid/app/Activity;
invokevirtual android/app/Activity/getResources()Landroid/content/res/Resources;
getstatic com/nd/schoollife/R$string/post_conmment_auto_cut I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager$6/this$0 Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
invokestatic com/nd/schoollife/ui/common/process/InputContentViewManager/access$1400(Lcom/nd/schoollife/ui/common/process/InputContentViewManager;)I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
invokestatic com/nd/schoollife/common/utils/ui/ToastUtil/showShortToast(Landroid/content/Context;Ljava/lang/String;)V
return
.limit locals 1
.limit stack 6
.end method
