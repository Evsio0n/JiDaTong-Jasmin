.bytecode 50.0
.class synchronized com/android/u/weibo/contact/ui/activity/MyContact$2
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/android/u/weibo/contact/ui/activity/MyContact
.inner class inner com/android/u/weibo/contact/ui/activity/MyContact$2

.field final synthetic 'this$0' Lcom/android/u/weibo/contact/ui/activity/MyContact;

.method <init>(Lcom/android/u/weibo/contact/ui/activity/MyContact;)V
aload 0
aload 1
putfield com/android/u/weibo/contact/ui/activity/MyContact$2/this$0 Lcom/android/u/weibo/contact/ui/activity/MyContact;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
istore 2
iload 2
getstatic com/android/u/weibo/R$id/header_btn_left I
if_icmpne L0
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact$2/this$0 Lcom/android/u/weibo/contact/ui/activity/MyContact;
invokestatic com/android/u/weibo/contact/ui/activity/MyContact/access$600(Lcom/android/u/weibo/contact/ui/activity/MyContact;)V
L1:
return
L0:
iload 2
getstatic com/android/u/weibo/R$id/my_contact_rl_native_place I
if_icmpne L2
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact$2/this$0 Lcom/android/u/weibo/contact/ui/activity/MyContact;
invokestatic com/android/u/weibo/contact/ui/activity/MyContact/access$700(Lcom/android/u/weibo/contact/ui/activity/MyContact;)V
return
L2:
iload 2
getstatic com/android/u/weibo/R$id/my_contact_rl_mobilephone I
if_icmpne L3
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact$2/this$0 Lcom/android/u/weibo/contact/ui/activity/MyContact;
iload 2
invokestatic com/android/u/weibo/contact/ui/activity/MyContact/access$802(Lcom/android/u/weibo/contact/ui/activity/MyContact;I)I
pop
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact$2/this$0 Lcom/android/u/weibo/contact/ui/activity/MyContact;
iconst_0
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact$2/this$0 Lcom/android/u/weibo/contact/ui/activity/MyContact;
invokestatic com/android/u/weibo/contact/ui/activity/MyContact/access$900(Lcom/android/u/weibo/contact/ui/activity/MyContact;)Landroid/widget/TextView;
invokevirtual android/widget/TextView/getText()Ljava/lang/CharSequence;
invokeinterface java/lang/CharSequence/toString()Ljava/lang/String; 0
invokestatic com/android/u/weibo/contact/ui/activity/MyContact/access$1000(Lcom/android/u/weibo/contact/ui/activity/MyContact;ILjava/lang/String;)V
return
L3:
iload 2
getstatic com/android/u/weibo/R$id/my_contact_rl_email I
if_icmpne L4
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact$2/this$0 Lcom/android/u/weibo/contact/ui/activity/MyContact;
iload 2
invokestatic com/android/u/weibo/contact/ui/activity/MyContact/access$802(Lcom/android/u/weibo/contact/ui/activity/MyContact;I)I
pop
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact$2/this$0 Lcom/android/u/weibo/contact/ui/activity/MyContact;
iconst_1
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact$2/this$0 Lcom/android/u/weibo/contact/ui/activity/MyContact;
invokestatic com/android/u/weibo/contact/ui/activity/MyContact/access$1100(Lcom/android/u/weibo/contact/ui/activity/MyContact;)Landroid/widget/TextView;
invokevirtual android/widget/TextView/getText()Ljava/lang/CharSequence;
invokeinterface java/lang/CharSequence/toString()Ljava/lang/String; 0
invokestatic com/android/u/weibo/contact/ui/activity/MyContact/access$1000(Lcom/android/u/weibo/contact/ui/activity/MyContact;ILjava/lang/String;)V
return
L4:
iload 2
getstatic com/android/u/weibo/R$id/my_contact_btn_control I
if_icmpne L5
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact$2/this$0 Lcom/android/u/weibo/contact/ui/activity/MyContact;
invokestatic com/android/u/weibo/contact/ui/activity/MyContact/access$1200(Lcom/android/u/weibo/contact/ui/activity/MyContact;)V
return
L5:
iload 2
getstatic com/android/u/weibo/R$id/my_contact_rl_permission I
if_icmpne L6
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact$2/this$0 Lcom/android/u/weibo/contact/ui/activity/MyContact;
invokestatic com/android/u/weibo/contact/ui/activity/MyContact/access$1300(Lcom/android/u/weibo/contact/ui/activity/MyContact;)V
return
L6:
iload 2
getstatic com/android/u/weibo/R$id/header_btn_right I
if_icmpne L1
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact$2/this$0 Lcom/android/u/weibo/contact/ui/activity/MyContact;
invokestatic com/android/u/weibo/contact/ui/activity/MyContact/access$1400(Lcom/android/u/weibo/contact/ui/activity/MyContact;)V
return
.limit locals 3
.limit stack 3
.end method
