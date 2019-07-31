.bytecode 50.0
.class synchronized com/nd/android/u/ui/activity/recent_contact/SearchContactsItemView$2
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/android/u/ui/activity/recent_contact/SearchContactsItemView/updateContent(Landroid/app/Activity;Lcom/product/android/commonInterface/chat/SearchContactsItem;Lcom/nd/android/u/controller/bean/contact/ForwardingParam;ZZ)V
.inner class inner com/nd/android/u/ui/activity/recent_contact/SearchContactsItemView$2

.field final synthetic 'this$0' Lcom/nd/android/u/ui/activity/recent_contact/SearchContactsItemView;

.field final synthetic 'val$activity' Landroid/app/Activity;

.field final synthetic 'val$forwardingParam' Lcom/nd/android/u/controller/bean/contact/ForwardingParam;

.field final synthetic 'val$item' Lcom/product/android/commonInterface/chat/SearchContactsItem;

.method <init>(Lcom/nd/android/u/ui/activity/recent_contact/SearchContactsItemView;Landroid/app/Activity;Lcom/product/android/commonInterface/chat/SearchContactsItem;Lcom/nd/android/u/controller/bean/contact/ForwardingParam;)V
aload 0
aload 1
putfield com/nd/android/u/ui/activity/recent_contact/SearchContactsItemView$2/this$0 Lcom/nd/android/u/ui/activity/recent_contact/SearchContactsItemView;
aload 0
aload 2
putfield com/nd/android/u/ui/activity/recent_contact/SearchContactsItemView$2/val$activity Landroid/app/Activity;
aload 0
aload 3
putfield com/nd/android/u/ui/activity/recent_contact/SearchContactsItemView$2/val$item Lcom/product/android/commonInterface/chat/SearchContactsItem;
aload 0
aload 4
putfield com/nd/android/u/ui/activity/recent_contact/SearchContactsItemView$2/val$forwardingParam Lcom/nd/android/u/controller/bean/contact/ForwardingParam;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 5
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/SearchContactsItemView$2/this$0 Lcom/nd/android/u/ui/activity/recent_contact/SearchContactsItemView;
aload 1
invokevirtual android/view/View/getId()I
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/SearchContactsItemView$2/val$activity Landroid/app/Activity;
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/SearchContactsItemView$2/val$item Lcom/product/android/commonInterface/chat/SearchContactsItem;
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/SearchContactsItemView$2/val$forwardingParam Lcom/nd/android/u/controller/bean/contact/ForwardingParam;
invokestatic com/nd/android/u/ui/activity/recent_contact/SearchContactsItemView/access$100(Lcom/nd/android/u/ui/activity/recent_contact/SearchContactsItemView;ILandroid/app/Activity;Lcom/product/android/commonInterface/chat/SearchContactsItem;Lcom/nd/android/u/controller/bean/contact/ForwardingParam;)V
return
.limit locals 2
.limit stack 5
.end method
