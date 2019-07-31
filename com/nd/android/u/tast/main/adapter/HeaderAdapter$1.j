.bytecode 50.0
.class synchronized com/nd/android/u/tast/main/adapter/HeaderAdapter$1
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/android/u/tast/main/adapter/HeaderAdapter
.inner class inner com/nd/android/u/tast/main/adapter/HeaderAdapter$1

.field final synthetic 'this$0' Lcom/nd/android/u/tast/main/adapter/HeaderAdapter;

.method <init>(Lcom/nd/android/u/tast/main/adapter/HeaderAdapter;)V
aload 0
aload 1
putfield com/nd/android/u/tast/main/adapter/HeaderAdapter$1/this$0 Lcom/nd/android/u/tast/main/adapter/HeaderAdapter;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getTag()Ljava/lang/Object;
checkcast java/lang/Long
invokevirtual java/lang/Long/longValue()J
lstore 2
aload 0
getfield com/nd/android/u/tast/main/adapter/HeaderAdapter$1/this$0 Lcom/nd/android/u/tast/main/adapter/HeaderAdapter;
invokestatic com/nd/android/u/tast/main/adapter/HeaderAdapter/access$100(Lcom/nd/android/u/tast/main/adapter/HeaderAdapter;)Landroid/content/Context;
lload 2
invokestatic com/nd/android/u/tast/taskInterfaceImpl/TaskCallOtherModel/toTweetProfileActivity(Landroid/content/Context;J)V
return
.limit locals 4
.limit stack 3
.end method
