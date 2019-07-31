.bytecode 50.0
.class public synchronized abstract com/nd/android/u/contact/dialog/MyDialog
.super android/app/AlertDialog$Builder

.field protected 'mContext' Landroid/content/Context;

.field protected 'mTitle' Ljava/lang/String;

.field protected 'mValue' Ljava/lang/String;

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial android/app/AlertDialog$Builder/<init>(Landroid/content/Context;)V
aload 0
aload 1
putfield com/nd/android/u/contact/dialog/MyDialog/mContext Landroid/content/Context;
return
.limit locals 2
.limit stack 2
.end method

.method public <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
aload 0
aload 1
invokespecial com/nd/android/u/contact/dialog/MyDialog/<init>(Landroid/content/Context;)V
aload 0
aload 2
putfield com/nd/android/u/contact/dialog/MyDialog/mTitle Ljava/lang/String;
aload 0
aload 3
putfield com/nd/android/u/contact/dialog/MyDialog/mValue Ljava/lang/String;
aload 0
aload 2
invokevirtual com/nd/android/u/contact/dialog/MyDialog/setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
pop
aload 0
invokevirtual com/nd/android/u/contact/dialog/MyDialog/getView()V
aload 0
invokevirtual com/nd/android/u/contact/dialog/MyDialog/setListener()V
return
.limit locals 4
.limit stack 2
.end method

.method public abstract getView()V
.end method

.method public abstract setListener()V
.end method
