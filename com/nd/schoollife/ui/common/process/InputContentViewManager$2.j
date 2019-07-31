.bytecode 50.0
.class synchronized com/nd/schoollife/ui/common/process/InputContentViewManager$2
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/schoollife/ui/common/process/InputContentViewManager/updateUploadView()V
.inner class inner com/nd/schoollife/ui/common/process/InputContentViewManager$2

.field final synthetic 'this$0' Lcom/nd/schoollife/ui/common/process/InputContentViewManager;

.field final synthetic 'val$strKey' Ljava/lang/String;

.method <init>(Lcom/nd/schoollife/ui/common/process/InputContentViewManager;Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/common/process/InputContentViewManager$2/this$0 Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
aload 0
aload 2
putfield com/nd/schoollife/ui/common/process/InputContentViewManager$2/val$strKey Ljava/lang/String;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager$2/this$0 Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
invokestatic com/nd/schoollife/ui/common/process/InputContentViewManager/access$300(Lcom/nd/schoollife/ui/common/process/InputContentViewManager;)Landroid/widget/LinearLayout;
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager$2/this$0 Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
invokestatic com/nd/schoollife/ui/common/process/InputContentViewManager/access$200(Lcom/nd/schoollife/ui/common/process/InputContentViewManager;)Ljava/util/HashMap;
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager$2/val$strKey Ljava/lang/String;
invokevirtual java/util/HashMap/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast android/view/View
invokevirtual android/widget/LinearLayout/removeView(Landroid/view/View;)V
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager$2/this$0 Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
invokestatic com/nd/schoollife/ui/common/process/InputContentViewManager/access$400(Lcom/nd/schoollife/ui/common/process/InputContentViewManager;)Ljava/util/ArrayList;
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager$2/val$strKey Ljava/lang/String;
invokevirtual java/util/ArrayList/remove(Ljava/lang/Object;)Z
pop
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager$2/this$0 Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
invokestatic com/nd/schoollife/ui/common/process/InputContentViewManager/access$200(Lcom/nd/schoollife/ui/common/process/InputContentViewManager;)Ljava/util/HashMap;
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager$2/val$strKey Ljava/lang/String;
invokevirtual java/util/HashMap/remove(Ljava/lang/Object;)Ljava/lang/Object;
pop
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager$2/this$0 Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager$2/this$0 Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
invokestatic com/nd/schoollife/ui/common/process/InputContentViewManager/access$400(Lcom/nd/schoollife/ui/common/process/InputContentViewManager;)Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
invokestatic com/nd/schoollife/ui/common/process/InputContentViewManager/access$500(Lcom/nd/schoollife/ui/common/process/InputContentViewManager;I)V
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager$2/this$0 Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
invokestatic com/nd/schoollife/ui/common/process/InputContentViewManager/access$600(Lcom/nd/schoollife/ui/common/process/InputContentViewManager;)Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
return
.limit locals 2
.limit stack 3
.end method
