.bytecode 50.0
.class synchronized com/nd/android/u/contact/adapter/FriendSelectAdapter$1
.super java/lang/Object
.implements java/lang/Runnable
.enclosing method com/nd/android/u/contact/adapter/FriendSelectAdapter/setNetSearchList(Ljava/util/List;)V
.inner class inner com/nd/android/u/contact/adapter/FriendSelectAdapter$1

.field final synthetic 'this$0' Lcom/nd/android/u/contact/adapter/FriendSelectAdapter;

.method <init>(Lcom/nd/android/u/contact/adapter/FriendSelectAdapter;)V
aload 0
aload 1
putfield com/nd/android/u/contact/adapter/FriendSelectAdapter$1/this$0 Lcom/nd/android/u/contact/adapter/FriendSelectAdapter;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public run()V
new java/util/ArrayList
dup
aload 0
getfield com/nd/android/u/contact/adapter/FriendSelectAdapter$1/this$0 Lcom/nd/android/u/contact/adapter/FriendSelectAdapter;
invokestatic com/nd/android/u/contact/adapter/FriendSelectAdapter/access$000(Lcom/nd/android/u/contact/adapter/FriendSelectAdapter;)Ljava/util/List;
invokespecial java/util/ArrayList/<init>(Ljava/util/Collection;)V
invokestatic com/nd/android/u/contact/helper/ContactPubFunction/saveNetSearchFirends(Ljava/util/List;)Z
ifeq L0
ldc "SearchFriendAdapter"
ldc "saveNetSearchFirends error"
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L0:
return
.limit locals 1
.limit stack 3
.end method
