.bytecode 50.0
.class public synchronized com/nd/android/u/ui/msg_num_click/MsgNumClick_Phone
.super com/nd/android/u/ui/msg_num_click/AbstractMsgNumClick
.inner class inner com/nd/android/u/ui/msg_num_click/MsgNumClick_Phone$1
.inner class inner com/nd/android/u/ui/msg_num_click/MsgNumClick_Phone$2
.inner class inner com/nd/android/u/ui/msg_num_click/MsgNumClick_Phone$3

.method public <init>(Landroid/content/Context;Ljava/lang/String;)V
aload 0
aload 1
aload 2
invokespecial com/nd/android/u/ui/msg_num_click/AbstractMsgNumClick/<init>(Landroid/content/Context;Ljava/lang/String;)V
return
.limit locals 3
.limit stack 3
.end method

.method static synthetic access$000(Lcom/nd/android/u/ui/msg_num_click/MsgNumClick_Phone;)V
aload 0
invokespecial com/nd/android/u/ui/msg_num_click/MsgNumClick_Phone/addContact()V
return
.limit locals 1
.limit stack 1
.end method

.method private addContact()V
new android/content/Intent
dup
ldc "android.intent.action.INSERT"
invokespecial android/content/Intent/<init>(Ljava/lang/String;)V
astore 1
aload 1
ldc "vnd.android.cursor.dir/contact"
invokevirtual android/content/Intent/setType(Ljava/lang/String;)Landroid/content/Intent;
pop
aload 1
ldc "phone"
aload 0
getfield com/nd/android/u/ui/msg_num_click/MsgNumClick_Phone/text Ljava/lang/String;
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 0
getfield com/nd/android/u/ui/msg_num_click/MsgNumClick_Phone/context Landroid/content/Context;
aload 1
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
return
.limit locals 2
.limit stack 3
.end method

.method public getItems()[Ljava/lang/String;
iconst_3
anewarray java/lang/String
dup
iconst_0
aload 0
getfield com/nd/android/u/ui/msg_num_click/MsgNumClick_Phone/context Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/chat/R$string/chat_like_phone_call_text I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
aastore
dup
iconst_1
aload 0
getfield com/nd/android/u/ui/msg_num_click/MsgNumClick_Phone/context Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/chat/R$string/copy I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
aastore
dup
iconst_2
aload 0
getfield com/nd/android/u/ui/msg_num_click/MsgNumClick_Phone/context Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/chat/R$string/chat_like_phone_add_text I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
aastore
areturn
.limit locals 1
.limit stack 5
.end method

.method public getListners()[Landroid/view/View$OnClickListener;
new com/nd/android/u/ui/msg_num_click/MsgNumClick_Phone$1
dup
aload 0
invokespecial com/nd/android/u/ui/msg_num_click/MsgNumClick_Phone$1/<init>(Lcom/nd/android/u/ui/msg_num_click/MsgNumClick_Phone;)V
astore 1
new com/nd/android/u/ui/msg_num_click/MsgNumClick_Phone$2
dup
aload 0
invokespecial com/nd/android/u/ui/msg_num_click/MsgNumClick_Phone$2/<init>(Lcom/nd/android/u/ui/msg_num_click/MsgNumClick_Phone;)V
astore 2
iconst_3
anewarray android/view/View$OnClickListener
dup
iconst_0
new com/nd/android/u/ui/msg_num_click/MsgNumClick_Phone$3
dup
aload 0
invokespecial com/nd/android/u/ui/msg_num_click/MsgNumClick_Phone$3/<init>(Lcom/nd/android/u/ui/msg_num_click/MsgNumClick_Phone;)V
aastore
dup
iconst_1
aload 2
aastore
dup
iconst_2
aload 1
aastore
areturn
.limit locals 3
.limit stack 6
.end method

.method public getTitle(Ljava/lang/String;)Ljava/lang/String;
aload 0
getfield com/nd/android/u/ui/msg_num_click/MsgNumClick_Phone/context Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/chat/R$string/chat_like_phone_title I
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 1
aastore
invokevirtual android/content/res/Resources/getString(I[Ljava/lang/Object;)Ljava/lang/String;
areturn
.limit locals 2
.limit stack 6
.end method

.method public setTextStyle(Landroid/text/TextPaint;)V
aload 1
ldc_w -16776961
invokevirtual android/text/TextPaint/setColor(I)V
aload 1
iconst_0
invokevirtual android/text/TextPaint/setUnderlineText(Z)V
return
.limit locals 2
.limit stack 2
.end method
