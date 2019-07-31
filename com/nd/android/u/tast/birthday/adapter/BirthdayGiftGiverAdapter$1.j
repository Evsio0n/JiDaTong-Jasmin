.bytecode 50.0
.class synchronized com/nd/android/u/tast/birthday/adapter/BirthdayGiftGiverAdapter$1
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/android/u/tast/birthday/adapter/BirthdayGiftGiverAdapter/getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.inner class inner com/nd/android/u/tast/birthday/adapter/BirthdayGiftGiverAdapter$1

.field final synthetic 'this$0' Lcom/nd/android/u/tast/birthday/adapter/BirthdayGiftGiverAdapter;

.field final synthetic 'val$info' Lcom/nd/android/u/tast/birthday/dataStructure/Myblesslist;

.method <init>(Lcom/nd/android/u/tast/birthday/adapter/BirthdayGiftGiverAdapter;Lcom/nd/android/u/tast/birthday/dataStructure/Myblesslist;)V
aload 0
aload 1
putfield com/nd/android/u/tast/birthday/adapter/BirthdayGiftGiverAdapter$1/this$0 Lcom/nd/android/u/tast/birthday/adapter/BirthdayGiftGiverAdapter;
aload 0
aload 2
putfield com/nd/android/u/tast/birthday/adapter/BirthdayGiftGiverAdapter$1/val$info Lcom/nd/android/u/tast/birthday/dataStructure/Myblesslist;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 0
getfield com/nd/android/u/tast/birthday/adapter/BirthdayGiftGiverAdapter$1/this$0 Lcom/nd/android/u/tast/birthday/adapter/BirthdayGiftGiverAdapter;
invokestatic com/nd/android/u/tast/birthday/adapter/BirthdayGiftGiverAdapter/access$900(Lcom/nd/android/u/tast/birthday/adapter/BirthdayGiftGiverAdapter;)Landroid/content/Context;
aload 0
getfield com/nd/android/u/tast/birthday/adapter/BirthdayGiftGiverAdapter$1/val$info Lcom/nd/android/u/tast/birthday/dataStructure/Myblesslist;
invokevirtual com/nd/android/u/tast/birthday/dataStructure/Myblesslist/getUid()J
invokestatic com/nd/android/u/tast/taskInterfaceImpl/TaskCallOtherModel/openConversationByUser(Landroid/content/Context;J)V
return
.limit locals 2
.limit stack 3
.end method
