.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/XYSelectUserActivity$MoreActionPopupWindow
.super com/nd/android/u/contact/view/BetterPopupWindow
.implements android/view/View$OnClickListener
.inner class private MoreActionPopupWindow inner com/nd/android/u/contact/activity/XYSelectUserActivity$MoreActionPopupWindow outer com/nd/android/u/contact/activity/XYSelectUserActivity

.field private 'popList' Landroid/widget/ListView;

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/XYSelectUserActivity;

.method public <init>(Lcom/nd/android/u/contact/activity/XYSelectUserActivity;Landroid/view/View;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/XYSelectUserActivity$MoreActionPopupWindow/this$0 Lcom/nd/android/u/contact/activity/XYSelectUserActivity;
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
getstatic com/nd/android/u/contact/R$id/lv_add_friend I
if_icmpne L0
L1:
aload 0
invokevirtual com/nd/android/u/contact/activity/XYSelectUserActivity$MoreActionPopupWindow/dismiss()V
return
L0:
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/android/u/contact/R$id/lv_create_group I
if_icmpne L2
new android/content/Intent
dup
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity$MoreActionPopupWindow/this$0 Lcom/nd/android/u/contact/activity/XYSelectUserActivity;
ldc com/nd/android/u/contact/activity/CreateGroupActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 1
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity$MoreActionPopupWindow/this$0 Lcom/nd/android/u/contact/activity/XYSelectUserActivity;
aload 1
invokevirtual com/nd/android/u/contact/activity/XYSelectUserActivity/startActivity(Landroid/content/Intent;)V
goto L1
L2:
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/android/u/contact/R$id/lv_searche_add_group I
if_icmpne L3
new android/content/Intent
dup
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity$MoreActionPopupWindow/this$0 Lcom/nd/android/u/contact/activity/XYSelectUserActivity;
ldc com/nd/android/u/contact/activity/XYGroupListActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 1
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity$MoreActionPopupWindow/this$0 Lcom/nd/android/u/contact/activity/XYSelectUserActivity;
aload 1
invokevirtual com/nd/android/u/contact/activity/XYSelectUserActivity/startActivity(Landroid/content/Intent;)V
goto L1
L3:
new android/content/Intent
dup
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity$MoreActionPopupWindow/this$0 Lcom/nd/android/u/contact/activity/XYSelectUserActivity;
ldc com/nd/android/u/contact/activity/XYSchoolListActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 1
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity$MoreActionPopupWindow/this$0 Lcom/nd/android/u/contact/activity/XYSelectUserActivity;
aload 1
invokevirtual com/nd/android/u/contact/activity/XYSelectUserActivity/startActivity(Landroid/content/Intent;)V
goto L1
.limit locals 2
.limit stack 4
.end method

.method protected onCreate()V
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity$MoreActionPopupWindow/anchor Landroid/view/View;
invokevirtual android/view/View/getContext()Landroid/content/Context;
ldc "layout_inflater"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/view/LayoutInflater
getstatic com/nd/android/u/contact/R$layout/contact_selectactvity_popup_menu I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 1
aload 1
getstatic com/nd/android/u/contact/R$id/lv_add_friend I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
aload 0
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
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
getstatic com/nd/android/u/contact/R$id/lv_add_jie_sheng I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
aload 0
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity$MoreActionPopupWindow/this$0 Lcom/nd/android/u/contact/activity/XYSelectUserActivity;
invokestatic com/nd/android/u/contact/activity/XYSelectUserActivity/access$1900(Lcom/nd/android/u/contact/activity/XYSelectUserActivity;)Landroid/widget/ImageView;
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity$MoreActionPopupWindow/this$0 Lcom/nd/android/u/contact/activity/XYSelectUserActivity;
invokevirtual com/nd/android/u/contact/activity/XYSelectUserActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$drawable/bt_header_more_menu_press I
invokevirtual android/content/res/Resources/getDrawable(I)Landroid/graphics/drawable/Drawable;
invokevirtual android/widget/ImageView/setImageDrawable(Landroid/graphics/drawable/Drawable;)V
aload 0
aload 1
invokevirtual com/nd/android/u/contact/activity/XYSelectUserActivity$MoreActionPopupWindow/setContentView(Landroid/view/View;)V
return
.limit locals 2
.limit stack 3
.end method
