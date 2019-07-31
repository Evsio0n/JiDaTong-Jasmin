.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/XYSelectRecipientActivity$2
.super java/lang/Object
.implements android/text/TextWatcher
.enclosing method com/nd/android/u/contact/activity/XYSelectRecipientActivity
.inner class inner com/nd/android/u/contact/activity/XYSelectRecipientActivity$2

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;

.method <init>(Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/XYSelectRecipientActivity$2/this$0 Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;
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
aload 1
invokeinterface java/lang/CharSequence/toString()Ljava/lang/String; 0
astore 5
aload 5
ifnull L0
aload 5
invokevirtual java/lang/String/length()I
ifle L0
aload 0
getfield com/nd/android/u/contact/activity/XYSelectRecipientActivity$2/this$0 Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;
invokestatic com/nd/android/u/contact/activity/XYSelectRecipientActivity/access$700(Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;)Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
L1:
aload 0
getfield com/nd/android/u/contact/activity/XYSelectRecipientActivity$2/this$0 Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;
invokestatic com/nd/android/u/contact/activity/XYSelectRecipientActivity/access$500(Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;)Lcom/nd/android/u/contact/adapter/SelectRecipientAdapter;
ifnonnull L2
aload 0
getfield com/nd/android/u/contact/activity/XYSelectRecipientActivity$2/this$0 Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;
invokestatic com/nd/android/u/contact/activity/XYSelectRecipientActivity/access$800(Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;)Ljava/util/List;
ifnonnull L3
aload 0
getfield com/nd/android/u/contact/activity/XYSelectRecipientActivity$2/this$0 Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
invokestatic com/nd/android/u/contact/activity/XYSelectRecipientActivity/access$802(Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;Ljava/util/List;)Ljava/util/List;
pop
L3:
aload 0
getfield com/nd/android/u/contact/activity/XYSelectRecipientActivity$2/this$0 Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;
new com/nd/android/u/contact/adapter/SelectRecipientAdapter
dup
aload 0
getfield com/nd/android/u/contact/activity/XYSelectRecipientActivity$2/this$0 Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;
aload 0
getfield com/nd/android/u/contact/activity/XYSelectRecipientActivity$2/this$0 Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;
invokestatic com/nd/android/u/contact/activity/XYSelectRecipientActivity/access$800(Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;)Ljava/util/List;
aload 0
getfield com/nd/android/u/contact/activity/XYSelectRecipientActivity$2/this$0 Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;
invokestatic com/nd/android/u/contact/activity/XYSelectRecipientActivity/access$900(Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;)Landroid/os/Handler;
aload 0
getfield com/nd/android/u/contact/activity/XYSelectRecipientActivity$2/this$0 Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;
invokestatic com/nd/android/u/contact/activity/XYSelectRecipientActivity/access$1000(Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;)Ljava/util/ArrayList;
aload 0
getfield com/nd/android/u/contact/activity/XYSelectRecipientActivity$2/this$0 Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;
invokestatic com/nd/android/u/contact/activity/XYSelectRecipientActivity/access$1100(Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;)Ljava/util/List;
invokespecial com/nd/android/u/contact/adapter/SelectRecipientAdapter/<init>(Landroid/content/Context;Ljava/util/List;Landroid/os/Handler;Ljava/util/ArrayList;Ljava/util/List;)V
invokestatic com/nd/android/u/contact/activity/XYSelectRecipientActivity/access$502(Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;Lcom/nd/android/u/contact/adapter/SelectRecipientAdapter;)Lcom/nd/android/u/contact/adapter/SelectRecipientAdapter;
pop
aload 0
getfield com/nd/android/u/contact/activity/XYSelectRecipientActivity$2/this$0 Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;
invokestatic com/nd/android/u/contact/activity/XYSelectRecipientActivity/access$300(Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;)Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/contact/activity/XYSelectRecipientActivity$2/this$0 Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;
invokestatic com/nd/android/u/contact/activity/XYSelectRecipientActivity/access$500(Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;)Lcom/nd/android/u/contact/adapter/SelectRecipientAdapter;
invokevirtual android/widget/ListView/setAdapter(Landroid/widget/ListAdapter;)V
L2:
aload 0
getfield com/nd/android/u/contact/activity/XYSelectRecipientActivity$2/this$0 Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;
invokestatic com/nd/android/u/contact/activity/XYSelectRecipientActivity/access$200(Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;)Landroid/widget/LinearLayout;
bipush 8
invokevirtual android/widget/LinearLayout/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/activity/XYSelectRecipientActivity$2/this$0 Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;
invokestatic com/nd/android/u/contact/activity/XYSelectRecipientActivity/access$600(Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;)Z
ifeq L4
ldc "SelectRecipientActivity"
ldc "\u6dfb\u52a0footview"
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 0
getfield com/nd/android/u/contact/activity/XYSelectRecipientActivity$2/this$0 Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;
invokestatic com/nd/android/u/contact/activity/XYSelectRecipientActivity/access$300(Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;)Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/contact/activity/XYSelectRecipientActivity$2/this$0 Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;
invokestatic com/nd/android/u/contact/activity/XYSelectRecipientActivity/access$400(Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;)Landroid/widget/LinearLayout;
invokevirtual android/widget/ListView/addFooterView(Landroid/view/View;)V
aload 0
getfield com/nd/android/u/contact/activity/XYSelectRecipientActivity$2/this$0 Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;
invokestatic com/nd/android/u/contact/activity/XYSelectRecipientActivity/access$300(Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;)Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/contact/activity/XYSelectRecipientActivity$2/this$0 Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;
invokestatic com/nd/android/u/contact/activity/XYSelectRecipientActivity/access$500(Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;)Lcom/nd/android/u/contact/adapter/SelectRecipientAdapter;
invokevirtual android/widget/ListView/setAdapter(Landroid/widget/ListAdapter;)V
aload 0
getfield com/nd/android/u/contact/activity/XYSelectRecipientActivity$2/this$0 Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;
iconst_0
invokestatic com/nd/android/u/contact/activity/XYSelectRecipientActivity/access$602(Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;Z)Z
pop
L4:
aload 0
getfield com/nd/android/u/contact/activity/XYSelectRecipientActivity$2/this$0 Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;
invokestatic com/nd/android/u/contact/activity/XYSelectRecipientActivity/access$500(Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;)Lcom/nd/android/u/contact/adapter/SelectRecipientAdapter;
invokevirtual com/nd/android/u/contact/adapter/SelectRecipientAdapter/getFilter()Landroid/widget/Filter;
aload 1
invokevirtual android/widget/Filter/filter(Ljava/lang/CharSequence;)V
return
L0:
aload 0
getfield com/nd/android/u/contact/activity/XYSelectRecipientActivity$2/this$0 Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;
invokestatic com/nd/android/u/contact/activity/XYSelectRecipientActivity/access$700(Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;)Landroid/widget/ImageView;
bipush 8
invokevirtual android/widget/ImageView/setVisibility(I)V
goto L1
.limit locals 6
.limit stack 8
.end method
