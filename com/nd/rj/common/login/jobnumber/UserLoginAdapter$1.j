.bytecode 50.0
.class synchronized com/nd/rj/common/login/jobnumber/UserLoginAdapter$1
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/rj/common/login/jobnumber/UserLoginAdapter
.inner class inner com/nd/rj/common/login/jobnumber/UserLoginAdapter$1
.inner class inner com/nd/rj/common/login/jobnumber/UserLoginAdapter$1$1
.inner class inner com/nd/rj/common/login/jobnumber/UserLoginAdapter$1$2
.inner class inner com/nd/rj/common/login/jobnumber/UserLoginAdapter$1$3

.field final synthetic 'this$0' Lcom/nd/rj/common/login/jobnumber/UserLoginAdapter;

.method <init>(Lcom/nd/rj/common/login/jobnumber/UserLoginAdapter;)V
aload 0
aload 1
putfield com/nd/rj/common/login/jobnumber/UserLoginAdapter$1/this$0 Lcom/nd/rj/common/login/jobnumber/UserLoginAdapter;
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
astore 5
aload 0
getfield com/nd/rj/common/login/jobnumber/UserLoginAdapter$1/this$0 Lcom/nd/rj/common/login/jobnumber/UserLoginAdapter;
aload 5
invokevirtual java/lang/Integer/intValue()I
invokevirtual com/nd/rj/common/login/jobnumber/UserLoginAdapter/getItem(I)Ljava/lang/Object;
astore 6
aload 6
ifnonnull L0
L1:
return
L0:
aload 6
instanceof com/product/android/business/bean/UserInfo
ifeq L2
aload 6
checkcast com/product/android/business/bean/UserInfo
astore 1
aload 1
invokevirtual com/product/android/business/bean/UserInfo/getUserName()Ljava/lang/String;
astore 4
aload 1
invokevirtual com/product/android/business/bean/UserInfo/getUapUid()J
lstore 2
getstatic com/product/android/business/ApplicationVariable$LoginType/_99_ACCOUNT_LOGIN Lcom/product/android/business/ApplicationVariable$LoginType;
astore 1
L3:
new android/app/AlertDialog$Builder
dup
aload 0
getfield com/nd/rj/common/login/jobnumber/UserLoginAdapter$1/this$0 Lcom/nd/rj/common/login/jobnumber/UserLoginAdapter;
invokestatic com/nd/rj/common/login/jobnumber/UserLoginAdapter/access$100(Lcom/nd/rj/common/login/jobnumber/UserLoginAdapter;)Landroid/content/Context;
invokespecial android/app/AlertDialog$Builder/<init>(Landroid/content/Context;)V
astore 7
aload 7
iconst_0
invokevirtual android/app/AlertDialog$Builder/setCancelable(Z)Landroid/app/AlertDialog$Builder;
pop
aload 7
ldc_w 2131494372
invokevirtual android/app/AlertDialog$Builder/setTitle(I)Landroid/app/AlertDialog$Builder;
pop
aload 7
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getfield com/nd/rj/common/login/jobnumber/UserLoginAdapter$1/this$0 Lcom/nd/rj/common/login/jobnumber/UserLoginAdapter;
invokestatic com/nd/rj/common/login/jobnumber/UserLoginAdapter/access$100(Lcom/nd/rj/common/login/jobnumber/UserLoginAdapter;)Landroid/content/Context;
ldc_w 2131494857
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 4
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/app/AlertDialog$Builder/setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
pop
aload 7
ldc_w 2131494425
new com/nd/rj/common/login/jobnumber/UserLoginAdapter$1$1
dup
aload 0
aload 1
lload 2
aload 5
aload 6
invokespecial com/nd/rj/common/login/jobnumber/UserLoginAdapter$1$1/<init>(Lcom/nd/rj/common/login/jobnumber/UserLoginAdapter$1;Lcom/product/android/business/ApplicationVariable$LoginType;JLjava/lang/Integer;Ljava/lang/Object;)V
invokevirtual android/app/AlertDialog$Builder/setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
pop
aload 7
ldc_w 2131494366
new com/nd/rj/common/login/jobnumber/UserLoginAdapter$1$2
dup
aload 0
invokespecial com/nd/rj/common/login/jobnumber/UserLoginAdapter$1$2/<init>(Lcom/nd/rj/common/login/jobnumber/UserLoginAdapter$1;)V
invokevirtual android/app/AlertDialog$Builder/setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
pop
aload 7
new com/nd/rj/common/login/jobnumber/UserLoginAdapter$1$3
dup
aload 0
invokespecial com/nd/rj/common/login/jobnumber/UserLoginAdapter$1$3/<init>(Lcom/nd/rj/common/login/jobnumber/UserLoginAdapter$1;)V
invokevirtual android/app/AlertDialog$Builder/setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;
pop
aload 7
invokevirtual android/app/AlertDialog$Builder/show()Landroid/app/AlertDialog;
pop
return
L2:
aload 6
instanceof com/product/android/business/login/JobNumberUserInfo
ifeq L1
aload 6
checkcast com/product/android/business/login/JobNumberUserInfo
astore 1
aload 1
invokevirtual com/product/android/business/login/JobNumberUserInfo/getUser_name()Ljava/lang/String;
astore 4
aload 1
invokevirtual com/product/android/business/login/JobNumberUserInfo/getOap_uid()J
lstore 2
getstatic com/product/android/business/ApplicationVariable$LoginType/_JOB_NUMBER_LOGIN Lcom/product/android/business/ApplicationVariable$LoginType;
astore 1
goto L3
.limit locals 8
.limit stack 10
.end method
