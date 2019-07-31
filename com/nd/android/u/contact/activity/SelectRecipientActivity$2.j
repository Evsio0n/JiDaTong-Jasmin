.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/SelectRecipientActivity$2
.super java/lang/Object
.implements android/text/TextWatcher
.enclosing method com/nd/android/u/contact/activity/SelectRecipientActivity
.inner class inner com/nd/android/u/contact/activity/SelectRecipientActivity$2

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/SelectRecipientActivity;

.method <init>(Lcom/nd/android/u/contact/activity/SelectRecipientActivity;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/SelectRecipientActivity$2/this$0 Lcom/nd/android/u/contact/activity/SelectRecipientActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
return
.limit locals 2
.limit stack 0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
return
.limit locals 5
.limit stack 0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
aload 0
getfield com/nd/android/u/contact/activity/SelectRecipientActivity$2/this$0 Lcom/nd/android/u/contact/activity/SelectRecipientActivity;
invokestatic com/nd/android/u/contact/activity/SelectRecipientActivity/access$500(Lcom/nd/android/u/contact/activity/SelectRecipientActivity;)Lcom/nd/android/u/contact/adapter/SelectRecipientAdapter;
ifnonnull L0
aload 0
getfield com/nd/android/u/contact/activity/SelectRecipientActivity$2/this$0 Lcom/nd/android/u/contact/activity/SelectRecipientActivity;
invokestatic com/nd/android/u/contact/activity/SelectRecipientActivity/access$700(Lcom/nd/android/u/contact/activity/SelectRecipientActivity;)Ljava/util/List;
ifnonnull L1
aload 0
getfield com/nd/android/u/contact/activity/SelectRecipientActivity$2/this$0 Lcom/nd/android/u/contact/activity/SelectRecipientActivity;
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
invokestatic com/nd/android/u/contact/activity/SelectRecipientActivity/access$702(Lcom/nd/android/u/contact/activity/SelectRecipientActivity;Ljava/util/List;)Ljava/util/List;
pop
L1:
aload 0
getfield com/nd/android/u/contact/activity/SelectRecipientActivity$2/this$0 Lcom/nd/android/u/contact/activity/SelectRecipientActivity;
new com/nd/android/u/contact/adapter/SelectRecipientAdapter
dup
aload 0
getfield com/nd/android/u/contact/activity/SelectRecipientActivity$2/this$0 Lcom/nd/android/u/contact/activity/SelectRecipientActivity;
aload 0
getfield com/nd/android/u/contact/activity/SelectRecipientActivity$2/this$0 Lcom/nd/android/u/contact/activity/SelectRecipientActivity;
invokestatic com/nd/android/u/contact/activity/SelectRecipientActivity/access$700(Lcom/nd/android/u/contact/activity/SelectRecipientActivity;)Ljava/util/List;
aload 0
getfield com/nd/android/u/contact/activity/SelectRecipientActivity$2/this$0 Lcom/nd/android/u/contact/activity/SelectRecipientActivity;
invokestatic com/nd/android/u/contact/activity/SelectRecipientActivity/access$800(Lcom/nd/android/u/contact/activity/SelectRecipientActivity;)Landroid/os/Handler;
aload 0
getfield com/nd/android/u/contact/activity/SelectRecipientActivity$2/this$0 Lcom/nd/android/u/contact/activity/SelectRecipientActivity;
invokestatic com/nd/android/u/contact/activity/SelectRecipientActivity/access$900(Lcom/nd/android/u/contact/activity/SelectRecipientActivity;)Ljava/util/ArrayList;
aload 0
getfield com/nd/android/u/contact/activity/SelectRecipientActivity$2/this$0 Lcom/nd/android/u/contact/activity/SelectRecipientActivity;
invokestatic com/nd/android/u/contact/activity/SelectRecipientActivity/access$1000(Lcom/nd/android/u/contact/activity/SelectRecipientActivity;)Ljava/util/List;
invokespecial com/nd/android/u/contact/adapter/SelectRecipientAdapter/<init>(Landroid/content/Context;Ljava/util/List;Landroid/os/Handler;Ljava/util/ArrayList;Ljava/util/List;)V
invokestatic com/nd/android/u/contact/activity/SelectRecipientActivity/access$502(Lcom/nd/android/u/contact/activity/SelectRecipientActivity;Lcom/nd/android/u/contact/adapter/SelectRecipientAdapter;)Lcom/nd/android/u/contact/adapter/SelectRecipientAdapter;
pop
aload 0
getfield com/nd/android/u/contact/activity/SelectRecipientActivity$2/this$0 Lcom/nd/android/u/contact/activity/SelectRecipientActivity;
invokestatic com/nd/android/u/contact/activity/SelectRecipientActivity/access$300(Lcom/nd/android/u/contact/activity/SelectRecipientActivity;)Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/contact/activity/SelectRecipientActivity$2/this$0 Lcom/nd/android/u/contact/activity/SelectRecipientActivity;
invokestatic com/nd/android/u/contact/activity/SelectRecipientActivity/access$500(Lcom/nd/android/u/contact/activity/SelectRecipientActivity;)Lcom/nd/android/u/contact/adapter/SelectRecipientAdapter;
invokevirtual android/widget/ListView/setAdapter(Landroid/widget/ListAdapter;)V
L0:
aload 0
getfield com/nd/android/u/contact/activity/SelectRecipientActivity$2/this$0 Lcom/nd/android/u/contact/activity/SelectRecipientActivity;
invokestatic com/nd/android/u/contact/activity/SelectRecipientActivity/access$200(Lcom/nd/android/u/contact/activity/SelectRecipientActivity;)Landroid/widget/LinearLayout;
bipush 8
invokevirtual android/widget/LinearLayout/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/activity/SelectRecipientActivity$2/this$0 Lcom/nd/android/u/contact/activity/SelectRecipientActivity;
invokestatic com/nd/android/u/contact/activity/SelectRecipientActivity/access$600(Lcom/nd/android/u/contact/activity/SelectRecipientActivity;)Z
ifeq L2
ldc "SelectRecipientActivity"
ldc "\u6dfb\u52a0footview"
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 0
getfield com/nd/android/u/contact/activity/SelectRecipientActivity$2/this$0 Lcom/nd/android/u/contact/activity/SelectRecipientActivity;
invokestatic com/nd/android/u/contact/activity/SelectRecipientActivity/access$300(Lcom/nd/android/u/contact/activity/SelectRecipientActivity;)Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/contact/activity/SelectRecipientActivity$2/this$0 Lcom/nd/android/u/contact/activity/SelectRecipientActivity;
invokestatic com/nd/android/u/contact/activity/SelectRecipientActivity/access$400(Lcom/nd/android/u/contact/activity/SelectRecipientActivity;)Landroid/widget/LinearLayout;
invokevirtual android/widget/ListView/addFooterView(Landroid/view/View;)V
aload 0
getfield com/nd/android/u/contact/activity/SelectRecipientActivity$2/this$0 Lcom/nd/android/u/contact/activity/SelectRecipientActivity;
invokestatic com/nd/android/u/contact/activity/SelectRecipientActivity/access$300(Lcom/nd/android/u/contact/activity/SelectRecipientActivity;)Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/contact/activity/SelectRecipientActivity$2/this$0 Lcom/nd/android/u/contact/activity/SelectRecipientActivity;
invokestatic com/nd/android/u/contact/activity/SelectRecipientActivity/access$500(Lcom/nd/android/u/contact/activity/SelectRecipientActivity;)Lcom/nd/android/u/contact/adapter/SelectRecipientAdapter;
invokevirtual android/widget/ListView/setAdapter(Landroid/widget/ListAdapter;)V
aload 0
getfield com/nd/android/u/contact/activity/SelectRecipientActivity$2/this$0 Lcom/nd/android/u/contact/activity/SelectRecipientActivity;
iconst_0
invokestatic com/nd/android/u/contact/activity/SelectRecipientActivity/access$602(Lcom/nd/android/u/contact/activity/SelectRecipientActivity;Z)Z
pop
L2:
aload 0
getfield com/nd/android/u/contact/activity/SelectRecipientActivity$2/this$0 Lcom/nd/android/u/contact/activity/SelectRecipientActivity;
invokestatic com/nd/android/u/contact/activity/SelectRecipientActivity/access$500(Lcom/nd/android/u/contact/activity/SelectRecipientActivity;)Lcom/nd/android/u/contact/adapter/SelectRecipientAdapter;
invokevirtual com/nd/android/u/contact/adapter/SelectRecipientAdapter/getFilter()Landroid/widget/Filter;
aload 1
invokevirtual android/widget/Filter/filter(Ljava/lang/CharSequence;)V
return
.limit locals 5
.limit stack 8
.end method
