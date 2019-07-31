.bytecode 50.0
.class public synchronized abstract com/nd/android/u/contact/ui/base/ContactBaseFragment2
.super com/nd/android/u/contact/ui/base/NDFragment

.field protected 'isSelectMode' Z

.field protected 'mHandlerSelected' Landroid/os/Handler;

.method public <init>()V
aload 0
invokespecial com/nd/android/u/contact/ui/base/NDFragment/<init>()V
aload 0
iconst_0
putfield com/nd/android/u/contact/ui/base/ContactBaseFragment2/isSelectMode Z
return
.limit locals 1
.limit stack 2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
aload 1
aload 0
invokevirtual com/nd/android/u/contact/ui/base/ContactBaseFragment2/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/refresh I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokeinterface android/view/Menu/add(Ljava/lang/CharSequence;)Landroid/view/MenuItem; 1
getstatic com/nd/android/u/contact/R$drawable/refresh I
invokeinterface android/view/MenuItem/setIcon(I)Landroid/view/MenuItem; 1
pop
aload 0
aload 1
aload 2
invokespecial com/nd/android/u/contact/ui/base/NDFragment/onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
return
.limit locals 3
.limit stack 3
.end method

.method public refreshAll()V
return
.limit locals 1
.limit stack 0
.end method

.method public refreshNodes()V
return
.limit locals 1
.limit stack 0
.end method

.method public setHandlerSelected(Landroid/os/Handler;)Lcom/nd/android/u/contact/ui/base/ContactBaseFragment2;
aload 0
aload 1
putfield com/nd/android/u/contact/ui/base/ContactBaseFragment2/mHandlerSelected Landroid/os/Handler;
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public setSelectMode(Z)Lcom/nd/android/u/contact/ui/base/ContactBaseFragment2;
aload 0
iload 1
putfield com/nd/android/u/contact/ui/base/ContactBaseFragment2/isSelectMode Z
aload 0
areturn
.limit locals 2
.limit stack 2
.end method
