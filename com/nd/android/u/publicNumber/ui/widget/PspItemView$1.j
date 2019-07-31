.bytecode 50.0
.class synchronized com/nd/android/u/publicNumber/ui/widget/PspItemView$1
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/android/u/publicNumber/ui/widget/PspItemView
.inner class inner com/nd/android/u/publicNumber/ui/widget/PspItemView$1

.field final synthetic 'this$0' Lcom/nd/android/u/publicNumber/ui/widget/PspItemView;

.method <init>(Lcom/nd/android/u/publicNumber/ui/widget/PspItemView;)V
aload 0
aload 1
putfield com/nd/android/u/publicNumber/ui/widget/PspItemView$1/this$0 Lcom/nd/android/u/publicNumber/ui/widget/PspItemView;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PspItemView$1/this$0 Lcom/nd/android/u/publicNumber/ui/widget/PspItemView;
invokestatic com/nd/android/u/publicNumber/ui/widget/PspItemView/access$000(Lcom/nd/android/u/publicNumber/ui/widget/PspItemView;)Lcom/nd/android/u/publicNumber/controller/bean/PublicNumberInfo;
ifnull L0
new android/content/Intent
dup
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PspItemView$1/this$0 Lcom/nd/android/u/publicNumber/ui/widget/PspItemView;
invokestatic com/nd/android/u/publicNumber/ui/widget/PspItemView/access$100(Lcom/nd/android/u/publicNumber/ui/widget/PspItemView;)Landroid/app/Activity;
ldc com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 1
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 2
aload 2
ldc "MESSAGE_TYPE"
iconst_5
invokevirtual android/os/Bundle/putInt(Ljava/lang/String;I)V
aload 2
ldc "generalid"
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PspItemView$1/this$0 Lcom/nd/android/u/publicNumber/ui/widget/PspItemView;
invokestatic com/nd/android/u/publicNumber/ui/widget/PspItemView/access$000(Lcom/nd/android/u/publicNumber/ui/widget/PspItemView;)Lcom/nd/android/u/publicNumber/controller/bean/PublicNumberInfo;
getfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/pspid Ljava/lang/String;
invokestatic java/lang/Long/valueOf(Ljava/lang/String;)Ljava/lang/Long;
invokevirtual java/lang/Long/longValue()J
invokevirtual android/os/Bundle/putLong(Ljava/lang/String;J)V
aload 2
ldc "name"
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PspItemView$1/this$0 Lcom/nd/android/u/publicNumber/ui/widget/PspItemView;
invokestatic com/nd/android/u/publicNumber/ui/widget/PspItemView/access$000(Lcom/nd/android/u/publicNumber/ui/widget/PspItemView;)Lcom/nd/android/u/publicNumber/controller/bean/PublicNumberInfo;
getfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/name Ljava/lang/String;
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
aload 1
aload 2
invokevirtual android/content/Intent/putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
pop
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PspItemView$1/this$0 Lcom/nd/android/u/publicNumber/ui/widget/PspItemView;
invokestatic com/nd/android/u/publicNumber/ui/widget/PspItemView/access$100(Lcom/nd/android/u/publicNumber/ui/widget/PspItemView;)Landroid/app/Activity;
aload 1
invokevirtual android/app/Activity/startActivity(Landroid/content/Intent;)V
L0:
return
.limit locals 3
.limit stack 4
.end method
