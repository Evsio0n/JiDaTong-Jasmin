.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/XYNewSearchGroupActivity$2
.super android/os/Handler
.enclosing method com/nd/android/u/contact/activity/XYNewSearchGroupActivity
.inner class inner com/nd/android/u/contact/activity/XYNewSearchGroupActivity$2

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/XYNewSearchGroupActivity;

.method <init>(Lcom/nd/android/u/contact/activity/XYNewSearchGroupActivity;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity$2/this$0 Lcom/nd/android/u/contact/activity/XYNewSearchGroupActivity;
aload 0
invokespecial android/os/Handler/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public handleMessage(Landroid/os/Message;)V
aload 1
getfield android/os/Message/what I
sipush 2003
if_icmpne L0
aload 0
getfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity$2/this$0 Lcom/nd/android/u/contact/activity/XYNewSearchGroupActivity;
aload 0
getfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity$2/this$0 Lcom/nd/android/u/contact/activity/XYNewSearchGroupActivity;
getstatic com/nd/android/u/contact/R$string/add_to_group_success I
invokevirtual com/nd/android/u/contact/activity/XYNewSearchGroupActivity/getString(I)Ljava/lang/String;
invokestatic com/nd/android/u/contact/util/ToastUtils/customToast(Landroid/content/Context;Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity$2/this$0 Lcom/nd/android/u/contact/activity/XYNewSearchGroupActivity;
invokestatic com/nd/android/u/contact/activity/XYNewSearchGroupActivity/access$300(Lcom/nd/android/u/contact/activity/XYNewSearchGroupActivity;)Landroid/widget/LinearLayout;
bipush 8
invokevirtual android/widget/LinearLayout/setVisibility(I)V
return
L0:
aload 1
getfield android/os/Message/what I
aload 0
getfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity$2/this$0 Lcom/nd/android/u/contact/activity/XYNewSearchGroupActivity;
invokestatic com/nd/android/u/contact/activity/XYNewSearchGroupActivity/access$400(Lcom/nd/android/u/contact/activity/XYNewSearchGroupActivity;)[Ljava/lang/String;
arraylength
if_icmpge L1
aload 0
getfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity$2/this$0 Lcom/nd/android/u/contact/activity/XYNewSearchGroupActivity;
aload 1
getfield android/os/Message/what I
invokestatic com/nd/android/u/contact/activity/XYNewSearchGroupActivity/access$502(Lcom/nd/android/u/contact/activity/XYNewSearchGroupActivity;I)I
pop
aload 0
getfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity$2/this$0 Lcom/nd/android/u/contact/activity/XYNewSearchGroupActivity;
invokestatic com/nd/android/u/contact/activity/XYNewSearchGroupActivity/access$600(Lcom/nd/android/u/contact/activity/XYNewSearchGroupActivity;)Lcom/nd/android/u/contact/adapter/SearchGroupFragmentAdapter;
aload 1
getfield android/os/Message/what I
invokevirtual com/nd/android/u/contact/adapter/SearchGroupFragmentAdapter/setmCurrentTabId(I)V
aload 0
getfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity$2/this$0 Lcom/nd/android/u/contact/activity/XYNewSearchGroupActivity;
aload 0
getfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity$2/this$0 Lcom/nd/android/u/contact/activity/XYNewSearchGroupActivity;
getfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity/pager Lcom/common/android/ui/widget/CompatibleViewPager;
invokevirtual com/common/android/ui/widget/CompatibleViewPager/getCurrentItem()I
invokestatic com/nd/android/u/contact/activity/XYNewSearchGroupActivity/access$700(Lcom/nd/android/u/contact/activity/XYNewSearchGroupActivity;I)V
return
L1:
aload 1
getfield android/os/Message/obj Ljava/lang/Object;
checkcast java/lang/String
astore 2
aload 1
getfield android/os/Message/what I
tableswitch 1000
L2
L3
default : L4
L4:
aload 0
getfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity$2/this$0 Lcom/nd/android/u/contact/activity/XYNewSearchGroupActivity;
invokestatic com/nd/android/u/contact/activity/XYNewSearchGroupActivity/access$1000(Lcom/nd/android/u/contact/activity/XYNewSearchGroupActivity;)Ljava/util/List;
ifnull L5
aload 0
getfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity$2/this$0 Lcom/nd/android/u/contact/activity/XYNewSearchGroupActivity;
invokestatic com/nd/android/u/contact/activity/XYNewSearchGroupActivity/access$1000(Lcom/nd/android/u/contact/activity/XYNewSearchGroupActivity;)Ljava/util/List;
invokeinterface java/util/List/clear()V 0
L5:
aload 0
getfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity$2/this$0 Lcom/nd/android/u/contact/activity/XYNewSearchGroupActivity;
invokestatic com/nd/android/u/contact/activity/XYNewSearchGroupActivity/access$1100(Lcom/nd/android/u/contact/activity/XYNewSearchGroupActivity;)Ljava/util/List;
ifnull L6
aload 0
getfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity$2/this$0 Lcom/nd/android/u/contact/activity/XYNewSearchGroupActivity;
invokestatic com/nd/android/u/contact/activity/XYNewSearchGroupActivity/access$1100(Lcom/nd/android/u/contact/activity/XYNewSearchGroupActivity;)Ljava/util/List;
invokeinterface java/util/List/clear()V 0
L6:
aload 0
getfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity$2/this$0 Lcom/nd/android/u/contact/activity/XYNewSearchGroupActivity;
iconst_0
invokestatic com/nd/android/u/contact/activity/XYNewSearchGroupActivity/access$1202(Lcom/nd/android/u/contact/activity/XYNewSearchGroupActivity;I)I
pop
aload 0
getfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity$2/this$0 Lcom/nd/android/u/contact/activity/XYNewSearchGroupActivity;
iconst_1
putfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity/show Z
aload 0
getfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity$2/this$0 Lcom/nd/android/u/contact/activity/XYNewSearchGroupActivity;
invokevirtual com/nd/android/u/contact/activity/XYNewSearchGroupActivity/searchGroup()V
return
L2:
aload 0
getfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity$2/this$0 Lcom/nd/android/u/contact/activity/XYNewSearchGroupActivity;
aconst_null
invokestatic com/nd/android/u/contact/activity/XYNewSearchGroupActivity/access$802(Lcom/nd/android/u/contact/activity/XYNewSearchGroupActivity;Ljava/lang/String;)Ljava/lang/String;
pop
aload 2
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L4
aload 0
getfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity$2/this$0 Lcom/nd/android/u/contact/activity/XYNewSearchGroupActivity;
aload 2
invokestatic com/nd/android/u/contact/activity/XYNewSearchGroupActivity/access$902(Lcom/nd/android/u/contact/activity/XYNewSearchGroupActivity;Ljava/lang/String;)Ljava/lang/String;
pop
goto L4
L3:
aload 0
getfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity$2/this$0 Lcom/nd/android/u/contact/activity/XYNewSearchGroupActivity;
ldc ""
invokestatic com/nd/android/u/contact/activity/XYNewSearchGroupActivity/access$902(Lcom/nd/android/u/contact/activity/XYNewSearchGroupActivity;Ljava/lang/String;)Ljava/lang/String;
pop
aload 2
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L4
aload 0
getfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity$2/this$0 Lcom/nd/android/u/contact/activity/XYNewSearchGroupActivity;
aload 2
invokestatic com/nd/android/u/contact/activity/XYNewSearchGroupActivity/access$802(Lcom/nd/android/u/contact/activity/XYNewSearchGroupActivity;Ljava/lang/String;)Ljava/lang/String;
pop
aload 0
getfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity$2/this$0 Lcom/nd/android/u/contact/activity/XYNewSearchGroupActivity;
invokestatic com/nd/android/u/contact/activity/XYNewSearchGroupActivity/access$800(Lcom/nd/android/u/contact/activity/XYNewSearchGroupActivity;)Ljava/lang/String;
ifnull L4
aload 0
getfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity$2/this$0 Lcom/nd/android/u/contact/activity/XYNewSearchGroupActivity;
aload 0
getfield com/nd/android/u/contact/activity/XYNewSearchGroupActivity$2/this$0 Lcom/nd/android/u/contact/activity/XYNewSearchGroupActivity;
invokestatic com/nd/android/u/contact/activity/XYNewSearchGroupActivity/access$800(Lcom/nd/android/u/contact/activity/XYNewSearchGroupActivity;)Ljava/lang/String;
invokevirtual java/lang/String/trim()Ljava/lang/String;
invokestatic com/nd/android/u/contact/activity/XYNewSearchGroupActivity/access$802(Lcom/nd/android/u/contact/activity/XYNewSearchGroupActivity;Ljava/lang/String;)Ljava/lang/String;
pop
goto L4
.limit locals 3
.limit stack 3
.end method
