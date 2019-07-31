.bytecode 50.0
.class public synchronized com/nd/android/u/menu/GridViewMenu
.super android/widget/PopupWindow
.inner class inner com/nd/android/u/menu/GridViewMenu$1
.inner class inner com/nd/android/u/menu/GridViewMenu$2

.field private 'activity' Landroid/app/Activity;

.field private 'gridView' Landroid/widget/GridView;

.field private 'mainMenuAdapter' Lcom/nd/android/u/contact/menu/MenuItemAdapter;

.field private 'menuitemList' Ljava/util/List; signature "Ljava/util/List<Lcom/nd/android/u/contact/menu/MenuItem;>;"

.field private 'parentView' Landroid/view/View;

.field private 'view' Landroid/view/View;

.method public <init>(Landroid/view/View;Landroid/view/View;Landroid/app/Activity;Ljava/util/List;Landroid/widget/AdapterView$OnItemClickListener;)V
.signature "(Landroid/view/View;Landroid/view/View;Landroid/app/Activity;Ljava/util/List<Lcom/nd/android/u/contact/menu/MenuItem;>;Landroid/widget/AdapterView$OnItemClickListener;)V"
aload 0
aload 1
iconst_m1
bipush -2
iconst_1
invokespecial android/widget/PopupWindow/<init>(Landroid/view/View;IIZ)V
aload 0
aload 1
putfield com/nd/android/u/menu/GridViewMenu/view Landroid/view/View;
aload 0
aload 3
putfield com/nd/android/u/menu/GridViewMenu/activity Landroid/app/Activity;
aload 0
aload 4
putfield com/nd/android/u/menu/GridViewMenu/menuitemList Ljava/util/List;
aload 0
aload 2
putfield com/nd/android/u/menu/GridViewMenu/parentView Landroid/view/View;
aload 0
invokevirtual com/nd/android/u/menu/GridViewMenu/initMenu()V
aload 0
aload 5
invokevirtual com/nd/android/u/menu/GridViewMenu/registerGridViewListener(Landroid/widget/AdapterView$OnItemClickListener;)V
aload 0
invokespecial com/nd/android/u/menu/GridViewMenu/registerOnKeyListener()V
aload 0
getfield com/nd/android/u/menu/GridViewMenu/gridView Landroid/widget/GridView;
ldc_w 2130839179
invokevirtual android/widget/GridView/setBackgroundResource(I)V
return
.limit locals 6
.limit stack 5
.end method

.method private registerOnKeyListener()V
aload 0
getfield com/nd/android/u/menu/GridViewMenu/gridView Landroid/widget/GridView;
new com/nd/android/u/menu/GridViewMenu$2
dup
aload 0
invokespecial com/nd/android/u/menu/GridViewMenu$2/<init>(Lcom/nd/android/u/menu/GridViewMenu;)V
invokevirtual android/widget/GridView/setOnKeyListener(Landroid/view/View$OnKeyListener;)V
return
.limit locals 1
.limit stack 4
.end method

.method public hideMenu()Z
iconst_0
istore 1
aload 0
invokevirtual com/nd/android/u/menu/GridViewMenu/isShowing()Z
ifeq L0
aload 0
iconst_0
invokevirtual com/nd/android/u/menu/GridViewMenu/setFocusable(Z)V
aload 0
invokevirtual com/nd/android/u/menu/GridViewMenu/dismiss()V
iconst_1
istore 1
L0:
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method public initMenu()V
aload 0
ldc_w 2130968604
invokevirtual com/nd/android/u/menu/GridViewMenu/setAnimationStyle(I)V
aload 0
new android/graphics/drawable/BitmapDrawable
dup
invokespecial android/graphics/drawable/BitmapDrawable/<init>()V
invokevirtual com/nd/android/u/menu/GridViewMenu/setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
aload 0
aload 0
getfield com/nd/android/u/menu/GridViewMenu/parentView Landroid/view/View;
bipush 80
iconst_0
iconst_0
invokevirtual com/nd/android/u/menu/GridViewMenu/showAtLocation(Landroid/view/View;III)V
aload 0
iconst_1
invokevirtual com/nd/android/u/menu/GridViewMenu/setFocusable(Z)V
aload 0
getfield com/nd/android/u/menu/GridViewMenu/view Landroid/view/View;
new com/nd/android/u/menu/GridViewMenu$1
dup
aload 0
invokespecial com/nd/android/u/menu/GridViewMenu$1/<init>(Lcom/nd/android/u/menu/GridViewMenu;)V
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
new com/nd/android/u/contact/menu/MenuItemAdapter
dup
aload 0
getfield com/nd/android/u/menu/GridViewMenu/activity Landroid/app/Activity;
aload 0
getfield com/nd/android/u/menu/GridViewMenu/menuitemList Ljava/util/List;
invokespecial com/nd/android/u/contact/menu/MenuItemAdapter/<init>(Landroid/content/Context;Ljava/util/List;)V
putfield com/nd/android/u/menu/GridViewMenu/mainMenuAdapter Lcom/nd/android/u/contact/menu/MenuItemAdapter;
aload 0
aload 0
getfield com/nd/android/u/menu/GridViewMenu/view Landroid/view/View;
ldc_w 2131625967
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/GridView
putfield com/nd/android/u/menu/GridViewMenu/gridView Landroid/widget/GridView;
aload 0
getfield com/nd/android/u/menu/GridViewMenu/gridView Landroid/widget/GridView;
aload 0
getfield com/nd/android/u/menu/GridViewMenu/mainMenuAdapter Lcom/nd/android/u/contact/menu/MenuItemAdapter;
invokevirtual android/widget/GridView/setAdapter(Landroid/widget/ListAdapter;)V
return
.limit locals 1
.limit stack 5
.end method

.method public registerGridViewListener(Landroid/widget/AdapterView$OnItemClickListener;)V
aload 0
getfield com/nd/android/u/menu/GridViewMenu/gridView Landroid/widget/GridView;
aload 1
invokevirtual android/widget/GridView/setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
return
.limit locals 2
.limit stack 2
.end method
