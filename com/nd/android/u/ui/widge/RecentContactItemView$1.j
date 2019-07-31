.bytecode 50.0
.class synchronized com/nd/android/u/ui/widge/RecentContactItemView$1
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/android/u/ui/widge/RecentContactItemView/updateContentPic(Landroid/content/Context;Lcom/nd/android/u/controller/bean/contact/RecentContactItem;)V
.inner class inner com/nd/android/u/ui/widge/RecentContactItemView$1

.field final synthetic 'this$0' Lcom/nd/android/u/ui/widge/RecentContactItemView;

.field final synthetic 'val$ctx' Landroid/content/Context;

.method <init>(Lcom/nd/android/u/ui/widge/RecentContactItemView;Landroid/content/Context;)V
aload 0
aload 1
putfield com/nd/android/u/ui/widge/RecentContactItemView$1/this$0 Lcom/nd/android/u/ui/widge/RecentContactItemView;
aload 0
aload 2
putfield com/nd/android/u/ui/widge/RecentContactItemView$1/val$ctx Landroid/content/Context;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 0
getfield com/nd/android/u/ui/widge/RecentContactItemView$1/this$0 Lcom/nd/android/u/ui/widge/RecentContactItemView;
invokestatic com/nd/android/u/ui/widge/RecentContactItemView/access$000(Lcom/nd/android/u/ui/widge/RecentContactItemView;)Lcom/nd/android/u/controller/bean/contact/RecentContactItem;
aload 0
getfield com/nd/android/u/ui/widge/RecentContactItemView$1/val$ctx Landroid/content/Context;
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/onClickHeadPortrait(Landroid/content/Context;)V
return
.limit locals 2
.limit stack 2
.end method
