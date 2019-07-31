.bytecode 50.0
.class synchronized com/nd/android/u/contact/fragment/ContactMainFragment$5
.super java/lang/Object
.implements android/widget/AdapterView$OnItemLongClickListener
.enclosing method com/nd/android/u/contact/fragment/ContactMainFragment
.inner class inner com/nd/android/u/contact/fragment/ContactMainFragment$5
.inner class inner com/nd/android/u/contact/fragment/ContactMainFragment$5$1

.field final synthetic 'this$0' Lcom/nd/android/u/contact/fragment/ContactMainFragment;

.method <init>(Lcom/nd/android/u/contact/fragment/ContactMainFragment;)V
aload 0
aload 1
putfield com/nd/android/u/contact/fragment/ContactMainFragment$5/this$0 Lcom/nd/android/u/contact/fragment/ContactMainFragment;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.signature "(Landroid/widget/AdapterView<*>;Landroid/view/View;IJ)Z"
aload 0
getfield com/nd/android/u/contact/fragment/ContactMainFragment$5/this$0 Lcom/nd/android/u/contact/fragment/ContactMainFragment;
invokestatic com/nd/android/u/contact/fragment/ContactMainFragment/access$200(Lcom/nd/android/u/contact/fragment/ContactMainFragment;)Z
ifeq L0
iconst_0
ireturn
L0:
aload 2
invokevirtual android/view/View/getTag()Ljava/lang/Object;
ifnull L1
aload 2
invokevirtual android/view/View/getTag()Ljava/lang/Object;
astore 1
aload 1
instanceof java/lang/Long
ifeq L2
aload 1
checkcast java/lang/Long
invokevirtual java/lang/Long/longValue()J
lstore 4
invokestatic com/nd/android/u/contact/cache/UserCacheManager/getInstance()Lcom/nd/android/u/contact/cache/UserCacheManager;
lload 4
invokevirtual com/nd/android/u/contact/cache/UserCacheManager/getUser(J)Lcom/product/android/commonInterface/contact/OapUser;
astore 1
aload 1
ifnull L1
new com/nd/android/u/contact/dialog/UserFunctionAlertDialog
dup
aload 0
getfield com/nd/android/u/contact/fragment/ContactMainFragment$5/this$0 Lcom/nd/android/u/contact/fragment/ContactMainFragment;
invokevirtual com/nd/android/u/contact/fragment/ContactMainFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
aload 1
invokespecial com/nd/android/u/contact/dialog/UserFunctionAlertDialog/<init>(Landroid/content/Context;Lcom/product/android/commonInterface/contact/OapUser;)V
invokevirtual android/app/AlertDialog$Builder/create()Landroid/app/AlertDialog;
invokevirtual android/app/AlertDialog/show()V
L1:
iconst_1
ireturn
L2:
aload 1
instanceof com/nd/android/u/contact/dataStructure/OapFriendGroup
ifeq L1
aload 0
getfield com/nd/android/u/contact/fragment/ContactMainFragment$5/this$0 Lcom/nd/android/u/contact/fragment/ContactMainFragment;
invokevirtual com/nd/android/u/contact/fragment/ContactMainFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
getstatic com/nd/android/u/contact/R$layout/xy_friend_group_popupwindow I
aconst_null
invokestatic android/view/View/inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;
astore 1
aload 0
getfield com/nd/android/u/contact/fragment/ContactMainFragment$5/this$0 Lcom/nd/android/u/contact/fragment/ContactMainFragment;
new android/widget/PopupWindow
dup
aload 1
bipush -2
bipush -2
iconst_0
invokespecial android/widget/PopupWindow/<init>(Landroid/view/View;IIZ)V
invokestatic com/nd/android/u/contact/fragment/ContactMainFragment/access$402(Lcom/nd/android/u/contact/fragment/ContactMainFragment;Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;
pop
aload 0
getfield com/nd/android/u/contact/fragment/ContactMainFragment$5/this$0 Lcom/nd/android/u/contact/fragment/ContactMainFragment;
invokestatic com/nd/android/u/contact/fragment/ContactMainFragment/access$400(Lcom/nd/android/u/contact/fragment/ContactMainFragment;)Landroid/widget/PopupWindow;
iconst_1
invokevirtual android/widget/PopupWindow/setOutsideTouchable(Z)V
aload 0
getfield com/nd/android/u/contact/fragment/ContactMainFragment$5/this$0 Lcom/nd/android/u/contact/fragment/ContactMainFragment;
invokestatic com/nd/android/u/contact/fragment/ContactMainFragment/access$400(Lcom/nd/android/u/contact/fragment/ContactMainFragment;)Landroid/widget/PopupWindow;
new android/graphics/drawable/ColorDrawable
dup
iconst_0
invokespecial android/graphics/drawable/ColorDrawable/<init>(I)V
invokevirtual android/widget/PopupWindow/setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
new android/view/animation/ScaleAnimation
dup
ldc_w 0.2F
fconst_1
ldc_w 0.2F
fconst_1
iconst_1
ldc_w 0.5F
iconst_1
ldc_w 0.5F
invokespecial android/view/animation/ScaleAnimation/<init>(FFFFIFIF)V
astore 6
aload 6
ldc2_w 400L
invokevirtual android/view/animation/ScaleAnimation/setDuration(J)V
iconst_2
newarray int
astore 7
aload 2
aload 7
invokevirtual android/view/View/getLocationInWindow([I)V
aload 0
getfield com/nd/android/u/contact/fragment/ContactMainFragment$5/this$0 Lcom/nd/android/u/contact/fragment/ContactMainFragment;
invokevirtual com/nd/android/u/contact/fragment/ContactMainFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
ldc_w 120.0F
invokestatic com/common/android/utils/DisplayUtil/dip2px(Landroid/content/Context;F)I
istore 3
aload 0
getfield com/nd/android/u/contact/fragment/ContactMainFragment$5/this$0 Lcom/nd/android/u/contact/fragment/ContactMainFragment;
invokestatic com/nd/android/u/contact/fragment/ContactMainFragment/access$400(Lcom/nd/android/u/contact/fragment/ContactMainFragment;)Landroid/widget/PopupWindow;
aload 2
bipush 51
aload 7
iconst_0
iaload
iload 3
iadd
aload 7
iconst_1
iaload
invokevirtual android/widget/PopupWindow/showAtLocation(Landroid/view/View;III)V
aload 1
aload 6
invokevirtual android/view/View/startAnimation(Landroid/view/animation/Animation;)V
aload 1
new com/nd/android/u/contact/fragment/ContactMainFragment$5$1
dup
aload 0
invokespecial com/nd/android/u/contact/fragment/ContactMainFragment$5$1/<init>(Lcom/nd/android/u/contact/fragment/ContactMainFragment$5;)V
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
goto L1
.limit locals 8
.limit stack 10
.end method
