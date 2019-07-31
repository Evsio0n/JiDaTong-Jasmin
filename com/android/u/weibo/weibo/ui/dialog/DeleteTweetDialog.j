.bytecode 50.0
.class public synchronized com/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog
.super android/app/AlertDialog$Builder
.inner class inner com/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog$1
.inner class inner com/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog$2
.inner class private ServerCallback inner com/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog$ServerCallback outer com/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog
.inner class inner com/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog$ServerCallback$1
.inner class inner com/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog$ServerCallback$2
.inner class private deleteMyTweetTask inner com/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog$deleteMyTweetTask outer com/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog
.inner class inner com/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog$deleteMyTweetTask$1

.field private 'context' Landroid/content/Context;

.field 'isFromMsgPraiselsit' Z

.field 'isOnlySina' Z

.field 'sinaId' J

.field 'tweetId' J

.method public <init>(Landroid/content/Context;JJZZ)V
aload 0
aload 1
invokespecial android/app/AlertDialog$Builder/<init>(Landroid/content/Context;)V
aload 0
lconst_0
putfield com/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog/tweetId J
aload 0
lconst_0
putfield com/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog/sinaId J
aload 0
iconst_0
putfield com/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog/isOnlySina Z
aload 0
iconst_0
putfield com/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog/isFromMsgPraiselsit Z
aload 0
aload 1
putfield com/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog/context Landroid/content/Context;
aload 0
lload 2
putfield com/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog/tweetId J
aload 0
lload 4
putfield com/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog/sinaId J
aload 0
iload 6
putfield com/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog/isOnlySina Z
aload 0
iload 7
putfield com/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog/isFromMsgPraiselsit Z
aload 0
invokevirtual com/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog/setDisplay()V
aload 0
invokevirtual com/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog/setListener()V
aload 0
getstatic com/android/u/weibo/R$string/delete_local_tweet I
invokevirtual com/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog/setTitle(I)Landroid/app/AlertDialog$Builder;
pop
return
.limit locals 8
.limit stack 3
.end method

.method static synthetic access$000(Lcom/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog;)Landroid/content/Context;
aload 0
getfield com/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog/context Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method public setDisplay()V
aload 0
getstatic com/android/u/weibo/R$string/sure_delete_tweet I
invokevirtual com/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog/setMessage(I)Landroid/app/AlertDialog$Builder;
pop
return
.limit locals 1
.limit stack 2
.end method

.method public setListener()V
aload 0
aload 0
getfield com/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog/context Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/cancel I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
new com/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog$1
dup
aload 0
invokespecial com/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog$1/<init>(Lcom/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog;)V
invokevirtual com/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog/setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
pop
aload 0
aload 0
getfield com/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog/context Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/confirm I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
new com/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog$2
dup
aload 0
invokespecial com/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog$2/<init>(Lcom/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog;)V
invokevirtual com/android/u/weibo/weibo/ui/dialog/DeleteTweetDialog/setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
pop
return
.limit locals 1
.limit stack 5
.end method
