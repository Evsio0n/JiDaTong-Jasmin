.bytecode 50.0
.class public final synchronized com/alipay/sdk/widget/d
.super java/lang/Object

.field private static 'a' Z

.method static <clinit>()V
getstatic android/os/Build$VERSION/SDK_INT I
bipush 11
if_icmplt L0
iconst_1
istore 0
L1:
iload 0
putstatic com/alipay/sdk/widget/d/a Z
return
L0:
iconst_0
istore 0
goto L1
.limit locals 1
.limit stack 2
.end method

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
new android/app/AlertDialog$Builder
dup
aload 0
invokespecial android/app/AlertDialog$Builder/<init>(Landroid/content/Context;)V
astore 0
getstatic com/alipay/sdk/widget/d/a Z
ifeq L0
aload 3
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L1
aload 4
ifnull L1
aload 0
aload 3
aload 4
invokevirtual android/app/AlertDialog$Builder/setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
pop
L1:
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L2
aload 2
ifnull L2
aload 0
aload 1
aload 2
invokevirtual android/app/AlertDialog$Builder/setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
pop
L2:
aload 0
areturn
L0:
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L3
aload 2
ifnull L3
aload 0
aload 1
aload 2
invokevirtual android/app/AlertDialog$Builder/setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
pop
L3:
aload 3
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L2
aload 4
ifnull L2
aload 0
aload 3
aload 4
invokevirtual android/app/AlertDialog$Builder/setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
pop
aload 0
areturn
.limit locals 5
.limit stack 3
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;
.catch java/lang/Throwable from L0 to L1 using L2
new android/app/AlertDialog$Builder
dup
aload 0
invokespecial android/app/AlertDialog$Builder/<init>(Landroid/content/Context;)V
astore 0
getstatic com/alipay/sdk/widget/d/a Z
ifeq L3
aload 5
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L4
aload 6
ifnull L4
aload 0
aload 5
aload 6
invokevirtual android/app/AlertDialog$Builder/setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
pop
L4:
aload 3
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L5
aload 4
ifnull L5
aload 0
aload 3
aload 4
invokevirtual android/app/AlertDialog$Builder/setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
pop
L5:
aload 0
aload 1
invokevirtual android/app/AlertDialog$Builder/setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
pop
aload 0
aload 2
invokevirtual android/app/AlertDialog$Builder/setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
pop
aload 0
invokevirtual android/app/AlertDialog$Builder/create()Landroid/app/AlertDialog;
astore 0
aload 0
iconst_0
invokevirtual android/app/Dialog/setCanceledOnTouchOutside(Z)V
aload 0
new com/alipay/sdk/widget/e
dup
invokespecial com/alipay/sdk/widget/e/<init>()V
invokevirtual android/app/Dialog/setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V
L0:
aload 0
invokevirtual android/app/Dialog/show()V
L1:
aload 0
areturn
L3:
aload 3
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L6
aload 4
ifnull L6
aload 0
aload 3
aload 4
invokevirtual android/app/AlertDialog$Builder/setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
pop
L6:
aload 5
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L5
aload 6
ifnull L5
aload 0
aload 5
aload 6
invokevirtual android/app/AlertDialog$Builder/setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
pop
goto L5
L2:
astore 1
aload 0
areturn
.limit locals 7
.limit stack 3
.end method
