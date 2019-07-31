.bytecode 50.0
.class final synchronized com/product/android/utils/UserIdentityDialog$4
.super java/lang/Object
.implements android/content/DialogInterface$OnClickListener
.enclosing method com/product/android/utils/UserIdentityDialog/dialogIdentityExpired(Landroid/app/Activity;)V
.inner class static final inner com/product/android/utils/UserIdentityDialog$4

.field final synthetic 'val$context' Landroid/app/Activity;

.method <init>(Landroid/app/Activity;)V
aload 0
aload 1
putfield com/product/android/utils/UserIdentityDialog$4/val$context Landroid/app/Activity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
iconst_0
putfield com/product/android/business/ApplicationVariable/isIdentityExpired Z
aload 0
getfield com/product/android/utils/UserIdentityDialog$4/val$context Landroid/app/Activity;
invokestatic com/product/android/commonInterface/allCommonInterfaceImpl/AllCommonCallOtherModel$MainModel/toLoginActivity(Landroid/content/Context;)V
return
.limit locals 3
.limit stack 2
.end method
