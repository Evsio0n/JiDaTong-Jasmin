.bytecode 50.0
.class synchronized com/nd/android/u/contact/view/SelectRecipientView$2
.super java/lang/Object
.implements android/widget/CompoundButton$OnCheckedChangeListener
.enclosing method com/nd/android/u/contact/view/SelectRecipientView
.inner class inner com/nd/android/u/contact/view/SelectRecipientView$2

.field final synthetic 'this$0' Lcom/nd/android/u/contact/view/SelectRecipientView;

.method <init>(Lcom/nd/android/u/contact/view/SelectRecipientView;)V
aload 0
aload 1
putfield com/nd/android/u/contact/view/SelectRecipientView$2/this$0 Lcom/nd/android/u/contact/view/SelectRecipientView;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
iload 2
ifeq L0
aload 0
getfield com/nd/android/u/contact/view/SelectRecipientView$2/this$0 Lcom/nd/android/u/contact/view/SelectRecipientView;
aload 0
getfield com/nd/android/u/contact/view/SelectRecipientView$2/this$0 Lcom/nd/android/u/contact/view/SelectRecipientView;
invokestatic com/nd/android/u/contact/view/SelectRecipientView/access$100(Lcom/nd/android/u/contact/view/SelectRecipientView;)Lcom/product/android/commonInterface/chat/SearchContract;
invokestatic com/nd/android/u/contact/view/SelectRecipientView/access$300(Lcom/nd/android/u/contact/view/SelectRecipientView;Lcom/product/android/commonInterface/chat/SearchContract;)Z
ifeq L1
aload 0
getfield com/nd/android/u/contact/view/SelectRecipientView$2/this$0 Lcom/nd/android/u/contact/view/SelectRecipientView;
invokestatic com/nd/android/u/contact/view/SelectRecipientView/access$000(Lcom/nd/android/u/contact/view/SelectRecipientView;)Landroid/widget/CheckBox;
iconst_0
invokevirtual android/widget/CheckBox/setChecked(Z)V
aload 0
getfield com/nd/android/u/contact/view/SelectRecipientView$2/this$0 Lcom/nd/android/u/contact/view/SelectRecipientView;
invokestatic com/nd/android/u/contact/view/SelectRecipientView/access$400(Lcom/nd/android/u/contact/view/SelectRecipientView;)Landroid/content/Context;
getstatic com/nd/android/u/contact/R$string/one_exist_in_the_group I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
L2:
return
L1:
aload 0
getfield com/nd/android/u/contact/view/SelectRecipientView$2/this$0 Lcom/nd/android/u/contact/view/SelectRecipientView;
invokestatic com/nd/android/u/contact/view/SelectRecipientView/access$200(Lcom/nd/android/u/contact/view/SelectRecipientView;)Ljava/util/ArrayList;
aload 0
getfield com/nd/android/u/contact/view/SelectRecipientView$2/this$0 Lcom/nd/android/u/contact/view/SelectRecipientView;
invokestatic com/nd/android/u/contact/view/SelectRecipientView/access$100(Lcom/nd/android/u/contact/view/SelectRecipientView;)Lcom/product/android/commonInterface/chat/SearchContract;
invokevirtual java/util/ArrayList/contains(Ljava/lang/Object;)Z
ifne L2
aload 0
getfield com/nd/android/u/contact/view/SelectRecipientView$2/this$0 Lcom/nd/android/u/contact/view/SelectRecipientView;
invokestatic com/nd/android/u/contact/view/SelectRecipientView/access$200(Lcom/nd/android/u/contact/view/SelectRecipientView;)Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
bipush 19
if_icmple L3
aload 0
getfield com/nd/android/u/contact/view/SelectRecipientView$2/this$0 Lcom/nd/android/u/contact/view/SelectRecipientView;
invokestatic com/nd/android/u/contact/view/SelectRecipientView/access$000(Lcom/nd/android/u/contact/view/SelectRecipientView;)Landroid/widget/CheckBox;
iconst_0
invokevirtual android/widget/CheckBox/setChecked(Z)V
aload 0
getfield com/nd/android/u/contact/view/SelectRecipientView$2/this$0 Lcom/nd/android/u/contact/view/SelectRecipientView;
invokestatic com/nd/android/u/contact/view/SelectRecipientView/access$400(Lcom/nd/android/u/contact/view/SelectRecipientView;)Landroid/content/Context;
getstatic com/nd/android/u/contact/R$string/group_member_max_20 I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
return
L3:
aload 0
getfield com/nd/android/u/contact/view/SelectRecipientView$2/this$0 Lcom/nd/android/u/contact/view/SelectRecipientView;
invokestatic com/nd/android/u/contact/view/SelectRecipientView/access$100(Lcom/nd/android/u/contact/view/SelectRecipientView;)Lcom/product/android/commonInterface/chat/SearchContract;
iconst_1
invokevirtual com/product/android/commonInterface/chat/SearchContract/setChecked(Z)V
aload 0
getfield com/nd/android/u/contact/view/SelectRecipientView$2/this$0 Lcom/nd/android/u/contact/view/SelectRecipientView;
invokestatic com/nd/android/u/contact/view/SelectRecipientView/access$200(Lcom/nd/android/u/contact/view/SelectRecipientView;)Ljava/util/ArrayList;
aload 0
getfield com/nd/android/u/contact/view/SelectRecipientView$2/this$0 Lcom/nd/android/u/contact/view/SelectRecipientView;
invokestatic com/nd/android/u/contact/view/SelectRecipientView/access$100(Lcom/nd/android/u/contact/view/SelectRecipientView;)Lcom/product/android/commonInterface/chat/SearchContract;
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
return
L0:
aload 0
getfield com/nd/android/u/contact/view/SelectRecipientView$2/this$0 Lcom/nd/android/u/contact/view/SelectRecipientView;
invokestatic com/nd/android/u/contact/view/SelectRecipientView/access$100(Lcom/nd/android/u/contact/view/SelectRecipientView;)Lcom/product/android/commonInterface/chat/SearchContract;
iconst_0
invokevirtual com/product/android/commonInterface/chat/SearchContract/setChecked(Z)V
aload 0
getfield com/nd/android/u/contact/view/SelectRecipientView$2/this$0 Lcom/nd/android/u/contact/view/SelectRecipientView;
invokestatic com/nd/android/u/contact/view/SelectRecipientView/access$200(Lcom/nd/android/u/contact/view/SelectRecipientView;)Ljava/util/ArrayList;
aload 0
getfield com/nd/android/u/contact/view/SelectRecipientView$2/this$0 Lcom/nd/android/u/contact/view/SelectRecipientView;
invokestatic com/nd/android/u/contact/view/SelectRecipientView/access$100(Lcom/nd/android/u/contact/view/SelectRecipientView;)Lcom/product/android/commonInterface/chat/SearchContract;
invokevirtual java/util/ArrayList/contains(Ljava/lang/Object;)Z
ifeq L2
aload 0
getfield com/nd/android/u/contact/view/SelectRecipientView$2/this$0 Lcom/nd/android/u/contact/view/SelectRecipientView;
invokestatic com/nd/android/u/contact/view/SelectRecipientView/access$200(Lcom/nd/android/u/contact/view/SelectRecipientView;)Ljava/util/ArrayList;
aload 0
getfield com/nd/android/u/contact/view/SelectRecipientView$2/this$0 Lcom/nd/android/u/contact/view/SelectRecipientView;
invokestatic com/nd/android/u/contact/view/SelectRecipientView/access$100(Lcom/nd/android/u/contact/view/SelectRecipientView;)Lcom/product/android/commonInterface/chat/SearchContract;
invokevirtual java/util/ArrayList/remove(Ljava/lang/Object;)Z
pop
return
.limit locals 3
.limit stack 2
.end method
