.bytecode 50.0
.class public synchronized com/product/android/utils/UserIdentityDialog
.super java/lang/Object
.inner class static final inner com/product/android/utils/UserIdentityDialog$1
.inner class static final inner com/product/android/utils/UserIdentityDialog$2
.inner class static final inner com/product/android/utils/UserIdentityDialog$3
.inner class static final inner com/product/android/utils/UserIdentityDialog$4

.field private static final 'TAG' Ljava/lang/String; = "PubFunction"

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static dialogForceOffline(Landroid/app/Activity;)V
new android/app/AlertDialog$Builder
dup
aload 0
invokespecial android/app/AlertDialog$Builder/<init>(Landroid/content/Context;)V
getstatic com/nd/android/u/allcommon/R$string/forced_offline_login_again I
invokevirtual android/app/AlertDialog$Builder/setTitle(I)Landroid/app/AlertDialog$Builder;
ldc_w 17301659
invokevirtual android/app/AlertDialog$Builder/setIcon(I)Landroid/app/AlertDialog$Builder;
ldc_w 17039370
new com/product/android/utils/UserIdentityDialog$2
dup
aload 0
invokespecial com/product/android/utils/UserIdentityDialog$2/<init>(Landroid/app/Activity;)V
invokevirtual android/app/AlertDialog$Builder/setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
iconst_0
invokevirtual android/app/AlertDialog$Builder/setCancelable(Z)Landroid/app/AlertDialog$Builder;
new com/product/android/utils/UserIdentityDialog$1
dup
invokespecial com/product/android/utils/UserIdentityDialog$1/<init>()V
invokevirtual android/app/AlertDialog$Builder/setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;
invokevirtual android/app/AlertDialog$Builder/show()Landroid/app/AlertDialog;
pop
return
.limit locals 1
.limit stack 5
.end method

.method public static dialogIdentityExpired(Landroid/app/Activity;)V
new android/app/AlertDialog$Builder
dup
aload 0
invokespecial android/app/AlertDialog$Builder/<init>(Landroid/content/Context;)V
getstatic com/nd/android/u/allcommon/R$string/identity_expired_login_again I
invokevirtual android/app/AlertDialog$Builder/setTitle(I)Landroid/app/AlertDialog$Builder;
ldc_w 17301659
invokevirtual android/app/AlertDialog$Builder/setIcon(I)Landroid/app/AlertDialog$Builder;
ldc_w 17039370
new com/product/android/utils/UserIdentityDialog$4
dup
aload 0
invokespecial com/product/android/utils/UserIdentityDialog$4/<init>(Landroid/app/Activity;)V
invokevirtual android/app/AlertDialog$Builder/setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
iconst_0
invokevirtual android/app/AlertDialog$Builder/setCancelable(Z)Landroid/app/AlertDialog$Builder;
new com/product/android/utils/UserIdentityDialog$3
dup
invokespecial com/product/android/utils/UserIdentityDialog$3/<init>()V
invokevirtual android/app/AlertDialog$Builder/setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;
invokevirtual android/app/AlertDialog$Builder/show()Landroid/app/AlertDialog;
pop
return
.limit locals 1
.limit stack 5
.end method
