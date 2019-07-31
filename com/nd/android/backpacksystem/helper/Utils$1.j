.bytecode 50.0
.class final synchronized com/nd/android/backpacksystem/helper/Utils$1
.super java/util/ArrayList
.signature "Ljava/util/ArrayList<Ljava/lang/Long;>;"
.enclosing method com/nd/android/backpacksystem/helper/Utils/getOapUserSimpleById(J)Lcom/product/android/commonInterface/contact/OapUserSimple;
.inner class static final inner com/nd/android/backpacksystem/helper/Utils$1

.field private static final 'serialVersionUID' J = 1L


.field final synthetic 'val$userId' J

.method <init>(J)V
aload 0
lload 1
putfield com/nd/android/backpacksystem/helper/Utils$1/val$userId J
aload 0
invokespecial java/util/ArrayList/<init>()V
aload 0
aload 0
getfield com/nd/android/backpacksystem/helper/Utils$1/val$userId J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual com/nd/android/backpacksystem/helper/Utils$1/add(Ljava/lang/Object;)Z
pop
return
.limit locals 3
.limit stack 3
.end method
