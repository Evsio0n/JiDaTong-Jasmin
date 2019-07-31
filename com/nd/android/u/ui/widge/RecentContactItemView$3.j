.bytecode 50.0
.class synchronized com/nd/android/u/ui/widge/RecentContactItemView$3
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/android/u/ui/widge/RecentContactItemView/updateContentMenu(Landroid/content/Context;Lcom/nd/android/u/controller/bean/contact/RecentContactItem;Z)V
.inner class inner com/nd/android/u/ui/widge/RecentContactItemView$3

.field final synthetic 'this$0' Lcom/nd/android/u/ui/widge/RecentContactItemView;

.method <init>(Lcom/nd/android/u/ui/widge/RecentContactItemView;)V
aload 0
aload 1
putfield com/nd/android/u/ui/widge/RecentContactItemView$3/this$0 Lcom/nd/android/u/ui/widge/RecentContactItemView;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 0
getfield com/nd/android/u/ui/widge/RecentContactItemView$3/this$0 Lcom/nd/android/u/ui/widge/RecentContactItemView;
invokestatic com/nd/android/u/ui/widge/RecentContactItemView/access$100(Lcom/nd/android/u/ui/widge/RecentContactItemView;)Lcom/nd/android/u/ui/widge/SliderMenuView;
invokevirtual com/nd/android/u/ui/widge/SliderMenuView/resetMenu()V
aload 0
getfield com/nd/android/u/ui/widge/RecentContactItemView$3/this$0 Lcom/nd/android/u/ui/widge/RecentContactItemView;
invokestatic com/nd/android/u/ui/widge/RecentContactItemView/access$000(Lcom/nd/android/u/ui/widge/RecentContactItemView;)Lcom/nd/android/u/controller/bean/contact/RecentContactItem;
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/getTopTime()J
lconst_0
lcmp
ifne L0
aload 0
getfield com/nd/android/u/ui/widge/RecentContactItemView$3/this$0 Lcom/nd/android/u/ui/widge/RecentContactItemView;
invokestatic com/nd/android/u/ui/widge/RecentContactItemView/access$000(Lcom/nd/android/u/ui/widge/RecentContactItemView;)Lcom/nd/android/u/controller/bean/contact/RecentContactItem;
invokestatic java/lang/System/currentTimeMillis()J
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/setTopTime(J)V
getstatic com/nd/android/u/business/db/dao/RecentContactRecords/INSTANCE Lcom/nd/android/u/business/db/dao/RecentContactRecords;
aload 0
getfield com/nd/android/u/ui/widge/RecentContactItemView$3/this$0 Lcom/nd/android/u/ui/widge/RecentContactItemView;
invokestatic com/nd/android/u/ui/widge/RecentContactItemView/access$000(Lcom/nd/android/u/ui/widge/RecentContactItemView;)Lcom/nd/android/u/controller/bean/contact/RecentContactItem;
invokevirtual com/nd/android/u/business/db/dao/RecentContactRecords/replaceItem(Lcom/nd/android/u/controller/bean/contact/RecentContactItem;)V
L1:
sipush 1000
bipush 30
aconst_null
invokestatic com/nd/android/u/chatUiUtils/SendMessageUtil/notifyOtherMessage(IILjava/lang/Object;)V
return
L0:
aload 0
getfield com/nd/android/u/ui/widge/RecentContactItemView$3/this$0 Lcom/nd/android/u/ui/widge/RecentContactItemView;
invokestatic com/nd/android/u/ui/widge/RecentContactItemView/access$000(Lcom/nd/android/u/ui/widge/RecentContactItemView;)Lcom/nd/android/u/controller/bean/contact/RecentContactItem;
lconst_0
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/setTopTime(J)V
getstatic com/nd/android/u/business/db/dao/RecentContactRecords/INSTANCE Lcom/nd/android/u/business/db/dao/RecentContactRecords;
aload 0
getfield com/nd/android/u/ui/widge/RecentContactItemView$3/this$0 Lcom/nd/android/u/ui/widge/RecentContactItemView;
invokestatic com/nd/android/u/ui/widge/RecentContactItemView/access$000(Lcom/nd/android/u/ui/widge/RecentContactItemView;)Lcom/nd/android/u/controller/bean/contact/RecentContactItem;
invokevirtual com/nd/android/u/business/db/dao/RecentContactRecords/replaceItem(Lcom/nd/android/u/controller/bean/contact/RecentContactItem;)V
goto L1
.limit locals 2
.limit stack 4
.end method
