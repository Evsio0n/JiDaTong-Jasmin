.bytecode 50.0
.class public synchronized com/nd/android/u/ui/contactCreator/AppContactCreator
.super java/lang/Object
.implements com/nd/android/u/controller/outInterface/IContactCreator

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public getRecentContactItem(I)Lcom/nd/android/u/controller/bean/contact/RecentContactItem;
new com/nd/android/u/bean4xy/AppContactItem
dup
invokespecial com/nd/android/u/bean4xy/AppContactItem/<init>()V
areturn
.limit locals 2
.limit stack 2
.end method
