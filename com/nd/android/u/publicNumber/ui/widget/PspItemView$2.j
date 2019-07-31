.bytecode 50.0
.class synchronized com/nd/android/u/publicNumber/ui/widget/PspItemView$2
.super java/lang/Object
.implements android/view/View$OnLongClickListener
.enclosing method com/nd/android/u/publicNumber/ui/widget/PspItemView
.inner class inner com/nd/android/u/publicNumber/ui/widget/PspItemView$2

.field final synthetic 'this$0' Lcom/nd/android/u/publicNumber/ui/widget/PspItemView;

.method <init>(Lcom/nd/android/u/publicNumber/ui/widget/PspItemView;)V
aload 0
aload 1
putfield com/nd/android/u/publicNumber/ui/widget/PspItemView$2/this$0 Lcom/nd/android/u/publicNumber/ui/widget/PspItemView;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onLongClick(Landroid/view/View;)Z
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PspItemView$2/this$0 Lcom/nd/android/u/publicNumber/ui/widget/PspItemView;
invokestatic com/nd/android/u/publicNumber/ui/widget/PspItemView/access$000(Lcom/nd/android/u/publicNumber/ui/widget/PspItemView;)Lcom/nd/android/u/publicNumber/controller/bean/PublicNumberInfo;
getfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/subway I
iconst_2
if_icmpeq L0
new android/os/Message
dup
invokespecial android/os/Message/<init>()V
astore 1
aload 1
bipush 26
putfield android/os/Message/what I
aload 1
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PspItemView$2/this$0 Lcom/nd/android/u/publicNumber/ui/widget/PspItemView;
putfield android/os/Message/obj Ljava/lang/Object;
invokestatic com/nd/android/u/controller/observer/MessageDispatcher/getInstance()Lcom/nd/android/u/controller/observer/MessageDispatcher;
iconst_5
aload 1
invokevirtual com/nd/android/u/controller/observer/MessageDispatcher/notifyOtherMessage(ILandroid/os/Message;)V
L1:
iconst_1
ireturn
L0:
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PspItemView$2/this$0 Lcom/nd/android/u/publicNumber/ui/widget/PspItemView;
invokestatic com/nd/android/u/publicNumber/ui/widget/PspItemView/access$100(Lcom/nd/android/u/publicNumber/ui/widget/PspItemView;)Landroid/app/Activity;
getstatic com/nd/android/u/chat/R$string/force_follow_cancel_warn I
invokevirtual android/app/Activity/getString(I)Ljava/lang/String;
invokestatic com/common/android/utils/ToastUtils/display(Ljava/lang/String;)V
goto L1
.limit locals 2
.limit stack 3
.end method
