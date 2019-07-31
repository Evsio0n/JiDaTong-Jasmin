.bytecode 50.0
.class synchronized com/nd/android/backpacksystem/widget/TDAdapterView$SelectionNotifier
.super android/os/Handler
.implements java/lang/Runnable
.inner class private SelectionNotifier inner com/nd/android/backpacksystem/widget/TDAdapterView$SelectionNotifier outer com/nd/android/backpacksystem/widget/TDAdapterView

.field final synthetic 'this$0' Lcom/nd/android/backpacksystem/widget/TDAdapterView;

.method private <init>(Lcom/nd/android/backpacksystem/widget/TDAdapterView;)V
aload 0
aload 1
putfield com/nd/android/backpacksystem/widget/TDAdapterView$SelectionNotifier/this$0 Lcom/nd/android/backpacksystem/widget/TDAdapterView;
aload 0
invokespecial android/os/Handler/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/nd/android/backpacksystem/widget/TDAdapterView;Lcom/nd/android/backpacksystem/widget/TDAdapterView$1;)V
aload 0
aload 1
invokespecial com/nd/android/backpacksystem/widget/TDAdapterView$SelectionNotifier/<init>(Lcom/nd/android/backpacksystem/widget/TDAdapterView;)V
return
.limit locals 3
.limit stack 2
.end method

.method public run()V
aload 0
getfield com/nd/android/backpacksystem/widget/TDAdapterView$SelectionNotifier/this$0 Lcom/nd/android/backpacksystem/widget/TDAdapterView;
getfield com/nd/android/backpacksystem/widget/TDAdapterView/mDataChanged Z
ifeq L0
aload 0
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDAdapterView$SelectionNotifier/post(Ljava/lang/Runnable;)Z
pop
return
L0:
aload 0
getfield com/nd/android/backpacksystem/widget/TDAdapterView$SelectionNotifier/this$0 Lcom/nd/android/backpacksystem/widget/TDAdapterView;
invokestatic com/nd/android/backpacksystem/widget/TDAdapterView/access$200(Lcom/nd/android/backpacksystem/widget/TDAdapterView;)V
return
.limit locals 1
.limit stack 2
.end method
