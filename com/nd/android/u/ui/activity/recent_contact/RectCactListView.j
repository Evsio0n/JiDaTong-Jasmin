.bytecode 50.0
.class public synchronized com/nd/android/u/ui/activity/recent_contact/RectCactListView
.super com/nd/android/u/ui/widge/SliderMenuItemListView

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial com/nd/android/u/ui/widge/SliderMenuItemListView/<init>(Landroid/content/Context;)V
return
.limit locals 2
.limit stack 2
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
aload 2
invokespecial com/nd/android/u/ui/widge/SliderMenuItemListView/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return
.limit locals 3
.limit stack 3
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
aload 0
aload 1
aload 2
iload 3
invokespecial com/nd/android/u/ui/widge/SliderMenuItemListView/<init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
return
.limit locals 4
.limit stack 4
.end method

.method public getSliderViewFromItemView(Landroid/view/View;)Lcom/nd/android/u/ui/widge/SliderMenuView;
aload 1
checkcast com/nd/android/u/ui/widge/RecentContactItemView
getstatic com/nd/android/u/chat/R$id/smv_contact_item I
invokevirtual com/nd/android/u/ui/widge/RecentContactItemView/findViewById(I)Landroid/view/View;
checkcast com/nd/android/u/ui/widge/SliderMenuView
areturn
.limit locals 2
.limit stack 2
.end method
