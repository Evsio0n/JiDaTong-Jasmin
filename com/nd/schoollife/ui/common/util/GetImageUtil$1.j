.bytecode 50.0
.class synchronized com/nd/schoollife/ui/common/util/GetImageUtil$1
.super java/lang/Object
.implements android/content/DialogInterface$OnClickListener
.enclosing method com/nd/schoollife/ui/common/util/GetImageUtil/doTakePhoto()V
.inner class inner com/nd/schoollife/ui/common/util/GetImageUtil$1

.field final synthetic 'this$0' Lcom/nd/schoollife/ui/common/util/GetImageUtil;

.method <init>(Lcom/nd/schoollife/ui/common/util/GetImageUtil;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/common/util/GetImageUtil$1/this$0 Lcom/nd/schoollife/ui/common/util/GetImageUtil;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
aload 0
getfield com/nd/schoollife/ui/common/util/GetImageUtil$1/this$0 Lcom/nd/schoollife/ui/common/util/GetImageUtil;
invokevirtual com/nd/schoollife/ui/common/util/GetImageUtil/goToCamera()V
return
.limit locals 3
.limit stack 1
.end method
