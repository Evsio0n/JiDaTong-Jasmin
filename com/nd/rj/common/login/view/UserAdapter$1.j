.bytecode 50.0
.class synchronized com/nd/rj/common/login/view/UserAdapter$1
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/rj/common/login/view/UserAdapter
.inner class inner com/nd/rj/common/login/view/UserAdapter$1
.inner class inner com/nd/rj/common/login/view/UserAdapter$1$1
.inner class inner com/nd/rj/common/login/view/UserAdapter$1$2
.inner class inner com/nd/rj/common/login/view/UserAdapter$1$3

.field final synthetic 'this$0' Lcom/nd/rj/common/login/view/UserAdapter;

.method <init>(Lcom/nd/rj/common/login/view/UserAdapter;)V
aload 0
aload 1
putfield com/nd/rj/common/login/view/UserAdapter$1/this$0 Lcom/nd/rj/common/login/view/UserAdapter;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getTag()Ljava/lang/Object;
checkcast java/lang/Integer
astore 1
aload 0
getfield com/nd/rj/common/login/view/UserAdapter$1/this$0 Lcom/nd/rj/common/login/view/UserAdapter;
invokestatic com/nd/rj/common/login/view/UserAdapter/access$100(Lcom/nd/rj/common/login/view/UserAdapter;)Ljava/util/List;
aload 1
invokevirtual java/lang/Integer/intValue()I
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast java/lang/String
astore 2
new android/app/AlertDialog$Builder
dup
aload 0
getfield com/nd/rj/common/login/view/UserAdapter$1/this$0 Lcom/nd/rj/common/login/view/UserAdapter;
invokestatic com/nd/rj/common/login/view/UserAdapter/access$200(Lcom/nd/rj/common/login/view/UserAdapter;)Landroid/content/Context;
invokespecial android/app/AlertDialog$Builder/<init>(Landroid/content/Context;)V
astore 3
aload 3
iconst_0
invokevirtual android/app/AlertDialog$Builder/setCancelable(Z)Landroid/app/AlertDialog$Builder;
pop
aload 3
getstatic com/nd/rj/common/R$string/nd_confirm_del I
invokevirtual android/app/AlertDialog$Builder/setTitle(I)Landroid/app/AlertDialog$Builder;
pop
aload 3
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "\u60a8\u786e\u5b9a\u4ece\u5217\u8868\u5220\u9664\u8be5\u8d26\u53f7:\n"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/app/AlertDialog$Builder/setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
pop
aload 3
getstatic com/nd/rj/common/R$string/nd_ok I
new com/nd/rj/common/login/view/UserAdapter$1$1
dup
aload 0
aload 2
aload 1
invokespecial com/nd/rj/common/login/view/UserAdapter$1$1/<init>(Lcom/nd/rj/common/login/view/UserAdapter$1;Ljava/lang/String;Ljava/lang/Integer;)V
invokevirtual android/app/AlertDialog$Builder/setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
pop
aload 3
getstatic com/nd/rj/common/R$string/nd_cancel I
new com/nd/rj/common/login/view/UserAdapter$1$2
dup
aload 0
invokespecial com/nd/rj/common/login/view/UserAdapter$1$2/<init>(Lcom/nd/rj/common/login/view/UserAdapter$1;)V
invokevirtual android/app/AlertDialog$Builder/setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
pop
aload 3
new com/nd/rj/common/login/view/UserAdapter$1$3
dup
aload 0
invokespecial com/nd/rj/common/login/view/UserAdapter$1$3/<init>(Lcom/nd/rj/common/login/view/UserAdapter$1;)V
invokevirtual android/app/AlertDialog$Builder/setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;
pop
aload 3
invokevirtual android/app/AlertDialog$Builder/show()Landroid/app/AlertDialog;
pop
return
.limit locals 4
.limit stack 7
.end method
