.bytecode 50.0
.class public synchronized com/nd/android/u/contact/listener/TreeNodeStatusObserverListeren
.super java/lang/Object

.field public static 'selectedList' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Ljava/lang/Long;>;"

.method static <clinit>()V
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putstatic com/nd/android/u/contact/listener/TreeNodeStatusObserverListeren/selectedList Ljava/util/ArrayList;
return
.limit locals 0
.limit stack 2
.end method

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
getstatic com/nd/android/u/contact/listener/TreeNodeStatusObserverListeren/selectedList Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/clear()V
return
.limit locals 1
.limit stack 1
.end method

.method public static contains(J)Z
getstatic com/nd/android/u/contact/listener/TreeNodeStatusObserverListeren/selectedList Ljava/util/ArrayList;
lload 0
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual java/util/ArrayList/contains(Ljava/lang/Object;)Z
ireturn
.limit locals 2
.limit stack 3
.end method

.method public final upadate(JI)V
iload 3
iconst_1
if_icmpne L0
aload 0
lload 1
invokevirtual com/nd/android/u/contact/listener/TreeNodeStatusObserverListeren/updateAddSelected(J)V
L1:
return
L0:
iload 3
ifne L1
aload 0
lload 1
invokevirtual com/nd/android/u/contact/listener/TreeNodeStatusObserverListeren/updateDeleteSelected(J)V
return
.limit locals 4
.limit stack 3
.end method

.method public final updateAddSelected(J)V
lload 1
lconst_0
lcmp
ifne L0
L1:
return
L0:
getstatic com/nd/android/u/contact/listener/TreeNodeStatusObserverListeren/selectedList Ljava/util/ArrayList;
lload 1
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual java/util/ArrayList/contains(Ljava/lang/Object;)Z
ifne L1
getstatic com/nd/android/u/contact/listener/TreeNodeStatusObserverListeren/selectedList Ljava/util/ArrayList;
lload 1
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
return
.limit locals 3
.limit stack 4
.end method

.method public final updateDeleteSelected(J)V
getstatic com/nd/android/u/contact/listener/TreeNodeStatusObserverListeren/selectedList Ljava/util/ArrayList;
lload 1
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual java/util/ArrayList/contains(Ljava/lang/Object;)Z
ifeq L0
getstatic com/nd/android/u/contact/listener/TreeNodeStatusObserverListeren/selectedList Ljava/util/ArrayList;
lload 1
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual java/util/ArrayList/remove(Ljava/lang/Object;)Z
pop
L0:
return
.limit locals 3
.limit stack 3
.end method
