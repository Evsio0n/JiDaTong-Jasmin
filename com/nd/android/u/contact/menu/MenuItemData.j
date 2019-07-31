.bytecode 50.0
.class public synchronized com/nd/android/u/contact/menu/MenuItemData
.super java/lang/Object

.field private 'mCount' I

.field private 'mLevelListDrawable' Landroid/graphics/drawable/LevelListDrawable;

.method public <init>(Landroid/graphics/drawable/LevelListDrawable;I)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
iload 2
invokevirtual com/nd/android/u/contact/menu/MenuItemData/refreshData(Landroid/graphics/drawable/LevelListDrawable;I)V
return
.limit locals 3
.limit stack 3
.end method

.method public getCount()I
aload 0
getfield com/nd/android/u/contact/menu/MenuItemData/mCount I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
aload 0
getfield com/nd/android/u/contact/menu/MenuItemData/mLevelListDrawable Landroid/graphics/drawable/LevelListDrawable;
iload 1
invokevirtual android/graphics/drawable/LevelListDrawable/setLevel(I)Z
pop
aload 0
getfield com/nd/android/u/contact/menu/MenuItemData/mLevelListDrawable Landroid/graphics/drawable/LevelListDrawable;
invokevirtual android/graphics/drawable/LevelListDrawable/getCurrent()Landroid/graphics/drawable/Drawable;
areturn
.limit locals 2
.limit stack 2
.end method

.method public refreshData(Landroid/graphics/drawable/LevelListDrawable;I)V
aload 0
aload 1
putfield com/nd/android/u/contact/menu/MenuItemData/mLevelListDrawable Landroid/graphics/drawable/LevelListDrawable;
aload 0
iload 2
putfield com/nd/android/u/contact/menu/MenuItemData/mCount I
return
.limit locals 3
.limit stack 2
.end method

.method public setCount(I)V
aload 0
iload 1
putfield com/nd/android/u/contact/menu/MenuItemData/mCount I
return
.limit locals 2
.limit stack 2
.end method
