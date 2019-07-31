.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/XYGroupListActivity$MoreActionPopupWindow
.super com/nd/android/u/contact/view/BetterPopupWindow
.implements android/view/View$OnClickListener
.inner class private MoreActionPopupWindow inner com/nd/android/u/contact/activity/XYGroupListActivity$MoreActionPopupWindow outer com/nd/android/u/contact/activity/XYGroupListActivity

.field private 'popList' Landroid/widget/ListView;

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/XYGroupListActivity;

.method public <init>(Lcom/nd/android/u/contact/activity/XYGroupListActivity;Landroid/view/View;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/XYGroupListActivity$MoreActionPopupWindow/this$0 Lcom/nd/android/u/contact/activity/XYGroupListActivity;
aload 0
aload 2
invokespecial com/nd/android/u/contact/view/BetterPopupWindow/<init>(Landroid/view/View;)V
return
.limit locals 3
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/android/u/contact/R$id/lv_create_group I
if_icmpne L0
new android/content/Intent
dup
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity$MoreActionPopupWindow/this$0 Lcom/nd/android/u/contact/activity/XYGroupListActivity;
ldc com/nd/android/u/contact/activity/CreateGroupActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 1
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity$MoreActionPopupWindow/this$0 Lcom/nd/android/u/contact/activity/XYGroupListActivity;
aload 1
invokevirtual com/nd/android/u/contact/activity/XYGroupListActivity/startActivity(Landroid/content/Intent;)V
L1:
aload 0
invokevirtual com/nd/android/u/contact/activity/XYGroupListActivity$MoreActionPopupWindow/dismiss()V
return
L0:
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/android/u/contact/R$id/lv_searche_add_group I
if_icmpne L2
new android/content/Intent
dup
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity$MoreActionPopupWindow/this$0 Lcom/nd/android/u/contact/activity/XYGroupListActivity;
ldc com/nd/android/u/contact/activity/XYNewSearchGroupActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 1
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity$MoreActionPopupWindow/this$0 Lcom/nd/android/u/contact/activity/XYGroupListActivity;
aload 1
invokevirtual com/nd/android/u/contact/activity/XYGroupListActivity/startActivity(Landroid/content/Intent;)V
goto L1
L2:
new android/content/Intent
dup
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity$MoreActionPopupWindow/this$0 Lcom/nd/android/u/contact/activity/XYGroupListActivity;
ldc com/nd/android/u/contact/activity/XYNewSelectUserActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 1
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity$MoreActionPopupWindow/this$0 Lcom/nd/android/u/contact/activity/XYGroupListActivity;
aload 1
invokevirtual com/nd/android/u/contact/activity/XYGroupListActivity/startActivity(Landroid/content/Intent;)V
goto L1
.limit locals 2
.limit stack 4
.end method

.method protected onCreate()V
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity$MoreActionPopupWindow/anchor Landroid/view/View;
invokevirtual android/view/View/getContext()Landroid/content/Context;
ldc "layout_inflater"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/view/LayoutInflater
getstatic com/nd/android/u/contact/R$layout/contact_grouplistfragment_popup_menu I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 1
aload 1
getstatic com/nd/android/u/contact/R$id/lv_create_group I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
aload 0
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 1
getstatic com/nd/android/u/contact/R$id/lv_searche_add_group I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
aload 0
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 1
getstatic com/nd/android/u/contact/R$id/create_discussion I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
aload 0
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity$MoreActionPopupWindow/this$0 Lcom/nd/android/u/contact/activity/XYGroupListActivity;
invokestatic com/nd/android/u/contact/activity/XYGroupListActivity/access$1200(Lcom/nd/android/u/contact/activity/XYGroupListActivity;)Landroid/widget/ImageView;
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity$MoreActionPopupWindow/this$0 Lcom/nd/android/u/contact/activity/XYGroupListActivity;
invokevirtual com/nd/android/u/contact/activity/XYGroupListActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$drawable/bt_header_more_menu_press I
invokevirtual android/content/res/Resources/getDrawable(I)Landroid/graphics/drawable/Drawable;
invokevirtual android/widget/ImageView/setImageDrawable(Landroid/graphics/drawable/Drawable;)V
aload 0
aload 1
invokevirtual com/nd/android/u/contact/activity/XYGroupListActivity$MoreActionPopupWindow/setContentView(Landroid/view/View;)V
return
.limit locals 2
.limit stack 3
.end method
