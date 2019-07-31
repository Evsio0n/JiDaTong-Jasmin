.bytecode 50.0
.class synchronized com/nd/schoollife/ui/common/view/RefreshBtn$1
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/schoollife/ui/common/view/RefreshBtn/initView()V
.inner class inner com/nd/schoollife/ui/common/view/RefreshBtn$1

.field final synthetic 'this$0' Lcom/nd/schoollife/ui/common/view/RefreshBtn;

.method <init>(Lcom/nd/schoollife/ui/common/view/RefreshBtn;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/common/view/RefreshBtn$1/this$0 Lcom/nd/schoollife/ui/common/view/RefreshBtn;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 0
getfield com/nd/schoollife/ui/common/view/RefreshBtn$1/this$0 Lcom/nd/schoollife/ui/common/view/RefreshBtn;
invokestatic com/nd/schoollife/ui/common/view/RefreshBtn/access$000(Lcom/nd/schoollife/ui/common/view/RefreshBtn;)Lcom/nd/schoollife/ui/common/view/RefreshBtn$RefreshBtnOnClickListener;
ifnull L0
aload 0
getfield com/nd/schoollife/ui/common/view/RefreshBtn$1/this$0 Lcom/nd/schoollife/ui/common/view/RefreshBtn;
invokestatic com/nd/schoollife/ui/common/view/RefreshBtn/access$100(Lcom/nd/schoollife/ui/common/view/RefreshBtn;)Z
ifne L0
aload 0
getfield com/nd/schoollife/ui/common/view/RefreshBtn$1/this$0 Lcom/nd/schoollife/ui/common/view/RefreshBtn;
invokestatic com/nd/schoollife/ui/common/view/RefreshBtn/access$000(Lcom/nd/schoollife/ui/common/view/RefreshBtn;)Lcom/nd/schoollife/ui/common/view/RefreshBtn$RefreshBtnOnClickListener;
aload 0
getfield com/nd/schoollife/ui/common/view/RefreshBtn$1/this$0 Lcom/nd/schoollife/ui/common/view/RefreshBtn;
invokeinterface com/nd/schoollife/ui/common/view/RefreshBtn$RefreshBtnOnClickListener/onRefreshOnClick(Lcom/nd/schoollife/ui/common/view/RefreshBtn;)Z 1
ifeq L0
aload 0
getfield com/nd/schoollife/ui/common/view/RefreshBtn$1/this$0 Lcom/nd/schoollife/ui/common/view/RefreshBtn;
invokevirtual com/nd/schoollife/ui/common/view/RefreshBtn/refreshingImpl()V
L0:
return
.limit locals 2
.limit stack 2
.end method
