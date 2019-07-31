.bytecode 50.0
.class public synchronized com/nd/android/u/contact/menu/MenuItemAdapter
.super android/widget/BaseAdapter
.inner class Holder inner com/nd/android/u/contact/menu/MenuItemAdapter$Holder outer com/nd/android/u/contact/menu/MenuItemAdapter

.field private final 'TAG' Ljava/lang/String;

.field private 'context' Landroid/content/Context;

.field public 'menuList' Ljava/util/List; signature "Ljava/util/List<Lcom/nd/android/u/contact/menu/MenuItem;>;"

.method public <init>(Landroid/content/Context;Ljava/util/List;)V
.signature "(Landroid/content/Context;Ljava/util/List<Lcom/nd/android/u/contact/menu/MenuItem;>;)V"
aload 0
invokespecial android/widget/BaseAdapter/<init>()V
aload 0
ldc "MainMenuAdapter"
putfield com/nd/android/u/contact/menu/MenuItemAdapter/TAG Ljava/lang/String;
aload 0
aconst_null
putfield com/nd/android/u/contact/menu/MenuItemAdapter/menuList Ljava/util/List;
aload 0
aload 1
putfield com/nd/android/u/contact/menu/MenuItemAdapter/context Landroid/content/Context;
aload 0
aload 2
putfield com/nd/android/u/contact/menu/MenuItemAdapter/menuList Ljava/util/List;
return
.limit locals 3
.limit stack 2
.end method

.method public getCount()I
aload 0
getfield com/nd/android/u/contact/menu/MenuItemAdapter/menuList Ljava/util/List;
ifnonnull L0
iconst_0
ireturn
L0:
aload 0
getfield com/nd/android/u/contact/menu/MenuItemAdapter/menuList Ljava/util/List;
invokeinterface java/util/List/size()I 0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getItem(I)Ljava/lang/Object;
aload 0
getfield com/nd/android/u/contact/menu/MenuItemAdapter/menuList Ljava/util/List;
ifnonnull L0
aconst_null
areturn
L0:
aload 0
getfield com/nd/android/u/contact/menu/MenuItemAdapter/menuList Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
areturn
.limit locals 2
.limit stack 2
.end method

.method public getItemId(I)J
iload 1
i2l
lreturn
.limit locals 2
.limit stack 2
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
aload 2
astore 3
aload 2
ifnonnull L0
new com/nd/android/u/contact/menu/MenuItemAdapter$Holder
dup
aload 0
invokespecial com/nd/android/u/contact/menu/MenuItemAdapter$Holder/<init>(Lcom/nd/android/u/contact/menu/MenuItemAdapter;)V
astore 2
aload 0
getfield com/nd/android/u/contact/menu/MenuItemAdapter/context Landroid/content/Context;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
getstatic com/nd/android/u/contact/R$layout/menu_item I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 3
aload 2
aload 3
getstatic com/nd/android/u/contact/R$id/menu_item_img I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/contact/menu/MenuItemAdapter$Holder/image Landroid/widget/ImageView;
aload 2
aload 3
getstatic com/nd/android/u/contact/R$id/menu_item_tv I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/menu/MenuItemAdapter$Holder/textView Landroid/widget/TextView;
aload 2
aload 3
getstatic com/nd/android/u/contact/R$id/menu_item_layout I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/nd/android/u/contact/menu/MenuItemAdapter$Holder/layout Landroid/widget/RelativeLayout;
aload 3
aload 2
invokevirtual android/view/View/setTag(Ljava/lang/Object;)V
L0:
aload 3
invokevirtual android/view/View/getTag()Ljava/lang/Object;
checkcast com/nd/android/u/contact/menu/MenuItemAdapter$Holder
astore 2
aload 0
getfield com/nd/android/u/contact/menu/MenuItemAdapter/menuList Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/contact/menu/MenuItem
astore 4
aload 4
invokevirtual com/nd/android/u/contact/menu/MenuItem/getId()I
ifeq L1
aload 4
invokevirtual com/nd/android/u/contact/menu/MenuItem/getrId()I
ifeq L2
aload 2
getfield com/nd/android/u/contact/menu/MenuItemAdapter$Holder/layout Landroid/widget/RelativeLayout;
getstatic com/nd/android/u/contact/R$drawable/menu_item_bg I
invokevirtual android/widget/RelativeLayout/setBackgroundResource(I)V
aload 2
getfield com/nd/android/u/contact/menu/MenuItemAdapter$Holder/image Landroid/widget/ImageView;
aload 4
invokevirtual com/nd/android/u/contact/menu/MenuItem/getrId()I
invokevirtual android/widget/ImageView/setBackgroundResource(I)V
L3:
aload 2
getfield com/nd/android/u/contact/menu/MenuItemAdapter$Holder/textView Landroid/widget/TextView;
aload 4
invokevirtual com/nd/android/u/contact/menu/MenuItem/getTitle()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 3
areturn
L2:
aload 2
getfield com/nd/android/u/contact/menu/MenuItemAdapter$Holder/image Landroid/widget/ImageView;
aconst_null
invokevirtual android/widget/ImageView/setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
aload 2
getfield com/nd/android/u/contact/menu/MenuItemAdapter$Holder/layout Landroid/widget/RelativeLayout;
aconst_null
invokevirtual android/widget/RelativeLayout/setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
goto L3
L1:
aload 2
getfield com/nd/android/u/contact/menu/MenuItemAdapter$Holder/image Landroid/widget/ImageView;
aconst_null
invokevirtual android/widget/ImageView/setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
aload 2
getfield com/nd/android/u/contact/menu/MenuItemAdapter$Holder/layout Landroid/widget/RelativeLayout;
aconst_null
invokevirtual android/widget/RelativeLayout/setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
aload 2
getfield com/nd/android/u/contact/menu/MenuItemAdapter$Holder/textView Landroid/widget/TextView;
ldc ""
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 3
areturn
.limit locals 5
.limit stack 3
.end method

.method public setMenuList(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/nd/android/u/contact/menu/MenuItem;>;)V"
aload 0
aload 1
putfield com/nd/android/u/contact/menu/MenuItemAdapter/menuList Ljava/util/List;
return
.limit locals 2
.limit stack 2
.end method
