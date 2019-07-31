.bytecode 50.0
.class synchronized com/nd/android/backpacksystem/view/SendGiftWheelView$1
.super java/lang/Object
.implements com/nd/android/backpacksystem/widget/TDAdapterView$OnItemSelectedListener
.enclosing method com/nd/android/backpacksystem/view/SendGiftWheelView
.inner class inner com/nd/android/backpacksystem/view/SendGiftWheelView$1

.field final synthetic 'this$0' Lcom/nd/android/backpacksystem/view/SendGiftWheelView;

.method <init>(Lcom/nd/android/backpacksystem/view/SendGiftWheelView;)V
aload 0
aload 1
putfield com/nd/android/backpacksystem/view/SendGiftWheelView$1/this$0 Lcom/nd/android/backpacksystem/view/SendGiftWheelView;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onItemSelected(Lcom/nd/android/backpacksystem/widget/TDAdapterView;Landroid/view/View;IJ)V
.signature "(Lcom/nd/android/backpacksystem/widget/TDAdapterView<*>;Landroid/view/View;IJ)V"
aload 0
getfield com/nd/android/backpacksystem/view/SendGiftWheelView$1/this$0 Lcom/nd/android/backpacksystem/view/SendGiftWheelView;
invokestatic com/nd/android/backpacksystem/view/SendGiftWheelView/access$000(Lcom/nd/android/backpacksystem/view/SendGiftWheelView;)Ljava/util/ArrayList;
iload 3
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast com/nd/android/backpacksystem/struct/MyGiftInfo
astore 1
aload 1
ifnull L0
aload 0
getfield com/nd/android/backpacksystem/view/SendGiftWheelView$1/this$0 Lcom/nd/android/backpacksystem/view/SendGiftWheelView;
aload 1
getfield com/nd/android/backpacksystem/struct/MyGiftInfo/total I
invokestatic com/nd/android/backpacksystem/view/SendGiftWheelView/access$102(Lcom/nd/android/backpacksystem/view/SendGiftWheelView;I)I
pop
aload 0
getfield com/nd/android/backpacksystem/view/SendGiftWheelView$1/this$0 Lcom/nd/android/backpacksystem/view/SendGiftWheelView;
invokestatic com/nd/android/backpacksystem/view/SendGiftWheelView/access$200(Lcom/nd/android/backpacksystem/view/SendGiftWheelView;)Lcom/nd/android/backpacksystem/adapter/SelectCountWheelAdapter;
aload 0
getfield com/nd/android/backpacksystem/view/SendGiftWheelView$1/this$0 Lcom/nd/android/backpacksystem/view/SendGiftWheelView;
invokestatic com/nd/android/backpacksystem/view/SendGiftWheelView/access$100(Lcom/nd/android/backpacksystem/view/SendGiftWheelView;)I
invokevirtual com/nd/android/backpacksystem/adapter/SelectCountWheelAdapter/setData(I)V
aload 0
getfield com/nd/android/backpacksystem/view/SendGiftWheelView$1/this$0 Lcom/nd/android/backpacksystem/view/SendGiftWheelView;
invokestatic com/nd/android/backpacksystem/view/SendGiftWheelView/access$200(Lcom/nd/android/backpacksystem/view/SendGiftWheelView;)Lcom/nd/android/backpacksystem/adapter/SelectCountWheelAdapter;
invokevirtual com/nd/android/backpacksystem/adapter/SelectCountWheelAdapter/notifyDataSetChanged()V
L0:
return
.limit locals 6
.limit stack 2
.end method

.method public onNothingSelected(Lcom/nd/android/backpacksystem/widget/TDAdapterView;)V
.signature "(Lcom/nd/android/backpacksystem/widget/TDAdapterView<*>;)V"
return
.limit locals 2
.limit stack 0
.end method
