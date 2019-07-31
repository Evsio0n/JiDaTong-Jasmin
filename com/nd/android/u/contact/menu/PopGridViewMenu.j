.bytecode 50.0
.class public synchronized com/nd/android/u/contact/menu/PopGridViewMenu
.super java/lang/Object
.inner class inner com/nd/android/u/contact/menu/PopGridViewMenu$1
.inner class inner com/nd/android/u/contact/menu/PopGridViewMenu$2
.inner class inner com/nd/android/u/contact/menu/PopGridViewMenu$3

.field private 'activity' Landroid/app/Activity;

.field private 'list' Ljava/util/List; signature "Ljava/util/List<Lcom/nd/android/u/contact/menu/MenuItem;>;"

.field private 'mContext' Landroid/app/Activity;

.field private 'mMenuGrid' Landroid/widget/GridView;

.field private 'mMenuView' Landroid/view/View;

.field private 'mPopupWindow' Landroid/widget/PopupWindow;

.field private 'mainMenuAdapter' Lcom/nd/android/u/contact/menu/MenuItemAdapter;

.field private 'menuitemList' Ljava/util/List; signature "Ljava/util/List<Lcom/nd/android/u/contact/menu/MenuItem;>;"

.field private 'popMenuEventListener' Landroid/widget/AdapterView$OnItemClickListener;

.method public <init>(Landroid/app/Activity;Ljava/util/List;)V
.signature "(Landroid/app/Activity;Ljava/util/List<Lcom/nd/android/u/contact/menu/MenuItem;>;)V"
aload 0
aload 1
aload 2
iconst_0
invokespecial com/nd/android/u/contact/menu/PopGridViewMenu/<init>(Landroid/app/Activity;Ljava/util/List;I)V
return
.limit locals 3
.limit stack 4
.end method

.method public <init>(Landroid/app/Activity;Ljava/util/List;I)V
.signature "(Landroid/app/Activity;Ljava/util/List<Lcom/nd/android/u/contact/menu/MenuItem;>;I)V"
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/nd/android/u/contact/menu/PopGridViewMenu/mContext Landroid/app/Activity;
aload 0
aload 2
putfield com/nd/android/u/contact/menu/PopGridViewMenu/list Ljava/util/List;
aload 0
invokevirtual com/nd/android/u/contact/menu/PopGridViewMenu/initMenu()V
aload 0
getfield com/nd/android/u/contact/menu/PopGridViewMenu/mMenuGrid Landroid/widget/GridView;
getstatic com/nd/android/u/contact/R$drawable/menu_dialog_bg I
invokevirtual android/widget/GridView/setBackgroundResource(I)V
return
.limit locals 4
.limit stack 2
.end method

.method static synthetic access$000(Lcom/nd/android/u/contact/menu/PopGridViewMenu;)Landroid/widget/AdapterView$OnItemClickListener;
aload 0
getfield com/nd/android/u/contact/menu/PopGridViewMenu/popMenuEventListener Landroid/widget/AdapterView$OnItemClickListener;
areturn
.limit locals 1
.limit stack 1
.end method

.method private registerOnKeyListener()V
aload 0
getfield com/nd/android/u/contact/menu/PopGridViewMenu/mMenuView Landroid/view/View;
new com/nd/android/u/contact/menu/PopGridViewMenu$3
dup
aload 0
invokespecial com/nd/android/u/contact/menu/PopGridViewMenu$3/<init>(Lcom/nd/android/u/contact/menu/PopGridViewMenu;)V
invokevirtual android/view/View/setOnKeyListener(Landroid/view/View$OnKeyListener;)V
return
.limit locals 1
.limit stack 4
.end method

.method public hideMenu()Z
aload 0
getfield com/nd/android/u/contact/menu/PopGridViewMenu/mPopupWindow Landroid/widget/PopupWindow;
invokevirtual android/widget/PopupWindow/isShowing()Z
ifeq L0
aload 0
getfield com/nd/android/u/contact/menu/PopGridViewMenu/mPopupWindow Landroid/widget/PopupWindow;
invokevirtual android/widget/PopupWindow/dismiss()V
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public initMenu()V
aload 0
aload 0
getfield com/nd/android/u/contact/menu/PopGridViewMenu/mContext Landroid/app/Activity;
invokevirtual android/app/Activity/getLayoutInflater()Landroid/view/LayoutInflater;
getstatic com/nd/android/u/contact/R$layout/menu_popupwindow I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
putfield com/nd/android/u/contact/menu/PopGridViewMenu/mMenuView Landroid/view/View;
aload 0
aload 0
getfield com/nd/android/u/contact/menu/PopGridViewMenu/mMenuView Landroid/view/View;
getstatic com/nd/android/u/contact/R$id/menu_gridview I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/GridView
putfield com/nd/android/u/contact/menu/PopGridViewMenu/mMenuGrid Landroid/widget/GridView;
aload 0
new com/nd/android/u/contact/menu/MenuItemAdapter
dup
aload 0
getfield com/nd/android/u/contact/menu/PopGridViewMenu/mContext Landroid/app/Activity;
aload 0
getfield com/nd/android/u/contact/menu/PopGridViewMenu/list Ljava/util/List;
invokespecial com/nd/android/u/contact/menu/MenuItemAdapter/<init>(Landroid/content/Context;Ljava/util/List;)V
putfield com/nd/android/u/contact/menu/PopGridViewMenu/mainMenuAdapter Lcom/nd/android/u/contact/menu/MenuItemAdapter;
aload 0
getfield com/nd/android/u/contact/menu/PopGridViewMenu/mMenuGrid Landroid/widget/GridView;
aload 0
getfield com/nd/android/u/contact/menu/PopGridViewMenu/mainMenuAdapter Lcom/nd/android/u/contact/menu/MenuItemAdapter;
invokevirtual android/widget/GridView/setAdapter(Landroid/widget/ListAdapter;)V
aload 0
getfield com/nd/android/u/contact/menu/PopGridViewMenu/mMenuGrid Landroid/widget/GridView;
new com/nd/android/u/contact/menu/PopGridViewMenu$1
dup
aload 0
invokespecial com/nd/android/u/contact/menu/PopGridViewMenu$1/<init>(Lcom/nd/android/u/contact/menu/PopGridViewMenu;)V
invokevirtual android/widget/GridView/setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
aload 0
getfield com/nd/android/u/contact/menu/PopGridViewMenu/mMenuGrid Landroid/widget/GridView;
new com/nd/android/u/contact/menu/PopGridViewMenu$2
dup
aload 0
invokespecial com/nd/android/u/contact/menu/PopGridViewMenu$2/<init>(Lcom/nd/android/u/contact/menu/PopGridViewMenu;)V
invokevirtual android/widget/GridView/setOnKeyListener(Landroid/view/View$OnKeyListener;)V
aload 0
new android/widget/PopupWindow
dup
aload 0
getfield com/nd/android/u/contact/menu/PopGridViewMenu/mMenuView Landroid/view/View;
iconst_m1
bipush -2
iconst_1
invokespecial android/widget/PopupWindow/<init>(Landroid/view/View;IIZ)V
putfield com/nd/android/u/contact/menu/PopGridViewMenu/mPopupWindow Landroid/widget/PopupWindow;
aload 0
getfield com/nd/android/u/contact/menu/PopGridViewMenu/mPopupWindow Landroid/widget/PopupWindow;
iconst_1
invokevirtual android/widget/PopupWindow/setFocusable(Z)V
new android/graphics/drawable/ColorDrawable
dup
iconst_0
invokespecial android/graphics/drawable/ColorDrawable/<init>(I)V
astore 1
aload 0
getfield com/nd/android/u/contact/menu/PopGridViewMenu/mPopupWindow Landroid/widget/PopupWindow;
aload 1
invokevirtual android/widget/PopupWindow/setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
aload 0
getfield com/nd/android/u/contact/menu/PopGridViewMenu/mPopupWindow Landroid/widget/PopupWindow;
ldc_w 16973828
invokevirtual android/widget/PopupWindow/setAnimationStyle(I)V
return
.limit locals 2
.limit stack 7
.end method

.method public setMenuitemList(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/nd/android/u/contact/menu/MenuItem;>;)V"
aload 0
aload 1
putfield com/nd/android/u/contact/menu/PopGridViewMenu/menuitemList Ljava/util/List;
return
.limit locals 2
.limit stack 2
.end method

.method public setPopMenuEventListener(Landroid/widget/AdapterView$OnItemClickListener;)V
aload 0
aload 1
putfield com/nd/android/u/contact/menu/PopGridViewMenu/popMenuEventListener Landroid/widget/AdapterView$OnItemClickListener;
return
.limit locals 2
.limit stack 2
.end method

.method public showMenuWindow()V
aload 0
getfield com/nd/android/u/contact/menu/PopGridViewMenu/mPopupWindow Landroid/widget/PopupWindow;
invokevirtual android/widget/PopupWindow/isShowing()Z
ifeq L0
aload 0
getfield com/nd/android/u/contact/menu/PopGridViewMenu/mPopupWindow Landroid/widget/PopupWindow;
invokevirtual android/widget/PopupWindow/dismiss()V
return
L0:
aload 0
getfield com/nd/android/u/contact/menu/PopGridViewMenu/mPopupWindow Landroid/widget/PopupWindow;
aconst_null
bipush 80
iconst_0
iconst_0
invokevirtual android/widget/PopupWindow/showAtLocation(Landroid/view/View;III)V
return
.limit locals 1
.limit stack 5
.end method

.method public showMenuWindow(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/nd/android/u/contact/menu/MenuItem;>;)V"
aload 0
getfield com/nd/android/u/contact/menu/PopGridViewMenu/mPopupWindow Landroid/widget/PopupWindow;
invokevirtual android/widget/PopupWindow/isShowing()Z
ifeq L0
aload 0
getfield com/nd/android/u/contact/menu/PopGridViewMenu/mPopupWindow Landroid/widget/PopupWindow;
invokevirtual android/widget/PopupWindow/dismiss()V
return
L0:
aload 0
aload 1
putfield com/nd/android/u/contact/menu/PopGridViewMenu/menuitemList Ljava/util/List;
aload 0
getfield com/nd/android/u/contact/menu/PopGridViewMenu/mainMenuAdapter Lcom/nd/android/u/contact/menu/MenuItemAdapter;
aload 1
invokevirtual com/nd/android/u/contact/menu/MenuItemAdapter/setMenuList(Ljava/util/List;)V
aload 0
getfield com/nd/android/u/contact/menu/PopGridViewMenu/mainMenuAdapter Lcom/nd/android/u/contact/menu/MenuItemAdapter;
invokevirtual com/nd/android/u/contact/menu/MenuItemAdapter/notifyDataSetChanged()V
aload 0
getfield com/nd/android/u/contact/menu/PopGridViewMenu/mPopupWindow Landroid/widget/PopupWindow;
aload 0
getfield com/nd/android/u/contact/menu/PopGridViewMenu/mContext Landroid/app/Activity;
getstatic com/nd/android/u/contact/R$id/menu_foot_layout I
invokevirtual android/app/Activity/findViewById(I)Landroid/view/View;
bipush 80
iconst_0
iconst_0
invokevirtual android/widget/PopupWindow/showAtLocation(Landroid/view/View;III)V
return
.limit locals 2
.limit stack 5
.end method
