.bytecode 50.0
.class public synchronized com/nd/android/u/contact/fragment/FriendListFragment$synFriendHandler
.super android/os/Handler
.inner class public static synFriendHandler inner com/nd/android/u/contact/fragment/FriendListFragment$synFriendHandler outer com/nd/android/u/contact/fragment/FriendListFragment

.field private final 'mFragment' Ljava/lang/ref/WeakReference; signature "Ljava/lang/ref/WeakReference<Lcom/nd/android/u/contact/fragment/FriendListFragment;>;"

.method public <init>(Lcom/nd/android/u/contact/fragment/FriendListFragment;)V
aload 0
invokespecial android/os/Handler/<init>()V
aload 0
new java/lang/ref/WeakReference
dup
aload 1
invokespecial java/lang/ref/WeakReference/<init>(Ljava/lang/Object;)V
putfield com/nd/android/u/contact/fragment/FriendListFragment$synFriendHandler/mFragment Ljava/lang/ref/WeakReference;
return
.limit locals 2
.limit stack 4
.end method

.method public handleMessage(Landroid/os/Message;)V
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment$synFriendHandler/mFragment Ljava/lang/ref/WeakReference;
invokevirtual java/lang/ref/WeakReference/get()Ljava/lang/Object;
checkcast com/nd/android/u/contact/fragment/FriendListFragment
astore 1
aload 1
ifnull L0
aload 1
invokevirtual com/nd/android/u/contact/fragment/FriendListFragment/refresh()V
L0:
return
.limit locals 2
.limit stack 1
.end method
