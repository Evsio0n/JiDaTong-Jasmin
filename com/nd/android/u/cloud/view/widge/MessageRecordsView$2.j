.bytecode 50.0
.class synchronized com/nd/android/u/cloud/view/widge/MessageRecordsView$2
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/android/u/cloud/view/widge/MessageRecordsView
.inner class inner com/nd/android/u/cloud/view/widge/MessageRecordsView$2

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/view/widge/MessageRecordsView;

.method <init>(Lcom/nd/android/u/cloud/view/widge/MessageRecordsView;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/view/widge/MessageRecordsView$2/this$0 Lcom/nd/android/u/cloud/view/widge/MessageRecordsView;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
lookupswitch
2131625986 : L0
2131625990 : L0
default : L1
L1:
return
L0:
aload 0
getfield com/nd/android/u/cloud/view/widge/MessageRecordsView$2/this$0 Lcom/nd/android/u/cloud/view/widge/MessageRecordsView;
invokestatic com/nd/android/u/cloud/view/widge/MessageRecordsView/access$400(Lcom/nd/android/u/cloud/view/widge/MessageRecordsView;)Z
ifne L2
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
astore 1
aload 1
ldc "messageinfo"
aload 0
getfield com/nd/android/u/cloud/view/widge/MessageRecordsView$2/this$0 Lcom/nd/android/u/cloud/view/widge/MessageRecordsView;
invokestatic com/nd/android/u/cloud/view/widge/MessageRecordsView/access$200(Lcom/nd/android/u/cloud/view/widge/MessageRecordsView;)Lcom/nd/android/u/contact/dataStructure/MessageInfo;
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;
pop
aload 1
aload 0
getfield com/nd/android/u/cloud/view/widge/MessageRecordsView$2/this$0 Lcom/nd/android/u/cloud/view/widge/MessageRecordsView;
invokestatic com/nd/android/u/cloud/view/widge/MessageRecordsView/access$100(Lcom/nd/android/u/cloud/view/widge/MessageRecordsView;)Landroid/content/Context;
ldc com/nd/android/u/cloud/activity/MessageDetailActivity
invokevirtual android/content/Intent/setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
pop
aload 0
getfield com/nd/android/u/cloud/view/widge/MessageRecordsView$2/this$0 Lcom/nd/android/u/cloud/view/widge/MessageRecordsView;
invokestatic com/nd/android/u/cloud/view/widge/MessageRecordsView/access$100(Lcom/nd/android/u/cloud/view/widge/MessageRecordsView;)Landroid/content/Context;
aload 1
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
return
L2:
aload 0
getfield com/nd/android/u/cloud/view/widge/MessageRecordsView$2/this$0 Lcom/nd/android/u/cloud/view/widge/MessageRecordsView;
invokestatic com/nd/android/u/cloud/view/widge/MessageRecordsView/access$000(Lcom/nd/android/u/cloud/view/widge/MessageRecordsView;)Landroid/widget/CheckBox;
invokevirtual android/widget/CheckBox/isChecked()Z
ifeq L3
aload 0
getfield com/nd/android/u/cloud/view/widge/MessageRecordsView$2/this$0 Lcom/nd/android/u/cloud/view/widge/MessageRecordsView;
invokestatic com/nd/android/u/cloud/view/widge/MessageRecordsView/access$500(Lcom/nd/android/u/cloud/view/widge/MessageRecordsView;)Ljava/util/ArrayList;
aload 0
getfield com/nd/android/u/cloud/view/widge/MessageRecordsView$2/this$0 Lcom/nd/android/u/cloud/view/widge/MessageRecordsView;
invokestatic com/nd/android/u/cloud/view/widge/MessageRecordsView/access$200(Lcom/nd/android/u/cloud/view/widge/MessageRecordsView;)Lcom/nd/android/u/contact/dataStructure/MessageInfo;
invokevirtual java/util/ArrayList/contains(Ljava/lang/Object;)Z
ifeq L4
aload 0
getfield com/nd/android/u/cloud/view/widge/MessageRecordsView$2/this$0 Lcom/nd/android/u/cloud/view/widge/MessageRecordsView;
invokestatic com/nd/android/u/cloud/view/widge/MessageRecordsView/access$200(Lcom/nd/android/u/cloud/view/widge/MessageRecordsView;)Lcom/nd/android/u/contact/dataStructure/MessageInfo;
iconst_0
invokevirtual com/nd/android/u/contact/dataStructure/MessageInfo/setCheck(Z)V
aload 0
getfield com/nd/android/u/cloud/view/widge/MessageRecordsView$2/this$0 Lcom/nd/android/u/cloud/view/widge/MessageRecordsView;
invokestatic com/nd/android/u/cloud/view/widge/MessageRecordsView/access$500(Lcom/nd/android/u/cloud/view/widge/MessageRecordsView;)Ljava/util/ArrayList;
aload 0
getfield com/nd/android/u/cloud/view/widge/MessageRecordsView$2/this$0 Lcom/nd/android/u/cloud/view/widge/MessageRecordsView;
invokestatic com/nd/android/u/cloud/view/widge/MessageRecordsView/access$200(Lcom/nd/android/u/cloud/view/widge/MessageRecordsView;)Lcom/nd/android/u/contact/dataStructure/MessageInfo;
invokevirtual java/util/ArrayList/remove(Ljava/lang/Object;)Z
pop
aload 0
getfield com/nd/android/u/cloud/view/widge/MessageRecordsView$2/this$0 Lcom/nd/android/u/cloud/view/widge/MessageRecordsView;
invokestatic com/nd/android/u/cloud/view/widge/MessageRecordsView/access$300(Lcom/nd/android/u/cloud/view/widge/MessageRecordsView;)Landroid/os/Handler;
iconst_2
invokevirtual android/os/Handler/sendEmptyMessage(I)Z
pop
L4:
aload 0
getfield com/nd/android/u/cloud/view/widge/MessageRecordsView$2/this$0 Lcom/nd/android/u/cloud/view/widge/MessageRecordsView;
invokestatic com/nd/android/u/cloud/view/widge/MessageRecordsView/access$000(Lcom/nd/android/u/cloud/view/widge/MessageRecordsView;)Landroid/widget/CheckBox;
invokevirtual android/widget/CheckBox/toggle()V
return
L3:
aload 0
getfield com/nd/android/u/cloud/view/widge/MessageRecordsView$2/this$0 Lcom/nd/android/u/cloud/view/widge/MessageRecordsView;
invokestatic com/nd/android/u/cloud/view/widge/MessageRecordsView/access$500(Lcom/nd/android/u/cloud/view/widge/MessageRecordsView;)Ljava/util/ArrayList;
aload 0
getfield com/nd/android/u/cloud/view/widge/MessageRecordsView$2/this$0 Lcom/nd/android/u/cloud/view/widge/MessageRecordsView;
invokestatic com/nd/android/u/cloud/view/widge/MessageRecordsView/access$200(Lcom/nd/android/u/cloud/view/widge/MessageRecordsView;)Lcom/nd/android/u/contact/dataStructure/MessageInfo;
invokevirtual java/util/ArrayList/contains(Ljava/lang/Object;)Z
ifne L4
aload 0
getfield com/nd/android/u/cloud/view/widge/MessageRecordsView$2/this$0 Lcom/nd/android/u/cloud/view/widge/MessageRecordsView;
invokestatic com/nd/android/u/cloud/view/widge/MessageRecordsView/access$200(Lcom/nd/android/u/cloud/view/widge/MessageRecordsView;)Lcom/nd/android/u/contact/dataStructure/MessageInfo;
iconst_1
invokevirtual com/nd/android/u/contact/dataStructure/MessageInfo/setCheck(Z)V
aload 0
getfield com/nd/android/u/cloud/view/widge/MessageRecordsView$2/this$0 Lcom/nd/android/u/cloud/view/widge/MessageRecordsView;
invokestatic com/nd/android/u/cloud/view/widge/MessageRecordsView/access$500(Lcom/nd/android/u/cloud/view/widge/MessageRecordsView;)Ljava/util/ArrayList;
aload 0
getfield com/nd/android/u/cloud/view/widge/MessageRecordsView$2/this$0 Lcom/nd/android/u/cloud/view/widge/MessageRecordsView;
invokestatic com/nd/android/u/cloud/view/widge/MessageRecordsView/access$200(Lcom/nd/android/u/cloud/view/widge/MessageRecordsView;)Lcom/nd/android/u/contact/dataStructure/MessageInfo;
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
aload 0
getfield com/nd/android/u/cloud/view/widge/MessageRecordsView$2/this$0 Lcom/nd/android/u/cloud/view/widge/MessageRecordsView;
invokestatic com/nd/android/u/cloud/view/widge/MessageRecordsView/access$300(Lcom/nd/android/u/cloud/view/widge/MessageRecordsView;)Landroid/os/Handler;
iconst_1
invokevirtual android/os/Handler/sendEmptyMessage(I)Z
pop
goto L4
.limit locals 2
.limit stack 3
.end method
