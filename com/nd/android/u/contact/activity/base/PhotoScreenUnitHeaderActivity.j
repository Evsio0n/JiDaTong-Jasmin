.bytecode 50.0
.class public synchronized com/nd/android/u/contact/activity/base/PhotoScreenUnitHeaderActivity
.super com/product/android/ui/activity/BaseActivity
.implements android/view/View$OnClickListener

.field protected 'deptid' I

.field protected 'leftBtn' Landroid/widget/Button;

.field protected 'rightBtn' Landroid/widget/Button;

.field protected 'rightLayout' Landroid/widget/LinearLayout;

.field protected 'searchBtn' Landroid/widget/ImageView;

.field protected 'searchEdit' Landroid/widget/EditText;

.field protected 'titleText' Landroid/widget/TextView;

.field protected 'unitid' I

.method public <init>()V
aload 0
invokespecial com/product/android/ui/activity/BaseActivity/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method protected _onCreate(Landroid/os/Bundle;)Z
aload 0
aload 1
invokespecial com/product/android/ui/activity/BaseActivity/_onCreate(Landroid/os/Bundle;)Z
ifeq L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 2
.limit stack 2
.end method

.method protected initComponent()V
aload 0
invokespecial com/product/android/ui/activity/BaseActivity/initComponent()V
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/header_btn_left I
invokevirtual com/nd/android/u/contact/activity/base/PhotoScreenUnitHeaderActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/android/u/contact/activity/base/PhotoScreenUnitHeaderActivity/leftBtn Landroid/widget/Button;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/header_bt_search I
invokevirtual com/nd/android/u/contact/activity/base/PhotoScreenUnitHeaderActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/contact/activity/base/PhotoScreenUnitHeaderActivity/searchBtn Landroid/widget/ImageView;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/header_text_title I
invokevirtual com/nd/android/u/contact/activity/base/PhotoScreenUnitHeaderActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/activity/base/PhotoScreenUnitHeaderActivity/titleText Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/header_layout_right I
invokevirtual com/nd/android/u/contact/activity/base/PhotoScreenUnitHeaderActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/android/u/contact/activity/base/PhotoScreenUnitHeaderActivity/rightLayout Landroid/widget/LinearLayout;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/header_edit_title I
invokevirtual com/nd/android/u/contact/activity/base/PhotoScreenUnitHeaderActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/EditText
putfield com/nd/android/u/contact/activity/base/PhotoScreenUnitHeaderActivity/searchEdit Landroid/widget/EditText;
return
.limit locals 1
.limit stack 3
.end method

.method protected initEvent()V
aload 0
getfield com/nd/android/u/contact/activity/base/PhotoScreenUnitHeaderActivity/leftBtn Landroid/widget/Button;
aload 0
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/contact/activity/base/PhotoScreenUnitHeaderActivity/searchBtn Landroid/widget/ImageView;
aload 0
invokevirtual android/widget/ImageView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/contact/activity/base/PhotoScreenUnitHeaderActivity/titleText Landroid/widget/TextView;
aload 0
invokevirtual android/widget/TextView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/contact/activity/base/PhotoScreenUnitHeaderActivity/searchEdit Landroid/widget/EditText;
aload 0
invokevirtual android/widget/EditText/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/contact/activity/base/PhotoScreenUnitHeaderActivity/rightBtn Landroid/widget/Button;
ifnull L0
aload 0
getfield com/nd/android/u/contact/activity/base/PhotoScreenUnitHeaderActivity/rightBtn Landroid/widget/Button;
aload 0
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
L0:
return
.limit locals 1
.limit stack 2
.end method

.method protected final leftBtnHandle()V
aload 0
getfield com/nd/android/u/contact/activity/base/PhotoScreenUnitHeaderActivity/searchEdit Landroid/widget/EditText;
invokevirtual android/widget/EditText/getVisibility()I
ifne L0
aload 0
new android/content/Intent
dup
aload 0
ldc com/nd/android/u/contact/activity/PhotoScreenUnitActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
invokevirtual com/nd/android/u/contact/activity/base/PhotoScreenUnitHeaderActivity/startActivity(Landroid/content/Intent;)V
L0:
aload 0
invokevirtual com/nd/android/u/contact/activity/base/PhotoScreenUnitHeaderActivity/finish()V
return
.limit locals 1
.limit stack 5
.end method

.method public final onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/android/u/contact/R$id/header_btn_left I
if_icmpne L0
aload 0
invokevirtual com/nd/android/u/contact/activity/base/PhotoScreenUnitHeaderActivity/leftBtnHandle()V
L1:
return
L0:
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/android/u/contact/R$id/header_bt_search I
if_icmpeq L2
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/android/u/contact/R$id/header_btn_search_control I
if_icmpne L1
L2:
new android/content/Intent
dup
aload 0
ldc com/nd/android/u/contact/activity/SearchDepartActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 1
aload 1
ldc "unitid"
aload 0
getfield com/nd/android/u/contact/activity/base/PhotoScreenUnitHeaderActivity/unitid I
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;I)Landroid/content/Intent;
pop
aload 1
ldc "departid"
aload 0
getfield com/nd/android/u/contact/activity/base/PhotoScreenUnitHeaderActivity/deptid I
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;I)Landroid/content/Intent;
pop
aload 0
aload 1
invokevirtual com/nd/android/u/contact/activity/base/PhotoScreenUnitHeaderActivity/startActivity(Landroid/content/Intent;)V
aload 0
invokevirtual com/nd/android/u/contact/activity/base/PhotoScreenUnitHeaderActivity/finish()V
return
.limit locals 2
.limit stack 4
.end method

.method protected onStart()V
aload 0
invokespecial com/product/android/ui/activity/BaseActivity/onStart()V
return
.limit locals 1
.limit stack 1
.end method

.method protected final setActivityTitle(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/contact/activity/base/PhotoScreenUnitHeaderActivity/titleText Landroid/widget/TextView;
aload 1
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
.limit locals 2
.limit stack 2
.end method
