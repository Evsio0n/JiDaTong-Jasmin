.bytecode 50.0
.class synchronized com/nd/android/backpacksystem/view/GiftBoxListItemView$2
.super java/util/ArrayList
.signature "Ljava/util/ArrayList<Ljava/lang/Long;>;"
.enclosing method com/nd/android/backpacksystem/view/GiftBoxListItemView/setData(Lcom/nd/android/backpacksystem/data/ReceiveItems;)V
.inner class inner com/nd/android/backpacksystem/view/GiftBoxListItemView$2

.field private static final 'serialVersionUID' J = 1L


.field final synthetic 'this$0' Lcom/nd/android/backpacksystem/view/GiftBoxListItemView;

.method <init>(Lcom/nd/android/backpacksystem/view/GiftBoxListItemView;)V
aload 0
aload 1
putfield com/nd/android/backpacksystem/view/GiftBoxListItemView$2/this$0 Lcom/nd/android/backpacksystem/view/GiftBoxListItemView;
aload 0
invokespecial java/util/ArrayList/<init>()V
aload 0
aload 0
getfield com/nd/android/backpacksystem/view/GiftBoxListItemView$2/this$0 Lcom/nd/android/backpacksystem/view/GiftBoxListItemView;
invokestatic com/nd/android/backpacksystem/view/GiftBoxListItemView/access$100(Lcom/nd/android/backpacksystem/view/GiftBoxListItemView;)Lcom/nd/android/backpacksystem/data/ReceiveItems;
getfield com/nd/android/backpacksystem/data/ReceiveItems/mFromUid J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual com/nd/android/backpacksystem/view/GiftBoxListItemView$2/add(Ljava/lang/Object;)Z
pop
return
.limit locals 2
.limit stack 3
.end method
