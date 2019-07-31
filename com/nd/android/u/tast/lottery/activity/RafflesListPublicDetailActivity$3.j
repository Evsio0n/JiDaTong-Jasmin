.bytecode 50.0
.class synchronized com/nd/android/u/tast/lottery/activity/RafflesListPublicDetailActivity$3
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/android/u/tast/lottery/activity/RafflesListPublicDetailActivity
.inner class inner com/nd/android/u/tast/lottery/activity/RafflesListPublicDetailActivity$3

.field final synthetic 'this$0' Lcom/nd/android/u/tast/lottery/activity/RafflesListPublicDetailActivity;

.method <init>(Lcom/nd/android/u/tast/lottery/activity/RafflesListPublicDetailActivity;)V
aload 0
aload 1
putfield com/nd/android/u/tast/lottery/activity/RafflesListPublicDetailActivity$3/this$0 Lcom/nd/android/u/tast/lottery/activity/RafflesListPublicDetailActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/android/u/tasklib/R$id/header_btn_lotterydraw I
if_icmpne L0
new android/content/Intent
dup
aload 0
getfield com/nd/android/u/tast/lottery/activity/RafflesListPublicDetailActivity$3/this$0 Lcom/nd/android/u/tast/lottery/activity/RafflesListPublicDetailActivity;
ldc com/nd/android/u/tast/lottery/activity/LotMainActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 1
aload 0
getfield com/nd/android/u/tast/lottery/activity/RafflesListPublicDetailActivity$3/this$0 Lcom/nd/android/u/tast/lottery/activity/RafflesListPublicDetailActivity;
aload 1
invokevirtual com/nd/android/u/tast/lottery/activity/RafflesListPublicDetailActivity/startActivity(Landroid/content/Intent;)V
L1:
return
L0:
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/android/u/tasklib/R$id/header_btn_return I
if_icmpne L2
aload 0
getfield com/nd/android/u/tast/lottery/activity/RafflesListPublicDetailActivity$3/this$0 Lcom/nd/android/u/tast/lottery/activity/RafflesListPublicDetailActivity;
invokevirtual com/nd/android/u/tast/lottery/activity/RafflesListPublicDetailActivity/finish()V
return
L2:
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/android/u/tasklib/R$id/btn_giftscroll_left I
if_icmpeq L3
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/android/u/tasklib/R$id/layout_giftscroll_left I
if_icmpne L4
L3:
aload 0
getfield com/nd/android/u/tast/lottery/activity/RafflesListPublicDetailActivity$3/this$0 Lcom/nd/android/u/tast/lottery/activity/RafflesListPublicDetailActivity;
getfield com/nd/android/u/tast/lottery/activity/RafflesListPublicDetailActivity/lv_gift_scroll Lcom/nd/android/u/tast/birthday/view/HorizontalListView;
invokevirtual com/nd/android/u/tast/birthday/view/HorizontalListView/getCurrentX()I
istore 2
iload 2
aload 0
getfield com/nd/android/u/tast/lottery/activity/RafflesListPublicDetailActivity$3/this$0 Lcom/nd/android/u/tast/lottery/activity/RafflesListPublicDetailActivity;
invokestatic com/nd/android/u/tast/lottery/activity/RafflesListPublicDetailActivity/access$500(Lcom/nd/android/u/tast/lottery/activity/RafflesListPublicDetailActivity;)I
if_icmple L5
aload 0
getfield com/nd/android/u/tast/lottery/activity/RafflesListPublicDetailActivity$3/this$0 Lcom/nd/android/u/tast/lottery/activity/RafflesListPublicDetailActivity;
invokestatic com/nd/android/u/tast/lottery/activity/RafflesListPublicDetailActivity/access$500(Lcom/nd/android/u/tast/lottery/activity/RafflesListPublicDetailActivity;)I
istore 3
aload 0
getfield com/nd/android/u/tast/lottery/activity/RafflesListPublicDetailActivity$3/this$0 Lcom/nd/android/u/tast/lottery/activity/RafflesListPublicDetailActivity;
getfield com/nd/android/u/tast/lottery/activity/RafflesListPublicDetailActivity/lv_gift_scroll Lcom/nd/android/u/tast/birthday/view/HorizontalListView;
iload 2
iload 3
isub
invokevirtual com/nd/android/u/tast/birthday/view/HorizontalListView/scrollTo(I)V
return
L5:
aload 0
getfield com/nd/android/u/tast/lottery/activity/RafflesListPublicDetailActivity$3/this$0 Lcom/nd/android/u/tast/lottery/activity/RafflesListPublicDetailActivity;
getfield com/nd/android/u/tast/lottery/activity/RafflesListPublicDetailActivity/lv_gift_scroll Lcom/nd/android/u/tast/birthday/view/HorizontalListView;
iconst_0
invokevirtual com/nd/android/u/tast/birthday/view/HorizontalListView/scrollTo(I)V
return
L4:
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/android/u/tasklib/R$id/layout_giftscroll_right I
if_icmpeq L6
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/android/u/tasklib/R$id/btn_giftscroll_right I
if_icmpne L1
L6:
aload 0
getfield com/nd/android/u/tast/lottery/activity/RafflesListPublicDetailActivity$3/this$0 Lcom/nd/android/u/tast/lottery/activity/RafflesListPublicDetailActivity;
getfield com/nd/android/u/tast/lottery/activity/RafflesListPublicDetailActivity/lv_gift_scroll Lcom/nd/android/u/tast/birthday/view/HorizontalListView;
invokevirtual com/nd/android/u/tast/birthday/view/HorizontalListView/getCurrentX()I
istore 2
aload 0
getfield com/nd/android/u/tast/lottery/activity/RafflesListPublicDetailActivity$3/this$0 Lcom/nd/android/u/tast/lottery/activity/RafflesListPublicDetailActivity;
getfield com/nd/android/u/tast/lottery/activity/RafflesListPublicDetailActivity/lv_gift_scroll Lcom/nd/android/u/tast/birthday/view/HorizontalListView;
invokevirtual com/nd/android/u/tast/birthday/view/HorizontalListView/getMaxX()I
istore 3
iload 3
iload 2
isub
aload 0
getfield com/nd/android/u/tast/lottery/activity/RafflesListPublicDetailActivity$3/this$0 Lcom/nd/android/u/tast/lottery/activity/RafflesListPublicDetailActivity;
invokestatic com/nd/android/u/tast/lottery/activity/RafflesListPublicDetailActivity/access$500(Lcom/nd/android/u/tast/lottery/activity/RafflesListPublicDetailActivity;)I
if_icmple L7
aload 0
getfield com/nd/android/u/tast/lottery/activity/RafflesListPublicDetailActivity$3/this$0 Lcom/nd/android/u/tast/lottery/activity/RafflesListPublicDetailActivity;
getfield com/nd/android/u/tast/lottery/activity/RafflesListPublicDetailActivity/lv_gift_scroll Lcom/nd/android/u/tast/birthday/view/HorizontalListView;
aload 0
getfield com/nd/android/u/tast/lottery/activity/RafflesListPublicDetailActivity$3/this$0 Lcom/nd/android/u/tast/lottery/activity/RafflesListPublicDetailActivity;
invokestatic com/nd/android/u/tast/lottery/activity/RafflesListPublicDetailActivity/access$500(Lcom/nd/android/u/tast/lottery/activity/RafflesListPublicDetailActivity;)I
iload 2
iadd
invokevirtual com/nd/android/u/tast/birthday/view/HorizontalListView/scrollTo(I)V
return
L7:
aload 0
getfield com/nd/android/u/tast/lottery/activity/RafflesListPublicDetailActivity$3/this$0 Lcom/nd/android/u/tast/lottery/activity/RafflesListPublicDetailActivity;
getfield com/nd/android/u/tast/lottery/activity/RafflesListPublicDetailActivity/lv_gift_scroll Lcom/nd/android/u/tast/birthday/view/HorizontalListView;
iload 3
invokevirtual com/nd/android/u/tast/birthday/view/HorizontalListView/scrollTo(I)V
return
.limit locals 4
.limit stack 4
.end method
