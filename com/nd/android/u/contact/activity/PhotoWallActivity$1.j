.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/PhotoWallActivity$1
.super java/lang/Object
.implements com/product/android/ui/widget/PagingLoadListView$IScrollDirectionListener
.enclosing method com/nd/android/u/contact/activity/PhotoWallActivity/initComponent()V
.inner class inner com/nd/android/u/contact/activity/PhotoWallActivity$1

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/PhotoWallActivity;

.method <init>(Lcom/nd/android/u/contact/activity/PhotoWallActivity;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/PhotoWallActivity$1/this$0 Lcom/nd/android/u/contact/activity/PhotoWallActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onScrollDown()V
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity$1/this$0 Lcom/nd/android/u/contact/activity/PhotoWallActivity;
invokestatic com/nd/android/u/contact/activity/PhotoWallActivity/access$000(Lcom/nd/android/u/contact/activity/PhotoWallActivity;)Lcom/nd/android/u/contact/view/RankingListRelativeLayout;
invokevirtual com/nd/android/u/contact/view/RankingListRelativeLayout/getVisibility()I
ifne L0
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity$1/this$0 Lcom/nd/android/u/contact/activity/PhotoWallActivity;
bipush 8
invokestatic com/nd/android/u/contact/activity/PhotoWallActivity/access$100(Lcom/nd/android/u/contact/activity/PhotoWallActivity;I)V
L0:
return
.limit locals 1
.limit stack 2
.end method

.method public onScrollUp()V
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity$1/this$0 Lcom/nd/android/u/contact/activity/PhotoWallActivity;
invokestatic com/nd/android/u/contact/activity/PhotoWallActivity/access$000(Lcom/nd/android/u/contact/activity/PhotoWallActivity;)Lcom/nd/android/u/contact/view/RankingListRelativeLayout;
invokevirtual com/nd/android/u/contact/view/RankingListRelativeLayout/getVisibility()I
bipush 8
if_icmpne L0
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity$1/this$0 Lcom/nd/android/u/contact/activity/PhotoWallActivity;
iconst_0
invokestatic com/nd/android/u/contact/activity/PhotoWallActivity/access$100(Lcom/nd/android/u/contact/activity/PhotoWallActivity;I)V
L0:
return
.limit locals 1
.limit stack 2
.end method
