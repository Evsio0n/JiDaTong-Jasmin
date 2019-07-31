.bytecode 50.0
.class synchronized com/nd/android/u/menu/GridViewMenu$2
.super java/lang/Object
.implements android/view/View$OnKeyListener
.enclosing method com/nd/android/u/menu/GridViewMenu/registerOnKeyListener()V
.inner class inner com/nd/android/u/menu/GridViewMenu$2

.field final synthetic 'this$0' Lcom/nd/android/u/menu/GridViewMenu;

.method <init>(Lcom/nd/android/u/menu/GridViewMenu;)V
aload 0
aload 1
putfield com/nd/android/u/menu/GridViewMenu$2/this$0 Lcom/nd/android/u/menu/GridViewMenu;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
aload 3
invokevirtual android/view/KeyEvent/getAction()I
ifne L0
iload 2
lookupswitch
4 : L1
82 : L1
84 : L1
default : L0
L0:
iconst_0
ireturn
L1:
aload 0
getfield com/nd/android/u/menu/GridViewMenu$2/this$0 Lcom/nd/android/u/menu/GridViewMenu;
invokevirtual com/nd/android/u/menu/GridViewMenu/hideMenu()Z
ireturn
.limit locals 4
.limit stack 1
.end method
