.bytecode 50.0
.class public synchronized com/common/android/utils/StackManager
.super java/lang/Object

.field private static 'fragmentActivityList' Ljava/util/List; signature "Ljava/util/List<Ljava/lang/ref/WeakReference<Landroid/support/v4/app/FragmentActivity;>;>;"

.method static <clinit>()V
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putstatic com/common/android/utils/StackManager/fragmentActivityList Ljava/util/List;
return
.limit locals 0
.limit stack 2
.end method

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static closeActivitys()V
getstatic com/common/android/utils/StackManager/fragmentActivityList Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 0
L0:
aload 0
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 0
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/lang/ref/WeakReference
astore 1
aload 1
ifnull L0
aload 1
invokevirtual java/lang/ref/WeakReference/get()Ljava/lang/Object;
ifnull L0
aload 1
invokevirtual java/lang/ref/WeakReference/get()Ljava/lang/Object;
checkcast android/support/v4/app/FragmentActivity
invokevirtual android/support/v4/app/FragmentActivity/finish()V
goto L0
L1:
getstatic com/common/android/utils/StackManager/fragmentActivityList Ljava/util/List;
invokeinterface java/util/List/clear()V 0
return
.limit locals 2
.limit stack 1
.end method

.method public static pullFragmentActivity(Landroid/support/v4/app/FragmentActivity;)V
getstatic com/common/android/utils/StackManager/fragmentActivityList Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 1
L0:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/lang/ref/WeakReference
astore 2
aload 2
ifnull L0
aload 2
invokevirtual java/lang/ref/WeakReference/get()Ljava/lang/Object;
ifnull L0
aload 2
invokevirtual java/lang/ref/WeakReference/get()Ljava/lang/Object;
checkcast android/support/v4/app/FragmentActivity
aload 0
invokevirtual java/lang/Object/equals(Ljava/lang/Object;)Z
ifeq L0
getstatic com/common/android/utils/StackManager/fragmentActivityList Ljava/util/List;
aload 2
invokeinterface java/util/List/remove(Ljava/lang/Object;)Z 1
pop
aload 2
invokevirtual java/lang/ref/WeakReference/clear()V
L1:
return
.limit locals 3
.limit stack 2
.end method

.method public static putFragmentActivity(Landroid/support/v4/app/FragmentActivity;)V
getstatic com/common/android/utils/StackManager/fragmentActivityList Ljava/util/List;
aload 0
invokeinterface java/util/List/contains(Ljava/lang/Object;)Z 1
ifne L0
getstatic com/common/android/utils/StackManager/fragmentActivityList Ljava/util/List;
new java/lang/ref/WeakReference
dup
aload 0
invokespecial java/lang/ref/WeakReference/<init>(Ljava/lang/Object;)V
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L0:
return
.limit locals 1
.limit stack 4
.end method
