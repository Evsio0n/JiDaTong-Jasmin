.bytecode 50.0
.class public synchronized com/nd/android/u/ui/msg_num_click/MsgNumClick_StudentId
.super com/nd/android/u/ui/msg_num_click/AbstractMsgNumClick
.inner class inner com/nd/android/u/ui/msg_num_click/MsgNumClick_StudentId$1
.inner class inner com/nd/android/u/ui/msg_num_click/MsgNumClick_StudentId$2
.inner class inner com/nd/android/u/ui/msg_num_click/MsgNumClick_StudentId$2$1
.inner class inner com/nd/android/u/ui/msg_num_click/MsgNumClick_StudentId$3
.inner class inner com/nd/android/u/ui/msg_num_click/MsgNumClick_StudentId$4
.inner class inner com/nd/android/u/ui/msg_num_click/MsgNumClick_StudentId$5
.inner class inner com/nd/android/u/ui/msg_num_click/MsgNumClick_StudentId$6
.inner class static abstract interface FindFriendCallBack inner com/nd/android/u/ui/msg_num_click/MsgNumClick_StudentId$FindFriendCallBack outer com/nd/android/u/ui/msg_num_click/MsgNumClick_StudentId

.field private 'dialog' Landroid/app/ProgressDialog;

.field private 'handler' Landroid/os/Handler;

.field private 'listeners' [Landroid/view/View$OnClickListener;

.method public <init>(Landroid/content/Context;Ljava/lang/String;)V
aload 0
aload 1
aload 2
invokespecial com/nd/android/u/ui/msg_num_click/AbstractMsgNumClick/<init>(Landroid/content/Context;Ljava/lang/String;)V
aload 0
iconst_3
anewarray android/view/View$OnClickListener
dup
iconst_0
new com/nd/android/u/ui/msg_num_click/MsgNumClick_StudentId$1
dup
aload 0
invokespecial com/nd/android/u/ui/msg_num_click/MsgNumClick_StudentId$1/<init>(Lcom/nd/android/u/ui/msg_num_click/MsgNumClick_StudentId;)V
aastore
dup
iconst_1
new com/nd/android/u/ui/msg_num_click/MsgNumClick_StudentId$2
dup
aload 0
invokespecial com/nd/android/u/ui/msg_num_click/MsgNumClick_StudentId$2/<init>(Lcom/nd/android/u/ui/msg_num_click/MsgNumClick_StudentId;)V
aastore
dup
iconst_2
new com/nd/android/u/ui/msg_num_click/MsgNumClick_StudentId$3
dup
aload 0
invokespecial com/nd/android/u/ui/msg_num_click/MsgNumClick_StudentId$3/<init>(Lcom/nd/android/u/ui/msg_num_click/MsgNumClick_StudentId;)V
aastore
putfield com/nd/android/u/ui/msg_num_click/MsgNumClick_StudentId/listeners [Landroid/view/View$OnClickListener;
aload 0
new android/os/Handler
dup
invokespecial android/os/Handler/<init>()V
putfield com/nd/android/u/ui/msg_num_click/MsgNumClick_StudentId/handler Landroid/os/Handler;
aload 0
new android/app/ProgressDialog
dup
aload 1
invokespecial android/app/ProgressDialog/<init>(Landroid/content/Context;)V
putfield com/nd/android/u/ui/msg_num_click/MsgNumClick_StudentId/dialog Landroid/app/ProgressDialog;
aload 0
getfield com/nd/android/u/ui/msg_num_click/MsgNumClick_StudentId/dialog Landroid/app/ProgressDialog;
aload 1
getstatic com/nd/android/u/chat/R$string/send_image_progress_loading I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
invokevirtual android/app/ProgressDialog/setMessage(Ljava/lang/CharSequence;)V
return
.limit locals 3
.limit stack 7
.end method

.method static synthetic access$000(Lcom/nd/android/u/ui/msg_num_click/MsgNumClick_StudentId;Lcom/nd/android/u/ui/msg_num_click/MsgNumClick_StudentId$FindFriendCallBack;)V
aload 0
aload 1
invokespecial com/nd/android/u/ui/msg_num_click/MsgNumClick_StudentId/findFriends(Lcom/nd/android/u/ui/msg_num_click/MsgNumClick_StudentId$FindFriendCallBack;)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$100(Lcom/nd/android/u/ui/msg_num_click/MsgNumClick_StudentId;Lcom/nd/android/u/ui/msg_num_click/MsgNumClick_StudentId$FindFriendCallBack;Lcom/product/android/commonInterface/contact/OapUserSimple;)V
aload 0
aload 1
aload 2
invokespecial com/nd/android/u/ui/msg_num_click/MsgNumClick_StudentId/foundFriend(Lcom/nd/android/u/ui/msg_num_click/MsgNumClick_StudentId$FindFriendCallBack;Lcom/product/android/commonInterface/contact/OapUserSimple;)V
return
.limit locals 3
.limit stack 3
.end method

.method static synthetic access$200(Lcom/nd/android/u/ui/msg_num_click/MsgNumClick_StudentId;)V
aload 0
invokespecial com/nd/android/u/ui/msg_num_click/MsgNumClick_StudentId/friendNoFound()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/nd/android/u/ui/msg_num_click/MsgNumClick_StudentId;)Landroid/app/ProgressDialog;
aload 0
getfield com/nd/android/u/ui/msg_num_click/MsgNumClick_StudentId/dialog Landroid/app/ProgressDialog;
areturn
.limit locals 1
.limit stack 1
.end method

.method private findFriends(Lcom/nd/android/u/ui/msg_num_click/MsgNumClick_StudentId$FindFriendCallBack;)V
aload 0
getfield com/nd/android/u/ui/msg_num_click/MsgNumClick_StudentId/dialog Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/show()V
invokestatic com/common/android/utils/concurrent/NdExecutors/getCachedThreadPool()Ljava/util/concurrent/ExecutorService;
new com/nd/android/u/ui/msg_num_click/MsgNumClick_StudentId$4
dup
aload 0
aload 1
invokespecial com/nd/android/u/ui/msg_num_click/MsgNumClick_StudentId$4/<init>(Lcom/nd/android/u/ui/msg_num_click/MsgNumClick_StudentId;Lcom/nd/android/u/ui/msg_num_click/MsgNumClick_StudentId$FindFriendCallBack;)V
invokeinterface java/util/concurrent/ExecutorService/execute(Ljava/lang/Runnable;)V 1
return
.limit locals 2
.limit stack 5
.end method

.method private foundFriend(Lcom/nd/android/u/ui/msg_num_click/MsgNumClick_StudentId$FindFriendCallBack;Lcom/product/android/commonInterface/contact/OapUserSimple;)V
aload 0
getfield com/nd/android/u/ui/msg_num_click/MsgNumClick_StudentId/handler Landroid/os/Handler;
new com/nd/android/u/ui/msg_num_click/MsgNumClick_StudentId$5
dup
aload 0
aload 1
aload 2
invokespecial com/nd/android/u/ui/msg_num_click/MsgNumClick_StudentId$5/<init>(Lcom/nd/android/u/ui/msg_num_click/MsgNumClick_StudentId;Lcom/nd/android/u/ui/msg_num_click/MsgNumClick_StudentId$FindFriendCallBack;Lcom/product/android/commonInterface/contact/OapUserSimple;)V
invokevirtual android/os/Handler/post(Ljava/lang/Runnable;)Z
pop
return
.limit locals 3
.limit stack 6
.end method

.method private friendNoFound()V
aload 0
getfield com/nd/android/u/ui/msg_num_click/MsgNumClick_StudentId/handler Landroid/os/Handler;
new com/nd/android/u/ui/msg_num_click/MsgNumClick_StudentId$6
dup
aload 0
invokespecial com/nd/android/u/ui/msg_num_click/MsgNumClick_StudentId$6/<init>(Lcom/nd/android/u/ui/msg_num_click/MsgNumClick_StudentId;)V
invokevirtual android/os/Handler/post(Ljava/lang/Runnable;)Z
pop
return
.limit locals 1
.limit stack 4
.end method

.method public getItems()[Ljava/lang/String;
iconst_3
anewarray java/lang/String
dup
iconst_0
aload 0
getfield com/nd/android/u/ui/msg_num_click/MsgNumClick_StudentId/context Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/chat/R$string/copy I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
aastore
dup
iconst_1
aload 0
getfield com/nd/android/u/ui/msg_num_click/MsgNumClick_StudentId/context Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/chat/R$string/chat_like_student_find_text I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
aastore
dup
iconst_2
aload 0
getfield com/nd/android/u/ui/msg_num_click/MsgNumClick_StudentId/context Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/chat/R$string/chat_like_student_add_text I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
aastore
areturn
.limit locals 1
.limit stack 5
.end method

.method public getListners()[Landroid/view/View$OnClickListener;
aload 0
getfield com/nd/android/u/ui/msg_num_click/MsgNumClick_StudentId/listeners [Landroid/view/View$OnClickListener;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getTitle(Ljava/lang/String;)Ljava/lang/String;
aload 0
getfield com/nd/android/u/ui/msg_num_click/MsgNumClick_StudentId/context Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/chat/R$string/chat_like_student_title I
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
